# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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
from ..models.model_user_active_ban_response_v3 import ModelUserActiveBanResponseV3
from ..models.model_user_permissions_response_v3 import ModelUserPermissionsResponseV3


class ModelPublicUserResponseV3(Model):
    """Model public user response V3 (model.PublicUserResponseV3)

    Properties:
        auth_type: (authType) REQUIRED str

        bans: (bans) REQUIRED List[ModelUserActiveBanResponseV3]

        created_at: (createdAt) REQUIRED str

        deletion_status: (deletionStatus) REQUIRED bool

        display_name: (displayName) REQUIRED str

        email_verified: (emailVerified) REQUIRED bool

        enabled: (enabled) REQUIRED bool

        last_date_of_birth_changed_time: (lastDateOfBirthChangedTime) REQUIRED str

        last_enabled_changed_time: (lastEnabledChangedTime) REQUIRED str

        namespace: (namespace) REQUIRED str

        namespace_roles: (namespaceRoles) REQUIRED List[AccountcommonNamespaceRole]

        permissions: (permissions) REQUIRED List[ModelUserPermissionsResponseV3]

        phone_verified: (phoneVerified) REQUIRED bool

        roles: (roles) REQUIRED List[str]

        user_id: (userId) REQUIRED str

        avatar_url: (avatarUrl) OPTIONAL str

        platform_id: (platformId) OPTIONAL str

        platform_user_id: (platformUserId) OPTIONAL str

        user_name: (userName) OPTIONAL str
    """

    # region fields

    auth_type: str  # REQUIRED
    bans: List[ModelUserActiveBanResponseV3]  # REQUIRED
    created_at: str  # REQUIRED
    deletion_status: bool  # REQUIRED
    display_name: str  # REQUIRED
    email_verified: bool  # REQUIRED
    enabled: bool  # REQUIRED
    last_date_of_birth_changed_time: str  # REQUIRED
    last_enabled_changed_time: str  # REQUIRED
    namespace: str  # REQUIRED
    namespace_roles: List[AccountcommonNamespaceRole]  # REQUIRED
    permissions: List[ModelUserPermissionsResponseV3]  # REQUIRED
    phone_verified: bool  # REQUIRED
    roles: List[str]  # REQUIRED
    user_id: str  # REQUIRED
    avatar_url: str  # OPTIONAL
    platform_id: str  # OPTIONAL
    platform_user_id: str  # OPTIONAL
    user_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> ModelPublicUserResponseV3:
        self.auth_type = value
        return self

    def with_bans(
        self, value: List[ModelUserActiveBanResponseV3]
    ) -> ModelPublicUserResponseV3:
        self.bans = value
        return self

    def with_created_at(self, value: str) -> ModelPublicUserResponseV3:
        self.created_at = value
        return self

    def with_deletion_status(self, value: bool) -> ModelPublicUserResponseV3:
        self.deletion_status = value
        return self

    def with_display_name(self, value: str) -> ModelPublicUserResponseV3:
        self.display_name = value
        return self

    def with_email_verified(self, value: bool) -> ModelPublicUserResponseV3:
        self.email_verified = value
        return self

    def with_enabled(self, value: bool) -> ModelPublicUserResponseV3:
        self.enabled = value
        return self

    def with_last_date_of_birth_changed_time(
        self, value: str
    ) -> ModelPublicUserResponseV3:
        self.last_date_of_birth_changed_time = value
        return self

    def with_last_enabled_changed_time(self, value: str) -> ModelPublicUserResponseV3:
        self.last_enabled_changed_time = value
        return self

    def with_namespace(self, value: str) -> ModelPublicUserResponseV3:
        self.namespace = value
        return self

    def with_namespace_roles(
        self, value: List[AccountcommonNamespaceRole]
    ) -> ModelPublicUserResponseV3:
        self.namespace_roles = value
        return self

    def with_permissions(
        self, value: List[ModelUserPermissionsResponseV3]
    ) -> ModelPublicUserResponseV3:
        self.permissions = value
        return self

    def with_phone_verified(self, value: bool) -> ModelPublicUserResponseV3:
        self.phone_verified = value
        return self

    def with_roles(self, value: List[str]) -> ModelPublicUserResponseV3:
        self.roles = value
        return self

    def with_user_id(self, value: str) -> ModelPublicUserResponseV3:
        self.user_id = value
        return self

    def with_avatar_url(self, value: str) -> ModelPublicUserResponseV3:
        self.avatar_url = value
        return self

    def with_platform_id(self, value: str) -> ModelPublicUserResponseV3:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelPublicUserResponseV3:
        self.platform_user_id = value
        return self

    def with_user_name(self, value: str) -> ModelPublicUserResponseV3:
        self.user_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["authType"] = str(self.auth_type)
        elif include_empty:
            result["authType"] = ""
        if hasattr(self, "bans"):
            result["bans"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.bans
            ]
        elif include_empty:
            result["bans"] = []
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "deletion_status"):
            result["deletionStatus"] = bool(self.deletion_status)
        elif include_empty:
            result["deletionStatus"] = False
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_verified"):
            result["emailVerified"] = bool(self.email_verified)
        elif include_empty:
            result["emailVerified"] = False
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "last_date_of_birth_changed_time"):
            result["lastDateOfBirthChangedTime"] = str(
                self.last_date_of_birth_changed_time
            )
        elif include_empty:
            result["lastDateOfBirthChangedTime"] = ""
        if hasattr(self, "last_enabled_changed_time"):
            result["lastEnabledChangedTime"] = str(self.last_enabled_changed_time)
        elif include_empty:
            result["lastEnabledChangedTime"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "namespace_roles"):
            result["namespaceRoles"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.namespace_roles
            ]
        elif include_empty:
            result["namespaceRoles"] = []
        if hasattr(self, "permissions"):
            result["permissions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.permissions
            ]
        elif include_empty:
            result["permissions"] = []
        if hasattr(self, "phone_verified"):
            result["phoneVerified"] = bool(self.phone_verified)
        elif include_empty:
            result["phoneVerified"] = False
        if hasattr(self, "roles"):
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "avatar_url"):
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "user_name"):
            result["userName"] = str(self.user_name)
        elif include_empty:
            result["userName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: str,
        bans: List[ModelUserActiveBanResponseV3],
        created_at: str,
        deletion_status: bool,
        display_name: str,
        email_verified: bool,
        enabled: bool,
        last_date_of_birth_changed_time: str,
        last_enabled_changed_time: str,
        namespace: str,
        namespace_roles: List[AccountcommonNamespaceRole],
        permissions: List[ModelUserPermissionsResponseV3],
        phone_verified: bool,
        roles: List[str],
        user_id: str,
        avatar_url: Optional[str] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        user_name: Optional[str] = None,
    ) -> ModelPublicUserResponseV3:
        instance = cls()
        instance.auth_type = auth_type
        instance.bans = bans
        instance.created_at = created_at
        instance.deletion_status = deletion_status
        instance.display_name = display_name
        instance.email_verified = email_verified
        instance.enabled = enabled
        instance.last_date_of_birth_changed_time = last_date_of_birth_changed_time
        instance.last_enabled_changed_time = last_enabled_changed_time
        instance.namespace = namespace
        instance.namespace_roles = namespace_roles
        instance.permissions = permissions
        instance.phone_verified = phone_verified
        instance.roles = roles
        instance.user_id = user_id
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if platform_id is not None:
            instance.platform_id = platform_id
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        if user_name is not None:
            instance.user_name = user_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPublicUserResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "authType" in dict_ and dict_["authType"] is not None:
            instance.auth_type = str(dict_["authType"])
        elif include_empty:
            instance.auth_type = ""
        if "bans" in dict_ and dict_["bans"] is not None:
            instance.bans = [
                ModelUserActiveBanResponseV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["bans"]
            ]
        elif include_empty:
            instance.bans = []
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "deletionStatus" in dict_ and dict_["deletionStatus"] is not None:
            instance.deletion_status = bool(dict_["deletionStatus"])
        elif include_empty:
            instance.deletion_status = False
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailVerified" in dict_ and dict_["emailVerified"] is not None:
            instance.email_verified = bool(dict_["emailVerified"])
        elif include_empty:
            instance.email_verified = False
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if (
            "lastDateOfBirthChangedTime" in dict_
            and dict_["lastDateOfBirthChangedTime"] is not None
        ):
            instance.last_date_of_birth_changed_time = str(
                dict_["lastDateOfBirthChangedTime"]
            )
        elif include_empty:
            instance.last_date_of_birth_changed_time = ""
        if (
            "lastEnabledChangedTime" in dict_
            and dict_["lastEnabledChangedTime"] is not None
        ):
            instance.last_enabled_changed_time = str(dict_["lastEnabledChangedTime"])
        elif include_empty:
            instance.last_enabled_changed_time = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "namespaceRoles" in dict_ and dict_["namespaceRoles"] is not None:
            instance.namespace_roles = [
                AccountcommonNamespaceRole.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["namespaceRoles"]
            ]
        elif include_empty:
            instance.namespace_roles = []
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [
                ModelUserPermissionsResponseV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["permissions"]
            ]
        elif include_empty:
            instance.permissions = []
        if "phoneVerified" in dict_ and dict_["phoneVerified"] is not None:
            instance.phone_verified = bool(dict_["phoneVerified"])
        elif include_empty:
            instance.phone_verified = False
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "userName" in dict_ and dict_["userName"] is not None:
            instance.user_name = str(dict_["userName"])
        elif include_empty:
            instance.user_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPublicUserResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPublicUserResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPublicUserResponseV3,
        List[ModelPublicUserResponseV3],
        Dict[Any, ModelPublicUserResponseV3],
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
            "authType": "auth_type",
            "bans": "bans",
            "createdAt": "created_at",
            "deletionStatus": "deletion_status",
            "displayName": "display_name",
            "emailVerified": "email_verified",
            "enabled": "enabled",
            "lastDateOfBirthChangedTime": "last_date_of_birth_changed_time",
            "lastEnabledChangedTime": "last_enabled_changed_time",
            "namespace": "namespace",
            "namespaceRoles": "namespace_roles",
            "permissions": "permissions",
            "phoneVerified": "phone_verified",
            "roles": "roles",
            "userId": "user_id",
            "avatarUrl": "avatar_url",
            "platformId": "platform_id",
            "platformUserId": "platform_user_id",
            "userName": "user_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "authType": True,
            "bans": True,
            "createdAt": True,
            "deletionStatus": True,
            "displayName": True,
            "emailVerified": True,
            "enabled": True,
            "lastDateOfBirthChangedTime": True,
            "lastEnabledChangedTime": True,
            "namespace": True,
            "namespaceRoles": True,
            "permissions": True,
            "phoneVerified": True,
            "roles": True,
            "userId": True,
            "avatarUrl": False,
            "platformId": False,
            "platformUserId": False,
            "userName": False,
        }

    # endregion static methods
