# Auto-generated at 2021-10-21T08:52:26.043248+08:00
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

from ..models.accountcommon_permission_v3 import AccountcommonPermissionV3


class ClientmodelClientUpdateV3Request(Model):
    """Clientmodel client update V3 request (clientmodel.ClientUpdateV3Request)

    Properties:
        audiences: (audiences) OPTIONAL List[str]

        base_uri: (baseUri) OPTIONAL str

        client_name: (clientName) OPTIONAL str

        client_permissions: (clientPermissions) OPTIONAL List[AccountcommonPermissionV3]

        namespace: (namespace) OPTIONAL str

        redirect_uri: (redirectUri) OPTIONAL str
    """

    # region fields

    audiences: List[str]                                                                           # OPTIONAL
    base_uri: str                                                                                  # OPTIONAL
    client_name: str                                                                               # OPTIONAL
    client_permissions: List[AccountcommonPermissionV3]                                            # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    redirect_uri: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_audiences(self, value: List[str]) -> ClientmodelClientUpdateV3Request:
        self.audiences = value
        return self

    def with_base_uri(self, value: str) -> ClientmodelClientUpdateV3Request:
        self.base_uri = value
        return self

    def with_client_name(self, value: str) -> ClientmodelClientUpdateV3Request:
        self.client_name = value
        return self

    def with_client_permissions(self, value: List[AccountcommonPermissionV3]) -> ClientmodelClientUpdateV3Request:
        self.client_permissions = value
        return self

    def with_namespace(self, value: str) -> ClientmodelClientUpdateV3Request:
        self.namespace = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientUpdateV3Request:
        self.redirect_uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "audiences") and self.audiences:
            result["audiences"] = [str(i0) for i0 in self.audiences]
        elif include_empty:
            result["audiences"] = []
        if hasattr(self, "base_uri") and self.base_uri:
            result["baseUri"] = str(self.base_uri)
        elif include_empty:
            result["baseUri"] = str()
        if hasattr(self, "client_name") and self.client_name:
            result["clientName"] = str(self.client_name)
        elif include_empty:
            result["clientName"] = str()
        if hasattr(self, "client_permissions") and self.client_permissions:
            result["clientPermissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.client_permissions]
        elif include_empty:
            result["clientPermissions"] = []
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        audiences: Optional[List[str]] = None,
        base_uri: Optional[str] = None,
        client_name: Optional[str] = None,
        client_permissions: Optional[List[AccountcommonPermissionV3]] = None,
        namespace: Optional[str] = None,
        redirect_uri: Optional[str] = None,
    ) -> ClientmodelClientUpdateV3Request:
        instance = cls()
        if audiences is not None:
            instance.audiences = audiences
        if base_uri is not None:
            instance.base_uri = base_uri
        if client_name is not None:
            instance.client_name = client_name
        if client_permissions is not None:
            instance.client_permissions = client_permissions
        if namespace is not None:
            instance.namespace = namespace
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientUpdateV3Request:
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
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "audiences": "audiences",
            "baseUri": "base_uri",
            "clientName": "client_name",
            "clientPermissions": "client_permissions",
            "namespace": "namespace",
            "redirectUri": "redirect_uri",
        }

    # endregion static methods
