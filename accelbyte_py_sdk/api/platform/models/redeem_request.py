# justice-platform-service (3.39.0)

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


class RedeemRequest(Model):
    """Redeem request (RedeemRequest)

    Properties:
        code: (code) REQUIRED str

        order_no: (orderNo) OPTIONAL str
    """

    # region fields

    code: str                                                                                      # REQUIRED
    order_no: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> RedeemRequest:
        self.code = value
        return self

    def with_order_no(self, value: str) -> RedeemRequest:
        self.order_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        order_no: Optional[str] = None,
    ) -> RedeemRequest:
        instance = cls()
        instance.code = code
        if order_no is not None:
            instance.order_no = order_no
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RedeemRequest:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "orderNo": "order_no",
        }

    # endregion static methods
