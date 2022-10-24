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


class CheckoutConfig(Model):
    """A DTO object for updating checkout.com config. (CheckoutConfig)

    Properties:
        public_key: (publicKey) OPTIONAL str

        secret_key: (secretKey) OPTIONAL str
    """

    # region fields

    public_key: str  # OPTIONAL
    secret_key: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_public_key(self, value: str) -> CheckoutConfig:
        self.public_key = value
        return self

    def with_secret_key(self, value: str) -> CheckoutConfig:
        self.secret_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "public_key"):
            result["publicKey"] = str(self.public_key)
        elif include_empty:
            result["publicKey"] = ""
        if hasattr(self, "secret_key"):
            result["secretKey"] = str(self.secret_key)
        elif include_empty:
            result["secretKey"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        public_key: Optional[str] = None,
        secret_key: Optional[str] = None,
    ) -> CheckoutConfig:
        instance = cls()
        if public_key is not None:
            instance.public_key = public_key
        if secret_key is not None:
            instance.secret_key = secret_key
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CheckoutConfig:
        instance = cls()
        if not dict_:
            return instance
        if "publicKey" in dict_ and dict_["publicKey"] is not None:
            instance.public_key = str(dict_["publicKey"])
        elif include_empty:
            instance.public_key = ""
        if "secretKey" in dict_ and dict_["secretKey"] is not None:
            instance.secret_key = str(dict_["secretKey"])
        elif include_empty:
            instance.secret_key = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CheckoutConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CheckoutConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CheckoutConfig, List[CheckoutConfig], Dict[Any, CheckoutConfig]]:
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
            "publicKey": "public_key",
            "secretKey": "secret_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "publicKey": False,
            "secretKey": False,
        }

    # endregion static methods
