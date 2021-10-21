# Auto-generated at 2021-10-21T08:52:32.181132+08:00
# from: Justice group Service (2.8.0)

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


class ModelsGroupMember(Model):
    """Models group member (models.GroupMember)

    Properties:
        member_role_id: (memberRoleId) REQUIRED List[str]

        user_id: (userId) REQUIRED str
    """

    # region fields

    member_role_id: List[str]                                                                      # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_member_role_id(self, value: List[str]) -> ModelsGroupMember:
        self.member_role_id = value
        return self

    def with_user_id(self, value: str) -> ModelsGroupMember:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "member_role_id") and self.member_role_id:
            result["memberRoleId"] = [str(i0) for i0 in self.member_role_id]
        elif include_empty:
            result["memberRoleId"] = []
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        member_role_id: List[str],
        user_id: str,
    ) -> ModelsGroupMember:
        instance = cls()
        instance.member_role_id = member_role_id
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGroupMember:
        instance = cls()
        if not dict_:
            return instance
        if "memberRoleId" in dict_ and dict_["memberRoleId"] is not None:
            instance.member_role_id = [str(i0) for i0 in dict_["memberRoleId"]]
        elif include_empty:
            instance.member_role_id = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "memberRoleId": "member_role_id",
            "userId": "user_id",
        }

    # endregion static methods
