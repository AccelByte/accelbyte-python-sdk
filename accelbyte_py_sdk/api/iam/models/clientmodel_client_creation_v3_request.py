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


class ClientmodelClientCreationV3Request(Model):
    """Clientmodel client creation V3 request (clientmodel.ClientCreationV3Request)

    Properties:
        audiences: (audiences) REQUIRED List[str]

        base_uri: (baseUri) REQUIRED str

        client_id: (clientId) REQUIRED str

        client_name: (clientName) REQUIRED str

        client_permissions: (clientPermissions) REQUIRED List[AccountcommonPermissionV3]

        client_platform: (clientPlatform) REQUIRED str

        namespace: (namespace) REQUIRED str

        oauth_client_type: (oauthClientType) REQUIRED str

        redirect_uri: (redirectUri) REQUIRED str

        secret: (secret) REQUIRED str

        deletable: (deletable) OPTIONAL bool

        oauth_access_token_expiration: (oauthAccessTokenExpiration) OPTIONAL int

        oauth_refresh_token_expiration: (oauthRefreshTokenExpiration) OPTIONAL int

        two_factor_enabled: (twoFactorEnabled) OPTIONAL bool
    """

    # region fields

    audiences: List[str]  # REQUIRED
    base_uri: str  # REQUIRED
    client_id: str  # REQUIRED
    client_name: str  # REQUIRED
    client_permissions: List[AccountcommonPermissionV3]  # REQUIRED
    client_platform: str  # REQUIRED
    namespace: str  # REQUIRED
    oauth_client_type: str  # REQUIRED
    redirect_uri: str  # REQUIRED
    secret: str  # REQUIRED
    deletable: bool  # OPTIONAL
    oauth_access_token_expiration: int  # OPTIONAL
    oauth_refresh_token_expiration: int  # OPTIONAL
    two_factor_enabled: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_audiences(self, value: List[str]) -> ClientmodelClientCreationV3Request:
        self.audiences = value
        return self

    def with_base_uri(self, value: str) -> ClientmodelClientCreationV3Request:
        self.base_uri = value
        return self

    def with_client_id(self, value: str) -> ClientmodelClientCreationV3Request:
        self.client_id = value
        return self

    def with_client_name(self, value: str) -> ClientmodelClientCreationV3Request:
        self.client_name = value
        return self

    def with_client_permissions(
        self, value: List[AccountcommonPermissionV3]
    ) -> ClientmodelClientCreationV3Request:
        self.client_permissions = value
        return self

    def with_client_platform(self, value: str) -> ClientmodelClientCreationV3Request:
        self.client_platform = value
        return self

    def with_namespace(self, value: str) -> ClientmodelClientCreationV3Request:
        self.namespace = value
        return self

    def with_oauth_client_type(self, value: str) -> ClientmodelClientCreationV3Request:
        self.oauth_client_type = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientCreationV3Request:
        self.redirect_uri = value
        return self

    def with_secret(self, value: str) -> ClientmodelClientCreationV3Request:
        self.secret = value
        return self

    def with_deletable(self, value: bool) -> ClientmodelClientCreationV3Request:
        self.deletable = value
        return self

    def with_oauth_access_token_expiration(
        self, value: int
    ) -> ClientmodelClientCreationV3Request:
        self.oauth_access_token_expiration = value
        return self

    def with_oauth_refresh_token_expiration(
        self, value: int
    ) -> ClientmodelClientCreationV3Request:
        self.oauth_refresh_token_expiration = value
        return self

    def with_two_factor_enabled(
        self, value: bool
    ) -> ClientmodelClientCreationV3Request:
        self.two_factor_enabled = value
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
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        if hasattr(self, "deletable"):
            result["deletable"] = bool(self.deletable)
        elif include_empty:
            result["deletable"] = False
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
        if hasattr(self, "two_factor_enabled"):
            result["twoFactorEnabled"] = bool(self.two_factor_enabled)
        elif include_empty:
            result["twoFactorEnabled"] = False
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
        namespace: str,
        oauth_client_type: str,
        redirect_uri: str,
        secret: str,
        deletable: Optional[bool] = None,
        oauth_access_token_expiration: Optional[int] = None,
        oauth_refresh_token_expiration: Optional[int] = None,
        two_factor_enabled: Optional[bool] = None,
    ) -> ClientmodelClientCreationV3Request:
        instance = cls()
        instance.audiences = audiences
        instance.base_uri = base_uri
        instance.client_id = client_id
        instance.client_name = client_name
        instance.client_permissions = client_permissions
        instance.client_platform = client_platform
        instance.namespace = namespace
        instance.oauth_client_type = oauth_client_type
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        if deletable is not None:
            instance.deletable = deletable
        if oauth_access_token_expiration is not None:
            instance.oauth_access_token_expiration = oauth_access_token_expiration
        if oauth_refresh_token_expiration is not None:
            instance.oauth_refresh_token_expiration = oauth_refresh_token_expiration
        if two_factor_enabled is not None:
            instance.two_factor_enabled = two_factor_enabled
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelClientCreationV3Request:
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
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = ""
        if "deletable" in dict_ and dict_["deletable"] is not None:
            instance.deletable = bool(dict_["deletable"])
        elif include_empty:
            instance.deletable = False
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
        if "twoFactorEnabled" in dict_ and dict_["twoFactorEnabled"] is not None:
            instance.two_factor_enabled = bool(dict_["twoFactorEnabled"])
        elif include_empty:
            instance.two_factor_enabled = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelClientCreationV3Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelClientCreationV3Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelClientCreationV3Request,
        List[ClientmodelClientCreationV3Request],
        Dict[Any, ClientmodelClientCreationV3Request],
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
            "namespace": "namespace",
            "oauthClientType": "oauth_client_type",
            "redirectUri": "redirect_uri",
            "secret": "secret",
            "deletable": "deletable",
            "oauthAccessTokenExpiration": "oauth_access_token_expiration",
            "oauthRefreshTokenExpiration": "oauth_refresh_token_expiration",
            "twoFactorEnabled": "two_factor_enabled",
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
            "namespace": True,
            "oauthClientType": True,
            "redirectUri": True,
            "secret": True,
            "deletable": False,
            "oauthAccessTokenExpiration": False,
            "oauthRefreshTokenExpiration": False,
            "twoFactorEnabled": False,
        }

    # endregion static methods
