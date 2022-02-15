# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.2.0)

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

        namespace: (namespace) REQUIRED str

        oauth_client_type: (oauthClientType) REQUIRED str

        redirect_uri: (redirectUri) REQUIRED str

        secret: (secret) REQUIRED str
    """

    # region fields

    audiences: List[str]                                                                           # REQUIRED
    base_uri: str                                                                                  # REQUIRED
    client_id: str                                                                                 # REQUIRED
    client_name: str                                                                               # REQUIRED
    client_permissions: List[AccountcommonPermissionV3]                                            # REQUIRED
    namespace: str                                                                                 # REQUIRED
    oauth_client_type: str                                                                         # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    secret: str                                                                                    # REQUIRED

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

    def with_client_permissions(self, value: List[AccountcommonPermissionV3]) -> ClientmodelClientCreationV3Request:
        self.client_permissions = value
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
            result["baseUri"] = str()
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = str()
        if hasattr(self, "client_name"):
            result["clientName"] = str(self.client_name)
        elif include_empty:
            result["clientName"] = str()
        if hasattr(self, "client_permissions"):
            result["clientPermissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.client_permissions]
        elif include_empty:
            result["clientPermissions"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "oauth_client_type"):
            result["oauthClientType"] = str(self.oauth_client_type)
        elif include_empty:
            result["oauthClientType"] = str()
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = str()
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = str()
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
        namespace: str,
        oauth_client_type: str,
        redirect_uri: str,
        secret: str,
    ) -> ClientmodelClientCreationV3Request:
        instance = cls()
        instance.audiences = audiences
        instance.base_uri = base_uri
        instance.client_id = client_id
        instance.client_name = client_name
        instance.client_permissions = client_permissions
        instance.namespace = namespace
        instance.oauth_client_type = oauth_client_type
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientCreationV3Request:
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
            instance.base_uri = str()
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = str()
        if "clientName" in dict_ and dict_["clientName"] is not None:
            instance.client_name = str(dict_["clientName"])
        elif include_empty:
            instance.client_name = str()
        if "clientPermissions" in dict_ and dict_["clientPermissions"] is not None:
            instance.client_permissions = [AccountcommonPermissionV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["clientPermissions"]]
        elif include_empty:
            instance.client_permissions = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "oauthClientType" in dict_ and dict_["oauthClientType"] is not None:
            instance.oauth_client_type = str(dict_["oauthClientType"])
        elif include_empty:
            instance.oauth_client_type = str()
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ClientmodelClientCreationV3Request]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ClientmodelClientCreationV3Request]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ClientmodelClientCreationV3Request, List[ClientmodelClientCreationV3Request]]:
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
            "audiences": "audiences",
            "baseUri": "base_uri",
            "clientId": "client_id",
            "clientName": "client_name",
            "clientPermissions": "client_permissions",
            "namespace": "namespace",
            "oauthClientType": "oauth_client_type",
            "redirectUri": "redirect_uri",
            "secret": "secret",
        }

    # endregion static methods
