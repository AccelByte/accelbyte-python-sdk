# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class NeonPayConfig(Model):
    """A DTO object for updating Neon Pay config. (NeonPayConfig)

    Properties:
        api_key: (apiKey) OPTIONAL str

        webhook_secret_key: (webhookSecretKey) OPTIONAL str
    """

    # region fields

    api_key: str  # OPTIONAL
    webhook_secret_key: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_api_key(self, value: str) -> NeonPayConfig:
        self.api_key = value
        return self

    def with_webhook_secret_key(self, value: str) -> NeonPayConfig:
        self.webhook_secret_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "api_key"):
            result["apiKey"] = str(self.api_key)
        elif include_empty:
            result["apiKey"] = ""
        if hasattr(self, "webhook_secret_key"):
            result["webhookSecretKey"] = str(self.webhook_secret_key)
        elif include_empty:
            result["webhookSecretKey"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        api_key: Optional[str] = None,
        webhook_secret_key: Optional[str] = None,
        **kwargs,
    ) -> NeonPayConfig:
        instance = cls()
        if api_key is not None:
            instance.api_key = api_key
        if webhook_secret_key is not None:
            instance.webhook_secret_key = webhook_secret_key
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NeonPayConfig:
        instance = cls()
        if not dict_:
            return instance
        if "apiKey" in dict_ and dict_["apiKey"] is not None:
            instance.api_key = str(dict_["apiKey"])
        elif include_empty:
            instance.api_key = ""
        if "webhookSecretKey" in dict_ and dict_["webhookSecretKey"] is not None:
            instance.webhook_secret_key = str(dict_["webhookSecretKey"])
        elif include_empty:
            instance.webhook_secret_key = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, NeonPayConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NeonPayConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[NeonPayConfig, List[NeonPayConfig], Dict[Any, NeonPayConfig]]:
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
            "apiKey": "api_key",
            "webhookSecretKey": "webhook_secret_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "apiKey": False,
            "webhookSecretKey": False,
        }

    # endregion static methods
