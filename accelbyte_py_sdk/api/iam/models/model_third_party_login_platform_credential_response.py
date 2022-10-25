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

from ..models.accountcommon_netflix_certificates import AccountcommonNetflixCertificates
from ..models.accountcommon_registered_domain import AccountcommonRegisteredDomain


class ModelThirdPartyLoginPlatformCredentialResponse(Model):
    """Model third party login platform credential response (model.ThirdPartyLoginPlatformCredentialResponse)

    Properties:
        acsurl: (ACSURL) REQUIRED str

        allowed_clients: (AllowedClients) REQUIRED List[str]

        app_id: (AppId) REQUIRED str

        aws_cognito_region: (AWSCognitoRegion) REQUIRED str

        aws_cognito_user_pool: (AWSCognitoUserPool) REQUIRED str

        client_id: (ClientId) REQUIRED str

        environment: (Environment) REQUIRED str

        federation_metadata_url: (FederationMetadataURL) REQUIRED str

        generic_oauth_flow: (GenericOauthFlow) REQUIRED bool

        is_active: (IsActive) REQUIRED bool

        issuer: (Issuer) REQUIRED str

        jwks_endpoint: (JWKSEndpoint) REQUIRED str

        key_id: (KeyID) REQUIRED str

        namespace: (Namespace) REQUIRED str

        organization_id: (OrganizationId) REQUIRED str

        platform_id: (PlatformId) REQUIRED str

        platform_name: (PlatformName) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str

        registered_domains: (registeredDomains) REQUIRED List[AccountcommonRegisteredDomain]

        secret: (Secret) REQUIRED str

        team_id: (TeamID) REQUIRED str

        token_authentication_type: (TokenAuthenticationType) REQUIRED str

        token_claims_mapping: (TokenClaimsMapping) REQUIRED Dict[str, str]

        authorization_endpoint: (AuthorizationEndpoint) OPTIONAL str

        netflix_certificates: (NetflixCertificates) OPTIONAL AccountcommonNetflixCertificates

        token_endpoint: (TokenEndpoint) OPTIONAL str
    """

    # region fields

    acsurl: str  # REQUIRED
    allowed_clients: List[str]  # REQUIRED
    app_id: str  # REQUIRED
    aws_cognito_region: str  # REQUIRED
    aws_cognito_user_pool: str  # REQUIRED
    client_id: str  # REQUIRED
    environment: str  # REQUIRED
    federation_metadata_url: str  # REQUIRED
    generic_oauth_flow: bool  # REQUIRED
    is_active: bool  # REQUIRED
    issuer: str  # REQUIRED
    jwks_endpoint: str  # REQUIRED
    key_id: str  # REQUIRED
    namespace: str  # REQUIRED
    organization_id: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_name: str  # REQUIRED
    redirect_uri: str  # REQUIRED
    registered_domains: List[AccountcommonRegisteredDomain]  # REQUIRED
    secret: str  # REQUIRED
    team_id: str  # REQUIRED
    token_authentication_type: str  # REQUIRED
    token_claims_mapping: Dict[str, str]  # REQUIRED
    authorization_endpoint: str  # OPTIONAL
    netflix_certificates: AccountcommonNetflixCertificates  # OPTIONAL
    token_endpoint: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_acsurl(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.acsurl = value
        return self

    def with_allowed_clients(
        self, value: List[str]
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.allowed_clients = value
        return self

    def with_app_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.app_id = value
        return self

    def with_aws_cognito_region(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.aws_cognito_region = value
        return self

    def with_aws_cognito_user_pool(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.aws_cognito_user_pool = value
        return self

    def with_client_id(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.client_id = value
        return self

    def with_environment(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.environment = value
        return self

    def with_federation_metadata_url(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.federation_metadata_url = value
        return self

    def with_generic_oauth_flow(
        self, value: bool
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.generic_oauth_flow = value
        return self

    def with_is_active(
        self, value: bool
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.is_active = value
        return self

    def with_issuer(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.issuer = value
        return self

    def with_jwks_endpoint(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.jwks_endpoint = value
        return self

    def with_key_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.key_id = value
        return self

    def with_namespace(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.namespace = value
        return self

    def with_organization_id(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.organization_id = value
        return self

    def with_platform_id(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.platform_id = value
        return self

    def with_platform_name(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.platform_name = value
        return self

    def with_redirect_uri(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.redirect_uri = value
        return self

    def with_registered_domains(
        self, value: List[AccountcommonRegisteredDomain]
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.registered_domains = value
        return self

    def with_secret(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.secret = value
        return self

    def with_team_id(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.team_id = value
        return self

    def with_token_authentication_type(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.token_authentication_type = value
        return self

    def with_token_claims_mapping(
        self, value: Dict[str, str]
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.token_claims_mapping = value
        return self

    def with_authorization_endpoint(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.authorization_endpoint = value
        return self

    def with_netflix_certificates(
        self, value: AccountcommonNetflixCertificates
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.netflix_certificates = value
        return self

    def with_token_endpoint(
        self, value: str
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.token_endpoint = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "acsurl"):
            result["ACSURL"] = str(self.acsurl)
        elif include_empty:
            result["ACSURL"] = ""
        if hasattr(self, "allowed_clients"):
            result["AllowedClients"] = [str(i0) for i0 in self.allowed_clients]
        elif include_empty:
            result["AllowedClients"] = []
        if hasattr(self, "app_id"):
            result["AppId"] = str(self.app_id)
        elif include_empty:
            result["AppId"] = ""
        if hasattr(self, "aws_cognito_region"):
            result["AWSCognitoRegion"] = str(self.aws_cognito_region)
        elif include_empty:
            result["AWSCognitoRegion"] = ""
        if hasattr(self, "aws_cognito_user_pool"):
            result["AWSCognitoUserPool"] = str(self.aws_cognito_user_pool)
        elif include_empty:
            result["AWSCognitoUserPool"] = ""
        if hasattr(self, "client_id"):
            result["ClientId"] = str(self.client_id)
        elif include_empty:
            result["ClientId"] = ""
        if hasattr(self, "environment"):
            result["Environment"] = str(self.environment)
        elif include_empty:
            result["Environment"] = ""
        if hasattr(self, "federation_metadata_url"):
            result["FederationMetadataURL"] = str(self.federation_metadata_url)
        elif include_empty:
            result["FederationMetadataURL"] = ""
        if hasattr(self, "generic_oauth_flow"):
            result["GenericOauthFlow"] = bool(self.generic_oauth_flow)
        elif include_empty:
            result["GenericOauthFlow"] = False
        if hasattr(self, "is_active"):
            result["IsActive"] = bool(self.is_active)
        elif include_empty:
            result["IsActive"] = False
        if hasattr(self, "issuer"):
            result["Issuer"] = str(self.issuer)
        elif include_empty:
            result["Issuer"] = ""
        if hasattr(self, "jwks_endpoint"):
            result["JWKSEndpoint"] = str(self.jwks_endpoint)
        elif include_empty:
            result["JWKSEndpoint"] = ""
        if hasattr(self, "key_id"):
            result["KeyID"] = str(self.key_id)
        elif include_empty:
            result["KeyID"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "organization_id"):
            result["OrganizationId"] = str(self.organization_id)
        elif include_empty:
            result["OrganizationId"] = ""
        if hasattr(self, "platform_id"):
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = ""
        if hasattr(self, "platform_name"):
            result["PlatformName"] = str(self.platform_name)
        elif include_empty:
            result["PlatformName"] = ""
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = ""
        if hasattr(self, "registered_domains"):
            result["registeredDomains"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.registered_domains
            ]
        elif include_empty:
            result["registeredDomains"] = []
        if hasattr(self, "secret"):
            result["Secret"] = str(self.secret)
        elif include_empty:
            result["Secret"] = ""
        if hasattr(self, "team_id"):
            result["TeamID"] = str(self.team_id)
        elif include_empty:
            result["TeamID"] = ""
        if hasattr(self, "token_authentication_type"):
            result["TokenAuthenticationType"] = str(self.token_authentication_type)
        elif include_empty:
            result["TokenAuthenticationType"] = ""
        if hasattr(self, "token_claims_mapping"):
            result["TokenClaimsMapping"] = {
                str(k0): str(v0) for k0, v0 in self.token_claims_mapping.items()
            }
        elif include_empty:
            result["TokenClaimsMapping"] = {}
        if hasattr(self, "authorization_endpoint"):
            result["AuthorizationEndpoint"] = str(self.authorization_endpoint)
        elif include_empty:
            result["AuthorizationEndpoint"] = ""
        if hasattr(self, "netflix_certificates"):
            result["NetflixCertificates"] = self.netflix_certificates.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["NetflixCertificates"] = AccountcommonNetflixCertificates()
        if hasattr(self, "token_endpoint"):
            result["TokenEndpoint"] = str(self.token_endpoint)
        elif include_empty:
            result["TokenEndpoint"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        acsurl: str,
        allowed_clients: List[str],
        app_id: str,
        aws_cognito_region: str,
        aws_cognito_user_pool: str,
        client_id: str,
        environment: str,
        federation_metadata_url: str,
        generic_oauth_flow: bool,
        is_active: bool,
        issuer: str,
        jwks_endpoint: str,
        key_id: str,
        namespace: str,
        organization_id: str,
        platform_id: str,
        platform_name: str,
        redirect_uri: str,
        registered_domains: List[AccountcommonRegisteredDomain],
        secret: str,
        team_id: str,
        token_authentication_type: str,
        token_claims_mapping: Dict[str, str],
        authorization_endpoint: Optional[str] = None,
        netflix_certificates: Optional[AccountcommonNetflixCertificates] = None,
        token_endpoint: Optional[str] = None,
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        instance = cls()
        instance.acsurl = acsurl
        instance.allowed_clients = allowed_clients
        instance.app_id = app_id
        instance.aws_cognito_region = aws_cognito_region
        instance.aws_cognito_user_pool = aws_cognito_user_pool
        instance.client_id = client_id
        instance.environment = environment
        instance.federation_metadata_url = federation_metadata_url
        instance.generic_oauth_flow = generic_oauth_flow
        instance.is_active = is_active
        instance.issuer = issuer
        instance.jwks_endpoint = jwks_endpoint
        instance.key_id = key_id
        instance.namespace = namespace
        instance.organization_id = organization_id
        instance.platform_id = platform_id
        instance.platform_name = platform_name
        instance.redirect_uri = redirect_uri
        instance.registered_domains = registered_domains
        instance.secret = secret
        instance.team_id = team_id
        instance.token_authentication_type = token_authentication_type
        instance.token_claims_mapping = token_claims_mapping
        if authorization_endpoint is not None:
            instance.authorization_endpoint = authorization_endpoint
        if netflix_certificates is not None:
            instance.netflix_certificates = netflix_certificates
        if token_endpoint is not None:
            instance.token_endpoint = token_endpoint
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ACSURL" in dict_ and dict_["ACSURL"] is not None:
            instance.acsurl = str(dict_["ACSURL"])
        elif include_empty:
            instance.acsurl = ""
        if "AllowedClients" in dict_ and dict_["AllowedClients"] is not None:
            instance.allowed_clients = [str(i0) for i0 in dict_["AllowedClients"]]
        elif include_empty:
            instance.allowed_clients = []
        if "AppId" in dict_ and dict_["AppId"] is not None:
            instance.app_id = str(dict_["AppId"])
        elif include_empty:
            instance.app_id = ""
        if "AWSCognitoRegion" in dict_ and dict_["AWSCognitoRegion"] is not None:
            instance.aws_cognito_region = str(dict_["AWSCognitoRegion"])
        elif include_empty:
            instance.aws_cognito_region = ""
        if "AWSCognitoUserPool" in dict_ and dict_["AWSCognitoUserPool"] is not None:
            instance.aws_cognito_user_pool = str(dict_["AWSCognitoUserPool"])
        elif include_empty:
            instance.aws_cognito_user_pool = ""
        if "ClientId" in dict_ and dict_["ClientId"] is not None:
            instance.client_id = str(dict_["ClientId"])
        elif include_empty:
            instance.client_id = ""
        if "Environment" in dict_ and dict_["Environment"] is not None:
            instance.environment = str(dict_["Environment"])
        elif include_empty:
            instance.environment = ""
        if (
            "FederationMetadataURL" in dict_
            and dict_["FederationMetadataURL"] is not None
        ):
            instance.federation_metadata_url = str(dict_["FederationMetadataURL"])
        elif include_empty:
            instance.federation_metadata_url = ""
        if "GenericOauthFlow" in dict_ and dict_["GenericOauthFlow"] is not None:
            instance.generic_oauth_flow = bool(dict_["GenericOauthFlow"])
        elif include_empty:
            instance.generic_oauth_flow = False
        if "IsActive" in dict_ and dict_["IsActive"] is not None:
            instance.is_active = bool(dict_["IsActive"])
        elif include_empty:
            instance.is_active = False
        if "Issuer" in dict_ and dict_["Issuer"] is not None:
            instance.issuer = str(dict_["Issuer"])
        elif include_empty:
            instance.issuer = ""
        if "JWKSEndpoint" in dict_ and dict_["JWKSEndpoint"] is not None:
            instance.jwks_endpoint = str(dict_["JWKSEndpoint"])
        elif include_empty:
            instance.jwks_endpoint = ""
        if "KeyID" in dict_ and dict_["KeyID"] is not None:
            instance.key_id = str(dict_["KeyID"])
        elif include_empty:
            instance.key_id = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "OrganizationId" in dict_ and dict_["OrganizationId"] is not None:
            instance.organization_id = str(dict_["OrganizationId"])
        elif include_empty:
            instance.organization_id = ""
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = ""
        if "PlatformName" in dict_ and dict_["PlatformName"] is not None:
            instance.platform_name = str(dict_["PlatformName"])
        elif include_empty:
            instance.platform_name = ""
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "registeredDomains" in dict_ and dict_["registeredDomains"] is not None:
            instance.registered_domains = [
                AccountcommonRegisteredDomain.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["registeredDomains"]
            ]
        elif include_empty:
            instance.registered_domains = []
        if "Secret" in dict_ and dict_["Secret"] is not None:
            instance.secret = str(dict_["Secret"])
        elif include_empty:
            instance.secret = ""
        if "TeamID" in dict_ and dict_["TeamID"] is not None:
            instance.team_id = str(dict_["TeamID"])
        elif include_empty:
            instance.team_id = ""
        if (
            "TokenAuthenticationType" in dict_
            and dict_["TokenAuthenticationType"] is not None
        ):
            instance.token_authentication_type = str(dict_["TokenAuthenticationType"])
        elif include_empty:
            instance.token_authentication_type = ""
        if "TokenClaimsMapping" in dict_ and dict_["TokenClaimsMapping"] is not None:
            instance.token_claims_mapping = {
                str(k0): str(v0) for k0, v0 in dict_["TokenClaimsMapping"].items()
            }
        elif include_empty:
            instance.token_claims_mapping = {}
        if (
            "AuthorizationEndpoint" in dict_
            and dict_["AuthorizationEndpoint"] is not None
        ):
            instance.authorization_endpoint = str(dict_["AuthorizationEndpoint"])
        elif include_empty:
            instance.authorization_endpoint = ""
        if "NetflixCertificates" in dict_ and dict_["NetflixCertificates"] is not None:
            instance.netflix_certificates = (
                AccountcommonNetflixCertificates.create_from_dict(
                    dict_["NetflixCertificates"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.netflix_certificates = AccountcommonNetflixCertificates()
        if "TokenEndpoint" in dict_ and dict_["TokenEndpoint"] is not None:
            instance.token_endpoint = str(dict_["TokenEndpoint"])
        elif include_empty:
            instance.token_endpoint = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelThirdPartyLoginPlatformCredentialResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelThirdPartyLoginPlatformCredentialResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelThirdPartyLoginPlatformCredentialResponse,
        List[ModelThirdPartyLoginPlatformCredentialResponse],
        Dict[Any, ModelThirdPartyLoginPlatformCredentialResponse],
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
            "ACSURL": "acsurl",
            "AllowedClients": "allowed_clients",
            "AppId": "app_id",
            "AWSCognitoRegion": "aws_cognito_region",
            "AWSCognitoUserPool": "aws_cognito_user_pool",
            "ClientId": "client_id",
            "Environment": "environment",
            "FederationMetadataURL": "federation_metadata_url",
            "GenericOauthFlow": "generic_oauth_flow",
            "IsActive": "is_active",
            "Issuer": "issuer",
            "JWKSEndpoint": "jwks_endpoint",
            "KeyID": "key_id",
            "Namespace": "namespace",
            "OrganizationId": "organization_id",
            "PlatformId": "platform_id",
            "PlatformName": "platform_name",
            "RedirectUri": "redirect_uri",
            "registeredDomains": "registered_domains",
            "Secret": "secret",
            "TeamID": "team_id",
            "TokenAuthenticationType": "token_authentication_type",
            "TokenClaimsMapping": "token_claims_mapping",
            "AuthorizationEndpoint": "authorization_endpoint",
            "NetflixCertificates": "netflix_certificates",
            "TokenEndpoint": "token_endpoint",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ACSURL": True,
            "AllowedClients": True,
            "AppId": True,
            "AWSCognitoRegion": True,
            "AWSCognitoUserPool": True,
            "ClientId": True,
            "Environment": True,
            "FederationMetadataURL": True,
            "GenericOauthFlow": True,
            "IsActive": True,
            "Issuer": True,
            "JWKSEndpoint": True,
            "KeyID": True,
            "Namespace": True,
            "OrganizationId": True,
            "PlatformId": True,
            "PlatformName": True,
            "RedirectUri": True,
            "registeredDomains": True,
            "Secret": True,
            "TeamID": True,
            "TokenAuthenticationType": True,
            "TokenClaimsMapping": True,
            "AuthorizationEndpoint": False,
            "NetflixCertificates": False,
            "TokenEndpoint": False,
        }

    # endregion static methods
