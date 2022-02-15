# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from abc import ABC, abstractmethod

from typing import Any


class TokenRepository(ABC):

    @abstractmethod
    def get_token(self) -> Any:
        pass

    @abstractmethod
    def remove_token(self) -> bool:
        pass

    # TODO(elmer): define what a Token is.
    @abstractmethod
    def store_token(self, token: Any) -> bool:
        pass


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
