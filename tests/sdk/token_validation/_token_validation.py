import threading
import time
from threading import Barrier, RLock, Thread
from typing import Any, Dict, List, Optional, Tuple
from unittest import TestCase

from accelbyte_py_sdk.token_validation import _cache_types
from accelbyte_py_sdk.token_validation._cache_types import (
    NamespaceContextCache,
    RolesCache,
)


class _FakeError:
    def __init__(self, code: int, message: str) -> None:
        self.code = code
        self.message = message


class _FakeRole:
    def __init__(self, role_id: str) -> None:
        self.role_id = role_id
        self.permissions: List[Any] = []


class _FakeNamespaceContext:
    def __init__(self, namespace: str) -> None:
        self.namespace = namespace
        self.type_ = "Game"


# interval=None skips Timer.__init__ in both cache classes, so tests can
# construct via the normal path without spawning a live background thread.
def _new_roles_cache() -> RolesCache:
    return RolesCache(sdk=None, interval=None, raise_on_error=False)


def _new_namespace_context_cache() -> NamespaceContextCache:
    return NamespaceContextCache(
        sdk=None,
        interval=None,
        raise_on_error=False,
        namespace_context_fallback=False,
    )


class CacheConcurrencyTestCase(TestCase):
    """Concurrency behavior of RolesCache and NamespaceContextCache.

    Covers the regression where parallel cache misses at expiry produced N
    redundant upstream calls, triggering IAM rate-limits and silent 401s.
    """

    def setUp(self) -> None:
        self._saved_iam = (
            _cache_types.iam_service.admin_get_role_namespace_permission_v3
        )
        self._saved_basic = _cache_types.basic_service.get_namespace_context

    def tearDown(self) -> None:
        _cache_types.iam_service.admin_get_role_namespace_permission_v3 = (
            self._saved_iam
        )
        _cache_types.basic_service.get_namespace_context = self._saved_basic

    # region helpers

    def _patch_iam(
        self, latency_s: float = 0.02, should_fail: bool = False
    ) -> Dict[str, int]:
        counters = {"calls": 0}
        lock = threading.Lock()

        def fake(
            role_id, namespace=None, x_additional_headers=None, sdk=None, **kwargs
        ):
            with lock:
                counters["calls"] += 1
            time.sleep(latency_s)
            if should_fail:
                return None, _FakeError(429, "rate limited")
            return _FakeRole(role_id=role_id), None

        _cache_types.iam_service.admin_get_role_namespace_permission_v3 = fake
        return counters

    def _patch_basic(
        self, latency_s: float = 0.02, should_fail: bool = False
    ) -> Dict[str, int]:
        counters = {"calls": 0}
        lock = threading.Lock()

        def fake(namespace, x_additional_headers=None, sdk=None, **kwargs):
            with lock:
                counters["calls"] += 1
            time.sleep(latency_s)
            if should_fail:
                return None, _FakeError(429, "rate limited")
            return _FakeNamespaceContext(namespace=namespace), None

        _cache_types.basic_service.get_namespace_context = fake
        return counters

    def _run_concurrent(
        self,
        target,
        args_per_thread: List[Tuple],
    ) -> List[Any]:
        results: List[Any] = []
        results_lock = threading.Lock()
        barrier = Barrier(len(args_per_thread))

        def worker(args: Tuple) -> None:
            barrier.wait()
            r = target(*args)
            with results_lock:
                results.append(r)

        threads = [Thread(target=worker, args=(a,)) for a in args_per_thread]
        for t in threads:
            t.start()
        for t in threads:
            t.join()
        return results

    # endregion helpers

    # region RolesCache

    def test_roles_cache_concurrent_miss_coalesces_to_one_upstream_call(self):
        counters = self._patch_iam(latency_s=0.05)
        cache = _new_roles_cache()

        results = self._run_concurrent(
            target=cache.get_role,
            args_per_thread=[("role-1",)] * 20,
        )

        self.assertEqual(
            counters["calls"],
            1,
            "single-flight should coalesce 20 concurrent misses into 1 upstream call",
        )
        self.assertEqual(len(results), 20)
        self.assertTrue(
            all(r is not None for r in results),
            "all concurrent callers should receive the role",
        )

    def test_roles_cache_distinct_keys_fetch_independently(self):
        counters = self._patch_iam(latency_s=0.02)
        cache = _new_roles_cache()

        role_ids = [f"role-{i}" for i in range(5)]
        threads_per_role = 10
        args = [(rid,) for rid in role_ids for _ in range(threads_per_role)]

        results = self._run_concurrent(target=cache.get_role, args_per_thread=args)

        self.assertEqual(
            counters["calls"],
            len(role_ids),
            "single-flight is per-key: one upstream call per distinct role",
        )
        self.assertEqual(sum(1 for r in results if r is None), 0)

    def test_roles_cache_refresh_preserves_stale_entry_on_upstream_failure(self):
        cache = _new_roles_cache()

        self._patch_iam()
        self.assertIsNone(cache.cache_role(role_id="role-1"))
        cached_before = cache._roles[("role-1", None)]

        self._patch_iam(should_fail=True)
        cache.refresh()

        self.assertIn(
            ("role-1", None),
            cache._roles,
            "refresh must retain prior entry when upstream fetch fails",
        )
        self.assertIs(cache._roles[("role-1", None)], cached_before)

    def test_roles_cache_concurrent_miss_all_waiters_receive_error_on_initial_failure(
        self,
    ):
        counters = self._patch_iam(latency_s=0.05, should_fail=True)
        cache = _new_roles_cache()

        results = self._run_concurrent(
            target=cache.cache_role,
            args_per_thread=[("role-1",)] * 20,
        )

        self.assertEqual(
            counters["calls"],
            1,
            "single-flight should coalesce even when upstream fails",
        )
        self.assertEqual(len(results), 20)
        self.assertTrue(
            all(r is not None for r in results),
            "every waiter must observe the error, not a silent None",
        )

    def test_roles_cache_waiter_reraises_exception_from_fetcher(self):
        """A raised exception in the fetcher must propagate to waiters with the
        original type intact, not be silently converted to a None / error tuple."""

        class BoomError(RuntimeError):
            pass

        fetcher_entered = threading.Event()
        release_fetcher = threading.Event()
        # One permit per waiter that reaches event.wait(); test acquires N of
        # these to deterministically prove waiters are queued before releasing
        # the fetcher (no time.sleep required).
        waiter_at_wait = threading.Semaphore(0)

        original_inflight = _cache_types._InflightFetch

        class _ObservableInflight(original_inflight):
            def __init__(self):
                super().__init__()
                orig_wait = self.event.wait

                def wrapped_wait(*a, **kw):
                    waiter_at_wait.release()
                    return orig_wait(*a, **kw)

                self.event.wait = wrapped_wait

        _cache_types._InflightFetch = _ObservableInflight
        try:

            def fake(
                role_id, namespace=None, x_additional_headers=None, sdk=None, **kw
            ):
                fetcher_entered.set()
                release_fetcher.wait()
                raise BoomError("upstream blew up")

            _cache_types.iam_service.admin_get_role_namespace_permission_v3 = fake
            cache = _new_roles_cache()

            results: List[Any] = []
            results_lock = threading.Lock()

            def caller():
                try:
                    cache.cache_role(role_id="role-1")
                    outcome: Any = "no-exception"
                except BoomError as exc:
                    outcome = exc
                except Exception as exc:
                    outcome = exc
                with results_lock:
                    results.append(outcome)

            fetcher_thread = Thread(target=caller)
            fetcher_thread.start()
            self.assertTrue(fetcher_entered.wait(timeout=2.0))

            waiter_threads = [Thread(target=caller) for _ in range(5)]
            for t in waiter_threads:
                t.start()
            # Block until all 5 waiters have entered event.wait().
            for _ in range(5):
                self.assertTrue(
                    waiter_at_wait.acquire(timeout=2.0),
                    "waiter failed to enter event.wait() in time",
                )
            release_fetcher.set()
            fetcher_thread.join(timeout=2.0)
            for t in waiter_threads:
                t.join(timeout=2.0)
        finally:
            _cache_types._InflightFetch = original_inflight

        self.assertEqual(len(results), 6)
        self.assertTrue(
            all(isinstance(r, BoomError) for r in results),
            f"all callers must re-raise BoomError; got {results!r}",
        )

    def test_roles_cache_clear_releases_waiters_and_aborts_refresh(self):
        """clear() must signal pending coordinators and bump generation so a
        concurrent refresh() does not re-populate the just-cleared cache."""
        cache = _new_roles_cache()
        self._patch_iam(latency_s=0)
        # Pre-populate so refresh has something to iterate over.
        for rid in ("role-1", "role-2", "role-3"):
            cache.cache_role(role_id=rid)
        self.assertEqual(len(cache._roles), 3)

        # Block the next IAM call so refresh stalls inside cache_role for role-1.
        fetcher_entered = threading.Event()
        release_fetcher = threading.Event()

        def slow_fake(
            role_id, namespace=None, x_additional_headers=None, sdk=None, **kw
        ):
            fetcher_entered.set()
            release_fetcher.wait()
            return _FakeRole(role_id=role_id), None

        _cache_types.iam_service.admin_get_role_namespace_permission_v3 = slow_fake

        refresh_thread = Thread(target=cache.refresh)
        refresh_thread.start()
        self.assertTrue(fetcher_entered.wait(timeout=2.0))

        # clear() arrives mid-refresh: bumps generation, signals the in-flight
        # coordinator's event so the (eventual) waiter path can't deadlock.
        cache.clear()
        release_fetcher.set()
        refresh_thread.join(timeout=2.0)

        # Refresh aborted after the in-flight role-1 fetch completed, so the
        # cache is empty (clear() ran) or contains only role-1 (refresh wrote
        # before noticing the generation bump). Either way, role-2 and role-3
        # must not have been re-fetched after clear().
        self.assertNotIn(("role-2", None), cache._roles)
        self.assertNotIn(("role-3", None), cache._roles)

    def test_roles_cache_refresh_undoes_write_when_clear_races_during_fetch(self):
        """If clear() runs while refresh's per-key fetch is in flight, the
        post-fetch generation check must remove the spurious write so the
        invalidation is not silently defeated."""
        cache = _new_roles_cache()
        self._patch_iam(latency_s=0)
        cache.cache_role(role_id="role-1")

        # Make the IAM call block so refresh stalls between gen-check and write.
        release = threading.Event()

        def slow_fake(
            role_id, namespace=None, x_additional_headers=None, sdk=None, **kw
        ):
            release.wait()
            return _FakeRole(role_id=role_id), None

        _cache_types.iam_service.admin_get_role_namespace_permission_v3 = slow_fake

        refresh_thread = Thread(target=cache.refresh)
        refresh_thread.start()
        # Spin briefly until refresh has entered cache_role (registered inflight).
        deadline = time.monotonic() + 2.0
        while not cache._inflight and time.monotonic() < deadline:
            time.sleep(0.001)
        self.assertTrue(cache._inflight, "refresh did not enter cache_role in time")

        cache.clear()
        release.set()
        refresh_thread.join(timeout=2.0)

        self.assertEqual(
            cache._roles,
            {},
            "post-fetch generation check should have undone the spurious write",
        )

    def test_roles_cache_refresh_survives_per_key_exception_and_continues(self):
        """If cache_role raises for one key, refresh must log and continue
        with the remaining keys, not abort the whole cycle."""
        cache = _new_roles_cache()
        self._patch_iam(latency_s=0)
        for rid in ("role-1", "role-2", "role-3"):
            cache.cache_role(role_id=rid)

        before = dict(cache._roles)
        call_log: List[str] = []
        call_lock = threading.Lock()

        def fake(role_id, namespace=None, x_additional_headers=None, sdk=None, **kw):
            with call_lock:
                call_log.append(role_id)
            if role_id == "role-2":
                raise RuntimeError("upstream blew up on role-2")
            return _FakeRole(role_id=role_id), None

        _cache_types.iam_service.admin_get_role_namespace_permission_v3 = fake

        cache.refresh()

        self.assertEqual(
            sorted(call_log),
            ["role-1", "role-2", "role-3"],
            "refresh must continue after a per-key exception",
        )
        # role-2's prior cached entry must be retained (serve-stale on exception).
        self.assertIs(cache._roles[("role-2", None)], before[("role-2", None)])
        # role-1 and role-3 must have been replaced with fresh values.
        self.assertIsNot(cache._roles[("role-1", None)], before[("role-1", None)])
        self.assertIsNot(cache._roles[("role-3", None)], before[("role-3", None)])

    def test_roles_cache_refresh_replaces_entry_on_success(self):
        cache = _new_roles_cache()

        self._patch_iam()
        self.assertIsNone(cache.cache_role(role_id="role-1"))
        cached_before = cache._roles[("role-1", None)]

        cache.refresh()

        self.assertIn(("role-1", None), cache._roles)
        self.assertIsNot(
            cache._roles[("role-1", None)],
            cached_before,
            "refresh must replace the entry on successful upstream fetch",
        )

    # endregion RolesCache

    # region NamespaceContextCache

    def test_namespace_context_cache_concurrent_miss_coalesces_to_one_upstream_call(
        self,
    ):
        counters = self._patch_basic(latency_s=0.05)
        cache = _new_namespace_context_cache()

        results = self._run_concurrent(
            target=cache.get_namespace_context,
            args_per_thread=[("ns-1",)] * 20,
        )

        self.assertEqual(counters["calls"], 1)
        self.assertEqual(len(results), 20)
        self.assertTrue(all(r is not None for r in results))

    def test_namespace_context_cache_distinct_keys_fetch_independently(self):
        counters = self._patch_basic(latency_s=0.02)
        cache = _new_namespace_context_cache()

        namespaces = [f"ns-{i}" for i in range(5)]
        threads_per_ns = 10
        args = [(ns,) for ns in namespaces for _ in range(threads_per_ns)]

        results = self._run_concurrent(
            target=cache.get_namespace_context, args_per_thread=args
        )

        self.assertEqual(counters["calls"], len(namespaces))
        self.assertEqual(sum(1 for r in results if r is None), 0)

    def test_namespace_context_cache_concurrent_miss_all_waiters_receive_error_on_initial_failure(
        self,
    ):
        counters = self._patch_basic(latency_s=0.05, should_fail=True)
        cache = _new_namespace_context_cache()

        results = self._run_concurrent(
            target=cache.cache_namespace_context,
            args_per_thread=[("ns-1",)] * 20,
        )

        self.assertEqual(counters["calls"], 1)
        self.assertEqual(len(results), 20)
        self.assertTrue(
            all(r is not None for r in results),
            "every waiter must observe the error, not a silent None",
        )

    def test_namespace_context_cache_refresh_replaces_entry_on_success(self):
        cache = _new_namespace_context_cache()

        self._patch_basic()
        self.assertIsNone(cache.cache_namespace_context(namespace="ns-1"))
        cached_before = cache._namespace_contexts["ns-1"]

        cache.refresh()

        self.assertIn("ns-1", cache._namespace_contexts)
        self.assertIsNot(cache._namespace_contexts["ns-1"], cached_before)

    def test_namespace_context_cache_refresh_preserves_stale_entry_on_upstream_failure(
        self,
    ):
        cache = _new_namespace_context_cache()

        self._patch_basic()
        self.assertIsNone(cache.cache_namespace_context(namespace="ns-1"))
        cached_before = cache._namespace_contexts["ns-1"]

        self._patch_basic(should_fail=True)
        cache.refresh()

        self.assertIn("ns-1", cache._namespace_contexts)
        self.assertIs(cache._namespace_contexts["ns-1"], cached_before)

    # endregion NamespaceContextCache
