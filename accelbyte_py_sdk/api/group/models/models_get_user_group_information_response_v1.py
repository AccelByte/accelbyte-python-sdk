# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Group Service

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

        joined_at: (joinedAt) REQUIRED str

        member_role_id: (memberRoleId) REQUIRED List[str]

        user_id: (userId) REQUIRED str

        status: (status) OPTIONAL str
    """

    # region fields

    group_id: str  # REQUIRED
    joined_at: str  # REQUIRED
    member_role_id: List[str]  # REQUIRED
    user_id: str  # REQUIRED
    status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_group_id(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.group_id = value
        return self

    def with_joined_at(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.joined_at = value
        return self

    def with_member_role_id(
        self, value: List[str]
    ) -> ModelsGetUserGroupInformationResponseV1:
        self.member_role_id = value
        return self

    def with_user_id(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.user_id = value
        return self

    def with_status(self, value: str) -> ModelsGetUserGroupInformationResponseV1:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_id"):
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = ""
        if hasattr(self, "joined_at"):
            result["joinedAt"] = str(self.joined_at)
        elif include_empty:
            result["joinedAt"] = ""
        if hasattr(self, "member_role_id"):
            result["memberRoleId"] = [str(i0) for i0 in self.member_role_id]
        elif include_empty:
            result["memberRoleId"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group_id: str,
        joined_at: str,
        member_role_id: List[str],
        user_id: str,
        status: Optional[str] = None,
        **kwargs,
    ) -> ModelsGetUserGroupInformationResponseV1:
        instance = cls()
        instance.group_id = group_id
        instance.joined_at = joined_at
        instance.member_role_id = member_role_id
        instance.user_id = user_id
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetUserGroupInformationResponseV1:
        instance = cls()
        if not dict_:
            return instance
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = ""
        if "joinedAt" in dict_ and dict_["joinedAt"] is not None:
            instance.joined_at = str(dict_["joinedAt"])
        elif include_empty:
            instance.joined_at = ""
        if "memberRoleId" in dict_ and dict_["memberRoleId"] is not None:
            instance.member_role_id = [str(i0) for i0 in dict_["memberRoleId"]]
        elif include_empty:
            instance.member_role_id = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetUserGroupInformationResponseV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetUserGroupInformationResponseV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetUserGroupInformationResponseV1,
        List[ModelsGetUserGroupInformationResponseV1],
        Dict[Any, ModelsGetUserGroupInformationResponseV1],
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
            "groupId": "group_id",
            "joinedAt": "joined_at",
            "memberRoleId": "member_role_id",
            "userId": "user_id",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupId": True,
            "joinedAt": True,
            "memberRoleId": True,
            "userId": True,
            "status": False,
        }

    # endregion static methods
