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


class ModelInviteUserRequestV4(Model):
    """Model invite user request V4 (model.InviteUserRequestV4)

    Properties:
        assigned_namespaces: (assignedNamespaces) REQUIRED List[str]

        email_addresses: (emailAddresses) REQUIRED List[str]

        is_admin: (isAdmin) REQUIRED bool

        is_new_studio: (isNewStudio) OPTIONAL bool

        language_tag: (languageTag) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        role_id: (roleId) OPTIONAL str
    """

    # region fields

    assigned_namespaces: List[str]  # REQUIRED
    email_addresses: List[str]  # REQUIRED
    is_admin: bool  # REQUIRED
    is_new_studio: bool  # OPTIONAL
    language_tag: str  # OPTIONAL
    namespace: str  # OPTIONAL
    role_id: str  # OPTIONAL

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

    def with_is_new_studio(self, value: bool) -> ModelInviteUserRequestV4:
        self.is_new_studio = value
        return self

    def with_language_tag(self, value: str) -> ModelInviteUserRequestV4:
        self.language_tag = value
        return self

    def with_namespace(self, value: str) -> ModelInviteUserRequestV4:
        self.namespace = value
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
            result["isAdmin"] = False
        if hasattr(self, "is_new_studio"):
            result["isNewStudio"] = bool(self.is_new_studio)
        elif include_empty:
            result["isNewStudio"] = False
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        assigned_namespaces: List[str],
        email_addresses: List[str],
        is_admin: bool,
        is_new_studio: Optional[bool] = None,
        language_tag: Optional[str] = None,
        namespace: Optional[str] = None,
        role_id: Optional[str] = None,
        **kwargs,
    ) -> ModelInviteUserRequestV4:
        instance = cls()
        instance.assigned_namespaces = assigned_namespaces
        instance.email_addresses = email_addresses
        instance.is_admin = is_admin
        if is_new_studio is not None:
            instance.is_new_studio = is_new_studio
        if language_tag is not None:
            instance.language_tag = language_tag
        if namespace is not None:
            instance.namespace = namespace
        if role_id is not None:
            instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelInviteUserRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [
                str(i0) for i0 in dict_["assignedNamespaces"]
            ]
        elif include_empty:
            instance.assigned_namespaces = []
        if "emailAddresses" in dict_ and dict_["emailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["emailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if "isAdmin" in dict_ and dict_["isAdmin"] is not None:
            instance.is_admin = bool(dict_["isAdmin"])
        elif include_empty:
            instance.is_admin = False
        if "isNewStudio" in dict_ and dict_["isNewStudio"] is not None:
            instance.is_new_studio = bool(dict_["isNewStudio"])
        elif include_empty:
            instance.is_new_studio = False
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelInviteUserRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelInviteUserRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelInviteUserRequestV4,
        List[ModelInviteUserRequestV4],
        Dict[Any, ModelInviteUserRequestV4],
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
            "assignedNamespaces": "assigned_namespaces",
            "emailAddresses": "email_addresses",
            "isAdmin": "is_admin",
            "isNewStudio": "is_new_studio",
            "languageTag": "language_tag",
            "namespace": "namespace",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "assignedNamespaces": True,
            "emailAddresses": True,
            "isAdmin": True,
            "isNewStudio": False,
            "languageTag": False,
            "namespace": False,
            "roleId": False,
        }

    # endregion static methods
