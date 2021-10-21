# justice-iam-service (4.4.1)

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

from ..models.accountcommon_role_member_v3 import AccountcommonRoleMemberV3


class ModelRoleMembersRequestV3(Model):
    """Model role members request V3 (model.RoleMembersRequestV3)

    Properties:
        members: (members) REQUIRED List[AccountcommonRoleMemberV3]
    """

    # region fields

    members: List[AccountcommonRoleMemberV3]                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_members(self, value: List[AccountcommonRoleMemberV3]) -> ModelRoleMembersRequestV3:
        self.members = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "members") and self.members:
            result["members"] = [i0.to_dict(include_empty=include_empty) for i0 in self.members]
        elif include_empty:
            result["members"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        members: List[AccountcommonRoleMemberV3],
    ) -> ModelRoleMembersRequestV3:
        instance = cls()
        instance.members = members
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleMembersRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [AccountcommonRoleMemberV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["members"]]
        elif include_empty:
            instance.members = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "members": "members",
        }

    # endregion static methods
