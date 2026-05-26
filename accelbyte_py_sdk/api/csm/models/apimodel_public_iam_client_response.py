# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelPublicIAMClientResponse(Model):
    """Apimodel public IAM client response (apimodel.PublicIAMClientResponse)

    Properties:
        client_id: (clientId) REQUIRED str

        client_name: (clientName) REQUIRED str

        redirect_uri_list: (redirectUriList) REQUIRED List[str]
    """

    # region fields

    client_id: str  # REQUIRED
    client_name: str  # REQUIRED
    redirect_uri_list: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ApimodelPublicIAMClientResponse:
        self.client_id = value
        return self

    def with_client_name(self, value: str) -> ApimodelPublicIAMClientResponse:
        self.client_name = value
        return self

    def with_redirect_uri_list(
        self, value: List[str]
    ) -> ApimodelPublicIAMClientResponse:
        self.redirect_uri_list = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "client_name"):
            result["clientName"] = str(self.client_name)
        elif include_empty:
            result["clientName"] = ""
        if hasattr(self, "redirect_uri_list"):
            result["redirectUriList"] = [str(i0) for i0 in self.redirect_uri_list]
        elif include_empty:
            result["redirectUriList"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, client_id: str, client_name: str, redirect_uri_list: List[str], **kwargs
    ) -> ApimodelPublicIAMClientResponse:
        instance = cls()
        instance.client_id = client_id
        instance.client_name = client_name
        instance.redirect_uri_list = redirect_uri_list
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelPublicIAMClientResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "clientName" in dict_ and dict_["clientName"] is not None:
            instance.client_name = str(dict_["clientName"])
        elif include_empty:
            instance.client_name = ""
        if "redirectUriList" in dict_ and dict_["redirectUriList"] is not None:
            instance.redirect_uri_list = [str(i0) for i0 in dict_["redirectUriList"]]
        elif include_empty:
            instance.redirect_uri_list = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelPublicIAMClientResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelPublicIAMClientResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelPublicIAMClientResponse,
        List[ApimodelPublicIAMClientResponse],
        Dict[Any, ApimodelPublicIAMClientResponse],
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
            "clientId": "client_id",
            "clientName": "client_name",
            "redirectUriList": "redirect_uri_list",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "clientName": True,
            "redirectUriList": True,
        }

    # endregion static methods
