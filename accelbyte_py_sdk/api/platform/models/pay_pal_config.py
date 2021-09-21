# Auto-generated at 2021-09-21T14:10:38.814373+08:00
# from: Justice Platform Service (3.24.0)

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


class PayPalConfig(Model):
    """A DTO object for updating PayPal config.

    Properties:
        client_id: (clientID) OPTIONAL str

        client_secret: (clientSecret) OPTIONAL str

        web_hook_id: (webHookId) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    client_id: str                                                                                 # OPTIONAL
    client_secret: str                                                                             # OPTIONAL
    web_hook_id: str                                                                               # OPTIONAL
    return_url: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> PayPalConfig:
        self.client_id = value
        return self

    def with_client_secret(self, value: str) -> PayPalConfig:
        self.client_secret = value
        return self

    def with_web_hook_id(self, value: str) -> PayPalConfig:
        self.web_hook_id = value
        return self

    def with_return_url(self, value: str) -> PayPalConfig:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "client_id") and self.client_id:
            result["clientID"] = str(self.client_id)
        elif include_empty:
            result["clientID"] = str()
        if hasattr(self, "client_secret") and self.client_secret:
            result["clientSecret"] = str(self.client_secret)
        elif include_empty:
            result["clientSecret"] = str()
        if hasattr(self, "web_hook_id") and self.web_hook_id:
            result["webHookId"] = str(self.web_hook_id)
        elif include_empty:
            result["webHookId"] = str()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: Optional[str] = None,
        client_secret: Optional[str] = None,
        web_hook_id: Optional[str] = None,
        return_url: Optional[str] = None,
    ) -> PayPalConfig:
        instance = cls()
        if client_id is not None:
            instance.client_id = client_id
        if client_secret is not None:
            instance.client_secret = client_secret
        if web_hook_id is not None:
            instance.web_hook_id = web_hook_id
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PayPalConfig:
        instance = cls()
        if "clientID" in dict_ and dict_["clientID"] is not None:
            instance.client_id = str(dict_["clientID"])
        elif include_empty:
            instance.client_id = str()
        if "clientSecret" in dict_ and dict_["clientSecret"] is not None:
            instance.client_secret = str(dict_["clientSecret"])
        elif include_empty:
            instance.client_secret = str()
        if "webHookId" in dict_ and dict_["webHookId"] is not None:
            instance.web_hook_id = str(dict_["webHookId"])
        elif include_empty:
            instance.web_hook_id = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "clientID": "client_id",
            "clientSecret": "client_secret",
            "webHookId": "web_hook_id",
            "returnUrl": "return_url",
        }

    # endregion static methods
