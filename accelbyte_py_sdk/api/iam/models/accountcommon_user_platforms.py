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

from ..models.accountcommon_user_platform_info import AccountcommonUserPlatformInfo


class AccountcommonUserPlatforms(Model):
    """Accountcommon user platforms (accountcommon.UserPlatforms)

    Properties:
        user_id_platforms: (userIdPlatforms) REQUIRED List[AccountcommonUserPlatformInfo]
    """

    # region fields

    user_id_platforms: List[AccountcommonUserPlatformInfo]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_user_id_platforms(
        self, value: List[AccountcommonUserPlatformInfo]
    ) -> AccountcommonUserPlatforms:
        self.user_id_platforms = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_id_platforms"):
            result["userIdPlatforms"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.user_id_platforms
            ]
        elif include_empty:
            result["userIdPlatforms"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_id_platforms: List[AccountcommonUserPlatformInfo],
    ) -> AccountcommonUserPlatforms:
        instance = cls()
        instance.user_id_platforms = user_id_platforms
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonUserPlatforms:
        instance = cls()
        if not dict_:
            return instance
        if "userIdPlatforms" in dict_ and dict_["userIdPlatforms"] is not None:
            instance.user_id_platforms = [
                AccountcommonUserPlatformInfo.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["userIdPlatforms"]
            ]
        elif include_empty:
            instance.user_id_platforms = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonUserPlatforms]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonUserPlatforms]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonUserPlatforms,
        List[AccountcommonUserPlatforms],
        Dict[Any, AccountcommonUserPlatforms],
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
            "userIdPlatforms": "user_id_platforms",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userIdPlatforms": True,
        }

    # endregion static methods
