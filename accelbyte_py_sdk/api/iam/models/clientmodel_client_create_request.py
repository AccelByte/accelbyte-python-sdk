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

from ..models.accountcommon_permission import AccountcommonPermission


class ClientmodelClientCreateRequest(Model):
    """Clientmodel client create request (clientmodel.ClientCreateRequest)

    Properties:
        client_id: (ClientId) REQUIRED str

        client_name: (ClientName) REQUIRED str

        client_permissions: (ClientPermissions) REQUIRED List[AccountcommonPermission]

        namespace: (Namespace) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str

        secret: (Secret) REQUIRED str
    """

    # region fields

    client_id: str                                                                                 # REQUIRED
    client_name: str                                                                               # REQUIRED
    client_permissions: List[AccountcommonPermission]                                              # REQUIRED
    namespace: str                                                                                 # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    secret: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ClientmodelClientCreateRequest:
        self.client_id = value
        return self

    def with_client_name(self, value: str) -> ClientmodelClientCreateRequest:
        self.client_name = value
        return self

    def with_client_permissions(self, value: List[AccountcommonPermission]) -> ClientmodelClientCreateRequest:
        self.client_permissions = value
        return self

    def with_namespace(self, value: str) -> ClientmodelClientCreateRequest:
        self.namespace = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientCreateRequest:
        self.redirect_uri = value
        return self

    def with_secret(self, value: str) -> ClientmodelClientCreateRequest:
        self.secret = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "client_id") or self.client_id is None:
            return False
        if not hasattr(self, "client_name") or self.client_name is None:
            return False
        if not hasattr(self, "client_permissions") or self.client_permissions is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "redirect_uri") or self.redirect_uri is None:
            return False
        if not hasattr(self, "secret") or self.secret is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

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
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = str()
        if hasattr(self, "secret"):
            result["Secret"] = str(self.secret)
        elif include_empty:
            result["Secret"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        client_name: str,
        client_permissions: List[AccountcommonPermission],
        namespace: str,
        redirect_uri: str,
        secret: str,
    ) -> ClientmodelClientCreateRequest:
        instance = cls()
        instance.client_id = client_id
        instance.client_name = client_name
        instance.client_permissions = client_permissions
        instance.namespace = namespace
        instance.redirect_uri = redirect_uri
        instance.secret = secret
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientCreateRequest:
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
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "Secret" in dict_ and dict_["Secret"] is not None:
            instance.secret = str(dict_["Secret"])
        elif include_empty:
            instance.secret = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ClientmodelClientCreateRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ClientmodelClientCreateRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ClientmodelClientCreateRequest, List[ClientmodelClientCreateRequest]]:
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
            "ClientId": "client_id",
            "ClientName": "client_name",
            "ClientPermissions": "client_permissions",
            "Namespace": "namespace",
            "RedirectUri": "redirect_uri",
            "Secret": "secret",
        }

    # endregion static methods
