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


class AccountcommonGroupAndRoleMappingForPatch(Model):
    """Accountcommon group and role mapping for patch (accountcommon.GroupAndRoleMappingForPatch)

    Properties:
        group: (group) REQUIRED str

        assign_namespaces: (assignNamespaces) OPTIONAL List[str]

        role_id: (roleId) OPTIONAL str
    """

    # region fields

    group: str  # REQUIRED
    assign_namespaces: List[str]  # OPTIONAL
    role_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_group(self, value: str) -> AccountcommonGroupAndRoleMappingForPatch:
        self.group = value
        return self

    def with_assign_namespaces(
        self, value: List[str]
    ) -> AccountcommonGroupAndRoleMappingForPatch:
        self.assign_namespaces = value
        return self

    def with_role_id(self, value: str) -> AccountcommonGroupAndRoleMappingForPatch:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group"):
            result["group"] = str(self.group)
        elif include_empty:
            result["group"] = ""
        if hasattr(self, "assign_namespaces"):
            result["assignNamespaces"] = [str(i0) for i0 in self.assign_namespaces]
        elif include_empty:
            result["assignNamespaces"] = []
        if hasattr(self, "role_id"):
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group: str,
        assign_namespaces: Optional[List[str]] = None,
        role_id: Optional[str] = None,
        **kwargs,
    ) -> AccountcommonGroupAndRoleMappingForPatch:
        instance = cls()
        instance.group = group
        if assign_namespaces is not None:
            instance.assign_namespaces = assign_namespaces
        if role_id is not None:
            instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonGroupAndRoleMappingForPatch:
        instance = cls()
        if not dict_:
            return instance
        if "group" in dict_ and dict_["group"] is not None:
            instance.group = str(dict_["group"])
        elif include_empty:
            instance.group = ""
        if "assignNamespaces" in dict_ and dict_["assignNamespaces"] is not None:
            instance.assign_namespaces = [str(i0) for i0 in dict_["assignNamespaces"]]
        elif include_empty:
            instance.assign_namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonGroupAndRoleMappingForPatch]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonGroupAndRoleMappingForPatch]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonGroupAndRoleMappingForPatch,
        List[AccountcommonGroupAndRoleMappingForPatch],
        Dict[Any, AccountcommonGroupAndRoleMappingForPatch],
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
            "group": "group",
            "assignNamespaces": "assign_namespaces",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "group": True,
            "assignNamespaces": False,
            "roleId": False,
        }

    # endregion static methods
