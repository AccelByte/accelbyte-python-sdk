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


class ModelInviteUserRequestV3(Model):
    """Model invite user request V3 (model.InviteUserRequestV3)

    Properties:
        email_addresses: (emailAddresses) REQUIRED List[str]

        is_admin: (isAdmin) REQUIRED bool

        roles: (roles) REQUIRED List[str]

        language_tag: (languageTag) OPTIONAL str

        namespace: (namespace) OPTIONAL str
    """

    # region fields

    email_addresses: List[str]  # REQUIRED
    is_admin: bool  # REQUIRED
    roles: List[str]  # REQUIRED
    language_tag: str  # OPTIONAL
    namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_email_addresses(self, value: List[str]) -> ModelInviteUserRequestV3:
        self.email_addresses = value
        return self

    def with_is_admin(self, value: bool) -> ModelInviteUserRequestV3:
        self.is_admin = value
        return self

    def with_roles(self, value: List[str]) -> ModelInviteUserRequestV3:
        self.roles = value
        return self

    def with_language_tag(self, value: str) -> ModelInviteUserRequestV3:
        self.language_tag = value
        return self

    def with_namespace(self, value: str) -> ModelInviteUserRequestV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_addresses"):
            result["emailAddresses"] = [str(i0) for i0 in self.email_addresses]
        elif include_empty:
            result["emailAddresses"] = []
        if hasattr(self, "is_admin"):
            result["isAdmin"] = bool(self.is_admin)
        elif include_empty:
            result["isAdmin"] = False
        if hasattr(self, "roles"):
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_addresses: List[str],
        is_admin: bool,
        roles: List[str],
        language_tag: Optional[str] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> ModelInviteUserRequestV3:
        instance = cls()
        instance.email_addresses = email_addresses
        instance.is_admin = is_admin
        instance.roles = roles
        if language_tag is not None:
            instance.language_tag = language_tag
        if namespace is not None:
            instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelInviteUserRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddresses" in dict_ and dict_["emailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["emailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if "isAdmin" in dict_ and dict_["isAdmin"] is not None:
            instance.is_admin = bool(dict_["isAdmin"])
        elif include_empty:
            instance.is_admin = False
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelInviteUserRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelInviteUserRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelInviteUserRequestV3,
        List[ModelInviteUserRequestV3],
        Dict[Any, ModelInviteUserRequestV3],
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
            "emailAddresses": "email_addresses",
            "isAdmin": "is_admin",
            "roles": "roles",
            "languageTag": "language_tag",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailAddresses": True,
            "isAdmin": True,
            "roles": True,
            "languageTag": False,
            "namespace": False,
        }

    # endregion static methods
