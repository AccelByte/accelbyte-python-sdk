# justice-platform-service (3.34.0)

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


class PaymentOrderChargeRequest(Model):
    """Payment order charge request (PaymentOrderChargeRequest)

    Properties:
        payment_provider: (paymentProvider) REQUIRED str

        ext_tx_id: (extTxId) OPTIONAL str

        payment_method: (paymentMethod) OPTIONAL str
    """

    # region fields

    payment_provider: str                                                                          # REQUIRED
    ext_tx_id: str                                                                                 # OPTIONAL
    payment_method: str                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_provider(self, value: str) -> PaymentOrderChargeRequest:
        self.payment_provider = value
        return self

    def with_ext_tx_id(self, value: str) -> PaymentOrderChargeRequest:
        self.ext_tx_id = value
        return self

    def with_payment_method(self, value: str) -> PaymentOrderChargeRequest:
        self.payment_method = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "ext_tx_id"):
            result["extTxId"] = str(self.ext_tx_id)
        elif include_empty:
            result["extTxId"] = str()
        if hasattr(self, "payment_method"):
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_provider: str,
        ext_tx_id: Optional[str] = None,
        payment_method: Optional[str] = None,
    ) -> PaymentOrderChargeRequest:
        instance = cls()
        instance.payment_provider = payment_provider
        if ext_tx_id is not None:
            instance.ext_tx_id = ext_tx_id
        if payment_method is not None:
            instance.payment_method = payment_method
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderChargeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "extTxId" in dict_ and dict_["extTxId"] is not None:
            instance.ext_tx_id = str(dict_["extTxId"])
        elif include_empty:
            instance.ext_tx_id = str()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentProvider": "payment_provider",
            "extTxId": "ext_tx_id",
            "paymentMethod": "payment_method",
        }

    # endregion static methods
