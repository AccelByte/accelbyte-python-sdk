# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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
import re
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

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PaymentOrderChargeRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PaymentOrderChargeRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PaymentOrderChargeRequest, List[PaymentOrderChargeRequest], Dict[Any, PaymentOrderChargeRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentProvider": "payment_provider",
            "extTxId": "ext_tx_id",
            "paymentMethod": "payment_method",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "paymentProvider": True,
            "extTxId": False,
            "paymentMethod": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "paymentProvider": ["WALLET", "XSOLLA", "ADYEN", "STRIPE", "CHECKOUT", "ALIPAY", "WXPAY", "PAYPAL"],
        }

    # endregion static methods
