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

from ..models.additional_data import AdditionalData


class BillingAccount(Model):
    """Billing account (BillingAccount)

    Properties:
        payment_provider: (paymentProvider) OPTIONAL str

        payment_method: (paymentMethod) OPTIONAL str

        additional_data: (additionalData) OPTIONAL AdditionalData
    """

    # region fields

    payment_provider: str                                                                          # OPTIONAL
    payment_method: str                                                                            # OPTIONAL
    additional_data: AdditionalData                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_provider(self, value: str) -> BillingAccount:
        self.payment_provider = value
        return self

    def with_payment_method(self, value: str) -> BillingAccount:
        self.payment_method = value
        return self

    def with_additional_data(self, value: AdditionalData) -> BillingAccount:
        self.additional_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "payment_method") and self.payment_method:
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = str()
        if hasattr(self, "additional_data") and self.additional_data:
            result["additionalData"] = self.additional_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["additionalData"] = AdditionalData()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_provider: Optional[str] = None,
        payment_method: Optional[str] = None,
        additional_data: Optional[AdditionalData] = None,
    ) -> BillingAccount:
        instance = cls()
        if payment_provider is not None:
            instance.payment_provider = payment_provider
        if payment_method is not None:
            instance.payment_method = payment_method
        if additional_data is not None:
            instance.additional_data = additional_data
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BillingAccount:
        instance = cls()
        if not dict_:
            return instance
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = str()
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = AdditionalData.create_from_dict(dict_["additionalData"], include_empty=include_empty)
        elif include_empty:
            instance.additional_data = AdditionalData()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentProvider": "payment_provider",
            "paymentMethod": "payment_method",
            "additionalData": "additional_data",
        }

    # endregion static methods