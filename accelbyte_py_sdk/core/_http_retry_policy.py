from datetime import timedelta
from typing import Optional, Protocol, Tuple, Union


class HttpRetryPolicy(Protocol):
    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        ...


class CompositeHttpRetryPolicy:
    def __init__(self, *policies: HttpRetryPolicy):
        self.policies = list(policies)

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        if elapsed is None:
            elapsed = timedelta(0)
        for policy in self.policies:
            result = policy(
                request, response, retries=retries, elapsed=elapsed, **kwargs
            )
            if not result:
                return False
        return True


class MaxElapsedHttpRetryPolicy:
    def __init__(self, max_elapsed: Union[int, float, timedelta]):
        if isinstance(max_elapsed, (int, float)):
            max_elapsed = timedelta(seconds=max_elapsed)
        self.max_elapsed = max_elapsed

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        if elapsed is None:
            elapsed = timedelta(0)
        return elapsed < self.max_elapsed


class MaxRetriesHttpRetryPolicy:
    def __init__(self, max_retries: int):
        self.max_retries = max_retries

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        return retries < self.max_retries


class NoHttpRetryPolicy:
    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        return False


class StatusCodesHttpRetryPolicy:
    def __init__(self, *status_codes: Union[int, Tuple[int, int]]):
        self.status_codes = set()
        for element in status_codes:
            if isinstance(element, tuple):  # (200, 299)
                min_status_code, max_status_code = element
                if not isinstance(min_status_code, int):
                    raise ValueError(min_status_code)
                if not isinstance(max_status_code, int):
                    raise ValueError
                max_status_code += 1  # make inclusive
                if max_status_code < min_status_code:
                    raise ValueError(max_status_code)
                for status_code in range(min_status_code, max_status_code):
                    self.status_codes.add(status_code)
            elif isinstance(element, int):  # 200
                self.status_codes.add(element)
            else:
                raise ValueError(element)

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> bool:
        return response.status_code in self.status_codes
