from datetime import timedelta
from typing import Optional, Protocol


class HttpBackoffPolicy(Protocol):
    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> float:
        ...


class ConstantHttpBackoffPolicy:
    def __init__(self, duration: float):
        self.duration = duration

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> float:
        return self.duration


class ExponentialHttpBackoffPolicy:
    def __init__(self, initial: float = 1.0, multiplier: float = 2.0):
        if initial == 0.0:
            initial = 0.01
        self.initial = initial
        self.multiplier = multiplier

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> float:
        return self.initial * (self.multiplier**retries)


class NoHttpBackoffPolicy(ConstantHttpBackoffPolicy):
    def __init__(self):
        super().__init__(0.0)

    def __call__(
        self,
        request,
        response,
        /,
        *,
        retries: int = 0,
        elapsed: Optional[timedelta] = None,
        **kwargs,
    ) -> float:
        return self.duration
