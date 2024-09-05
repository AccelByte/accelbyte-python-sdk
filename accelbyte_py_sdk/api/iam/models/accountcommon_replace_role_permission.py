# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.accountcommon_override_role_permission import (
    AccountcommonOverrideRolePermission,
)


class AccountcommonReplaceRolePermission(Model):
    """Accountcommon replace role permission (accountcommon.ReplaceRolePermission)

    Properties:
        replacement: (replacement) REQUIRED AccountcommonOverrideRolePermission

        target: (target) REQUIRED str
    """

    # region fields

    replacement: AccountcommonOverrideRolePermission  # REQUIRED
    target: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_replacement(
        self, value: AccountcommonOverrideRolePermission
    ) -> AccountcommonReplaceRolePermission:
        self.replacement = value
        return self

    def with_target(self, value: str) -> AccountcommonReplaceRolePermission:
        self.target = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "replacement"):
            result["replacement"] = self.replacement.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["replacement"] = AccountcommonOverrideRolePermission()
        if hasattr(self, "target"):
            result["target"] = str(self.target)
        elif include_empty:
            result["target"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, replacement: AccountcommonOverrideRolePermission, target: str, **kwargs
    ) -> AccountcommonReplaceRolePermission:
        instance = cls()
        instance.replacement = replacement
        instance.target = target
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonReplaceRolePermission:
        instance = cls()
        if not dict_:
            return instance
        if "replacement" in dict_ and dict_["replacement"] is not None:
            instance.replacement = AccountcommonOverrideRolePermission.create_from_dict(
                dict_["replacement"], include_empty=include_empty
            )
        elif include_empty:
            instance.replacement = AccountcommonOverrideRolePermission()
        if "target" in dict_ and dict_["target"] is not None:
            instance.target = str(dict_["target"])
        elif include_empty:
            instance.target = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonReplaceRolePermission]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonReplaceRolePermission]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonReplaceRolePermission,
        List[AccountcommonReplaceRolePermission],
        Dict[Any, AccountcommonReplaceRolePermission],
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
            "replacement": "replacement",
            "target": "target",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "replacement": True,
            "target": True,
        }

    # endregion static methods
