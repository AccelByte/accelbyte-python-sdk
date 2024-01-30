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


class AllowedPlatformOriginsEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class EntitlementPlatformConfigUpdate(Model):
    """A DTO object for updating entitlement platform config API call. (EntitlementPlatformConfigUpdate)

    Properties:
        allowed_platform_origins: (allowedPlatformOrigins) OPTIONAL List[Union[str, AllowedPlatformOriginsEnum]]
    """

    # region fields

    allowed_platform_origins: List[Union[str, AllowedPlatformOriginsEnum]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_platform_origins(
        self, value: List[Union[str, AllowedPlatformOriginsEnum]]
    ) -> EntitlementPlatformConfigUpdate:
        self.allowed_platform_origins = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_platform_origins"):
            result["allowedPlatformOrigins"] = [
                str(i0) for i0 in self.allowed_platform_origins
            ]
        elif include_empty:
            result["allowedPlatformOrigins"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_platform_origins: Optional[
            List[Union[str, AllowedPlatformOriginsEnum]]
        ] = None,
        **kwargs,
    ) -> EntitlementPlatformConfigUpdate:
        instance = cls()
        if allowed_platform_origins is not None:
            instance.allowed_platform_origins = allowed_platform_origins
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementPlatformConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowedPlatformOrigins" in dict_
            and dict_["allowedPlatformOrigins"] is not None
        ):
            instance.allowed_platform_origins = [
                str(i0) for i0 in dict_["allowedPlatformOrigins"]
            ]
        elif include_empty:
            instance.allowed_platform_origins = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementPlatformConfigUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementPlatformConfigUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementPlatformConfigUpdate,
        List[EntitlementPlatformConfigUpdate],
        Dict[Any, EntitlementPlatformConfigUpdate],
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
            "allowedPlatformOrigins": "allowed_platform_origins",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedPlatformOrigins": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "allowedPlatformOrigins": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
        }

    # endregion static methods
