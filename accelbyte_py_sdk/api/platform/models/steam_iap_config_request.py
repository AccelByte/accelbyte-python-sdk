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


class SteamIAPConfigRequest(Model):
    """Steam IAP config request (SteamIAPConfigRequest)

    Properties:
        app_id: (appId) REQUIRED str

        env: (env) OPTIONAL Union[str, EnvEnum]

        publisher_authentication_key: (publisherAuthenticationKey) OPTIONAL str

        sync_mode: (syncMode) OPTIONAL Union[str, SyncModeEnum]
    """

    # region fields

    app_id: str  # REQUIRED
    env: Union[str, EnvEnum]  # OPTIONAL
    publisher_authentication_key: str  # OPTIONAL
    sync_mode: Union[str, SyncModeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> SteamIAPConfigRequest:
        self.app_id = value
        return self

    def with_env(self, value: Union[str, EnvEnum]) -> SteamIAPConfigRequest:
        self.env = value
        return self

    def with_publisher_authentication_key(self, value: str) -> SteamIAPConfigRequest:
        self.publisher_authentication_key = value
        return self

    def with_sync_mode(self, value: Union[str, SyncModeEnum]) -> SteamIAPConfigRequest:
        self.sync_mode = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "env"):
            result["env"] = str(self.env)
        elif include_empty:
            result["env"] = Union[str, EnvEnum]()
        if hasattr(self, "publisher_authentication_key"):
            result["publisherAuthenticationKey"] = str(
                self.publisher_authentication_key
            )
        elif include_empty:
            result["publisherAuthenticationKey"] = ""
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
        app_id: str,
        env: Optional[Union[str, EnvEnum]] = None,
        publisher_authentication_key: Optional[str] = None,
        sync_mode: Optional[Union[str, SyncModeEnum]] = None,
        **kwargs,
    ) -> SteamIAPConfigRequest:
        instance = cls()
        instance.app_id = app_id
        if env is not None:
            instance.env = env
        if publisher_authentication_key is not None:
            instance.publisher_authentication_key = publisher_authentication_key
        if sync_mode is not None:
            instance.sync_mode = sync_mode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SteamIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "env" in dict_ and dict_["env"] is not None:
            instance.env = str(dict_["env"])
        elif include_empty:
            instance.env = Union[str, EnvEnum]()
        if (
            "publisherAuthenticationKey" in dict_
            and dict_["publisherAuthenticationKey"] is not None
        ):
            instance.publisher_authentication_key = str(
                dict_["publisherAuthenticationKey"]
            )
        elif include_empty:
            instance.publisher_authentication_key = ""
        if "syncMode" in dict_ and dict_["syncMode"] is not None:
            instance.sync_mode = str(dict_["syncMode"])
        elif include_empty:
            instance.sync_mode = Union[str, SyncModeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SteamIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SteamIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SteamIAPConfigRequest,
        List[SteamIAPConfigRequest],
        Dict[Any, SteamIAPConfigRequest],
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
            "appId": "app_id",
            "env": "env",
            "publisherAuthenticationKey": "publisher_authentication_key",
            "syncMode": "sync_mode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "env": False,
            "publisherAuthenticationKey": False,
            "syncMode": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "env": ["LIVE", "SANDBOX"],
            "syncMode": ["INVENTORY", "TRANSACTION"],
        }

    # endregion static methods
