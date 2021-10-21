# Auto-generated at 2021-10-21T08:52:30.860468+08:00
# from: Justice platform Service (3.34.0)

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


class PaymentUrlCreate(Model):
    """Payment url create (PaymentUrlCreate)

    Properties:
        payment_order_no: (paymentOrderNo) REQUIRED str

        payment_provider: (paymentProvider) REQUIRED str

        zip_code: (zipCode) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        ui: (ui) OPTIONAL str
    """

    # region fields

    payment_order_no: str                                                                          # REQUIRED
    payment_provider: str                                                                          # REQUIRED
    zip_code: str                                                                                  # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    ui: str                                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_order_no(self, value: str) -> PaymentUrlCreate:
        self.payment_order_no = value
        return self

    def with_payment_provider(self, value: str) -> PaymentUrlCreate:
        self.payment_provider = value
        return self

    def with_zip_code(self, value: str) -> PaymentUrlCreate:
        self.zip_code = value
        return self

    def with_return_url(self, value: str) -> PaymentUrlCreate:
        self.return_url = value
        return self

    def with_ui(self, value: str) -> PaymentUrlCreate:
        self.ui = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "zip_code") and self.zip_code:
            result["zipCode"] = str(self.zip_code)
        elif include_empty:
            result["zipCode"] = str()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "ui") and self.ui:
            result["ui"] = str(self.ui)
        elif include_empty:
            result["ui"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_order_no: str,
        payment_provider: str,
        zip_code: Optional[str] = None,
        return_url: Optional[str] = None,
        ui: Optional[str] = None,
    ) -> PaymentUrlCreate:
        instance = cls()
        instance.payment_order_no = payment_order_no
        instance.payment_provider = payment_provider
        if zip_code is not None:
            instance.zip_code = zip_code
        if return_url is not None:
            instance.return_url = return_url
        if ui is not None:
            instance.ui = ui
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentUrlCreate:
        instance = cls()
        if not dict_:
            return instance
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "zipCode" in dict_ and dict_["zipCode"] is not None:
            instance.zip_code = str(dict_["zipCode"])
        elif include_empty:
            instance.zip_code = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "ui" in dict_ and dict_["ui"] is not None:
            instance.ui = str(dict_["ui"])
        elif include_empty:
            instance.ui = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "zipCode": "zip_code",
            "returnUrl": "return_url",
            "ui": "ui",
        }

    # endregion static methods
