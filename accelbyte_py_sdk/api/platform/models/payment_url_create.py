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


class PaymentProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class PaymentUrlCreate(Model):
    """Payment url create (PaymentUrlCreate)

    Properties:
        payment_order_no: (paymentOrderNo) REQUIRED str

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum]

        return_url: (returnUrl) OPTIONAL str

        ui: (ui) OPTIONAL str

        zip_code: (zipCode) OPTIONAL str
    """

    # region fields

    payment_order_no: str  # REQUIRED
    payment_provider: Union[str, PaymentProviderEnum]  # REQUIRED
    return_url: str  # OPTIONAL
    ui: str  # OPTIONAL
    zip_code: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_order_no(self, value: str) -> PaymentUrlCreate:
        self.payment_order_no = value
        return self

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> PaymentUrlCreate:
        self.payment_provider = value
        return self

    def with_return_url(self, value: str) -> PaymentUrlCreate:
        self.return_url = value
        return self

    def with_ui(self, value: str) -> PaymentUrlCreate:
        self.ui = value
        return self

    def with_zip_code(self, value: str) -> PaymentUrlCreate:
        self.zip_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "ui"):
            result["ui"] = str(self.ui)
        elif include_empty:
            result["ui"] = ""
        if hasattr(self, "zip_code"):
            result["zipCode"] = str(self.zip_code)
        elif include_empty:
            result["zipCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_order_no: str,
        payment_provider: Union[str, PaymentProviderEnum],
        return_url: Optional[str] = None,
        ui: Optional[str] = None,
        zip_code: Optional[str] = None,
    ) -> PaymentUrlCreate:
        instance = cls()
        instance.payment_order_no = payment_order_no
        instance.payment_provider = payment_provider
        if return_url is not None:
            instance.return_url = return_url
        if ui is not None:
            instance.ui = ui
        if zip_code is not None:
            instance.zip_code = zip_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentUrlCreate:
        instance = cls()
        if not dict_:
            return instance
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "ui" in dict_ and dict_["ui"] is not None:
            instance.ui = str(dict_["ui"])
        elif include_empty:
            instance.ui = ""
        if "zipCode" in dict_ and dict_["zipCode"] is not None:
            instance.zip_code = str(dict_["zipCode"])
        elif include_empty:
            instance.zip_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentUrlCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentUrlCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PaymentUrlCreate, List[PaymentUrlCreate], Dict[Any, PaymentUrlCreate]]:
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
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "returnUrl": "return_url",
            "ui": "ui",
            "zipCode": "zip_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "paymentOrderNo": True,
            "paymentProvider": True,
            "returnUrl": False,
            "ui": False,
            "zipCode": False,
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
