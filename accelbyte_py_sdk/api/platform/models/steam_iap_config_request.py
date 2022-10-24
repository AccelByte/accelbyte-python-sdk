# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class SteamIAPConfigRequest(Model):
    """Steam IAP config request (SteamIAPConfigRequest)

    Properties:
        app_id: (appId) REQUIRED str

        publisher_authentication_key: (publisherAuthenticationKey) OPTIONAL str
    """

    # region fields

    app_id: str  # REQUIRED
    publisher_authentication_key: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> SteamIAPConfigRequest:
        self.app_id = value
        return self

    def with_publisher_authentication_key(self, value: str) -> SteamIAPConfigRequest:
        self.publisher_authentication_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "publisher_authentication_key"):
            result["publisherAuthenticationKey"] = str(
                self.publisher_authentication_key
            )
        elif include_empty:
            result["publisherAuthenticationKey"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        publisher_authentication_key: Optional[str] = None,
    ) -> SteamIAPConfigRequest:
        instance = cls()
        instance.app_id = app_id
        if publisher_authentication_key is not None:
            instance.publisher_authentication_key = publisher_authentication_key
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
        if (
            "publisherAuthenticationKey" in dict_
            and dict_["publisherAuthenticationKey"] is not None
        ):
            instance.publisher_authentication_key = str(
                dict_["publisherAuthenticationKey"]
            )
        elif include_empty:
            instance.publisher_authentication_key = ""
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
            "publisherAuthenticationKey": "publisher_authentication_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "publisherAuthenticationKey": False,
        }

    # endregion static methods
