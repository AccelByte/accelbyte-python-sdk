# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

from ..models.event_additional_data import EventAdditionalData


class StreamEventBody(Model):
    """Stream event body (StreamEventBody)

    Properties:
        account: (account) OPTIONAL str

        additional_data: (additionalData) OPTIONAL EventAdditionalData

        original_title_name: (originalTitleName) OPTIONAL str

        payment_product_sku: (paymentProductSKU) OPTIONAL str

        purchase_date: (purchaseDate) OPTIONAL str

        source_order_item_id: (sourceOrderItemId) OPTIONAL str

        title_name: (titleName) OPTIONAL str
    """

    # region fields

    account: str  # OPTIONAL
    additional_data: EventAdditionalData  # OPTIONAL
    original_title_name: str  # OPTIONAL
    payment_product_sku: str  # OPTIONAL
    purchase_date: str  # OPTIONAL
    source_order_item_id: str  # OPTIONAL
    title_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_account(self, value: str) -> StreamEventBody:
        self.account = value
        return self

    def with_additional_data(self, value: EventAdditionalData) -> StreamEventBody:
        self.additional_data = value
        return self

    def with_original_title_name(self, value: str) -> StreamEventBody:
        self.original_title_name = value
        return self

    def with_payment_product_sku(self, value: str) -> StreamEventBody:
        self.payment_product_sku = value
        return self

    def with_purchase_date(self, value: str) -> StreamEventBody:
        self.purchase_date = value
        return self

    def with_source_order_item_id(self, value: str) -> StreamEventBody:
        self.source_order_item_id = value
        return self

    def with_title_name(self, value: str) -> StreamEventBody:
        self.title_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "account"):
            result["account"] = str(self.account)
        elif include_empty:
            result["account"] = ""
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["additionalData"] = EventAdditionalData()
        if hasattr(self, "original_title_name"):
            result["originalTitleName"] = str(self.original_title_name)
        elif include_empty:
            result["originalTitleName"] = ""
        if hasattr(self, "payment_product_sku"):
            result["paymentProductSKU"] = str(self.payment_product_sku)
        elif include_empty:
            result["paymentProductSKU"] = ""
        if hasattr(self, "purchase_date"):
            result["purchaseDate"] = str(self.purchase_date)
        elif include_empty:
            result["purchaseDate"] = ""
        if hasattr(self, "source_order_item_id"):
            result["sourceOrderItemId"] = str(self.source_order_item_id)
        elif include_empty:
            result["sourceOrderItemId"] = ""
        if hasattr(self, "title_name"):
            result["titleName"] = str(self.title_name)
        elif include_empty:
            result["titleName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        account: Optional[str] = None,
        additional_data: Optional[EventAdditionalData] = None,
        original_title_name: Optional[str] = None,
        payment_product_sku: Optional[str] = None,
        purchase_date: Optional[str] = None,
        source_order_item_id: Optional[str] = None,
        title_name: Optional[str] = None,
        **kwargs,
    ) -> StreamEventBody:
        instance = cls()
        if account is not None:
            instance.account = account
        if additional_data is not None:
            instance.additional_data = additional_data
        if original_title_name is not None:
            instance.original_title_name = original_title_name
        if payment_product_sku is not None:
            instance.payment_product_sku = payment_product_sku
        if purchase_date is not None:
            instance.purchase_date = purchase_date
        if source_order_item_id is not None:
            instance.source_order_item_id = source_order_item_id
        if title_name is not None:
            instance.title_name = title_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StreamEventBody:
        instance = cls()
        if not dict_:
            return instance
        if "account" in dict_ and dict_["account"] is not None:
            instance.account = str(dict_["account"])
        elif include_empty:
            instance.account = ""
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = EventAdditionalData.create_from_dict(
                dict_["additionalData"], include_empty=include_empty
            )
        elif include_empty:
            instance.additional_data = EventAdditionalData()
        if "originalTitleName" in dict_ and dict_["originalTitleName"] is not None:
            instance.original_title_name = str(dict_["originalTitleName"])
        elif include_empty:
            instance.original_title_name = ""
        if "paymentProductSKU" in dict_ and dict_["paymentProductSKU"] is not None:
            instance.payment_product_sku = str(dict_["paymentProductSKU"])
        elif include_empty:
            instance.payment_product_sku = ""
        if "purchaseDate" in dict_ and dict_["purchaseDate"] is not None:
            instance.purchase_date = str(dict_["purchaseDate"])
        elif include_empty:
            instance.purchase_date = ""
        if "sourceOrderItemId" in dict_ and dict_["sourceOrderItemId"] is not None:
            instance.source_order_item_id = str(dict_["sourceOrderItemId"])
        elif include_empty:
            instance.source_order_item_id = ""
        if "titleName" in dict_ and dict_["titleName"] is not None:
            instance.title_name = str(dict_["titleName"])
        elif include_empty:
            instance.title_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StreamEventBody]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StreamEventBody]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StreamEventBody, List[StreamEventBody], Dict[Any, StreamEventBody]]:
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
            "account": "account",
            "additionalData": "additional_data",
            "originalTitleName": "original_title_name",
            "paymentProductSKU": "payment_product_sku",
            "purchaseDate": "purchase_date",
            "sourceOrderItemId": "source_order_item_id",
            "titleName": "title_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "account": False,
            "additionalData": False,
            "originalTitleName": False,
            "paymentProductSKU": False,
            "purchaseDate": False,
            "sourceOrderItemId": False,
            "titleName": False,
        }

    # endregion static methods
