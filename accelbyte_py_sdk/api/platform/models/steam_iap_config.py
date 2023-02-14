# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class SteamIAPConfig(Model):
    """Steam IAP config (SteamIAPConfig)

    Properties:
        app_id: (appId) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        publisher_authentication_key: (publisherAuthenticationKey) OPTIONAL str

        rvn: (rvn) OPTIONAL int

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    app_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    namespace: str  # OPTIONAL
    publisher_authentication_key: str  # OPTIONAL
    rvn: int  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> SteamIAPConfig:
        self.app_id = value
        return self

    def with_created_at(self, value: str) -> SteamIAPConfig:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> SteamIAPConfig:
        self.namespace = value
        return self

    def with_publisher_authentication_key(self, value: str) -> SteamIAPConfig:
        self.publisher_authentication_key = value
        return self

    def with_rvn(self, value: int) -> SteamIAPConfig:
        self.rvn = value
        return self

    def with_updated_at(self, value: str) -> SteamIAPConfig:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "rvn"):
            result["rvn"] = int(self.rvn)
        elif include_empty:
            result["rvn"] = 0
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: Optional[str] = None,
        created_at: Optional[str] = None,
        namespace: Optional[str] = None,
        publisher_authentication_key: Optional[str] = None,
        rvn: Optional[int] = None,
        updated_at: Optional[str] = None,
    ) -> SteamIAPConfig:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if created_at is not None:
            instance.created_at = created_at
        if namespace is not None:
            instance.namespace = namespace
        if publisher_authentication_key is not None:
            instance.publisher_authentication_key = publisher_authentication_key
        if rvn is not None:
            instance.rvn = rvn
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SteamIAPConfig:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "rvn" in dict_ and dict_["rvn"] is not None:
            instance.rvn = int(dict_["rvn"])
        elif include_empty:
            instance.rvn = 0
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SteamIAPConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SteamIAPConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SteamIAPConfig, List[SteamIAPConfig], Dict[Any, SteamIAPConfig]]:
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
            "createdAt": "created_at",
            "namespace": "namespace",
            "publisherAuthenticationKey": "publisher_authentication_key",
            "rvn": "rvn",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": False,
            "createdAt": False,
            "namespace": False,
            "publisherAuthenticationKey": False,
            "rvn": False,
            "updatedAt": False,
        }

    # endregion static methods
