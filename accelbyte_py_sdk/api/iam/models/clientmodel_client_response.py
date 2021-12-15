# justice-iam-service (4.9.0)

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

from ..models.accountcommon_permission import AccountcommonPermission


class ClientmodelClientResponse(Model):
    """Clientmodel client response (clientmodel.ClientResponse)

    Properties:
        client_id: (ClientId) REQUIRED str

        client_name: (ClientName) REQUIRED str

        client_permissions: (ClientPermissions) REQUIRED List[AccountcommonPermission]

        created_at: (CreatedAt) REQUIRED str

        namespace: (Namespace) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str
    """

    # region fields

    client_id: str                                                                                 # REQUIRED
    client_name: str                                                                               # REQUIRED
    client_permissions: List[AccountcommonPermission]                                              # REQUIRED
    created_at: str                                                                                # REQUIRED
    namespace: str                                                                                 # REQUIRED
    redirect_uri: str                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ClientmodelClientResponse:
        self.client_id = value
        return self

    def with_client_name(self, value: str) -> ClientmodelClientResponse:
        self.client_name = value
        return self

    def with_client_permissions(self, value: List[AccountcommonPermission]) -> ClientmodelClientResponse:
        self.client_permissions = value
        return self

    def with_created_at(self, value: str) -> ClientmodelClientResponse:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> ClientmodelClientResponse:
        self.namespace = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientResponse:
        self.redirect_uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["ClientId"] = str(self.client_id)
        elif include_empty:
            result["ClientId"] = str()
        if hasattr(self, "client_name"):
            result["ClientName"] = str(self.client_name)
        elif include_empty:
            result["ClientName"] = str()
        if hasattr(self, "client_permissions"):
            result["ClientPermissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.client_permissions]
        elif include_empty:
            result["ClientPermissions"] = []
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = str()
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        client_name: str,
        client_permissions: List[AccountcommonPermission],
        created_at: str,
        namespace: str,
        redirect_uri: str,
    ) -> ClientmodelClientResponse:
        instance = cls()
        instance.client_id = client_id
        instance.client_name = client_name
        instance.client_permissions = client_permissions
        instance.created_at = created_at
        instance.namespace = namespace
        instance.redirect_uri = redirect_uri
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ClientId" in dict_ and dict_["ClientId"] is not None:
            instance.client_id = str(dict_["ClientId"])
        elif include_empty:
            instance.client_id = str()
        if "ClientName" in dict_ and dict_["ClientName"] is not None:
            instance.client_name = str(dict_["ClientName"])
        elif include_empty:
            instance.client_name = str()
        if "ClientPermissions" in dict_ and dict_["ClientPermissions"] is not None:
            instance.client_permissions = [AccountcommonPermission.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["ClientPermissions"]]
        elif include_empty:
            instance.client_permissions = []
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ClientId": "client_id",
            "ClientName": "client_name",
            "ClientPermissions": "client_permissions",
            "CreatedAt": "created_at",
            "Namespace": "namespace",
            "RedirectUri": "redirect_uri",
        }

    # endregion static methods
