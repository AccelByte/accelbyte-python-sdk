# Auto-generated at 2021-10-14T22:17:16.469220+08:00
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


class CheckoutConfig(Model):
    """A DTO object for updating checkout.com config. (CheckoutConfig)

    Properties:
        public_key: (publicKey) OPTIONAL str

        secret_key: (secretKey) OPTIONAL str
    """

    # region fields

    public_key: str                                                                                # OPTIONAL
    secret_key: str                                                                                # OPTIONAL

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
        if hasattr(self, "public_key") and self.public_key:
            result["publicKey"] = str(self.public_key)
        elif include_empty:
            result["publicKey"] = str()
        if hasattr(self, "secret_key") and self.secret_key:
            result["secretKey"] = str(self.secret_key)
        elif include_empty:
            result["secretKey"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CheckoutConfig:
        instance = cls()
        if not dict_:
            return instance
        if "publicKey" in dict_ and dict_["publicKey"] is not None:
            instance.public_key = str(dict_["publicKey"])
        elif include_empty:
            instance.public_key = str()
        if "secretKey" in dict_ and dict_["secretKey"] is not None:
            instance.secret_key = str(dict_["secretKey"])
        elif include_empty:
            instance.secret_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "publicKey": "public_key",
            "secretKey": "secret_key",
        }

    # endregion static methods
