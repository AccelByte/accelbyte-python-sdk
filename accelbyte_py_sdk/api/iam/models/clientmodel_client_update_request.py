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


class ClientmodelClientUpdateRequest(Model):
    """Clientmodel client update request (clientmodel.ClientUpdateRequest)

    Properties:
        client_name: (ClientName) REQUIRED str

        redirect_uri: (RedirectUri) REQUIRED str
    """

    # region fields

    client_name: str                                                                               # REQUIRED
    redirect_uri: str                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_name(self, value: str) -> ClientmodelClientUpdateRequest:
        self.client_name = value
        return self

    def with_redirect_uri(self, value: str) -> ClientmodelClientUpdateRequest:
        self.redirect_uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_name"):
            result["ClientName"] = str(self.client_name)
        elif include_empty:
            result["ClientName"] = str()
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
        client_name: str,
        redirect_uri: str,
    ) -> ClientmodelClientUpdateRequest:
        instance = cls()
        instance.client_name = client_name
        instance.redirect_uri = redirect_uri
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "ClientName" in dict_ and dict_["ClientName"] is not None:
            instance.client_name = str(dict_["ClientName"])
        elif include_empty:
            instance.client_name = str()
        if "RedirectUri" in dict_ and dict_["RedirectUri"] is not None:
            instance.redirect_uri = str(dict_["RedirectUri"])
        elif include_empty:
            instance.redirect_uri = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ClientName": "client_name",
            "RedirectUri": "redirect_uri",
        }

    # endregion static methods
