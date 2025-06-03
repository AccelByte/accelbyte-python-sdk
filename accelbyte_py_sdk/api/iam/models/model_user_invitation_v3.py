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

from ..models.accountcommon_namespace_role import AccountcommonNamespaceRole


class ModelUserInvitationV3(Model):
    """Model user invitation V3 (model.UserInvitationV3)

    Properties:
        created_at: (createdAt) REQUIRED str

        email: (email) REQUIRED str

        expired_at: (expiredAt) REQUIRED str

        roles: (roles) REQUIRED List[AccountcommonNamespaceRole]

        acceptance_link: (acceptanceLink) OPTIONAL str

        additional_data: (additionalData) OPTIONAL str

        id_: (id) OPTIONAL str

        is_new_studio: (isNewStudio) OPTIONAL bool

        language_tag: (languageTag) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        namespace_display_name: (namespaceDisplayName) OPTIONAL str

        studio_namespace: (studioNamespace) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    email: str  # REQUIRED
    expired_at: str  # REQUIRED
    roles: List[AccountcommonNamespaceRole]  # REQUIRED
    acceptance_link: str  # OPTIONAL
    additional_data: str  # OPTIONAL
    id_: str  # OPTIONAL
    is_new_studio: bool  # OPTIONAL
    language_tag: str  # OPTIONAL
    namespace: str  # OPTIONAL
    namespace_display_name: str  # OPTIONAL
    studio_namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelUserInvitationV3:
        self.created_at = value
        return self

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

    def with_acceptance_link(self, value: str) -> ModelUserInvitationV3:
        self.acceptance_link = value
        return self

    def with_additional_data(self, value: str) -> ModelUserInvitationV3:
        self.additional_data = value
        return self

    def with_id(self, value: str) -> ModelUserInvitationV3:
        self.id_ = value
        return self

    def with_is_new_studio(self, value: bool) -> ModelUserInvitationV3:
        self.is_new_studio = value
        return self

    def with_language_tag(self, value: str) -> ModelUserInvitationV3:
        self.language_tag = value
        return self

    def with_namespace(self, value: str) -> ModelUserInvitationV3:
        self.namespace = value
        return self

    def with_namespace_display_name(self, value: str) -> ModelUserInvitationV3:
        self.namespace_display_name = value
        return self

    def with_studio_namespace(self, value: str) -> ModelUserInvitationV3:
        self.studio_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "acceptance_link"):
            result["acceptanceLink"] = str(self.acceptance_link)
        elif include_empty:
            result["acceptanceLink"] = ""
        if hasattr(self, "additional_data"):
            result["additionalData"] = str(self.additional_data)
        elif include_empty:
            result["additionalData"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
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
        if hasattr(self, "namespace_display_name"):
            result["namespaceDisplayName"] = str(self.namespace_display_name)
        elif include_empty:
            result["namespaceDisplayName"] = ""
        if hasattr(self, "studio_namespace"):
            result["studioNamespace"] = str(self.studio_namespace)
        elif include_empty:
            result["studioNamespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        email: str,
        expired_at: str,
        roles: List[AccountcommonNamespaceRole],
        acceptance_link: Optional[str] = None,
        additional_data: Optional[str] = None,
        id_: Optional[str] = None,
        is_new_studio: Optional[bool] = None,
        language_tag: Optional[str] = None,
        namespace: Optional[str] = None,
        namespace_display_name: Optional[str] = None,
        studio_namespace: Optional[str] = None,
        **kwargs,
    ) -> ModelUserInvitationV3:
        instance = cls()
        instance.created_at = created_at
        instance.email = email
        instance.expired_at = expired_at
        instance.roles = roles
        if acceptance_link is not None:
            instance.acceptance_link = acceptance_link
        if additional_data is not None:
            instance.additional_data = additional_data
        if id_ is not None:
            instance.id_ = id_
        if is_new_studio is not None:
            instance.is_new_studio = is_new_studio
        if language_tag is not None:
            instance.language_tag = language_tag
        if namespace is not None:
            instance.namespace = namespace
        if namespace_display_name is not None:
            instance.namespace_display_name = namespace_display_name
        if studio_namespace is not None:
            instance.studio_namespace = studio_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInvitationV3:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "acceptanceLink" in dict_ and dict_["acceptanceLink"] is not None:
            instance.acceptance_link = str(dict_["acceptanceLink"])
        elif include_empty:
            instance.acceptance_link = ""
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = str(dict_["additionalData"])
        elif include_empty:
            instance.additional_data = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
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
        if (
            "namespaceDisplayName" in dict_
            and dict_["namespaceDisplayName"] is not None
        ):
            instance.namespace_display_name = str(dict_["namespaceDisplayName"])
        elif include_empty:
            instance.namespace_display_name = ""
        if "studioNamespace" in dict_ and dict_["studioNamespace"] is not None:
            instance.studio_namespace = str(dict_["studioNamespace"])
        elif include_empty:
            instance.studio_namespace = ""
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
            "createdAt": "created_at",
            "email": "email",
            "expiredAt": "expired_at",
            "roles": "roles",
            "acceptanceLink": "acceptance_link",
            "additionalData": "additional_data",
            "id": "id_",
            "isNewStudio": "is_new_studio",
            "languageTag": "language_tag",
            "namespace": "namespace",
            "namespaceDisplayName": "namespace_display_name",
            "studioNamespace": "studio_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "email": True,
            "expiredAt": True,
            "roles": True,
            "acceptanceLink": False,
            "additionalData": False,
            "id": False,
            "isNewStudio": False,
            "languageTag": False,
            "namespace": False,
            "namespaceDisplayName": False,
            "studioNamespace": False,
        }

    # endregion static methods
