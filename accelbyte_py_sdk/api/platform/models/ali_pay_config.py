# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class AliPayConfig(Model):
    """A DTO object for updating alipay config. (AliPayConfig)

    Properties:
        app_id: (appId) OPTIONAL str

        private_key: (privateKey) OPTIONAL str

        public_key: (publicKey) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    app_id: str  # OPTIONAL
    private_key: str  # OPTIONAL
    public_key: str  # OPTIONAL
    return_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> AliPayConfig:
        self.app_id = value
        return self

    def with_private_key(self, value: str) -> AliPayConfig:
        self.private_key = value
        return self

    def with_public_key(self, value: str) -> AliPayConfig:
        self.public_key = value
        return self

    def with_return_url(self, value: str) -> AliPayConfig:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "private_key"):
            result["privateKey"] = str(self.private_key)
        elif include_empty:
            result["privateKey"] = ""
        if hasattr(self, "public_key"):
            result["publicKey"] = str(self.public_key)
        elif include_empty:
            result["publicKey"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: Optional[str] = None,
        private_key: Optional[str] = None,
        public_key: Optional[str] = None,
        return_url: Optional[str] = None,
    ) -> AliPayConfig:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if private_key is not None:
            instance.private_key = private_key
        if public_key is not None:
            instance.public_key = public_key
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AliPayConfig:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "privateKey" in dict_ and dict_["privateKey"] is not None:
            instance.private_key = str(dict_["privateKey"])
        elif include_empty:
            instance.private_key = ""
        if "publicKey" in dict_ and dict_["publicKey"] is not None:
            instance.public_key = str(dict_["publicKey"])
        elif include_empty:
            instance.public_key = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AliPayConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AliPayConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AliPayConfig, List[AliPayConfig], Dict[Any, AliPayConfig]]:
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
            "appId": "app_id",
            "privateKey": "private_key",
            "publicKey": "public_key",
            "returnUrl": "return_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": False,
            "privateKey": False,
            "publicKey": False,
            "returnUrl": False,
        }

    # endregion static methods
