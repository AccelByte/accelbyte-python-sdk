# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
import json
import os
import yaml
from abc import ABC, abstractmethod
from os import environ
from pathlib import Path
from typing import Any, List, Optional, Tuple, Union


class ConfigRepository(ABC):
    @abstractmethod
    def auto_add_amazon_trace_id(self) -> bool:
        pass

    @abstractmethod
    def auto_add_user_agent(self) -> bool:
        pass

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

    @abstractmethod
    def get_app_name(self) -> str:
        pass

    @abstractmethod
    def get_app_version(self) -> str:
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
        app_name: Optional[str] = None,
        app_version: Optional[str] = None,
        auto_add_amazon_trace_id: Optional[bool] = None,
        auto_add_user_agent: Optional[bool] = None,
    ) -> None:
        self._base_url = base_url
        self._client_id = client_id
        self._client_secret = client_secret
        self._namespace = namespace if namespace else ""
        self._app_name = app_name if app_name else ""
        self._app_version = app_version if app_version else ""
        self._auto_add_amazon_trace_id = (
            auto_add_amazon_trace_id if auto_add_amazon_trace_id is not None else True
        )
        self._auto_add_user_agent = (
            auto_add_user_agent if auto_add_user_agent is not None else True
        )

    def auto_add_amazon_trace_id(self) -> bool:
        return self._auto_add_amazon_trace_id

    def auto_add_user_agent(self) -> bool:
        return self._auto_add_user_agent

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace

    def get_app_name(self) -> str:
        return self._app_name

    def get_app_version(self) -> str:
        return self._app_version


class DictConfigRepository(ConfigRepository):
    base_url_keys: List[str] = [
        "AB_BASE_URL",
        "baseUrl",
        "baseURL",
        "base-url",
        "BaseUrl",
        "BaseURL",
        "base_url",
    ]
    client_id_keys: List[str] = [
        "AB_CLIENT_ID",
        "clientId",
        "clientID",
        "client-id",
        "ClientId",
        "ClientID",
        "cliend_id",
    ]
    client_secret_keys: List[str] = [
        "AB_CLIENT_SECRET",
        "clientSecret",
        "client-secret",
        "ClientSecret",
        "cliend_secret",
    ]
    namespace_keys: List[str] = ["AB_NAMESPACE", "namespace", "Namespace"]
    app_name_keys: List[str] = ["AB_APP_NAME", "appName", "AppName"]
    app_version_keys: List[str] = ["AB_APP_VERSION", "appVersion", "AppVersion"]
    auto_add_amazon_trace_id_keys: List[str] = [
        "AB_AUTO_ADD_AMAZON_TRACE_ID",
        "autoAddAmazonTraceId",
        "AutoAddAmazonTraceId",
    ]
    auto_add_user_agent_keys: List[str] = [
        "AB_AUTO_ADD_USER_AGENT",
        "autoAddUserAgent",
        "AutoAddUserAgent",
    ]

    def __init__(self, dict_: dict):
        self._dict = dict_
        self._base_url = self._try_get_value(self.base_url_keys)
        self._client_id = self._try_get_value(self.client_id_keys)
        self._client_secret = self._try_get_value(self.client_secret_keys)
        self._namespace = self._try_get_value(self.namespace_keys)
        self._app_name = self._try_get_value(self.app_name_keys)
        self._app_version = self._try_get_value(self.app_version_keys)
        self._auto_add_amazon_trace_id = DictConfigRepository._force_cast_to_bool(
            self._try_get_value(self.auto_add_amazon_trace_id_keys, True)
        )
        self._auto_add_user_agent = DictConfigRepository._force_cast_to_bool(
            self._try_get_value(self.auto_add_user_agent_keys, True)
        )

    def auto_add_amazon_trace_id(self) -> bool:
        return self._auto_add_amazon_trace_id

    def auto_add_user_agent(self) -> bool:
        return self._auto_add_user_agent

    def get_base_url(self) -> str:
        return self._base_url

    def get_client_id(self) -> str:
        return self._client_id

    def get_client_secret(self) -> str:
        return self._client_secret

    def get_namespace(self) -> str:
        return self._namespace

    def get_app_name(self) -> str:
        return self._app_name

    def get_app_version(self) -> str:
        return self._app_version

    def _try_get_value(
        self, keys: Union[str, List[str]], default: Union[None, Any] = None
    ) -> Optional[Any]:
        if isinstance(keys, str):
            return self._dict.get(keys)
        else:
            for key in keys:
                value = self._dict.get(key)
                if value is not None:
                    return value
            return default

    @staticmethod
    def _force_cast_to_bool(value: Any) -> bool:
        if isinstance(value, bool):
            return value
        if isinstance(value, (dict, list, set, tuple)):
            return len(value) > 0
        if isinstance(value, (int, float)):
            return value != 0
        if isinstance(value, str):
            return value.lower() in ["1", "true", "y", "yes"]
        return False


class DotEnvFileConfigRepository(DictConfigRepository):
    def __init__(
        self, dotenv_file: Union[str, Path], set_env_var: Union[None, bool] = None
    ):
        set_env_var = set_env_var if set_env_var is not None else False

        if isinstance(dotenv_file, str):
            dotenv_file = Path(dotenv_file)
        if not dotenv_file.exists():
            raise FileNotFoundError(str(dotenv_file.resolve()))
        dotenv = dotenv_file.read_text()
        dict_ = {}
        for line in dotenv.splitlines(keepends=False):
            parts = line.split("=", maxsplit=1)
            if len(parts) != 2:
                raise ValueError
            key, value = parts[0], parts[1]
            if (
                (value.startswith('"') and value.endswith('"'))
                or value.startswith("'")
                and value.endswith("'")
            ):
                value = value[1:-1]
            dict_[key] = value
        if set_env_var and isinstance(dict_, dict):
            for k, v in dict_.items():
                os.environ[k] = v
        super().__init__(dict_)


class EnvironmentConfigRepository(DictConfigRepository):
    def __init__(self):
        super().__init__(dict(environ))


class JsonConfigRepository(DictConfigRepository):
    def __init__(self, json_: Union[str, dict]):
        if isinstance(json_, str):
            json_ = json.loads(json_)
        super().__init__(json_)


class JsonFileConfigRepository(JsonConfigRepository):
    def __init__(self, json_file: Union[str, Path]):
        if isinstance(json_file, str):
            json_file = Path(json_file)
        if not json_file.exists():
            raise FileNotFoundError(str(json_file.resolve()))
        json_ = json_file.read_text()
        super().__init__(json_)


class YamlConfigRepository(DictConfigRepository):
    def __init__(self, yaml_: Union[str, dict]):
        if isinstance(yaml_, str):
            yaml_ = yaml.safe_load(yaml_)
        super().__init__(yaml_)


class YamlFileConfigRepository(YamlConfigRepository):
    def __init__(self, yaml_file: Union[str, Path]):
        if isinstance(yaml_file, str):
            yaml_file = Path(yaml_file)
        if not yaml_file.exists():
            raise FileNotFoundError(str(yaml_file.resolve()))
        yaml_ = yaml_file.read_text()
        super().__init__(yaml_)


CONFIG_REPOS = [
    DictConfigRepository,
    DotEnvFileConfigRepository,
    EnvironmentConfigRepository,
    JsonConfigRepository,
    JsonFileConfigRepository,
    MyConfigRepository,
    YamlConfigRepository,
    YamlFileConfigRepository,
]

DEFAULT_CONFIG_REPO = EnvironmentConfigRepository
