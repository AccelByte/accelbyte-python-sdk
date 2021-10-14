# Auto-generated at 2021-10-14T22:17:18.354424+08:00
# from: Justice Group Service (2.4.0)

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


class ModelsUpdateMemberRoleRequestV1(Model):
    """Models update member role request V1 (models.UpdateMemberRoleRequestV1)

    Properties:
        member_role_name: (memberRoleName) REQUIRED str
    """

    # region fields

    member_role_name: str                                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_member_role_name(self, value: str) -> ModelsUpdateMemberRoleRequestV1:
        self.member_role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "member_role_name") and self.member_role_name:
            result["memberRoleName"] = str(self.member_role_name)
        elif include_empty:
            result["memberRoleName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        member_role_name: str,
    ) -> ModelsUpdateMemberRoleRequestV1:
        instance = cls()
        instance.member_role_name = member_role_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateMemberRoleRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "memberRoleName" in dict_ and dict_["memberRoleName"] is not None:
            instance.member_role_name = str(dict_["memberRoleName"])
        elif include_empty:
            instance.member_role_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "memberRoleName": "member_role_name",
        }

    # endregion static methods
