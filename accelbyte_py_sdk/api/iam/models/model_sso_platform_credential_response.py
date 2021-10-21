# Auto-generated at 2021-10-21T08:52:26.110841+08:00
# from: Justice iam Service (4.4.1)

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


class ModelSSOPlatformCredentialResponse(Model):
    """Model SSO platform credential response (model.SSOPlatformCredentialResponse)

    Properties:
        acs_url: (acsUrl) REQUIRED str

        app_id: (appId) REQUIRED str

        federation_metadata_url: (federationMetadataUrl) REQUIRED str

        is_active: (isActive) REQUIRED bool

        namespace: (namespace) REQUIRED str

        platform_id: (platformId) REQUIRED str

        redirect_uri: (redirectUri) REQUIRED str

        secret: (secret) REQUIRED str

        sso_url: (ssoUrl) REQUIRED str

        truncated_api_key: (truncatedApiKey) REQUIRED str
    """

    # region fields

    acs_url: str                                                                                   # REQUIRED
    app_id: str                                                                                    # REQUIRED
    federation_metadata_url: str                                                                   # REQUIRED
    is_active: bool                                                                                # REQUIRED
    namespace: str                                                                                 # REQUIRED
    platform_id: str                                                                               # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    secret: str                                                                                    # REQUIRED
    sso_url: str                                                                                   # REQUIRED
    truncated_api_key: str                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_acs_url(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.acs_url = value
        return self

    def with_app_id(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.app_id = value
        return self

    def with_federation_metadata_url(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.federation_metadata_url = value
        return self

    def with_is_active(self, value: bool) -> ModelSSOPlatformCredentialResponse:
        self.is_active = value
        return self

    def with_namespace(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.platform_id = value
        return self

    def with_redirect_uri(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.redirect_uri = value
        return self

    def with_secret(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.secret = value
        return self

    def with_sso_url(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.sso_url = value
        return self

    def with_truncated_api_key(self, value: str) -> ModelSSOPlatformCredentialResponse:
        self.truncated_api_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "acs_url") and self.acs_url:
            result["acsUrl"] = str(self.acs_url)
        elif include_empty:
            result["acsUrl"] = str()
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "federation_metadata_url") and self.federation_metadata_url:
            result["federationMetadataUrl"] = str(self.federation_metadata_url)
        elif include_empty:
            result["federationMetadataUrl"] = str()
        if hasattr(self, "is_active") and self.is_active:
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = bool()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = str()
        if hasattr(self, "secret") and self.secret:
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = str()
        if hasattr(self, "sso_url") and self.sso_url:
            result["ssoUrl"] = str(self.sso_url)
        elif include_empty:
            result["ssoUrl"] = str()
        if hasattr(self, "truncated_api_key") and self.truncated_api_key:
            result["truncatedApiKey"] = str(self.truncated_api_key)
        elif include_empty:
            result["truncatedApiKey"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        acs_url: str,
        app_id: str,
        federation_metadata_url: str,
        is_active: bool,
        namespace: str,
        platform_id: str,
        redirect_uri: str,
        secret: str,
        sso_url: str,
        truncated_api_key: str,
    ) -> ModelSSOPlatformCredentialResponse:
        instance = cls()
        instance.acs_url = acs_url
        instance.app_id = app_id
        instance.federation_metadata_url = federation_metadata_url
        instance.is_active = is_active
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        instance.sso_url = sso_url
        instance.truncated_api_key = truncated_api_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelSSOPlatformCredentialResponse:
        instance = cls()
        if not dict_:
            return instance
        if "acsUrl" in dict_ and dict_["acsUrl"] is not None:
            instance.acs_url = str(dict_["acsUrl"])
        elif include_empty:
            instance.acs_url = str()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "federationMetadataUrl" in dict_ and dict_["federationMetadataUrl"] is not None:
            instance.federation_metadata_url = str(dict_["federationMetadataUrl"])
        elif include_empty:
            instance.federation_metadata_url = str()
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = bool()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = str()
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = str()
        if "ssoUrl" in dict_ and dict_["ssoUrl"] is not None:
            instance.sso_url = str(dict_["ssoUrl"])
        elif include_empty:
            instance.sso_url = str()
        if "truncatedApiKey" in dict_ and dict_["truncatedApiKey"] is not None:
            instance.truncated_api_key = str(dict_["truncatedApiKey"])
        elif include_empty:
            instance.truncated_api_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "acsUrl": "acs_url",
            "appId": "app_id",
            "federationMetadataUrl": "federation_metadata_url",
            "isActive": "is_active",
            "namespace": "namespace",
            "platformId": "platform_id",
            "redirectUri": "redirect_uri",
            "secret": "secret",
            "ssoUrl": "sso_url",
            "truncatedApiKey": "truncated_api_key",
        }

    # endregion static methods
