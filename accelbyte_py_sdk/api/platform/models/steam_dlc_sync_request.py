# justice-platform-service (4.2.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class SteamDLCSyncRequest(Model):
    """Steam DLC sync request (SteamDLCSyncRequest)

    Properties:
        app_id: (appId) REQUIRED str

        steam_id: (steamId) REQUIRED str
    """

    # region fields

    app_id: str                                                                                    # REQUIRED
    steam_id: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> SteamDLCSyncRequest:
        self.app_id = value
        return self

    def with_steam_id(self, value: str) -> SteamDLCSyncRequest:
        self.steam_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "steam_id"):
            result["steamId"] = str(self.steam_id)
        elif include_empty:
            result["steamId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        steam_id: str,
    ) -> SteamDLCSyncRequest:
        instance = cls()
        instance.app_id = app_id
        instance.steam_id = steam_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SteamDLCSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "steamId" in dict_ and dict_["steamId"] is not None:
            instance.steam_id = str(dict_["steamId"])
        elif include_empty:
            instance.steam_id = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, SteamDLCSyncRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[SteamDLCSyncRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[SteamDLCSyncRequest, List[SteamDLCSyncRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "appId": "app_id",
            "steamId": "steam_id",
        }

    # endregion static methods
