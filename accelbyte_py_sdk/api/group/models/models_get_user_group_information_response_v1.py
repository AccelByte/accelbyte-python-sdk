# justice-group-service (2.8.0)

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


class ModelsGetUserGroupInformationResponseV1(Model):
    """Models get user group information response V1 (models.GetUserGroupInformationResponseV1)

    Properties:
        group_id: (groupId) REQUIRED str

        member_role_id: (memberRoleId) REQUIRED List[str]

        status: (status) OPTIONAL str

        user_id: (userId) REQUIRED str
    """

    # region fields

    group_id: str                                                                                  # REQUIRED
    member_role_id: List[str]                                                                      # REQUIRED
    status: str                                                                                    # OPTIONAL
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_id(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.group_id = value
        return self

    def with_member_role_id(self, value: List[str]) -> ModelsGetUserGroupInformationResponseV1:
        self.member_role_id = value
        return self

    def with_status(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.status = value
        return self

    def with_user_id(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_id") and self.group_id:
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = str()
        if hasattr(self, "member_role_id") and self.member_role_id:
            result["memberRoleId"] = [str(i0) for i0 in self.member_role_id]
        elif include_empty:
            result["memberRoleId"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
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
        group_id: str,
        member_role_id: List[str],
        user_id: str,
        status: Optional[str] = None,
    ) -> ModelsGetUserGroupInformationResponseV1:
        instance = cls()
        instance.group_id = group_id
        instance.member_role_id = member_role_id
        instance.user_id = user_id
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetUserGroupInformationResponseV1:
        instance = cls()
        if not dict_:
            return instance
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = str()
        if "memberRoleId" in dict_ and dict_["memberRoleId"] is not None:
            instance.member_role_id = [str(i0) for i0 in dict_["memberRoleId"]]
        elif include_empty:
            instance.member_role_id = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "groupId": "group_id",
            "memberRoleId": "member_role_id",
            "status": "status",
            "userId": "user_id",
        }

    # endregion static methods
