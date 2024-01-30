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
from ....core import StrEnum


class IdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class RewardItem(Model):
    """Reward item (RewardItem)

    Properties:
        duration: (duration) OPTIONAL int

        end_date: (endDate) OPTIONAL str

        identity_type: (identityType) OPTIONAL Union[str, IdentityTypeEnum]

        item_id: (itemId) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        sku: (sku) OPTIONAL str
    """

    # region fields

    duration: int  # OPTIONAL
    end_date: str  # OPTIONAL
    identity_type: Union[str, IdentityTypeEnum]  # OPTIONAL
    item_id: str  # OPTIONAL
    quantity: int  # OPTIONAL
    sku: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_duration(self, value: int) -> RewardItem:
        self.duration = value
        return self

    def with_end_date(self, value: str) -> RewardItem:
        self.end_date = value
        return self

    def with_identity_type(self, value: Union[str, IdentityTypeEnum]) -> RewardItem:
        self.identity_type = value
        return self

    def with_item_id(self, value: str) -> RewardItem:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> RewardItem:
        self.quantity = value
        return self

    def with_sku(self, value: str) -> RewardItem:
        self.sku = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "identity_type"):
            result["identityType"] = str(self.identity_type)
        elif include_empty:
            result["identityType"] = Union[str, IdentityTypeEnum]()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        duration: Optional[int] = None,
        end_date: Optional[str] = None,
        identity_type: Optional[Union[str, IdentityTypeEnum]] = None,
        item_id: Optional[str] = None,
        quantity: Optional[int] = None,
        sku: Optional[str] = None,
        **kwargs,
    ) -> RewardItem:
        instance = cls()
        if duration is not None:
            instance.duration = duration
        if end_date is not None:
            instance.end_date = end_date
        if identity_type is not None:
            instance.identity_type = identity_type
        if item_id is not None:
            instance.item_id = item_id
        if quantity is not None:
            instance.quantity = quantity
        if sku is not None:
            instance.sku = sku
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardItem:
        instance = cls()
        if not dict_:
            return instance
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "identityType" in dict_ and dict_["identityType"] is not None:
            instance.identity_type = str(dict_["identityType"])
        elif include_empty:
            instance.identity_type = Union[str, IdentityTypeEnum]()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardItem, List[RewardItem], Dict[Any, RewardItem]]:
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
            "duration": "duration",
            "endDate": "end_date",
            "identityType": "identity_type",
            "itemId": "item_id",
            "quantity": "quantity",
            "sku": "sku",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "duration": False,
            "endDate": False,
            "identityType": False,
            "itemId": False,
            "quantity": False,
            "sku": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "identityType": ["ITEM_ID", "ITEM_SKU"],
        }

    # endregion static methods
