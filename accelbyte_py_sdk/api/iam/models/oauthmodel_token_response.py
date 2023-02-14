# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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

from ..models.accountcommon_jwt_ban_v3 import AccountcommonJWTBanV3
from ..models.accountcommon_namespace_role import AccountcommonNamespaceRole
from ..models.accountcommon_permission import AccountcommonPermission


class OauthmodelTokenResponse(Model):
    """Oauthmodel token response (oauthmodel.TokenResponse)

    Properties:
        access_token: (access_token) REQUIRED str

        bans: (bans) REQUIRED List[AccountcommonJWTBanV3]

        display_name: (display_name) REQUIRED str

        expires_in: (expires_in) REQUIRED int

        namespace: (namespace) REQUIRED str

        namespace_roles: (namespace_roles) REQUIRED List[AccountcommonNamespaceRole]

        permissions: (permissions) REQUIRED List[AccountcommonPermission]

        refresh_token: (refresh_token) REQUIRED str

        roles: (roles) REQUIRED List[str]

        token_type: (token_type) REQUIRED str

        user_id: (user_id) REQUIRED str

        is_comply: (is_comply) OPTIONAL bool

        jflgs: (jflgs) OPTIONAL int

        platform_id: (platform_id) OPTIONAL str

        platform_user_id: (platform_user_id) OPTIONAL str

        refresh_expires_in: (refresh_expires_in) OPTIONAL int
    """

    # region fields

    access_token: str  # REQUIRED
    bans: List[AccountcommonJWTBanV3]  # REQUIRED
    display_name: str  # REQUIRED
    expires_in: int  # REQUIRED
    namespace: str  # REQUIRED
    namespace_roles: List[AccountcommonNamespaceRole]  # REQUIRED
    permissions: List[AccountcommonPermission]  # REQUIRED
    refresh_token: str  # REQUIRED
    roles: List[str]  # REQUIRED
    token_type: str  # REQUIRED
    user_id: str  # REQUIRED
    is_comply: bool  # OPTIONAL
    jflgs: int  # OPTIONAL
    platform_id: str  # OPTIONAL
    platform_user_id: str  # OPTIONAL
    refresh_expires_in: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_access_token(self, value: str) -> OauthmodelTokenResponse:
        self.access_token = value
        return self

    def with_bans(self, value: List[AccountcommonJWTBanV3]) -> OauthmodelTokenResponse:
        self.bans = value
        return self

    def with_display_name(self, value: str) -> OauthmodelTokenResponse:
        self.display_name = value
        return self

    def with_expires_in(self, value: int) -> OauthmodelTokenResponse:
        self.expires_in = value
        return self

    def with_namespace(self, value: str) -> OauthmodelTokenResponse:
        self.namespace = value
        return self

    def with_namespace_roles(
        self, value: List[AccountcommonNamespaceRole]
    ) -> OauthmodelTokenResponse:
        self.namespace_roles = value
        return self

    def with_permissions(
        self, value: List[AccountcommonPermission]
    ) -> OauthmodelTokenResponse:
        self.permissions = value
        return self

    def with_refresh_token(self, value: str) -> OauthmodelTokenResponse:
        self.refresh_token = value
        return self

    def with_roles(self, value: List[str]) -> OauthmodelTokenResponse:
        self.roles = value
        return self

    def with_token_type(self, value: str) -> OauthmodelTokenResponse:
        self.token_type = value
        return self

    def with_user_id(self, value: str) -> OauthmodelTokenResponse:
        self.user_id = value
        return self

    def with_is_comply(self, value: bool) -> OauthmodelTokenResponse:
        self.is_comply = value
        return self

    def with_jflgs(self, value: int) -> OauthmodelTokenResponse:
        self.jflgs = value
        return self

    def with_platform_id(self, value: str) -> OauthmodelTokenResponse:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> OauthmodelTokenResponse:
        self.platform_user_id = value
        return self

    def with_refresh_expires_in(self, value: int) -> OauthmodelTokenResponse:
        self.refresh_expires_in = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "access_token"):
            result["access_token"] = str(self.access_token)
        elif include_empty:
            result["access_token"] = ""
        if hasattr(self, "bans"):
            result["bans"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.bans
            ]
        elif include_empty:
            result["bans"] = []
        if hasattr(self, "display_name"):
            result["display_name"] = str(self.display_name)
        elif include_empty:
            result["display_name"] = ""
        if hasattr(self, "expires_in"):
            result["expires_in"] = int(self.expires_in)
        elif include_empty:
            result["expires_in"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "namespace_roles"):
            result["namespace_roles"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.namespace_roles
            ]
        elif include_empty:
            result["namespace_roles"] = []
        if hasattr(self, "permissions"):
            result["permissions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.permissions
            ]
        elif include_empty:
            result["permissions"] = []
        if hasattr(self, "refresh_token"):
            result["refresh_token"] = str(self.refresh_token)
        elif include_empty:
            result["refresh_token"] = ""
        if hasattr(self, "roles"):
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        if hasattr(self, "token_type"):
            result["token_type"] = str(self.token_type)
        elif include_empty:
            result["token_type"] = ""
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "is_comply"):
            result["is_comply"] = bool(self.is_comply)
        elif include_empty:
            result["is_comply"] = False
        if hasattr(self, "jflgs"):
            result["jflgs"] = int(self.jflgs)
        elif include_empty:
            result["jflgs"] = 0
        if hasattr(self, "platform_id"):
            result["platform_id"] = str(self.platform_id)
        elif include_empty:
            result["platform_id"] = ""
        if hasattr(self, "platform_user_id"):
            result["platform_user_id"] = str(self.platform_user_id)
        elif include_empty:
            result["platform_user_id"] = ""
        if hasattr(self, "refresh_expires_in"):
            result["refresh_expires_in"] = int(self.refresh_expires_in)
        elif include_empty:
            result["refresh_expires_in"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        access_token: str,
        bans: List[AccountcommonJWTBanV3],
        display_name: str,
        expires_in: int,
        namespace: str,
        namespace_roles: List[AccountcommonNamespaceRole],
        permissions: List[AccountcommonPermission],
        refresh_token: str,
        roles: List[str],
        token_type: str,
        user_id: str,
        is_comply: Optional[bool] = None,
        jflgs: Optional[int] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        refresh_expires_in: Optional[int] = None,
    ) -> OauthmodelTokenResponse:
        instance = cls()
        instance.access_token = access_token
        instance.bans = bans
        instance.display_name = display_name
        instance.expires_in = expires_in
        instance.namespace = namespace
        instance.namespace_roles = namespace_roles
        instance.permissions = permissions
        instance.refresh_token = refresh_token
        instance.roles = roles
        instance.token_type = token_type
        instance.user_id = user_id
        if is_comply is not None:
            instance.is_comply = is_comply
        if jflgs is not None:
            instance.jflgs = jflgs
        if platform_id is not None:
            instance.platform_id = platform_id
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        if refresh_expires_in is not None:
            instance.refresh_expires_in = refresh_expires_in
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelTokenResponse:
        instance = cls()
        if not dict_:
            return instance
        if "access_token" in dict_ and dict_["access_token"] is not None:
            instance.access_token = str(dict_["access_token"])
        elif include_empty:
            instance.access_token = ""
        if "bans" in dict_ and dict_["bans"] is not None:
            instance.bans = [
                AccountcommonJWTBanV3.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["bans"]
            ]
        elif include_empty:
            instance.bans = []
        if "display_name" in dict_ and dict_["display_name"] is not None:
            instance.display_name = str(dict_["display_name"])
        elif include_empty:
            instance.display_name = ""
        if "expires_in" in dict_ and dict_["expires_in"] is not None:
            instance.expires_in = int(dict_["expires_in"])
        elif include_empty:
            instance.expires_in = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "namespace_roles" in dict_ and dict_["namespace_roles"] is not None:
            instance.namespace_roles = [
                AccountcommonNamespaceRole.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["namespace_roles"]
            ]
        elif include_empty:
            instance.namespace_roles = []
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [
                AccountcommonPermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["permissions"]
            ]
        elif include_empty:
            instance.permissions = []
        if "refresh_token" in dict_ and dict_["refresh_token"] is not None:
            instance.refresh_token = str(dict_["refresh_token"])
        elif include_empty:
            instance.refresh_token = ""
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        if "token_type" in dict_ and dict_["token_type"] is not None:
            instance.token_type = str(dict_["token_type"])
        elif include_empty:
            instance.token_type = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "is_comply" in dict_ and dict_["is_comply"] is not None:
            instance.is_comply = bool(dict_["is_comply"])
        elif include_empty:
            instance.is_comply = False
        if "jflgs" in dict_ and dict_["jflgs"] is not None:
            instance.jflgs = int(dict_["jflgs"])
        elif include_empty:
            instance.jflgs = 0
        if "platform_id" in dict_ and dict_["platform_id"] is not None:
            instance.platform_id = str(dict_["platform_id"])
        elif include_empty:
            instance.platform_id = ""
        if "platform_user_id" in dict_ and dict_["platform_user_id"] is not None:
            instance.platform_user_id = str(dict_["platform_user_id"])
        elif include_empty:
            instance.platform_user_id = ""
        if "refresh_expires_in" in dict_ and dict_["refresh_expires_in"] is not None:
            instance.refresh_expires_in = int(dict_["refresh_expires_in"])
        elif include_empty:
            instance.refresh_expires_in = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelTokenResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelTokenResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelTokenResponse,
        List[OauthmodelTokenResponse],
        Dict[Any, OauthmodelTokenResponse],
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
            "access_token": "access_token",
            "bans": "bans",
            "display_name": "display_name",
            "expires_in": "expires_in",
            "namespace": "namespace",
            "namespace_roles": "namespace_roles",
            "permissions": "permissions",
            "refresh_token": "refresh_token",
            "roles": "roles",
            "token_type": "token_type",
            "user_id": "user_id",
            "is_comply": "is_comply",
            "jflgs": "jflgs",
            "platform_id": "platform_id",
            "platform_user_id": "platform_user_id",
            "refresh_expires_in": "refresh_expires_in",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "access_token": True,
            "bans": True,
            "display_name": True,
            "expires_in": True,
            "namespace": True,
            "namespace_roles": True,
            "permissions": True,
            "refresh_token": True,
            "roles": True,
            "token_type": True,
            "user_id": True,
            "is_comply": False,
            "jflgs": False,
            "platform_id": False,
            "platform_user_id": False,
            "refresh_expires_in": False,
        }

    # endregion static methods
