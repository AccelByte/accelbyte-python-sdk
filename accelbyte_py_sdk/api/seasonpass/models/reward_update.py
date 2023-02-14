# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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

from ..models.image import Image
from ..models.reward_currency import RewardCurrency


class TypeEnum(StrEnum):
    CURRENCY = "CURRENCY"
    ITEM = "ITEM"


class RewardUpdate(Model):
    """A DTO object for updating reward API call. (RewardUpdate)

    Properties:
        currency: (currency) OPTIONAL RewardCurrency

        image: (image) OPTIONAL Image

        item_id: (itemId) OPTIONAL str

        null_fields: (nullFields) OPTIONAL List[str]

        quantity: (quantity) OPTIONAL int

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    currency: RewardCurrency  # OPTIONAL
    image: Image  # OPTIONAL
    item_id: str  # OPTIONAL
    null_fields: List[str]  # OPTIONAL
    quantity: int  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(self, value: RewardCurrency) -> RewardUpdate:
        self.currency = value
        return self

    def with_image(self, value: Image) -> RewardUpdate:
        self.image = value
        return self

    def with_item_id(self, value: str) -> RewardUpdate:
        self.item_id = value
        return self

    def with_null_fields(self, value: List[str]) -> RewardUpdate:
        self.null_fields = value
        return self

    def with_quantity(self, value: int) -> RewardUpdate:
        self.quantity = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> RewardUpdate:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = RewardCurrency()
        if hasattr(self, "image"):
            result["image"] = self.image.to_dict(include_empty=include_empty)
        elif include_empty:
            result["image"] = Image()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "null_fields"):
            result["nullFields"] = [str(i0) for i0 in self.null_fields]
        elif include_empty:
            result["nullFields"] = []
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: Optional[RewardCurrency] = None,
        image: Optional[Image] = None,
        item_id: Optional[str] = None,
        null_fields: Optional[List[str]] = None,
        quantity: Optional[int] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
    ) -> RewardUpdate:
        instance = cls()
        if currency is not None:
            instance.currency = currency
        if image is not None:
            instance.image = image
        if item_id is not None:
            instance.item_id = item_id
        if null_fields is not None:
            instance.null_fields = null_fields
        if quantity is not None:
            instance.quantity = quantity
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = RewardCurrency.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = RewardCurrency()
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = Image.create_from_dict(
                dict_["image"], include_empty=include_empty
            )
        elif include_empty:
            instance.image = Image()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "nullFields" in dict_ and dict_["nullFields"] is not None:
            instance.null_fields = [str(i0) for i0 in dict_["nullFields"]]
        elif include_empty:
            instance.null_fields = []
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardUpdate, List[RewardUpdate], Dict[Any, RewardUpdate]]:
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
            "currency": "currency",
            "image": "image",
            "itemId": "item_id",
            "nullFields": "null_fields",
            "quantity": "quantity",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": False,
            "image": False,
            "itemId": False,
            "nullFields": False,
            "quantity": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["CURRENCY", "ITEM"],
        }

    # endregion static methods
