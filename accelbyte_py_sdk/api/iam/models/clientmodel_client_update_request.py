# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class ClientmodelClientUpdateRequest(Model):
    """Clientmodel client update request (clientmodel.ClientUpdateRequest)

    Properties:
        client_name: (ClientName) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str

        two_factor_enabled: (TwoFactorEnabled) REQUIRED bool
    """

    # region fields

    client_name: str  # REQUIRED
    redirect_uri: str  # REQUIRED
    two_factor_enabled: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_name(self, value: str) -> ClientmodelClientUpdateRequest:
        self.client_name = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientUpdateRequest:
        self.redirect_uri = value
        return self

    def with_two_factor_enabled(self, value: bool) -> ClientmodelClientUpdateRequest:
        self.two_factor_enabled = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_name"):
            result["ClientName"] = str(self.client_name)
        elif include_empty:
            result["ClientName"] = ""
        if hasattr(self, "redirect_uri"):
            result["RedirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["RedirectUri"] = ""
        if hasattr(self, "two_factor_enabled"):
            result["TwoFactorEnabled"] = bool(self.two_factor_enabled)
        elif include_empty:
            result["TwoFactorEnabled"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_name: str,
        redirect_uri: str,
        two_factor_enabled: bool,
    ) -> ClientmodelClientUpdateRequest:
        instance = cls()
        instance.client_name = client_name
        instance.redirect_uri = redirect_uri
        instance.two_factor_enabled = two_factor_enabled
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelClientUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "ClientName" in dict_ and dict_["ClientName"] is not None:
            instance.client_name = str(dict_["ClientName"])
        elif include_empty:
            instance.client_name = ""
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "TwoFactorEnabled" in dict_ and dict_["TwoFactorEnabled"] is not None:
            instance.two_factor_enabled = bool(dict_["TwoFactorEnabled"])
        elif include_empty:
            instance.two_factor_enabled = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelClientUpdateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelClientUpdateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelClientUpdateRequest,
        List[ClientmodelClientUpdateRequest],
        Dict[Any, ClientmodelClientUpdateRequest],
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
            "ClientName": "client_name",
            "RedirectUri": "redirect_uri",
            "TwoFactorEnabled": "two_factor_enabled",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ClientName": True,
            "RedirectUri": True,
            "TwoFactorEnabled": True,
        }

    # endregion static methods
