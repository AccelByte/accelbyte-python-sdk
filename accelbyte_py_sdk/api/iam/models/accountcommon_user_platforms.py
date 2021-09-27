# Auto-generated at 2021-09-27T17:12:31.500328+08:00
# from: Justice Iam Service (4.1.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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

from ..models.accountcommon_user_platform_info import AccountcommonUserPlatformInfo


class AccountcommonUserPlatforms(Model):
    """Accountcommon user platforms

    Properties:
        user_id_platforms: (userIdPlatforms) REQUIRED List[AccountcommonUserPlatformInfo]
    """

    # region fields

    user_id_platforms: List[AccountcommonUserPlatformInfo]                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_user_id_platforms(self, value: List[AccountcommonUserPlatformInfo]) -> AccountcommonUserPlatforms:
        self.user_id_platforms = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "user_id_platforms") and self.user_id_platforms:
            result["userIdPlatforms"] = [i0.to_dict(include_empty=include_empty) for i0 in self.user_id_platforms]
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonUserPlatforms:
        instance = cls()
        if not dict_:
            return instance
        if "userIdPlatforms" in dict_ and dict_["userIdPlatforms"] is not None:
            instance.user_id_platforms = [AccountcommonUserPlatformInfo.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["userIdPlatforms"]]
        elif include_empty:
            instance.user_id_platforms = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userIdPlatforms": "user_id_platforms",
        }

    # endregion static methods
