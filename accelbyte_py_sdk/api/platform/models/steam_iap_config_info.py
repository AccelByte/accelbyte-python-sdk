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


class SteamIAPConfigInfo(Model):
    """Steam IAP config info (SteamIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        publisher_authentication_key: (publisherAuthenticationKey) REQUIRED str

        app_id: (appId) OPTIONAL str
    """

    # region fields

    namespace: str  # REQUIRED
    publisher_authentication_key: str  # REQUIRED
    app_id: str  # OPTIONAL

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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        publisher_authentication_key: str,
        app_id: Optional[str] = None,
    ) -> SteamIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        instance.publisher_authentication_key = publisher_authentication_key
        if app_id is not None:
            instance.app_id = app_id
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "publisherAuthenticationKey": True,
            "appId": False,
        }

    # endregion static methods
