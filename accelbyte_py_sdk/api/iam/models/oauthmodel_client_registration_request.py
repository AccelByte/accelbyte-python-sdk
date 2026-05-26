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


class OauthmodelClientRegistrationRequest(Model):
    """Oauthmodel client registration request (oauthmodel.ClientRegistrationRequest)

    Properties:
        client_name: (client_name) REQUIRED str

        redirect_uris: (redirect_uris) REQUIRED List[str]

        client_uri: (client_uri) OPTIONAL str

        grant_types: (grant_types) OPTIONAL List[str]

        response_types: (response_types) OPTIONAL List[str]

        scopes: (scopes) OPTIONAL List[str]

        token_endpoint_auth_method: (token_endpoint_auth_method) OPTIONAL str
    """

    # region fields

    client_name: str  # REQUIRED
    redirect_uris: List[str]  # REQUIRED
    client_uri: str  # OPTIONAL
    grant_types: List[str]  # OPTIONAL
    response_types: List[str]  # OPTIONAL
    scopes: List[str]  # OPTIONAL
    token_endpoint_auth_method: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_name(self, value: str) -> OauthmodelClientRegistrationRequest:
        self.client_name = value
        return self

    def with_redirect_uris(
        self, value: List[str]
    ) -> OauthmodelClientRegistrationRequest:
        self.redirect_uris = value
        return self

    def with_client_uri(self, value: str) -> OauthmodelClientRegistrationRequest:
        self.client_uri = value
        return self

    def with_grant_types(self, value: List[str]) -> OauthmodelClientRegistrationRequest:
        self.grant_types = value
        return self

    def with_response_types(
        self, value: List[str]
    ) -> OauthmodelClientRegistrationRequest:
        self.response_types = value
        return self

    def with_scopes(self, value: List[str]) -> OauthmodelClientRegistrationRequest:
        self.scopes = value
        return self

    def with_token_endpoint_auth_method(
        self, value: str
    ) -> OauthmodelClientRegistrationRequest:
        self.token_endpoint_auth_method = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_name"):
            result["client_name"] = str(self.client_name)
        elif include_empty:
            result["client_name"] = ""
        if hasattr(self, "redirect_uris"):
            result["redirect_uris"] = [str(i0) for i0 in self.redirect_uris]
        elif include_empty:
            result["redirect_uris"] = []
        if hasattr(self, "client_uri"):
            result["client_uri"] = str(self.client_uri)
        elif include_empty:
            result["client_uri"] = ""
        if hasattr(self, "grant_types"):
            result["grant_types"] = [str(i0) for i0 in self.grant_types]
        elif include_empty:
            result["grant_types"] = []
        if hasattr(self, "response_types"):
            result["response_types"] = [str(i0) for i0 in self.response_types]
        elif include_empty:
            result["response_types"] = []
        if hasattr(self, "scopes"):
            result["scopes"] = [str(i0) for i0 in self.scopes]
        elif include_empty:
            result["scopes"] = []
        if hasattr(self, "token_endpoint_auth_method"):
            result["token_endpoint_auth_method"] = str(self.token_endpoint_auth_method)
        elif include_empty:
            result["token_endpoint_auth_method"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_name: str,
        redirect_uris: List[str],
        client_uri: Optional[str] = None,
        grant_types: Optional[List[str]] = None,
        response_types: Optional[List[str]] = None,
        scopes: Optional[List[str]] = None,
        token_endpoint_auth_method: Optional[str] = None,
        **kwargs,
    ) -> OauthmodelClientRegistrationRequest:
        instance = cls()
        instance.client_name = client_name
        instance.redirect_uris = redirect_uris
        if client_uri is not None:
            instance.client_uri = client_uri
        if grant_types is not None:
            instance.grant_types = grant_types
        if response_types is not None:
            instance.response_types = response_types
        if scopes is not None:
            instance.scopes = scopes
        if token_endpoint_auth_method is not None:
            instance.token_endpoint_auth_method = token_endpoint_auth_method
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelClientRegistrationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "client_name" in dict_ and dict_["client_name"] is not None:
            instance.client_name = str(dict_["client_name"])
        elif include_empty:
            instance.client_name = ""
        if "redirect_uris" in dict_ and dict_["redirect_uris"] is not None:
            instance.redirect_uris = [str(i0) for i0 in dict_["redirect_uris"]]
        elif include_empty:
            instance.redirect_uris = []
        if "client_uri" in dict_ and dict_["client_uri"] is not None:
            instance.client_uri = str(dict_["client_uri"])
        elif include_empty:
            instance.client_uri = ""
        if "grant_types" in dict_ and dict_["grant_types"] is not None:
            instance.grant_types = [str(i0) for i0 in dict_["grant_types"]]
        elif include_empty:
            instance.grant_types = []
        if "response_types" in dict_ and dict_["response_types"] is not None:
            instance.response_types = [str(i0) for i0 in dict_["response_types"]]
        elif include_empty:
            instance.response_types = []
        if "scopes" in dict_ and dict_["scopes"] is not None:
            instance.scopes = [str(i0) for i0 in dict_["scopes"]]
        elif include_empty:
            instance.scopes = []
        if (
            "token_endpoint_auth_method" in dict_
            and dict_["token_endpoint_auth_method"] is not None
        ):
            instance.token_endpoint_auth_method = str(
                dict_["token_endpoint_auth_method"]
            )
        elif include_empty:
            instance.token_endpoint_auth_method = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelClientRegistrationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelClientRegistrationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelClientRegistrationRequest,
        List[OauthmodelClientRegistrationRequest],
        Dict[Any, OauthmodelClientRegistrationRequest],
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
            "client_name": "client_name",
            "redirect_uris": "redirect_uris",
            "client_uri": "client_uri",
            "grant_types": "grant_types",
            "response_types": "response_types",
            "scopes": "scopes",
            "token_endpoint_auth_method": "token_endpoint_auth_method",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "client_name": True,
            "redirect_uris": True,
            "client_uri": False,
            "grant_types": False,
            "response_types": False,
            "scopes": False,
            "token_endpoint_auth_method": False,
        }

    # endregion static methods
