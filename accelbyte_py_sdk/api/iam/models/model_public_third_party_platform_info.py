# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelPublicThirdPartyPlatformInfo(Model):
    """Model public third party platform info (model.PublicThirdPartyPlatformInfo)

    Properties:
        app_id: (AppId) REQUIRED str

        client_id: (ClientId) REQUIRED str

        environment: (Environment) REQUIRED str

        is_active: (IsActive) REQUIRED bool

        platform_id: (PlatformId) REQUIRED str

        platform_name: (PlatformName) REQUIRED str
    """

    # region fields

    app_id: str  # REQUIRED
    client_id: str  # REQUIRED
    environment: str  # REQUIRED
    is_active: bool  # REQUIRED
    platform_id: str  # REQUIRED
    platform_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ModelPublicThirdPartyPlatformInfo:
        self.app_id = value
        return self

    def with_client_id(self, value: str) -> ModelPublicThirdPartyPlatformInfo:
        self.client_id = value
        return self

    def with_environment(self, value: str) -> ModelPublicThirdPartyPlatformInfo:
        self.environment = value
        return self

    def with_is_active(self, value: bool) -> ModelPublicThirdPartyPlatformInfo:
        self.is_active = value
        return self

    def with_platform_id(self, value: str) -> ModelPublicThirdPartyPlatformInfo:
        self.platform_id = value
        return self

    def with_platform_name(self, value: str) -> ModelPublicThirdPartyPlatformInfo:
        self.platform_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["AppId"] = str(self.app_id)
        elif include_empty:
            result["AppId"] = ""
        if hasattr(self, "client_id"):
            result["ClientId"] = str(self.client_id)
        elif include_empty:
            result["ClientId"] = ""
        if hasattr(self, "environment"):
            result["Environment"] = str(self.environment)
        elif include_empty:
            result["Environment"] = ""
        if hasattr(self, "is_active"):
            result["IsActive"] = bool(self.is_active)
        elif include_empty:
            result["IsActive"] = False
        if hasattr(self, "platform_id"):
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = ""
        if hasattr(self, "platform_name"):
            result["PlatformName"] = str(self.platform_name)
        elif include_empty:
            result["PlatformName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        client_id: str,
        environment: str,
        is_active: bool,
        platform_id: str,
        platform_name: str,
    ) -> ModelPublicThirdPartyPlatformInfo:
        instance = cls()
        instance.app_id = app_id
        instance.client_id = client_id
        instance.environment = environment
        instance.is_active = is_active
        instance.platform_id = platform_id
        instance.platform_name = platform_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPublicThirdPartyPlatformInfo:
        instance = cls()
        if not dict_:
            return instance
        if "AppId" in dict_ and dict_["AppId"] is not None:
            instance.app_id = str(dict_["AppId"])
        elif include_empty:
            instance.app_id = ""
        if "ClientId" in dict_ and dict_["ClientId"] is not None:
            instance.client_id = str(dict_["ClientId"])
        elif include_empty:
            instance.client_id = ""
        if "Environment" in dict_ and dict_["Environment"] is not None:
            instance.environment = str(dict_["Environment"])
        elif include_empty:
            instance.environment = ""
        if "IsActive" in dict_ and dict_["IsActive"] is not None:
            instance.is_active = bool(dict_["IsActive"])
        elif include_empty:
            instance.is_active = False
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = ""
        if "PlatformName" in dict_ and dict_["PlatformName"] is not None:
            instance.platform_name = str(dict_["PlatformName"])
        elif include_empty:
            instance.platform_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPublicThirdPartyPlatformInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPublicThirdPartyPlatformInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPublicThirdPartyPlatformInfo,
        List[ModelPublicThirdPartyPlatformInfo],
        Dict[Any, ModelPublicThirdPartyPlatformInfo],
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
            "AppId": "app_id",
            "ClientId": "client_id",
            "Environment": "environment",
            "IsActive": "is_active",
            "PlatformId": "platform_id",
            "PlatformName": "platform_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AppId": True,
            "ClientId": True,
            "Environment": True,
            "IsActive": True,
            "PlatformId": True,
            "PlatformName": True,
        }

    # endregion static methods
