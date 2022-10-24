# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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


class RewardCreate(Model):
    """A DTO object for creating reward API call. (RewardCreate)

    Properties:
        code: (code) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]

        currency: (currency) OPTIONAL RewardCurrency

        image: (image) OPTIONAL Image

        item_id: (itemId) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    code: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    currency: RewardCurrency  # OPTIONAL
    image: Image  # OPTIONAL
    item_id: str  # OPTIONAL
    quantity: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> RewardCreate:
        self.code = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> RewardCreate:
        self.type_ = value
        return self

    def with_currency(self, value: RewardCurrency) -> RewardCreate:
        self.currency = value
        return self

    def with_image(self, value: Image) -> RewardCreate:
        self.image = value
        return self

    def with_item_id(self, value: str) -> RewardCreate:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> RewardCreate:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
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
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        type_: Union[str, TypeEnum],
        currency: Optional[RewardCurrency] = None,
        image: Optional[Image] = None,
        item_id: Optional[str] = None,
        quantity: Optional[int] = None,
    ) -> RewardCreate:
        instance = cls()
        instance.code = code
        instance.type_ = type_
        if currency is not None:
            instance.currency = currency
        if image is not None:
            instance.image = image
        if item_id is not None:
            instance.item_id = item_id
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardCreate:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
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
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardCreate, List[RewardCreate], Dict[Any, RewardCreate]]:
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
            "code": "code",
            "type": "type_",
            "currency": "currency",
            "image": "image",
            "itemId": "item_id",
            "quantity": "quantity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "type": True,
            "currency": False,
            "image": False,
            "itemId": False,
            "quantity": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["CURRENCY", "ITEM"],
        }

    # endregion static methods
