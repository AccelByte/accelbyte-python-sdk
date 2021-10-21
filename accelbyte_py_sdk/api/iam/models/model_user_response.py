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

from ..models.accountcommon_namespace_role import AccountcommonNamespaceRole
from ..models.accountcommon_permission import AccountcommonPermission
from ..models.model_user_active_ban_response import ModelUserActiveBanResponse


class ModelUserResponse(Model):
    """Model user response (model.UserResponse)

    Properties:
        auth_type: (AuthType) REQUIRED str

        bans: (Bans) REQUIRED List[ModelUserActiveBanResponse]

        country: (Country) REQUIRED str

        created_at: (CreatedAt) REQUIRED str

        date_of_birth: (DateOfBirth) REQUIRED str

        deletion_status: (DeletionStatus) REQUIRED bool

        display_name: (DisplayName) REQUIRED str

        email_address: (EmailAddress) OPTIONAL str

        email_verified: (EmailVerified) REQUIRED bool

        enabled: (Enabled) REQUIRED bool

        last_date_of_birth_changed_time: (LastDateOfBirthChangedTime) REQUIRED str

        last_enabled_changed_time: (LastEnabledChangedTime) REQUIRED str

        login_id: (LoginId) REQUIRED str

        namespace: (Namespace) REQUIRED str

        namespace_roles: (NamespaceRoles) REQUIRED List[AccountcommonNamespaceRole]

        new_email_address: (NewEmailAddress) OPTIONAL str

        old_email_address: (OldEmailAddress) REQUIRED str

        permissions: (Permissions) REQUIRED List[AccountcommonPermission]

        phone_number: (PhoneNumber) OPTIONAL str

        phone_verified: (PhoneVerified) REQUIRED bool

        platform_id: (PlatformId) OPTIONAL str

        platform_user_id: (PlatformUserId) OPTIONAL str

        roles: (Roles) REQUIRED List[str]

        user_id: (UserId) REQUIRED str

        username: (Username) OPTIONAL str

        xuid: (XUID) OPTIONAL str
    """

    # region fields

    auth_type: str                                                                                 # REQUIRED
    bans: List[ModelUserActiveBanResponse]                                                         # REQUIRED
    country: str                                                                                   # REQUIRED
    created_at: str                                                                                # REQUIRED
    date_of_birth: str                                                                             # REQUIRED
    deletion_status: bool                                                                          # REQUIRED
    display_name: str                                                                              # REQUIRED
    email_address: str                                                                             # OPTIONAL
    email_verified: bool                                                                           # REQUIRED
    enabled: bool                                                                                  # REQUIRED
    last_date_of_birth_changed_time: str                                                           # REQUIRED
    last_enabled_changed_time: str                                                                 # REQUIRED
    login_id: str                                                                                  # REQUIRED
    namespace: str                                                                                 # REQUIRED
    namespace_roles: List[AccountcommonNamespaceRole]                                              # REQUIRED
    new_email_address: str                                                                         # OPTIONAL
    old_email_address: str                                                                         # REQUIRED
    permissions: List[AccountcommonPermission]                                                     # REQUIRED
    phone_number: str                                                                              # OPTIONAL
    phone_verified: bool                                                                           # REQUIRED
    platform_id: str                                                                               # OPTIONAL
    platform_user_id: str                                                                          # OPTIONAL
    roles: List[str]                                                                               # REQUIRED
    user_id: str                                                                                   # REQUIRED
    username: str                                                                                  # OPTIONAL
    xuid: str                                                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> ModelUserResponse:
        self.auth_type = value
        return self

    def with_bans(self, value: List[ModelUserActiveBanResponse]) -> ModelUserResponse:
        self.bans = value
        return self

    def with_country(self, value: str) -> ModelUserResponse:
        self.country = value
        return self

    def with_created_at(self, value: str) -> ModelUserResponse:
        self.created_at = value
        return self

    def with_date_of_birth(self, value: str) -> ModelUserResponse:
        self.date_of_birth = value
        return self

    def with_deletion_status(self, value: bool) -> ModelUserResponse:
        self.deletion_status = value
        return self

    def with_display_name(self, value: str) -> ModelUserResponse:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> ModelUserResponse:
        self.email_address = value
        return self

    def with_email_verified(self, value: bool) -> ModelUserResponse:
        self.email_verified = value
        return self

    def with_enabled(self, value: bool) -> ModelUserResponse:
        self.enabled = value
        return self

    def with_last_date_of_birth_changed_time(self, value: str) -> ModelUserResponse:
        self.last_date_of_birth_changed_time = value
        return self

    def with_last_enabled_changed_time(self, value: str) -> ModelUserResponse:
        self.last_enabled_changed_time = value
        return self

    def with_login_id(self, value: str) -> ModelUserResponse:
        self.login_id = value
        return self

    def with_namespace(self, value: str) -> ModelUserResponse:
        self.namespace = value
        return self

    def with_namespace_roles(self, value: List[AccountcommonNamespaceRole]) -> ModelUserResponse:
        self.namespace_roles = value
        return self

    def with_new_email_address(self, value: str) -> ModelUserResponse:
        self.new_email_address = value
        return self

    def with_old_email_address(self, value: str) -> ModelUserResponse:
        self.old_email_address = value
        return self

    def with_permissions(self, value: List[AccountcommonPermission]) -> ModelUserResponse:
        self.permissions = value
        return self

    def with_phone_number(self, value: str) -> ModelUserResponse:
        self.phone_number = value
        return self

    def with_phone_verified(self, value: bool) -> ModelUserResponse:
        self.phone_verified = value
        return self

    def with_platform_id(self, value: str) -> ModelUserResponse:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelUserResponse:
        self.platform_user_id = value
        return self

    def with_roles(self, value: List[str]) -> ModelUserResponse:
        self.roles = value
        return self

    def with_user_id(self, value: str) -> ModelUserResponse:
        self.user_id = value
        return self

    def with_username(self, value: str) -> ModelUserResponse:
        self.username = value
        return self

    def with_xuid(self, value: str) -> ModelUserResponse:
        self.xuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type") and self.auth_type:
            result["AuthType"] = str(self.auth_type)
        elif include_empty:
            result["AuthType"] = str()
        if hasattr(self, "bans") and self.bans:
            result["Bans"] = [i0.to_dict(include_empty=include_empty) for i0 in self.bans]
        elif include_empty:
            result["Bans"] = []
        if hasattr(self, "country") and self.country:
            result["Country"] = str(self.country)
        elif include_empty:
            result["Country"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = str()
        if hasattr(self, "date_of_birth") and self.date_of_birth:
            result["DateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["DateOfBirth"] = str()
        if hasattr(self, "deletion_status") and self.deletion_status:
            result["DeletionStatus"] = bool(self.deletion_status)
        elif include_empty:
            result["DeletionStatus"] = bool()
        if hasattr(self, "display_name") and self.display_name:
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "email_address") and self.email_address:
            result["EmailAddress"] = str(self.email_address)
        elif include_empty:
            result["EmailAddress"] = str()
        if hasattr(self, "email_verified") and self.email_verified:
            result["EmailVerified"] = bool(self.email_verified)
        elif include_empty:
            result["EmailVerified"] = bool()
        if hasattr(self, "enabled") and self.enabled:
            result["Enabled"] = bool(self.enabled)
        elif include_empty:
            result["Enabled"] = bool()
        if hasattr(self, "last_date_of_birth_changed_time") and self.last_date_of_birth_changed_time:
            result["LastDateOfBirthChangedTime"] = str(self.last_date_of_birth_changed_time)
        elif include_empty:
            result["LastDateOfBirthChangedTime"] = str()
        if hasattr(self, "last_enabled_changed_time") and self.last_enabled_changed_time:
            result["LastEnabledChangedTime"] = str(self.last_enabled_changed_time)
        elif include_empty:
            result["LastEnabledChangedTime"] = str()
        if hasattr(self, "login_id") and self.login_id:
            result["LoginId"] = str(self.login_id)
        elif include_empty:
            result["LoginId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "namespace_roles") and self.namespace_roles:
            result["NamespaceRoles"] = [i0.to_dict(include_empty=include_empty) for i0 in self.namespace_roles]
        elif include_empty:
            result["NamespaceRoles"] = []
        if hasattr(self, "new_email_address") and self.new_email_address:
            result["NewEmailAddress"] = str(self.new_email_address)
        elif include_empty:
            result["NewEmailAddress"] = str()
        if hasattr(self, "old_email_address") and self.old_email_address:
            result["OldEmailAddress"] = str(self.old_email_address)
        elif include_empty:
            result["OldEmailAddress"] = str()
        if hasattr(self, "permissions") and self.permissions:
            result["Permissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.permissions]
        elif include_empty:
            result["Permissions"] = []
        if hasattr(self, "phone_number") and self.phone_number:
            result["PhoneNumber"] = str(self.phone_number)
        elif include_empty:
            result["PhoneNumber"] = str()
        if hasattr(self, "phone_verified") and self.phone_verified:
            result["PhoneVerified"] = bool(self.phone_verified)
        elif include_empty:
            result["PhoneVerified"] = bool()
        if hasattr(self, "platform_id") and self.platform_id:
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = str()
        if hasattr(self, "platform_user_id") and self.platform_user_id:
            result["PlatformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["PlatformUserId"] = str()
        if hasattr(self, "roles") and self.roles:
            result["Roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["Roles"] = []
        if hasattr(self, "user_id") and self.user_id:
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = str()
        if hasattr(self, "username") and self.username:
            result["Username"] = str(self.username)
        elif include_empty:
            result["Username"] = str()
        if hasattr(self, "xuid") and self.xuid:
            result["XUID"] = str(self.xuid)
        elif include_empty:
            result["XUID"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: str,
        bans: List[ModelUserActiveBanResponse],
        country: str,
        created_at: str,
        date_of_birth: str,
        deletion_status: bool,
        display_name: str,
        email_verified: bool,
        enabled: bool,
        last_date_of_birth_changed_time: str,
        last_enabled_changed_time: str,
        login_id: str,
        namespace: str,
        namespace_roles: List[AccountcommonNamespaceRole],
        old_email_address: str,
        permissions: List[AccountcommonPermission],
        phone_verified: bool,
        roles: List[str],
        user_id: str,
        email_address: Optional[str] = None,
        new_email_address: Optional[str] = None,
        phone_number: Optional[str] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        username: Optional[str] = None,
        xuid: Optional[str] = None,
    ) -> ModelUserResponse:
        instance = cls()
        instance.auth_type = auth_type
        instance.bans = bans
        instance.country = country
        instance.created_at = created_at
        instance.date_of_birth = date_of_birth
        instance.deletion_status = deletion_status
        instance.display_name = display_name
        instance.email_verified = email_verified
        instance.enabled = enabled
        instance.last_date_of_birth_changed_time = last_date_of_birth_changed_time
        instance.last_enabled_changed_time = last_enabled_changed_time
        instance.login_id = login_id
        instance.namespace = namespace
        instance.namespace_roles = namespace_roles
        instance.old_email_address = old_email_address
        instance.permissions = permissions
        instance.phone_verified = phone_verified
        instance.roles = roles
        instance.user_id = user_id
        if email_address is not None:
            instance.email_address = email_address
        if new_email_address is not None:
            instance.new_email_address = new_email_address
        if phone_number is not None:
            instance.phone_number = phone_number
        if platform_id is not None:
            instance.platform_id = platform_id
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        if username is not None:
            instance.username = username
        if xuid is not None:
            instance.xuid = xuid
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserResponse:
        instance = cls()
        if not dict_:
            return instance
        if "AuthType" in dict_ and dict_["AuthType"] is not None:
            instance.auth_type = str(dict_["AuthType"])
        elif include_empty:
            instance.auth_type = str()
        if "Bans" in dict_ and dict_["Bans"] is not None:
            instance.bans = [ModelUserActiveBanResponse.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Bans"]]
        elif include_empty:
            instance.bans = []
        if "Country" in dict_ and dict_["Country"] is not None:
            instance.country = str(dict_["Country"])
        elif include_empty:
            instance.country = str()
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = str()
        if "DateOfBirth" in dict_ and dict_["DateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["DateOfBirth"])
        elif include_empty:
            instance.date_of_birth = str()
        if "DeletionStatus" in dict_ and dict_["DeletionStatus"] is not None:
            instance.deletion_status = bool(dict_["DeletionStatus"])
        elif include_empty:
            instance.deletion_status = bool()
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "EmailAddress" in dict_ and dict_["EmailAddress"] is not None:
            instance.email_address = str(dict_["EmailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "EmailVerified" in dict_ and dict_["EmailVerified"] is not None:
            instance.email_verified = bool(dict_["EmailVerified"])
        elif include_empty:
            instance.email_verified = bool()
        if "Enabled" in dict_ and dict_["Enabled"] is not None:
            instance.enabled = bool(dict_["Enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "LastDateOfBirthChangedTime" in dict_ and dict_["LastDateOfBirthChangedTime"] is not None:
            instance.last_date_of_birth_changed_time = str(dict_["LastDateOfBirthChangedTime"])
        elif include_empty:
            instance.last_date_of_birth_changed_time = str()
        if "LastEnabledChangedTime" in dict_ and dict_["LastEnabledChangedTime"] is not None:
            instance.last_enabled_changed_time = str(dict_["LastEnabledChangedTime"])
        elif include_empty:
            instance.last_enabled_changed_time = str()
        if "LoginId" in dict_ and dict_["LoginId"] is not None:
            instance.login_id = str(dict_["LoginId"])
        elif include_empty:
            instance.login_id = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "NamespaceRoles" in dict_ and dict_["NamespaceRoles"] is not None:
            instance.namespace_roles = [AccountcommonNamespaceRole.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["NamespaceRoles"]]
        elif include_empty:
            instance.namespace_roles = []
        if "NewEmailAddress" in dict_ and dict_["NewEmailAddress"] is not None:
            instance.new_email_address = str(dict_["NewEmailAddress"])
        elif include_empty:
            instance.new_email_address = str()
        if "OldEmailAddress" in dict_ and dict_["OldEmailAddress"] is not None:
            instance.old_email_address = str(dict_["OldEmailAddress"])
        elif include_empty:
            instance.old_email_address = str()
        if "Permissions" in dict_ and dict_["Permissions"] is not None:
            instance.permissions = [AccountcommonPermission.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Permissions"]]
        elif include_empty:
            instance.permissions = []
        if "PhoneNumber" in dict_ and dict_["PhoneNumber"] is not None:
            instance.phone_number = str(dict_["PhoneNumber"])
        elif include_empty:
            instance.phone_number = str()
        if "PhoneVerified" in dict_ and dict_["PhoneVerified"] is not None:
            instance.phone_verified = bool(dict_["PhoneVerified"])
        elif include_empty:
            instance.phone_verified = bool()
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = str()
        if "PlatformUserId" in dict_ and dict_["PlatformUserId"] is not None:
            instance.platform_user_id = str(dict_["PlatformUserId"])
        elif include_empty:
            instance.platform_user_id = str()
        if "Roles" in dict_ and dict_["Roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["Roles"]]
        elif include_empty:
            instance.roles = []
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = str()
        if "Username" in dict_ and dict_["Username"] is not None:
            instance.username = str(dict_["Username"])
        elif include_empty:
            instance.username = str()
        if "XUID" in dict_ and dict_["XUID"] is not None:
            instance.xuid = str(dict_["XUID"])
        elif include_empty:
            instance.xuid = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AuthType": "auth_type",
            "Bans": "bans",
            "Country": "country",
            "CreatedAt": "created_at",
            "DateOfBirth": "date_of_birth",
            "DeletionStatus": "deletion_status",
            "DisplayName": "display_name",
            "EmailAddress": "email_address",
            "EmailVerified": "email_verified",
            "Enabled": "enabled",
            "LastDateOfBirthChangedTime": "last_date_of_birth_changed_time",
            "LastEnabledChangedTime": "last_enabled_changed_time",
            "LoginId": "login_id",
            "Namespace": "namespace",
            "NamespaceRoles": "namespace_roles",
            "NewEmailAddress": "new_email_address",
            "OldEmailAddress": "old_email_address",
            "Permissions": "permissions",
            "PhoneNumber": "phone_number",
            "PhoneVerified": "phone_verified",
            "PlatformId": "platform_id",
            "PlatformUserId": "platform_user_id",
            "Roles": "roles",
            "UserId": "user_id",
            "Username": "username",
            "XUID": "xuid",
        }

    # endregion static methods
