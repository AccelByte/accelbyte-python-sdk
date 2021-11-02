from __future__ import annotations
import json
from abc import ABC, abstractmethod
from os import environ
from pathlib import Path
from typing import List, Optional, Tuple, Union


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


class DictConfigRepository(ConfigRepository):

    base_url_keys: List[str] = ["AB_BASE_URL", "baseUrl", "baseURL", "base-url", "BaseUrl", "BaseURL", "base_url"]
    client_id_keys: List[str] = ["AB_CLIENT_ID", "clientId", "clientID", "client-id", "ClientId", "ClientID", "cliend_id"]
    client_secret_keys: List[str] = ["AB_CLIENT_SECRET", "clientSecret", "client-secret", "ClientSecret", "cliend_secret"]
    namespace_keys: List[str] = ["AB_NAMESPACE", "namespace", "Namespace"]

    def __init__(self, dict_: dict):
        self._dict = dict_
        self._base_url = self._try_get_value(self.base_url_keys)
        self._client_id = self._try_get_value(self.client_id_keys)
        self._client_secret = self._try_get_value(self.client_secret_keys)
        self._namespace = self._try_get_value(self.namespace_keys)

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace

    def _try_get_value(self, keys: Union[str, List[str]]) -> Optional[str]:
        if isinstance(keys, str):
            return self._dict.get(keys)
        else:
            for key in keys:
                value = self._dict.get(key)
                if value is not None:
                    return value
            return None


class EnvironmentConfigRepository(DictConfigRepository):

    def __init__(self):
        super().__init__(dict(environ))

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace


class JsonConfigRepository(DictConfigRepository):

    def __init__(self, json_: Union[str, dict]):
        if isinstance(json_, str):
            json_ = json.loads(json_)
        super().__init__(json_)

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace


class JsonFileConfigRepository(JsonConfigRepository):

    def __init__(self, json_file: Union[str, Path]):
        if isinstance(json_file, str):
            json_file = Path(json_file)
        if not json_file.exists():
            raise FileExistsError
        json_ = json_file.read_text()
        super().__init__(json_)

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace
