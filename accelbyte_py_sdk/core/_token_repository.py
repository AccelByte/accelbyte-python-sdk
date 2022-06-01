# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from abc import ABC, abstractmethod

from typing import Any, Optional


class TokenRepository(ABC):

    @abstractmethod
    def get_token(self) -> Any:
        pass

    @abstractmethod
    def remove_token(self) -> bool:
        pass

    @abstractmethod
    def store_token(self, token: Any) -> bool:
        pass

    def get_access_token(self) -> Optional[str]:
        token = self.get_token()
        if token is None:
            return None
        if hasattr(token, "access_token"):
            return str(token.access_token)
        elif hasattr(token, "__iter__") and "access_token" in token:
            return str(token["access_token"])
        else:
            return None


class MyTokenRepository(TokenRepository):

    def __init__(self, token: Any):
        self._token = token

    def get_token(self) -> Any:
        return self._token

    def remove_token(self) -> bool:
        if self._token is not None:
            self._token = None
            return True
        return True

    def store_token(self, token: Any) -> bool:
        self._token = token
        return True


class InMemoryTokenRepository(TokenRepository):

    def __init__(self):
        self._token = None

    def get_token(self) -> Any:
        return self._token

    def remove_token(self) -> bool:
        if self._token is not None:
            self._token = None
            return True
        return True

    def store_token(self, token: Any) -> bool:
        self._token = token
        return True


TOKEN_REPOS = [
    MyTokenRepository,
    InMemoryTokenRepository
]

DEFAULT_TOKEN_REPO = InMemoryTokenRepository
