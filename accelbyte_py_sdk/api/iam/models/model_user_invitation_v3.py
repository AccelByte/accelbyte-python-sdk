# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service (7.7.0)

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

from ..models.accountcommon_namespace_role import AccountcommonNamespaceRole


class ModelUserInvitationV3(Model):
    """Model user invitation V3 (model.UserInvitationV3)

    Properties:
        email: (email) REQUIRED str

        expired_at: (expiredAt) REQUIRED str

        roles: (roles) REQUIRED List[AccountcommonNamespaceRole]

        additional_data: (additionalData) OPTIONAL str

        id_: (id) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        namespace_display_name: (namespaceDisplayName) OPTIONAL str
    """

    # region fields

    email: str  # REQUIRED
    expired_at: str  # REQUIRED
    roles: List[AccountcommonNamespaceRole]  # REQUIRED
    additional_data: str  # OPTIONAL
    id_: str  # OPTIONAL
    namespace: str  # OPTIONAL
    namespace_display_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_email(self, value: str) -> ModelUserInvitationV3:
        self.email = value
        return self

    def with_expired_at(self, value: str) -> ModelUserInvitationV3:
        self.expired_at = value
        return self

    def with_roles(
        self, value: List[AccountcommonNamespaceRole]
    ) -> ModelUserInvitationV3:
        self.roles = value
        return self

    def with_additional_data(self, value: str) -> ModelUserInvitationV3:
        self.additional_data = value
        return self

    def with_id(self, value: str) -> ModelUserInvitationV3:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelUserInvitationV3:
        self.namespace = value
        return self

    def with_namespace_display_name(self, value: str) -> ModelUserInvitationV3:
        self.namespace_display_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email"):
            result["email"] = str(self.email)
        elif include_empty:
            result["email"] = ""
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        if hasattr(self, "roles"):
            result["roles"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.roles
            ]
        elif include_empty:
            result["roles"] = []
        if hasattr(self, "additional_data"):
            result["additionalData"] = str(self.additional_data)
        elif include_empty:
            result["additionalData"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "namespace_display_name"):
            result["namespaceDisplayName"] = str(self.namespace_display_name)
        elif include_empty:
            result["namespaceDisplayName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email: str,
        expired_at: str,
        roles: List[AccountcommonNamespaceRole],
        additional_data: Optional[str] = None,
        id_: Optional[str] = None,
        namespace: Optional[str] = None,
        namespace_display_name: Optional[str] = None,
        **kwargs,
    ) -> ModelUserInvitationV3:
        instance = cls()
        instance.email = email
        instance.expired_at = expired_at
        instance.roles = roles
        if additional_data is not None:
            instance.additional_data = additional_data
        if id_ is not None:
            instance.id_ = id_
        if namespace is not None:
            instance.namespace = namespace
        if namespace_display_name is not None:
            instance.namespace_display_name = namespace_display_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInvitationV3:
        instance = cls()
        if not dict_:
            return instance
        if "email" in dict_ and dict_["email"] is not None:
            instance.email = str(dict_["email"])
        elif include_empty:
            instance.email = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [
                AccountcommonNamespaceRole.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["roles"]
            ]
        elif include_empty:
            instance.roles = []
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = str(dict_["additionalData"])
        elif include_empty:
            instance.additional_data = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "namespaceDisplayName" in dict_
            and dict_["namespaceDisplayName"] is not None
        ):
            instance.namespace_display_name = str(dict_["namespaceDisplayName"])
        elif include_empty:
            instance.namespace_display_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserInvitationV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserInvitationV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserInvitationV3,
        List[ModelUserInvitationV3],
        Dict[Any, ModelUserInvitationV3],
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
            "email": "email",
            "expiredAt": "expired_at",
            "roles": "roles",
            "additionalData": "additional_data",
            "id": "id_",
            "namespace": "namespace",
            "namespaceDisplayName": "namespace_display_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "email": True,
            "expiredAt": True,
            "roles": True,
            "additionalData": False,
            "id": False,
            "namespace": False,
            "namespaceDisplayName": False,
        }

    # endregion static methods
