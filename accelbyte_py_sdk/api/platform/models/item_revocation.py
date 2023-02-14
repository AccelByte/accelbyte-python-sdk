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

from ..models.credit_revocation import CreditRevocation
from ..models.entitlement_revocation import EntitlementRevocation


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class ItemRevocation(Model):
    """Item revocation (ItemRevocation)

    Properties:
        credit_revocations: (creditRevocations) OPTIONAL List[CreditRevocation]

        entitlement_revocations: (entitlementRevocations) OPTIONAL List[EntitlementRevocation]

        item_id: (itemId) OPTIONAL str

        item_revocations: (itemRevocations) OPTIONAL List[ItemRevocation]

        item_sku: (itemSku) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        quantity: (quantity) OPTIONAL int

        skipped: (skipped) OPTIONAL bool

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    credit_revocations: List[CreditRevocation]  # OPTIONAL
    entitlement_revocations: List[EntitlementRevocation]  # OPTIONAL
    item_id: str  # OPTIONAL
    item_revocations: List[ItemRevocation]  # OPTIONAL
    item_sku: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    quantity: int  # OPTIONAL
    skipped: bool  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_credit_revocations(self, value: List[CreditRevocation]) -> ItemRevocation:
        self.credit_revocations = value
        return self

    def with_entitlement_revocations(
        self, value: List[EntitlementRevocation]
    ) -> ItemRevocation:
        self.entitlement_revocations = value
        return self

    def with_item_id(self, value: str) -> ItemRevocation:
        self.item_id = value
        return self

    def with_item_revocations(self, value: List[ItemRevocation]) -> ItemRevocation:
        self.item_revocations = value
        return self

    def with_item_sku(self, value: str) -> ItemRevocation:
        self.item_sku = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> ItemRevocation:
        self.item_type = value
        return self

    def with_quantity(self, value: int) -> ItemRevocation:
        self.quantity = value
        return self

    def with_skipped(self, value: bool) -> ItemRevocation:
        self.skipped = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ItemRevocation:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "credit_revocations"):
            result["creditRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.credit_revocations
            ]
        elif include_empty:
            result["creditRevocations"] = []
        if hasattr(self, "entitlement_revocations"):
            result["entitlementRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_revocations
            ]
        elif include_empty:
            result["entitlementRevocations"] = []
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_revocations"):
            result["itemRevocations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.item_revocations
            ]
        elif include_empty:
            result["itemRevocations"] = []
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "skipped"):
            result["skipped"] = bool(self.skipped)
        elif include_empty:
            result["skipped"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        credit_revocations: Optional[List[CreditRevocation]] = None,
        entitlement_revocations: Optional[List[EntitlementRevocation]] = None,
        item_id: Optional[str] = None,
        item_revocations: Optional[List[ItemRevocation]] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        quantity: Optional[int] = None,
        skipped: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> ItemRevocation:
        instance = cls()
        if credit_revocations is not None:
            instance.credit_revocations = credit_revocations
        if entitlement_revocations is not None:
            instance.entitlement_revocations = entitlement_revocations
        if item_id is not None:
            instance.item_id = item_id
        if item_revocations is not None:
            instance.item_revocations = item_revocations
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        if quantity is not None:
            instance.quantity = quantity
        if skipped is not None:
            instance.skipped = skipped
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemRevocation:
        instance = cls()
        if not dict_:
            return instance
        if "creditRevocations" in dict_ and dict_["creditRevocations"] is not None:
            instance.credit_revocations = [
                CreditRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["creditRevocations"]
            ]
        elif include_empty:
            instance.credit_revocations = []
        if (
            "entitlementRevocations" in dict_
            and dict_["entitlementRevocations"] is not None
        ):
            instance.entitlement_revocations = [
                EntitlementRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlementRevocations"]
            ]
        elif include_empty:
            instance.entitlement_revocations = []
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemRevocations" in dict_ and dict_["itemRevocations"] is not None:
            instance.item_revocations = [
                ItemRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["itemRevocations"]
            ]
        elif include_empty:
            instance.item_revocations = []
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "skipped" in dict_ and dict_["skipped"] is not None:
            instance.skipped = bool(dict_["skipped"])
        elif include_empty:
            instance.skipped = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemRevocation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemRevocation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ItemRevocation, List[ItemRevocation], Dict[Any, ItemRevocation]]:
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
            "creditRevocations": "credit_revocations",
            "entitlementRevocations": "entitlement_revocations",
            "itemId": "item_id",
            "itemRevocations": "item_revocations",
            "itemSku": "item_sku",
            "itemType": "item_type",
            "quantity": "quantity",
            "skipped": "skipped",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "creditRevocations": False,
            "entitlementRevocations": False,
            "itemId": False,
            "itemRevocations": False,
            "itemSku": False,
            "itemType": False,
            "quantity": False,
            "skipped": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
