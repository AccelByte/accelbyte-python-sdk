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
from ....core import StrEnum

from ..models.additional_data import AdditionalData


class PaymentProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class BillingAccount(Model):
    """Billing account (BillingAccount)

    Properties:
        additional_data: (additionalData) OPTIONAL AdditionalData

        payment_method: (paymentMethod) OPTIONAL str

        payment_provider: (paymentProvider) OPTIONAL Union[str, PaymentProviderEnum]
    """

    # region fields

    additional_data: AdditionalData  # OPTIONAL
    payment_method: str  # OPTIONAL
    payment_provider: Union[str, PaymentProviderEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_additional_data(self, value: AdditionalData) -> BillingAccount:
        self.additional_data = value
        return self

    def with_payment_method(self, value: str) -> BillingAccount:
        self.payment_method = value
        return self

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> BillingAccount:
        self.payment_provider = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["additionalData"] = AdditionalData()
        if hasattr(self, "payment_method"):
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = ""
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_data: Optional[AdditionalData] = None,
        payment_method: Optional[str] = None,
        payment_provider: Optional[Union[str, PaymentProviderEnum]] = None,
    ) -> BillingAccount:
        instance = cls()
        if additional_data is not None:
            instance.additional_data = additional_data
        if payment_method is not None:
            instance.payment_method = payment_method
        if payment_provider is not None:
            instance.payment_provider = payment_provider
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BillingAccount:
        instance = cls()
        if not dict_:
            return instance
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = AdditionalData.create_from_dict(
                dict_["additionalData"], include_empty=include_empty
            )
        elif include_empty:
            instance.additional_data = AdditionalData()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = ""
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BillingAccount]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BillingAccount]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BillingAccount, List[BillingAccount], Dict[Any, BillingAccount]]:
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
            "additionalData": "additional_data",
            "paymentMethod": "payment_method",
            "paymentProvider": "payment_provider",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additionalData": False,
            "paymentMethod": False,
            "paymentProvider": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "paymentProvider": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
        }

    # endregion static methods
