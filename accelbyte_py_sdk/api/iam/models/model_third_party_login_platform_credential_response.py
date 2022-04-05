# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.6.0)

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

from ..models.accountcommon_registered_domain import AccountcommonRegisteredDomain


class ModelThirdPartyLoginPlatformCredentialResponse(Model):
    """Model third party login platform credential response (model.ThirdPartyLoginPlatformCredentialResponse)

    Properties:
        acsurl: (ACSURL) REQUIRED str

        app_id: (AppId) REQUIRED str

        aws_cognito_region: (AWSCognitoRegion) REQUIRED str

        aws_cognito_user_pool: (AWSCognitoUserPool) REQUIRED str

        client_id: (ClientId) REQUIRED str

        environment: (Environment) REQUIRED str

        federation_metadata_url: (FederationMetadataURL) REQUIRED str

        is_active: (IsActive) REQUIRED bool

        key_id: (KeyID) REQUIRED str

        namespace: (Namespace) REQUIRED str

        organization_id: (OrganizationId) REQUIRED str

        platform_id: (PlatformId) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str

        registered_domains: (registeredDomains) REQUIRED List[AccountcommonRegisteredDomain]

        secret: (Secret) REQUIRED str

        team_id: (TeamID) REQUIRED str
    """

    # region fields

    acsurl: str                                                                                    # REQUIRED
    app_id: str                                                                                    # REQUIRED
    aws_cognito_region: str                                                                        # REQUIRED
    aws_cognito_user_pool: str                                                                     # REQUIRED
    client_id: str                                                                                 # REQUIRED
    environment: str                                                                               # REQUIRED
    federation_metadata_url: str                                                                   # REQUIRED
    is_active: bool                                                                                # REQUIRED
    key_id: str                                                                                    # REQUIRED
    namespace: str                                                                                 # REQUIRED
    organization_id: str                                                                           # REQUIRED
    platform_id: str                                                                               # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    registered_domains: List[AccountcommonRegisteredDomain]                                        # REQUIRED
    secret: str                                                                                    # REQUIRED
    team_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_acsurl(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.acsurl = value
        return self

    def with_app_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.app_id = value
        return self

    def with_aws_cognito_region(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.aws_cognito_region = value
        return self

    def with_aws_cognito_user_pool(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.aws_cognito_user_pool = value
        return self

    def with_client_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.client_id = value
        return self

    def with_environment(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.environment = value
        return self

    def with_federation_metadata_url(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.federation_metadata_url = value
        return self

    def with_is_active(self, value: bool) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.is_active = value
        return self

    def with_key_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.key_id = value
        return self

    def with_namespace(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.namespace = value
        return self

    def with_organization_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.organization_id = value
        return self

    def with_platform_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.platform_id = value
        return self

    def with_redirect_uri(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.redirect_uri = value
        return self

    def with_registered_domains(self, value: List[AccountcommonRegisteredDomain]) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.registered_domains = value
        return self

    def with_secret(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.secret = value
        return self

    def with_team_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialResponse:
        self.team_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "acsurl"):
            result["ACSURL"] = str(self.acsurl)
        elif include_empty:
            result["ACSURL"] = str()
        if hasattr(self, "app_id"):
            result["AppId"] = str(self.app_id)
        elif include_empty:
            result["AppId"] = str()
        if hasattr(self, "aws_cognito_region"):
            result["AWSCognitoRegion"] = str(self.aws_cognito_region)
        elif include_empty:
            result["AWSCognitoRegion"] = str()
        if hasattr(self, "aws_cognito_user_pool"):
            result["AWSCognitoUserPool"] = str(self.aws_cognito_user_pool)
        elif include_empty:
            result["AWSCognitoUserPool"] = str()
        if hasattr(self, "client_id"):
            result["ClientId"] = str(self.client_id)
        elif include_empty:
            result["ClientId"] = str()
        if hasattr(self, "environment"):
            result["Environment"] = str(self.environment)
        elif include_empty:
            result["Environment"] = str()
        if hasattr(self, "federation_metadata_url"):
            result["FederationMetadataURL"] = str(self.federation_metadata_url)
        elif include_empty:
            result["FederationMetadataURL"] = str()
        if hasattr(self, "is_active"):
            result["IsActive"] = bool(self.is_active)
        elif include_empty:
            result["IsActive"] = bool()
        if hasattr(self, "key_id"):
            result["KeyID"] = str(self.key_id)
        elif include_empty:
            result["KeyID"] = str()
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "organization_id"):
            result["OrganizationId"] = str(self.organization_id)
        elif include_empty:
            result["OrganizationId"] = str()
        if hasattr(self, "platform_id"):
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = str()
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = str()
        if hasattr(self, "registered_domains"):
            result["registeredDomains"] = [i0.to_dict(include_empty=include_empty) for i0 in self.registered_domains]
        elif include_empty:
            result["registeredDomains"] = []
        if hasattr(self, "secret"):
            result["Secret"] = str(self.secret)
        elif include_empty:
            result["Secret"] = str()
        if hasattr(self, "team_id"):
            result["TeamID"] = str(self.team_id)
        elif include_empty:
            result["TeamID"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        acsurl: str,
        app_id: str,
        aws_cognito_region: str,
        aws_cognito_user_pool: str,
        client_id: str,
        environment: str,
        federation_metadata_url: str,
        is_active: bool,
        key_id: str,
        namespace: str,
        organization_id: str,
        platform_id: str,
        redirect_uri: str,
        registered_domains: List[AccountcommonRegisteredDomain],
        secret: str,
        team_id: str,
    ) -> ModelThirdPartyLoginPlatformCredentialResponse:
        instance = cls()
        instance.acsurl = acsurl
        instance.app_id = app_id
        instance.aws_cognito_region = aws_cognito_region
        instance.aws_cognito_user_pool = aws_cognito_user_pool
        instance.client_id = client_id
        instance.environment = environment
        instance.federation_metadata_url = federation_metadata_url
        instance.is_active = is_active
        instance.key_id = key_id
        instance.namespace = namespace
        instance.organization_id = organization_id
        instance.platform_id = platform_id
        instance.redirect_uri = redirect_uri
        instance.registered_domains = registered_domains
        instance.secret = secret
        instance.team_id = team_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelThirdPartyLoginPlatformCredentialResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ACSURL" in dict_ and dict_["ACSURL"] is not None:
            instance.acsurl = str(dict_["ACSURL"])
        elif include_empty:
            instance.acsurl = str()
        if "AppId" in dict_ and dict_["AppId"] is not None:
            instance.app_id = str(dict_["AppId"])
        elif include_empty:
            instance.app_id = str()
        if "AWSCognitoRegion" in dict_ and dict_["AWSCognitoRegion"] is not None:
            instance.aws_cognito_region = str(dict_["AWSCognitoRegion"])
        elif include_empty:
            instance.aws_cognito_region = str()
        if "AWSCognitoUserPool" in dict_ and dict_["AWSCognitoUserPool"] is not None:
            instance.aws_cognito_user_pool = str(dict_["AWSCognitoUserPool"])
        elif include_empty:
            instance.aws_cognito_user_pool = str()
        if "ClientId" in dict_ and dict_["ClientId"] is not None:
            instance.client_id = str(dict_["ClientId"])
        elif include_empty:
            instance.client_id = str()
        if "Environment" in dict_ and dict_["Environment"] is not None:
            instance.environment = str(dict_["Environment"])
        elif include_empty:
            instance.environment = str()
        if "FederationMetadataURL" in dict_ and dict_["FederationMetadataURL"] is not None:
            instance.federation_metadata_url = str(dict_["FederationMetadataURL"])
        elif include_empty:
            instance.federation_metadata_url = str()
        if "IsActive" in dict_ and dict_["IsActive"] is not None:
            instance.is_active = bool(dict_["IsActive"])
        elif include_empty:
            instance.is_active = bool()
        if "KeyID" in dict_ and dict_["KeyID"] is not None:
            instance.key_id = str(dict_["KeyID"])
        elif include_empty:
            instance.key_id = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "OrganizationId" in dict_ and dict_["OrganizationId"] is not None:
            instance.organization_id = str(dict_["OrganizationId"])
        elif include_empty:
            instance.organization_id = str()
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = str()
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "registeredDomains" in dict_ and dict_["registeredDomains"] is not None:
            instance.registered_domains = [AccountcommonRegisteredDomain.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["registeredDomains"]]
        elif include_empty:
            instance.registered_domains = []
        if "Secret" in dict_ and dict_["Secret"] is not None:
            instance.secret = str(dict_["Secret"])
        elif include_empty:
            instance.secret = str()
        if "TeamID" in dict_ and dict_["TeamID"] is not None:
            instance.team_id = str(dict_["TeamID"])
        elif include_empty:
            instance.team_id = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelThirdPartyLoginPlatformCredentialResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelThirdPartyLoginPlatformCredentialResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelThirdPartyLoginPlatformCredentialResponse, List[ModelThirdPartyLoginPlatformCredentialResponse], Dict[Any, ModelThirdPartyLoginPlatformCredentialResponse]]:
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
            "AppId": "app_id",
            "AWSCognitoRegion": "aws_cognito_region",
            "AWSCognitoUserPool": "aws_cognito_user_pool",
            "ClientId": "client_id",
            "Environment": "environment",
            "FederationMetadataURL": "federation_metadata_url",
            "IsActive": "is_active",
            "KeyID": "key_id",
            "Namespace": "namespace",
            "OrganizationId": "organization_id",
            "PlatformId": "platform_id",
            "RedirectUri": "redirect_uri",
            "registeredDomains": "registered_domains",
            "Secret": "secret",
            "TeamID": "team_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ACSURL": True,
            "AppId": True,
            "AWSCognitoRegion": True,
            "AWSCognitoUserPool": True,
            "ClientId": True,
            "Environment": True,
            "FederationMetadataURL": True,
            "IsActive": True,
            "KeyID": True,
            "Namespace": True,
            "OrganizationId": True,
            "PlatformId": True,
            "RedirectUri": True,
            "registeredDomains": True,
            "Secret": True,
            "TeamID": True,
        }

    # endregion static methods
