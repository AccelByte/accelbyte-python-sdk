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


class ModelsUpdateMemberRoleRequestV1(Model):
    """Models update member role request V1 (models.UpdateMemberRoleRequestV1)

    Properties:
        member_role_name: (memberRoleName) REQUIRED str
    """

    # region fields

    member_role_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_member_role_name(self, value: str) -> ModelsUpdateMemberRoleRequestV1:
        self.member_role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "member_role_name"):
            result["memberRoleName"] = str(self.member_role_name)
        elif include_empty:
            result["memberRoleName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, member_role_name: str, **kwargs) -> ModelsUpdateMemberRoleRequestV1:
        instance = cls()
        instance.member_role_name = member_role_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateMemberRoleRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "memberRoleName" in dict_ and dict_["memberRoleName"] is not None:
            instance.member_role_name = str(dict_["memberRoleName"])
        elif include_empty:
            instance.member_role_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateMemberRoleRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateMemberRoleRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateMemberRoleRequestV1,
        List[ModelsUpdateMemberRoleRequestV1],
        Dict[Any, ModelsUpdateMemberRoleRequestV1],
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
            "memberRoleName": "member_role_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "memberRoleName": True,
        }

    # endregion static methods
