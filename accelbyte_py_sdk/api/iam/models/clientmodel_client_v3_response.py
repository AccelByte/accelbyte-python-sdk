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

from ..models.accountcommon_permission_v3 import AccountcommonPermissionV3


class ClientmodelClientV3Response(Model):
    """Clientmodel client V3 response (clientmodel.ClientV3Response)

    Properties:
        audiences: (audiences) REQUIRED List[str]

        base_uri: (baseUri) REQUIRED str

        client_id: (clientId) REQUIRED str

        client_name: (clientName) REQUIRED str

        client_permissions: (clientPermissions) REQUIRED List[AccountcommonPermissionV3]

        client_platform: (clientPlatform) REQUIRED str

        created_at: (createdAt) REQUIRED str

        modified_at: (modifiedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        oauth_client_type: (oauthClientType) REQUIRED str

        redirect_uri: (redirectUri) REQUIRED str

        scopes: (scopes) REQUIRED List[str]

        two_factor_enabled: (twoFactorEnabled) REQUIRED bool

        oauth_access_token_expiration: (oauthAccessTokenExpiration) OPTIONAL int

        oauth_refresh_token_expiration: (oauthRefreshTokenExpiration) OPTIONAL int
    """

    # region fields

    audiences: List[str]  # REQUIRED
    base_uri: str  # REQUIRED
    client_id: str  # REQUIRED
    client_name: str  # REQUIRED
    client_permissions: List[AccountcommonPermissionV3]  # REQUIRED
    client_platform: str  # REQUIRED
    created_at: str  # REQUIRED
    modified_at: str  # REQUIRED
    namespace: str  # REQUIRED
    oauth_client_type: str  # REQUIRED
    redirect_uri: str  # REQUIRED
    scopes: List[str]  # REQUIRED
    two_factor_enabled: bool  # REQUIRED
    oauth_access_token_expiration: int  # OPTIONAL
    oauth_refresh_token_expiration: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_audiences(self, value: List[str]) -> ClientmodelClientV3Response:
        self.audiences = value
        return self

    def with_base_uri(self, value: str) -> ClientmodelClientV3Response:
        self.base_uri = value
        return self

    def with_client_id(self, value: str) -> ClientmodelClientV3Response:
        self.client_id = value
        return self

    def with_client_name(self, value: str) -> ClientmodelClientV3Response:
        self.client_name = value
        return self

    def with_client_permissions(
        self, value: List[AccountcommonPermissionV3]
    ) -> ClientmodelClientV3Response:
        self.client_permissions = value
        return self

    def with_client_platform(self, value: str) -> ClientmodelClientV3Response:
        self.client_platform = value
        return self

    def with_created_at(self, value: str) -> ClientmodelClientV3Response:
        self.created_at = value
        return self

    def with_modified_at(self, value: str) -> ClientmodelClientV3Response:
        self.modified_at = value
        return self

    def with_namespace(self, value: str) -> ClientmodelClientV3Response:
        self.namespace = value
        return self

    def with_oauth_client_type(self, value: str) -> ClientmodelClientV3Response:
        self.oauth_client_type = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientV3Response:
        self.redirect_uri = value
        return self

    def with_scopes(self, value: List[str]) -> ClientmodelClientV3Response:
        self.scopes = value
        return self

    def with_two_factor_enabled(self, value: bool) -> ClientmodelClientV3Response:
        self.two_factor_enabled = value
        return self

    def with_oauth_access_token_expiration(
        self, value: int
    ) -> ClientmodelClientV3Response:
        self.oauth_access_token_expiration = value
        return self

    def with_oauth_refresh_token_expiration(
        self, value: int
    ) -> ClientmodelClientV3Response:
        self.oauth_refresh_token_expiration = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "audiences"):
            result["audiences"] = [str(i0) for i0 in self.audiences]
        elif include_empty:
            result["audiences"] = []
        if hasattr(self, "base_uri"):
            result["baseUri"] = str(self.base_uri)
        elif include_empty:
            result["baseUri"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "client_name"):
            result["clientName"] = str(self.client_name)
        elif include_empty:
            result["clientName"] = ""
        if hasattr(self, "client_permissions"):
            result["clientPermissions"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.client_permissions
            ]
        elif include_empty:
            result["clientPermissions"] = []
        if hasattr(self, "client_platform"):
            result["clientPlatform"] = str(self.client_platform)
        elif include_empty:
            result["clientPlatform"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "modified_at"):
            result["modifiedAt"] = str(self.modified_at)
        elif include_empty:
            result["modifiedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "oauth_client_type"):
            result["oauthClientType"] = str(self.oauth_client_type)
        elif include_empty:
            result["oauthClientType"] = ""
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = ""
        if hasattr(self, "scopes"):
            result["scopes"] = [str(i0) for i0 in self.scopes]
        elif include_empty:
            result["scopes"] = []
        if hasattr(self, "two_factor_enabled"):
            result["twoFactorEnabled"] = bool(self.two_factor_enabled)
        elif include_empty:
            result["twoFactorEnabled"] = False
        if hasattr(self, "oauth_access_token_expiration"):
            result["oauthAccessTokenExpiration"] = int(
                self.oauth_access_token_expiration
            )
        elif include_empty:
            result["oauthAccessTokenExpiration"] = 0
        if hasattr(self, "oauth_refresh_token_expiration"):
            result["oauthRefreshTokenExpiration"] = int(
                self.oauth_refresh_token_expiration
            )
        elif include_empty:
            result["oauthRefreshTokenExpiration"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        audiences: List[str],
        base_uri: str,
        client_id: str,
        client_name: str,
        client_permissions: List[AccountcommonPermissionV3],
        client_platform: str,
        created_at: str,
        modified_at: str,
        namespace: str,
        oauth_client_type: str,
        redirect_uri: str,
        scopes: List[str],
        two_factor_enabled: bool,
        oauth_access_token_expiration: Optional[int] = None,
        oauth_refresh_token_expiration: Optional[int] = None,
    ) -> ClientmodelClientV3Response:
        instance = cls()
        instance.audiences = audiences
        instance.base_uri = base_uri
        instance.client_id = client_id
        instance.client_name = client_name
        instance.client_permissions = client_permissions
        instance.client_platform = client_platform
        instance.created_at = created_at
        instance.modified_at = modified_at
        instance.namespace = namespace
        instance.oauth_client_type = oauth_client_type
        instance.redirect_uri = redirect_uri
        instance.scopes = scopes
        instance.two_factor_enabled = two_factor_enabled
        if oauth_access_token_expiration is not None:
            instance.oauth_access_token_expiration = oauth_access_token_expiration
        if oauth_refresh_token_expiration is not None:
            instance.oauth_refresh_token_expiration = oauth_refresh_token_expiration
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelClientV3Response:
        instance = cls()
        if not dict_:
            return instance
        if "audiences" in dict_ and dict_["audiences"] is not None:
            instance.audiences = [str(i0) for i0 in dict_["audiences"]]
        elif include_empty:
            instance.audiences = []
        if "baseUri" in dict_ and dict_["baseUri"] is not None:
            instance.base_uri = str(dict_["baseUri"])
        elif include_empty:
            instance.base_uri = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "clientName" in dict_ and dict_["clientName"] is not None:
            instance.client_name = str(dict_["clientName"])
        elif include_empty:
            instance.client_name = ""
        if "clientPermissions" in dict_ and dict_["clientPermissions"] is not None:
            instance.client_permissions = [
                AccountcommonPermissionV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["clientPermissions"]
            ]
        elif include_empty:
            instance.client_permissions = []
        if "clientPlatform" in dict_ and dict_["clientPlatform"] is not None:
            instance.client_platform = str(dict_["clientPlatform"])
        elif include_empty:
            instance.client_platform = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "modifiedAt" in dict_ and dict_["modifiedAt"] is not None:
            instance.modified_at = str(dict_["modifiedAt"])
        elif include_empty:
            instance.modified_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "oauthClientType" in dict_ and dict_["oauthClientType"] is not None:
            instance.oauth_client_type = str(dict_["oauthClientType"])
        elif include_empty:
            instance.oauth_client_type = ""
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "scopes" in dict_ and dict_["scopes"] is not None:
            instance.scopes = [str(i0) for i0 in dict_["scopes"]]
        elif include_empty:
            instance.scopes = []
        if "twoFactorEnabled" in dict_ and dict_["twoFactorEnabled"] is not None:
            instance.two_factor_enabled = bool(dict_["twoFactorEnabled"])
        elif include_empty:
            instance.two_factor_enabled = False
        if (
            "oauthAccessTokenExpiration" in dict_
            and dict_["oauthAccessTokenExpiration"] is not None
        ):
            instance.oauth_access_token_expiration = int(
                dict_["oauthAccessTokenExpiration"]
            )
        elif include_empty:
            instance.oauth_access_token_expiration = 0
        if (
            "oauthRefreshTokenExpiration" in dict_
            and dict_["oauthRefreshTokenExpiration"] is not None
        ):
            instance.oauth_refresh_token_expiration = int(
                dict_["oauthRefreshTokenExpiration"]
            )
        elif include_empty:
            instance.oauth_refresh_token_expiration = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelClientV3Response]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelClientV3Response]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelClientV3Response,
        List[ClientmodelClientV3Response],
        Dict[Any, ClientmodelClientV3Response],
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
            "audiences": "audiences",
            "baseUri": "base_uri",
            "clientId": "client_id",
            "clientName": "client_name",
            "clientPermissions": "client_permissions",
            "clientPlatform": "client_platform",
            "createdAt": "created_at",
            "modifiedAt": "modified_at",
            "namespace": "namespace",
            "oauthClientType": "oauth_client_type",
            "redirectUri": "redirect_uri",
            "scopes": "scopes",
            "twoFactorEnabled": "two_factor_enabled",
            "oauthAccessTokenExpiration": "oauth_access_token_expiration",
            "oauthRefreshTokenExpiration": "oauth_refresh_token_expiration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "audiences": True,
            "baseUri": True,
            "clientId": True,
            "clientName": True,
            "clientPermissions": True,
            "clientPlatform": True,
            "createdAt": True,
            "modifiedAt": True,
            "namespace": True,
            "oauthClientType": True,
            "redirectUri": True,
            "scopes": True,
            "twoFactorEnabled": True,
            "oauthAccessTokenExpiration": False,
            "oauthRefreshTokenExpiration": False,
        }

    # endregion static methods
