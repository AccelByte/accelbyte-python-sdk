# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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
    """A DTO object for updating PayPal config. (PayPalConfig)

    Properties:
        client_id: (clientID) OPTIONAL str

        client_secret: (clientSecret) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        web_hook_id: (webHookId) OPTIONAL str
    """

    # region fields

    client_id: str  # OPTIONAL
    client_secret: str  # OPTIONAL
    return_url: str  # OPTIONAL
    web_hook_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> PayPalConfig:
        self.client_id = value
        return self

    def with_client_secret(self, value: str) -> PayPalConfig:
        self.client_secret = value
        return self

    def with_return_url(self, value: str) -> PayPalConfig:
        self.return_url = value
        return self

    def with_web_hook_id(self, value: str) -> PayPalConfig:
        self.web_hook_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientID"] = str(self.client_id)
        elif include_empty:
            result["clientID"] = ""
        if hasattr(self, "client_secret"):
            result["clientSecret"] = str(self.client_secret)
        elif include_empty:
            result["clientSecret"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "web_hook_id"):
            result["webHookId"] = str(self.web_hook_id)
        elif include_empty:
            result["webHookId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: Optional[str] = None,
        client_secret: Optional[str] = None,
        return_url: Optional[str] = None,
        web_hook_id: Optional[str] = None,
    ) -> PayPalConfig:
        instance = cls()
        if client_id is not None:
            instance.client_id = client_id
        if client_secret is not None:
            instance.client_secret = client_secret
        if return_url is not None:
            instance.return_url = return_url
        if web_hook_id is not None:
            instance.web_hook_id = web_hook_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PayPalConfig:
        instance = cls()
        if not dict_:
            return instance
        if "clientID" in dict_ and dict_["clientID"] is not None:
            instance.client_id = str(dict_["clientID"])
        elif include_empty:
            instance.client_id = ""
        if "clientSecret" in dict_ and dict_["clientSecret"] is not None:
            instance.client_secret = str(dict_["clientSecret"])
        elif include_empty:
            instance.client_secret = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "webHookId" in dict_ and dict_["webHookId"] is not None:
            instance.web_hook_id = str(dict_["webHookId"])
        elif include_empty:
            instance.web_hook_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PayPalConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PayPalConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PayPalConfig, List[PayPalConfig], Dict[Any, PayPalConfig]]:
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
            "clientID": "client_id",
            "clientSecret": "client_secret",
            "returnUrl": "return_url",
            "webHookId": "web_hook_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientID": False,
            "clientSecret": False,
            "returnUrl": False,
            "webHookId": False,
        }

    # endregion static methods
