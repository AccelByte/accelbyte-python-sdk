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


class PlayStationReconcileRequest(Model):
    """Play station reconcile request (PlayStationReconcileRequest)

    Properties:
        currency_code: (currencyCode) OPTIONAL str

        price: (price) OPTIONAL float

        product_id: (productId) OPTIONAL str

        service_label: (serviceLabel) OPTIONAL int
    """

    # region fields

    currency_code: str                                                                             # OPTIONAL
    price: float                                                                                   # OPTIONAL
    product_id: str                                                                                # OPTIONAL
    service_label: int                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> PlayStationReconcileRequest:
        self.currency_code = value
        return self

    def with_price(self, value: float) -> PlayStationReconcileRequest:
        self.price = value
        return self

    def with_product_id(self, value: str) -> PlayStationReconcileRequest:
        self.product_id = value
        return self

    def with_service_label(self, value: int) -> PlayStationReconcileRequest:
        self.service_label = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "price"):
            result["price"] = float(self.price)
        elif include_empty:
            result["price"] = float()
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "service_label"):
            result["serviceLabel"] = int(self.service_label)
        elif include_empty:
            result["serviceLabel"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: Optional[str] = None,
        price: Optional[float] = None,
        product_id: Optional[str] = None,
        service_label: Optional[int] = None,
    ) -> PlayStationReconcileRequest:
        instance = cls()
        if currency_code is not None:
            instance.currency_code = currency_code
        if price is not None:
            instance.price = price
        if product_id is not None:
            instance.product_id = product_id
        if service_label is not None:
            instance.service_label = service_label
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlayStationReconcileRequest:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = float(dict_["price"])
        elif include_empty:
            instance.price = float()
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "serviceLabel" in dict_ and dict_["serviceLabel"] is not None:
            instance.service_label = int(dict_["serviceLabel"])
        elif include_empty:
            instance.service_label = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PlayStationReconcileRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PlayStationReconcileRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PlayStationReconcileRequest, List[PlayStationReconcileRequest]]:
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
            "currencyCode": "currency_code",
            "price": "price",
            "productId": "product_id",
            "serviceLabel": "service_label",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": False,
            "price": False,
            "productId": False,
            "serviceLabel": False,
        }

    # endregion static methods
