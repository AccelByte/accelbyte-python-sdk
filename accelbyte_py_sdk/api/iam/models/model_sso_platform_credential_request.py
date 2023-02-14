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


class ModelSSOPlatformCredentialRequest(Model):
    """Model SSO platform credential request (model.SSOPlatformCredentialRequest)

    Properties:
        acs_url: (acsUrl) REQUIRED str

        api_key: (apiKey) REQUIRED str

        app_id: (appId) REQUIRED str

        federation_metadata_url: (federationMetadataUrl) REQUIRED str

        is_active: (isActive) REQUIRED bool

        redirect_uri: (redirectUri) REQUIRED str

        secret: (secret) REQUIRED str

        sso_url: (ssoUrl) REQUIRED str
    """

    # region fields

    acs_url: str  # REQUIRED
    api_key: str  # REQUIRED
    app_id: str  # REQUIRED
    federation_metadata_url: str  # REQUIRED
    is_active: bool  # REQUIRED
    redirect_uri: str  # REQUIRED
    secret: str  # REQUIRED
    sso_url: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_acs_url(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.acs_url = value
        return self

    def with_api_key(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.api_key = value
        return self

    def with_app_id(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.app_id = value
        return self

    def with_federation_metadata_url(
        self, value: str
    ) -> ModelSSOPlatformCredentialRequest:
        self.federation_metadata_url = value
        return self

    def with_is_active(self, value: bool) -> ModelSSOPlatformCredentialRequest:
        self.is_active = value
        return self

    def with_redirect_uri(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.redirect_uri = value
        return self

    def with_secret(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.secret = value
        return self

    def with_sso_url(self, value: str) -> ModelSSOPlatformCredentialRequest:
        self.sso_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "acs_url"):
            result["acsUrl"] = str(self.acs_url)
        elif include_empty:
            result["acsUrl"] = ""
        if hasattr(self, "api_key"):
            result["apiKey"] = str(self.api_key)
        elif include_empty:
            result["apiKey"] = ""
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "federation_metadata_url"):
            result["federationMetadataUrl"] = str(self.federation_metadata_url)
        elif include_empty:
            result["federationMetadataUrl"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = ""
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        if hasattr(self, "sso_url"):
            result["ssoUrl"] = str(self.sso_url)
        elif include_empty:
            result["ssoUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        acs_url: str,
        api_key: str,
        app_id: str,
        federation_metadata_url: str,
        is_active: bool,
        redirect_uri: str,
        secret: str,
        sso_url: str,
    ) -> ModelSSOPlatformCredentialRequest:
        instance = cls()
        instance.acs_url = acs_url
        instance.api_key = api_key
        instance.app_id = app_id
        instance.federation_metadata_url = federation_metadata_url
        instance.is_active = is_active
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        instance.sso_url = sso_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSSOPlatformCredentialRequest:
        instance = cls()
        if not dict_:
            return instance
        if "acsUrl" in dict_ and dict_["acsUrl"] is not None:
            instance.acs_url = str(dict_["acsUrl"])
        elif include_empty:
            instance.acs_url = ""
        if "apiKey" in dict_ and dict_["apiKey"] is not None:
            instance.api_key = str(dict_["apiKey"])
        elif include_empty:
            instance.api_key = ""
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if (
            "federationMetadataUrl" in dict_
            and dict_["federationMetadataUrl"] is not None
        ):
            instance.federation_metadata_url = str(dict_["federationMetadataUrl"])
        elif include_empty:
            instance.federation_metadata_url = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = ""
        if "ssoUrl" in dict_ and dict_["ssoUrl"] is not None:
            instance.sso_url = str(dict_["ssoUrl"])
        elif include_empty:
            instance.sso_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSSOPlatformCredentialRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSSOPlatformCredentialRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelSSOPlatformCredentialRequest,
        List[ModelSSOPlatformCredentialRequest],
        Dict[Any, ModelSSOPlatformCredentialRequest],
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
            "acsUrl": "acs_url",
            "apiKey": "api_key",
            "appId": "app_id",
            "federationMetadataUrl": "federation_metadata_url",
            "isActive": "is_active",
            "redirectUri": "redirect_uri",
            "secret": "secret",
            "ssoUrl": "sso_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "acsUrl": True,
            "apiKey": True,
            "appId": True,
            "federationMetadataUrl": True,
            "isActive": True,
            "redirectUri": True,
            "secret": True,
            "ssoUrl": True,
        }

    # endregion static methods
