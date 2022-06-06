# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import asyncio
import functools
import threading

from typing import Callable

from ._http_backoff_policy import NoHttpBackoffPolicy
from ._http_retry_policy import NoHttpRetryPolicy
from ._token_repository import TokenRepository


class TokenRefresher:

    def __init__(self, refresh_func: Callable, *args, refresh_rate: float = 0.8, **kwargs):
        self._lock = threading.RLock()
        self.refresh_rate = refresh_rate
        self.refresh_func = refresh_func
        self.refresh_func_args = args
        self.refresh_func_kwargs = kwargs
        self.refresh_errors = []

        self.default_kwargs = {
            "backoff_policy": NoHttpBackoffPolicy,
            "retry_policy": NoHttpRetryPolicy,
            "try_refresh": False
        }

        self.refresh_func_kwargs.update(self.default_kwargs)

    def refresh(self, token_repo: TokenRepository):
        if refresh_token := token_repo.get_refresh_token():
            self._refresh_with_token(refresh_token)
        else:
            self._run_sync(self.refresh_func, *self.refresh_func_args, **self.refresh_func_kwargs)

    async def refresh_async(self, token_repo: TokenRepository):
        if refresh_token := token_repo.get_refresh_token():
            await self._refresh_with_token_async(refresh_token)
        else:
            await self._run_async(self.refresh_func, *self.refresh_func_args, **self.refresh_func_kwargs)

    def try_refresh(self, token_repo: TokenRepository) -> bool:
        with self._lock:
            if token_repo is None or not token_repo.has_token() or not token_repo.has_token_expired(multiplier=self.refresh_rate):
                return False
            self.refresh(token_repo=token_repo)
            return True

    async def try_refresh_async(self, token_repo: TokenRepository) -> bool:
        with self._lock:
            if token_repo is None or not token_repo.has_token() or not token_repo.has_token_expired(multiplier=self.refresh_rate):
                return False
            await self.refresh_async(token_repo=token_repo)
            return True

    def _refresh_with_token(self, refresh_token: str):
        from accelbyte_py_sdk.api.iam import token_grant_v3
        from accelbyte_py_sdk.api.iam.operations.o_auth2_0 import TokenGrantV3GrantTypeEnum

        _, error = token_grant_v3(
            grant_type=TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
            refresh_token=refresh_token,
            **self.default_kwargs
        )

        if error:
            self.refresh_errors.append(error)

    async def _refresh_with_token_async(self, refresh_token: str):
        from accelbyte_py_sdk.api.iam import token_grant_v3_async
        from accelbyte_py_sdk.api.iam.operations.o_auth2_0 import TokenGrantV3GrantTypeEnum

        _, error = await token_grant_v3_async(
            grant_type=TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
            refresh_token=refresh_token,
            **self.default_kwargs
        )

        if error:
            self.refresh_errors.append(error)

    @staticmethod
    def _run_sync(func, *args, loop=None, **kwargs):
        fn = functools.partial(func, *args, **kwargs)
        if asyncio.iscoroutinefunction(func):
            if loop is None:
                loop = asyncio.get_event_loop()
            loop.run_until_complete(fn())
        else:
            fn()

    @staticmethod
    async def _run_async(func, *args, loop=None, executor=None, **kwargs):
        fn = functools.partial(func, *args, **kwargs)
        if asyncio.iscoroutinefunction(func):
            await fn()
        else:
            if loop is None:
                loop = asyncio.get_event_loop()
            await loop.run_in_executor(executor, fn)
