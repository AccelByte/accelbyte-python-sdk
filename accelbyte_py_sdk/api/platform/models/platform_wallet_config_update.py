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
from ....core import StrEnum


class AllowedBalanceOriginsEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STADIA = "Stadia"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class PlatformWalletConfigUpdate(Model):
    """A DTO object for updating item API call. (PlatformWalletConfigUpdate)

    Properties:
        allowed_balance_origins: (allowedBalanceOrigins) OPTIONAL List[Union[str, AllowedBalanceOriginsEnum]]
    """

    # region fields

    allowed_balance_origins: List[Union[str, AllowedBalanceOriginsEnum]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_balance_origins(
        self, value: List[Union[str, AllowedBalanceOriginsEnum]]
    ) -> PlatformWalletConfigUpdate:
        self.allowed_balance_origins = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_balance_origins"):
            result["allowedBalanceOrigins"] = [
                str(i0) for i0 in self.allowed_balance_origins
            ]
        elif include_empty:
            result["allowedBalanceOrigins"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_balance_origins: Optional[
            List[Union[str, AllowedBalanceOriginsEnum]]
        ] = None,
    ) -> PlatformWalletConfigUpdate:
        instance = cls()
        if allowed_balance_origins is not None:
            instance.allowed_balance_origins = allowed_balance_origins
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformWalletConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowedBalanceOrigins" in dict_
            and dict_["allowedBalanceOrigins"] is not None
        ):
            instance.allowed_balance_origins = [
                str(i0) for i0 in dict_["allowedBalanceOrigins"]
            ]
        elif include_empty:
            instance.allowed_balance_origins = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlatformWalletConfigUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlatformWalletConfigUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlatformWalletConfigUpdate,
        List[PlatformWalletConfigUpdate],
        Dict[Any, PlatformWalletConfigUpdate],
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
            "allowedBalanceOrigins": "allowed_balance_origins",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedBalanceOrigins": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "allowedBalanceOrigins": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Other",
                "Playstation",
                "Stadia",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
        }

    # endregion static methods
