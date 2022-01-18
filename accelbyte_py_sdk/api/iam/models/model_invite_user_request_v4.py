# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelInviteUserRequestV4(Model):
    """Model invite user request V4 (model.InviteUserRequestV4)

    Properties:
        assigned_namespaces: (assignedNamespaces) REQUIRED List[str]

        email_addresses: (emailAddresses) REQUIRED List[str]

        is_admin: (isAdmin) REQUIRED bool

        role_id: (roleId) REQUIRED str
    """

    # region fields

    assigned_namespaces: List[str]                                                                 # REQUIRED
    email_addresses: List[str]                                                                     # REQUIRED
    is_admin: bool                                                                                 # REQUIRED
    role_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_assigned_namespaces(self, value: List[str]) -> ModelInviteUserRequestV4:
        self.assigned_namespaces = value
        return self

    def with_email_addresses(self, value: List[str]) -> ModelInviteUserRequestV4:
        self.email_addresses = value
        return self

    def with_is_admin(self, value: bool) -> ModelInviteUserRequestV4:
        self.is_admin = value
        return self

    def with_role_id(self, value: str) -> ModelInviteUserRequestV4:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "assigned_namespaces"):
            result["assignedNamespaces"] = [str(i0) for i0 in self.assigned_namespaces]
        elif include_empty:
            result["assignedNamespaces"] = []
        if hasattr(self, "email_addresses"):
            result["emailAddresses"] = [str(i0) for i0 in self.email_addresses]
        elif include_empty:
            result["emailAddresses"] = []
        if hasattr(self, "is_admin"):
            result["isAdmin"] = bool(self.is_admin)
        elif include_empty:
            result["isAdmin"] = bool()
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
        email_addresses: List[str],
        is_admin: bool,
        role_id: str,
    ) -> ModelInviteUserRequestV4:
        instance = cls()
        instance.assigned_namespaces = assigned_namespaces
        instance.email_addresses = email_addresses
        instance.is_admin = is_admin
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelInviteUserRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [str(i0) for i0 in dict_["assignedNamespaces"]]
        elif include_empty:
            instance.assigned_namespaces = []
        if "emailAddresses" in dict_ and dict_["emailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["emailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if "isAdmin" in dict_ and dict_["isAdmin"] is not None:
            instance.is_admin = bool(dict_["isAdmin"])
        elif include_empty:
            instance.is_admin = bool()
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "assignedNamespaces": "assigned_namespaces",
            "emailAddresses": "email_addresses",
            "isAdmin": "is_admin",
            "roleId": "role_id",
        }

    # endregion static methods