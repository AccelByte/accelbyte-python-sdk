from __future__ import annotations
from abc import ABC, abstractmethod
from os import environ
from typing import Optional, Tuple


class ConfigRepository(ABC):

    @abstractmethod
    def get_base_url(self) -> str:
        pass

    @abstractmethod
    def get_client_id(self) -> str:
        pass

    @abstractmethod
    def get_client_secret(self) -> str:
        pass

    @abstractmethod
    def get_namespace(self) -> str:
        pass

    def get_client_auth(self) -> Tuple[str, str]:
        return self.get_client_id(), self.get_client_secret()


class MyConfigRepository(ConfigRepository):

    def __init__(
            self,
            base_url: str,
            client_id: str,
            client_secret: str,
            namespace: Optional[str] = None,
    ) -> None:
        self._base_url = base_url
        self._client_id = client_id
        self._client_secret = client_secret
        self._namespace = namespace if namespace else ""

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace


class EnvironmentConfigRepository(ConfigRepository):

    def __init__(self):
        self._base_url = environ["ACB_DEV_BASE_URL"]
        self._client_id = environ["ACB_DEV_CLIENT_ID"]
        self._client_secret = environ["ACB_DEV_CLIENT_SECRET"]
        self._namespace = environ["ACB_DEV_PRODUCT_NAMESPACE"]

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace
