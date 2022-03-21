# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelAddUserRoleV4Request(Model):
    """Model add user role V4 request (model.AddUserRoleV4Request)

    Properties:
        assigned_namespaces: (assignedNamespaces) REQUIRED List[str]

        role_id: (roleId) REQUIRED str
    """

    # region fields

    assigned_namespaces: List[str]                                                                 # REQUIRED
    role_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_assigned_namespaces(self, value: List[str]) -> ModelAddUserRoleV4Request:
        self.assigned_namespaces = value
        return self

    def with_role_id(self, value: str) -> ModelAddUserRoleV4Request:
        self.role_id = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "assigned_namespaces") or self.assigned_namespaces is None:
            return False
        if not hasattr(self, "role_id") or self.role_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "assigned_namespaces"):
            result["assignedNamespaces"] = [str(i0) for i0 in self.assigned_namespaces]
        elif include_empty:
            result["assignedNamespaces"] = []
        if hasattr(self, "role_id"):
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        assigned_namespaces: List[str],
        role_id: str,
    ) -> ModelAddUserRoleV4Request:
        instance = cls()
        instance.assigned_namespaces = assigned_namespaces
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelAddUserRoleV4Request:
        instance = cls()
        if not dict_:
            return instance
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [str(i0) for i0 in dict_["assignedNamespaces"]]
        elif include_empty:
            instance.assigned_namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelAddUserRoleV4Request]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelAddUserRoleV4Request]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelAddUserRoleV4Request, List[ModelAddUserRoleV4Request]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "assignedNamespaces": "assigned_namespaces",
            "roleId": "role_id",
        }

    # endregion static methods
