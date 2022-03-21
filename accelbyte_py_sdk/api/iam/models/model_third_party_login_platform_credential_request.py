# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelThirdPartyLoginPlatformCredentialRequest(Model):
    """Model third party login platform credential request (model.ThirdPartyLoginPlatformCredentialRequest)

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

        organization_id: (OrganizationId) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str

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
    organization_id: str                                                                           # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    secret: str                                                                                    # REQUIRED
    team_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_acsurl(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.acsurl = value
        return self

    def with_app_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.app_id = value
        return self

    def with_aws_cognito_region(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.aws_cognito_region = value
        return self

    def with_aws_cognito_user_pool(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.aws_cognito_user_pool = value
        return self

    def with_client_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.client_id = value
        return self

    def with_environment(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.environment = value
        return self

    def with_federation_metadata_url(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.federation_metadata_url = value
        return self

    def with_is_active(self, value: bool) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.is_active = value
        return self

    def with_key_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.key_id = value
        return self

    def with_organization_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.organization_id = value
        return self

    def with_redirect_uri(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.redirect_uri = value
        return self

    def with_secret(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.secret = value
        return self

    def with_team_id(self, value: str) -> ModelThirdPartyLoginPlatformCredentialRequest:
        self.team_id = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "acsurl") or self.acsurl is None:
            return False
        if not hasattr(self, "app_id") or self.app_id is None:
            return False
        if not hasattr(self, "aws_cognito_region") or self.aws_cognito_region is None:
            return False
        if not hasattr(self, "aws_cognito_user_pool") or self.aws_cognito_user_pool is None:
            return False
        if not hasattr(self, "client_id") or self.client_id is None:
            return False
        if not hasattr(self, "environment") or self.environment is None:
            return False
        if not hasattr(self, "federation_metadata_url") or self.federation_metadata_url is None:
            return False
        if not hasattr(self, "is_active") or self.is_active is None:
            return False
        if not hasattr(self, "key_id") or self.key_id is None:
            return False
        if not hasattr(self, "organization_id") or self.organization_id is None:
            return False
        if not hasattr(self, "redirect_uri") or self.redirect_uri is None:
            return False
        if not hasattr(self, "secret") or self.secret is None:
            return False
        if not hasattr(self, "team_id") or self.team_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

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
        if hasattr(self, "organization_id"):
            result["OrganizationId"] = str(self.organization_id)
        elif include_empty:
            result["OrganizationId"] = str()
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = str()
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
        organization_id: str,
        redirect_uri: str,
        secret: str,
        team_id: str,
    ) -> ModelThirdPartyLoginPlatformCredentialRequest:
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
        instance.organization_id = organization_id
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        instance.team_id = team_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelThirdPartyLoginPlatformCredentialRequest:
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
        if "OrganizationId" in dict_ and dict_["OrganizationId"] is not None:
            instance.organization_id = str(dict_["OrganizationId"])
        elif include_empty:
            instance.organization_id = str()
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
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
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelThirdPartyLoginPlatformCredentialRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelThirdPartyLoginPlatformCredentialRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelThirdPartyLoginPlatformCredentialRequest, List[ModelThirdPartyLoginPlatformCredentialRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
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
            "OrganizationId": "organization_id",
            "RedirectUri": "redirect_uri",
            "Secret": "secret",
            "TeamID": "team_id",
        }

    # endregion static methods
