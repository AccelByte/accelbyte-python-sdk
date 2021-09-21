# Auto-generated at 2021-09-21T14:10:38.824373+08:00
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


class PaymentToken(Model):
    """Payment token

    Properties:
        token: (token) OPTIONAL str
    """

    # region fields

    token: str                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_token(self, value: str) -> PaymentToken:
        self.token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "token") and self.token:
            result["token"] = str(self.token)
        elif include_empty:
            result["token"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        token: Optional[str] = None,
    ) -> PaymentToken:
        instance = cls()
        if token is not None:
            instance.token = token
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentToken:
        instance = cls()
        if "token" in dict_ and dict_["token"] is not None:
            instance.token = str(dict_["token"])
        elif include_empty:
            instance.token = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "token": "token",
        }

    # endregion static methods
