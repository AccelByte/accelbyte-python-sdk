# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum


class EnvEnum(StrEnum):
    LIVE = "LIVE"
    SANDBOX = "SANDBOX"


class SyncModeEnum(StrEnum):
    INVENTORY = "INVENTORY"
    TRANSACTION = "TRANSACTION"


class SteamIAPConfigInfo(Model):
    """Steam IAP config info (SteamIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        publisher_authentication_key: (publisherAuthenticationKey) REQUIRED str

        app_id: (appId) OPTIONAL str

        env: (env) OPTIONAL Union[str, EnvEnum]

        sync_mode: (syncMode) OPTIONAL Union[str, SyncModeEnum]
    """

    # region fields

    namespace: str  # REQUIRED
    publisher_authentication_key: str  # REQUIRED
    app_id: str  # OPTIONAL
    env: Union[str, EnvEnum]  # OPTIONAL
    sync_mode: Union[str, SyncModeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> SteamIAPConfigInfo:
        self.namespace = value
        return self

    def with_publisher_authentication_key(self, value: str) -> SteamIAPConfigInfo:
        self.publisher_authentication_key = value
        return self

    def with_app_id(self, value: str) -> SteamIAPConfigInfo:
        self.app_id = value
        return self

    def with_env(self, value: Union[str, EnvEnum]) -> SteamIAPConfigInfo:
        self.env = value
        return self

    def with_sync_mode(self, value: Union[str, SyncModeEnum]) -> SteamIAPConfigInfo:
        self.sync_mode = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "publisher_authentication_key"):
            result["publisherAuthenticationKey"] = str(
                self.publisher_authentication_key
            )
        elif include_empty:
            result["publisherAuthenticationKey"] = ""
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "env"):
            result["env"] = str(self.env)
        elif include_empty:
            result["env"] = Union[str, EnvEnum]()
        if hasattr(self, "sync_mode"):
            result["syncMode"] = str(self.sync_mode)
        elif include_empty:
            result["syncMode"] = Union[str, SyncModeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        publisher_authentication_key: str,
        app_id: Optional[str] = None,
        env: Optional[Union[str, EnvEnum]] = None,
        sync_mode: Optional[Union[str, SyncModeEnum]] = None,
        **kwargs,
    ) -> SteamIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        instance.publisher_authentication_key = publisher_authentication_key
        if app_id is not None:
            instance.app_id = app_id
        if env is not None:
            instance.env = env
        if sync_mode is not None:
            instance.sync_mode = sync_mode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SteamIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "publisherAuthenticationKey" in dict_
            and dict_["publisherAuthenticationKey"] is not None
        ):
            instance.publisher_authentication_key = str(
                dict_["publisherAuthenticationKey"]
            )
        elif include_empty:
            instance.publisher_authentication_key = ""
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "env" in dict_ and dict_["env"] is not None:
            instance.env = str(dict_["env"])
        elif include_empty:
            instance.env = Union[str, EnvEnum]()
        if "syncMode" in dict_ and dict_["syncMode"] is not None:
            instance.sync_mode = str(dict_["syncMode"])
        elif include_empty:
            instance.sync_mode = Union[str, SyncModeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SteamIAPConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SteamIAPConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SteamIAPConfigInfo, List[SteamIAPConfigInfo], Dict[Any, SteamIAPConfigInfo]
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "publisherAuthenticationKey": "publisher_authentication_key",
            "appId": "app_id",
            "env": "env",
            "syncMode": "sync_mode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "publisherAuthenticationKey": True,
            "appId": False,
            "env": False,
            "syncMode": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "env": ["LIVE", "SANDBOX"],
            "syncMode": ["INVENTORY", "TRANSACTION"],
        }

    # endregion static methods
