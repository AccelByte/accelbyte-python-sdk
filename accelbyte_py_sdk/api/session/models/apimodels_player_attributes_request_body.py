# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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

from ..models.models_user_platform_info import ModelsUserPlatformInfo


class ApimodelsPlayerAttributesRequestBody(Model):
    """Apimodels player attributes request body (apimodels.PlayerAttributesRequestBody)

    Properties:
        crossplay_enabled: (crossplayEnabled) REQUIRED bool

        current_platform: (currentPlatform) REQUIRED str

        data: (data) REQUIRED Dict[str, Any]

        platforms: (platforms) REQUIRED List[ModelsUserPlatformInfo]

        simultaneous_platform: (simultaneousPlatform) REQUIRED str

        roles: (roles) OPTIONAL List[str]
    """

    # region fields

    crossplay_enabled: bool  # REQUIRED
    current_platform: str  # REQUIRED
    data: Dict[str, Any]  # REQUIRED
    platforms: List[ModelsUserPlatformInfo]  # REQUIRED
    simultaneous_platform: str  # REQUIRED
    roles: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_crossplay_enabled(
        self, value: bool
    ) -> ApimodelsPlayerAttributesRequestBody:
        self.crossplay_enabled = value
        return self

    def with_current_platform(self, value: str) -> ApimodelsPlayerAttributesRequestBody:
        self.current_platform = value
        return self

    def with_data(self, value: Dict[str, Any]) -> ApimodelsPlayerAttributesRequestBody:
        self.data = value
        return self

    def with_platforms(
        self, value: List[ModelsUserPlatformInfo]
    ) -> ApimodelsPlayerAttributesRequestBody:
        self.platforms = value
        return self

    def with_simultaneous_platform(
        self, value: str
    ) -> ApimodelsPlayerAttributesRequestBody:
        self.simultaneous_platform = value
        return self

    def with_roles(self, value: List[str]) -> ApimodelsPlayerAttributesRequestBody:
        self.roles = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "crossplay_enabled"):
            result["crossplayEnabled"] = bool(self.crossplay_enabled)
        elif include_empty:
            result["crossplayEnabled"] = False
        if hasattr(self, "current_platform"):
            result["currentPlatform"] = str(self.current_platform)
        elif include_empty:
            result["currentPlatform"] = ""
        if hasattr(self, "data"):
            result["data"] = {str(k0): v0 for k0, v0 in self.data.items()}
        elif include_empty:
            result["data"] = {}
        if hasattr(self, "platforms"):
            result["platforms"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.platforms
            ]
        elif include_empty:
            result["platforms"] = []
        if hasattr(self, "simultaneous_platform"):
            result["simultaneousPlatform"] = str(self.simultaneous_platform)
        elif include_empty:
            result["simultaneousPlatform"] = ""
        if hasattr(self, "roles"):
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        crossplay_enabled: bool,
        current_platform: str,
        data: Dict[str, Any],
        platforms: List[ModelsUserPlatformInfo],
        simultaneous_platform: str,
        roles: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsPlayerAttributesRequestBody:
        instance = cls()
        instance.crossplay_enabled = crossplay_enabled
        instance.current_platform = current_platform
        instance.data = data
        instance.platforms = platforms
        instance.simultaneous_platform = simultaneous_platform
        if roles is not None:
            instance.roles = roles
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPlayerAttributesRequestBody:
        instance = cls()
        if not dict_:
            return instance
        if "crossplayEnabled" in dict_ and dict_["crossplayEnabled"] is not None:
            instance.crossplay_enabled = bool(dict_["crossplayEnabled"])
        elif include_empty:
            instance.crossplay_enabled = False
        if "currentPlatform" in dict_ and dict_["currentPlatform"] is not None:
            instance.current_platform = str(dict_["currentPlatform"])
        elif include_empty:
            instance.current_platform = ""
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = {str(k0): v0 for k0, v0 in dict_["data"].items()}
        elif include_empty:
            instance.data = {}
        if "platforms" in dict_ and dict_["platforms"] is not None:
            instance.platforms = [
                ModelsUserPlatformInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["platforms"]
            ]
        elif include_empty:
            instance.platforms = []
        if (
            "simultaneousPlatform" in dict_
            and dict_["simultaneousPlatform"] is not None
        ):
            instance.simultaneous_platform = str(dict_["simultaneousPlatform"])
        elif include_empty:
            instance.simultaneous_platform = ""
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPlayerAttributesRequestBody]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPlayerAttributesRequestBody]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPlayerAttributesRequestBody,
        List[ApimodelsPlayerAttributesRequestBody],
        Dict[Any, ApimodelsPlayerAttributesRequestBody],
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
            "crossplayEnabled": "crossplay_enabled",
            "currentPlatform": "current_platform",
            "data": "data",
            "platforms": "platforms",
            "simultaneousPlatform": "simultaneous_platform",
            "roles": "roles",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "crossplayEnabled": True,
            "currentPlatform": True,
            "data": True,
            "platforms": True,
            "simultaneousPlatform": True,
            "roles": False,
        }

    # endregion static methods
