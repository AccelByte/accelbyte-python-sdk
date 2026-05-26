# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class OauthcommonASMetadataResponse(Model):
    """Oauthcommon AS metadata response (oauthcommon.ASMetadataResponse)

    Properties:
        authorization_endpoint: (authorization_endpoint) REQUIRED str

        code_challenge_methods_supported: (code_challenge_methods_supported) REQUIRED List[str]

        grant_types_supported: (grant_types_supported) REQUIRED List[str]

        issuer: (issuer) REQUIRED str

        jwks_uri: (jwks_uri) REQUIRED str

        registration_endpoint: (registration_endpoint) REQUIRED str

        response_types_supported: (response_types_supported) REQUIRED List[str]

        scopes_supported: (scopes_supported) REQUIRED List[str]

        token_endpoint: (token_endpoint) REQUIRED str

        token_endpoint_auth_methods_supported: (token_endpoint_auth_methods_supported) REQUIRED List[str]
    """

    # region fields

    authorization_endpoint: str  # REQUIRED
    code_challenge_methods_supported: List[str]  # REQUIRED
    grant_types_supported: List[str]  # REQUIRED
    issuer: str  # REQUIRED
    jwks_uri: str  # REQUIRED
    registration_endpoint: str  # REQUIRED
    response_types_supported: List[str]  # REQUIRED
    scopes_supported: List[str]  # REQUIRED
    token_endpoint: str  # REQUIRED
    token_endpoint_auth_methods_supported: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_authorization_endpoint(self, value: str) -> OauthcommonASMetadataResponse:
        self.authorization_endpoint = value
        return self

    def with_code_challenge_methods_supported(
        self, value: List[str]
    ) -> OauthcommonASMetadataResponse:
        self.code_challenge_methods_supported = value
        return self

    def with_grant_types_supported(
        self, value: List[str]
    ) -> OauthcommonASMetadataResponse:
        self.grant_types_supported = value
        return self

    def with_issuer(self, value: str) -> OauthcommonASMetadataResponse:
        self.issuer = value
        return self

    def with_jwks_uri(self, value: str) -> OauthcommonASMetadataResponse:
        self.jwks_uri = value
        return self

    def with_registration_endpoint(self, value: str) -> OauthcommonASMetadataResponse:
        self.registration_endpoint = value
        return self

    def with_response_types_supported(
        self, value: List[str]
    ) -> OauthcommonASMetadataResponse:
        self.response_types_supported = value
        return self

    def with_scopes_supported(self, value: List[str]) -> OauthcommonASMetadataResponse:
        self.scopes_supported = value
        return self

    def with_token_endpoint(self, value: str) -> OauthcommonASMetadataResponse:
        self.token_endpoint = value
        return self

    def with_token_endpoint_auth_methods_supported(
        self, value: List[str]
    ) -> OauthcommonASMetadataResponse:
        self.token_endpoint_auth_methods_supported = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "authorization_endpoint"):
            result["authorization_endpoint"] = str(self.authorization_endpoint)
        elif include_empty:
            result["authorization_endpoint"] = ""
        if hasattr(self, "code_challenge_methods_supported"):
            result["code_challenge_methods_supported"] = [
                str(i0) for i0 in self.code_challenge_methods_supported
            ]
        elif include_empty:
            result["code_challenge_methods_supported"] = []
        if hasattr(self, "grant_types_supported"):
            result["grant_types_supported"] = [
                str(i0) for i0 in self.grant_types_supported
            ]
        elif include_empty:
            result["grant_types_supported"] = []
        if hasattr(self, "issuer"):
            result["issuer"] = str(self.issuer)
        elif include_empty:
            result["issuer"] = ""
        if hasattr(self, "jwks_uri"):
            result["jwks_uri"] = str(self.jwks_uri)
        elif include_empty:
            result["jwks_uri"] = ""
        if hasattr(self, "registration_endpoint"):
            result["registration_endpoint"] = str(self.registration_endpoint)
        elif include_empty:
            result["registration_endpoint"] = ""
        if hasattr(self, "response_types_supported"):
            result["response_types_supported"] = [
                str(i0) for i0 in self.response_types_supported
            ]
        elif include_empty:
            result["response_types_supported"] = []
        if hasattr(self, "scopes_supported"):
            result["scopes_supported"] = [str(i0) for i0 in self.scopes_supported]
        elif include_empty:
            result["scopes_supported"] = []
        if hasattr(self, "token_endpoint"):
            result["token_endpoint"] = str(self.token_endpoint)
        elif include_empty:
            result["token_endpoint"] = ""
        if hasattr(self, "token_endpoint_auth_methods_supported"):
            result["token_endpoint_auth_methods_supported"] = [
                str(i0) for i0 in self.token_endpoint_auth_methods_supported
            ]
        elif include_empty:
            result["token_endpoint_auth_methods_supported"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        authorization_endpoint: str,
        code_challenge_methods_supported: List[str],
        grant_types_supported: List[str],
        issuer: str,
        jwks_uri: str,
        registration_endpoint: str,
        response_types_supported: List[str],
        scopes_supported: List[str],
        token_endpoint: str,
        token_endpoint_auth_methods_supported: List[str],
        **kwargs,
    ) -> OauthcommonASMetadataResponse:
        instance = cls()
        instance.authorization_endpoint = authorization_endpoint
        instance.code_challenge_methods_supported = code_challenge_methods_supported
        instance.grant_types_supported = grant_types_supported
        instance.issuer = issuer
        instance.jwks_uri = jwks_uri
        instance.registration_endpoint = registration_endpoint
        instance.response_types_supported = response_types_supported
        instance.scopes_supported = scopes_supported
        instance.token_endpoint = token_endpoint
        instance.token_endpoint_auth_methods_supported = (
            token_endpoint_auth_methods_supported
        )
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthcommonASMetadataResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "authorization_endpoint" in dict_
            and dict_["authorization_endpoint"] is not None
        ):
            instance.authorization_endpoint = str(dict_["authorization_endpoint"])
        elif include_empty:
            instance.authorization_endpoint = ""
        if (
            "code_challenge_methods_supported" in dict_
            and dict_["code_challenge_methods_supported"] is not None
        ):
            instance.code_challenge_methods_supported = [
                str(i0) for i0 in dict_["code_challenge_methods_supported"]
            ]
        elif include_empty:
            instance.code_challenge_methods_supported = []
        if (
            "grant_types_supported" in dict_
            and dict_["grant_types_supported"] is not None
        ):
            instance.grant_types_supported = [
                str(i0) for i0 in dict_["grant_types_supported"]
            ]
        elif include_empty:
            instance.grant_types_supported = []
        if "issuer" in dict_ and dict_["issuer"] is not None:
            instance.issuer = str(dict_["issuer"])
        elif include_empty:
            instance.issuer = ""
        if "jwks_uri" in dict_ and dict_["jwks_uri"] is not None:
            instance.jwks_uri = str(dict_["jwks_uri"])
        elif include_empty:
            instance.jwks_uri = ""
        if (
            "registration_endpoint" in dict_
            and dict_["registration_endpoint"] is not None
        ):
            instance.registration_endpoint = str(dict_["registration_endpoint"])
        elif include_empty:
            instance.registration_endpoint = ""
        if (
            "response_types_supported" in dict_
            and dict_["response_types_supported"] is not None
        ):
            instance.response_types_supported = [
                str(i0) for i0 in dict_["response_types_supported"]
            ]
        elif include_empty:
            instance.response_types_supported = []
        if "scopes_supported" in dict_ and dict_["scopes_supported"] is not None:
            instance.scopes_supported = [str(i0) for i0 in dict_["scopes_supported"]]
        elif include_empty:
            instance.scopes_supported = []
        if "token_endpoint" in dict_ and dict_["token_endpoint"] is not None:
            instance.token_endpoint = str(dict_["token_endpoint"])
        elif include_empty:
            instance.token_endpoint = ""
        if (
            "token_endpoint_auth_methods_supported" in dict_
            and dict_["token_endpoint_auth_methods_supported"] is not None
        ):
            instance.token_endpoint_auth_methods_supported = [
                str(i0) for i0 in dict_["token_endpoint_auth_methods_supported"]
            ]
        elif include_empty:
            instance.token_endpoint_auth_methods_supported = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthcommonASMetadataResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthcommonASMetadataResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthcommonASMetadataResponse,
        List[OauthcommonASMetadataResponse],
        Dict[Any, OauthcommonASMetadataResponse],
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
            "authorization_endpoint": "authorization_endpoint",
            "code_challenge_methods_supported": "code_challenge_methods_supported",
            "grant_types_supported": "grant_types_supported",
            "issuer": "issuer",
            "jwks_uri": "jwks_uri",
            "registration_endpoint": "registration_endpoint",
            "response_types_supported": "response_types_supported",
            "scopes_supported": "scopes_supported",
            "token_endpoint": "token_endpoint",
            "token_endpoint_auth_methods_supported": "token_endpoint_auth_methods_supported",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "authorization_endpoint": True,
            "code_challenge_methods_supported": True,
            "grant_types_supported": True,
            "issuer": True,
            "jwks_uri": True,
            "registration_endpoint": True,
            "response_types_supported": True,
            "scopes_supported": True,
            "token_endpoint": True,
            "token_endpoint_auth_methods_supported": True,
        }

    # endregion static methods
