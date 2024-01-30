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


class ApimodelsPlayerAttributesResponseBody(Model):
    """Apimodels player attributes response body (apimodels.PlayerAttributesResponseBody)

    Properties:
        crossplay_enabled: (crossplayEnabled) REQUIRED bool

        current_platform: (currentPlatform) REQUIRED str

        data: (data) REQUIRED Dict[str, Any]

        platforms: (platforms) REQUIRED List[ModelsUserPlatformInfo]

        roles: (roles) REQUIRED List[str]

        user_id: (userID) REQUIRED str
    """

    # region fields

    crossplay_enabled: bool  # REQUIRED
    current_platform: str  # REQUIRED
    data: Dict[str, Any]  # REQUIRED
    platforms: List[ModelsUserPlatformInfo]  # REQUIRED
    roles: List[str]  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_crossplay_enabled(
        self, value: bool
    ) -> ApimodelsPlayerAttributesResponseBody:
        self.crossplay_enabled = value
        return self

    def with_current_platform(
        self, value: str
    ) -> ApimodelsPlayerAttributesResponseBody:
        self.current_platform = value
        return self

    def with_data(self, value: Dict[str, Any]) -> ApimodelsPlayerAttributesResponseBody:
        self.data = value
        return self

    def with_platforms(
        self, value: List[ModelsUserPlatformInfo]
    ) -> ApimodelsPlayerAttributesResponseBody:
        self.platforms = value
        return self

    def with_roles(self, value: List[str]) -> ApimodelsPlayerAttributesResponseBody:
        self.roles = value
        return self

    def with_user_id(self, value: str) -> ApimodelsPlayerAttributesResponseBody:
        self.user_id = value
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
        if hasattr(self, "roles"):
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        if hasattr(self, "user_id"):
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
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
        roles: List[str],
        user_id: str,
        **kwargs,
    ) -> ApimodelsPlayerAttributesResponseBody:
        instance = cls()
        instance.crossplay_enabled = crossplay_enabled
        instance.current_platform = current_platform
        instance.data = data
        instance.platforms = platforms
        instance.roles = roles
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPlayerAttributesResponseBody:
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
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPlayerAttributesResponseBody]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPlayerAttributesResponseBody]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPlayerAttributesResponseBody,
        List[ApimodelsPlayerAttributesResponseBody],
        Dict[Any, ApimodelsPlayerAttributesResponseBody],
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
            "roles": "roles",
            "userID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "crossplayEnabled": True,
            "currentPlatform": True,
            "data": True,
            "platforms": True,
            "roles": True,
            "userID": True,
        }

    # endregion static methods
