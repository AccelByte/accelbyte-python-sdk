# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from abc import ABC, abstractmethod
from datetime import datetime, timedelta
from typing import Any, Optional

from ._utils import get_member
from ._utils import clamp


class TokenRepository(ABC):
    @abstractmethod
    def get_token(self) -> Any:
        pass

    @abstractmethod
    def get_token_issued_time_utc(self) -> Optional[datetime]:
        pass

    @abstractmethod
    def remove_token(self) -> bool:
        pass

    @abstractmethod
    def store_token(self, token: Any) -> bool:
        pass

    def get_access_token(self, default: Any = None) -> Any:
        return get_member(self.get_token(), "access_token", default=default)

    def get_expires_in(self, default: Any = None) -> Any:
        return get_member(self.get_token(), "expires_in", default=default)

    def get_refresh_expires_in(self, default: Any = None) -> Any:
        return get_member(self.get_token(), "refresh_expires_in", default=default)

    def get_refresh_token(self, default: Any = None) -> Any:
        return get_member(self.get_token(), "refresh_token", default=default)

    def get_seconds_till_expiry(self) -> float:
        if not self.has_token():
            return 0
        if not (token_issued_time := self.get_token_issued_time_utc()):
            return 0
        if not (expires_in := self.get_expires_in()):
            return 0
        now = datetime.utcnow()
        expires_at = token_issued_time + timedelta(seconds=expires_in)
        seconds_till_expiry = (expires_at - now).total_seconds()
        return seconds_till_expiry

    def has_token(self) -> bool:
        return self.get_token() is not None

    def has_token_expired(self, multiplier: float = 1.0) -> bool:
        if not self.has_token():
            return False
        expires_in = self.get_expires_in()
        if expires_in is None:
            return False
        threshold = expires_in * clamp(multiplier, 0.0, 1.0)
        seconds_till_expiry = self.get_seconds_till_expiry()
        return seconds_till_expiry < threshold


class MyTokenRepository(TokenRepository):
    def __init__(self, token: Any):
        self._token = None
        self._token_issued_time = None

        self.store_token(token)

    def get_token(self) -> Any:
        return self._token

    def get_token_issued_time_utc(self) -> Optional[datetime]:
        return self._token_issued_time

    def remove_token(self) -> bool:
        if self._token is not None:
            self._token = None
            self._token_issued_time = None
            return True
        return True

    def store_token(self, token: Any) -> bool:
        self._token = token
        self._token_issued_time = datetime.utcnow()
        return True


class InMemoryTokenRepository(TokenRepository):
    def __init__(self):
        self._token = None
        self._token_issued_time = None

    def get_token(self) -> Any:
        return self._token

    def get_token_issued_time_utc(self) -> Optional[datetime]:
        return self._token_issued_time

    def remove_token(self) -> bool:
        if self._token is not None:
            self._token = None
            self._token_issued_time = None
            return True
        return True

    def store_token(self, token: Any) -> bool:
        self._token = token
        self._token_issued_time = datetime.utcnow()
        return True


TOKEN_REPOS = [MyTokenRepository, InMemoryTokenRepository]

DEFAULT_TOKEN_REPO = InMemoryTokenRepository
