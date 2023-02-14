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


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class EntitlementRevocation(Model):
    """Entitlement revocation (EntitlementRevocation)

    Properties:
        entitlement_id: (entitlementId) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        reason: (reason) OPTIONAL str

        revocation_strategy: (revocationStrategy) OPTIONAL str

        skipped: (skipped) OPTIONAL bool

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    entitlement_id: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    quantity: int  # OPTIONAL
    reason: str  # OPTIONAL
    revocation_strategy: str  # OPTIONAL
    skipped: bool  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_id(self, value: str) -> EntitlementRevocation:
        self.entitlement_id = value
        return self

    def with_item_id(self, value: str) -> EntitlementRevocation:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> EntitlementRevocation:
        self.item_sku = value
        return self

    def with_quantity(self, value: int) -> EntitlementRevocation:
        self.quantity = value
        return self

    def with_reason(self, value: str) -> EntitlementRevocation:
        self.reason = value
        return self

    def with_revocation_strategy(self, value: str) -> EntitlementRevocation:
        self.revocation_strategy = value
        return self

    def with_skipped(self, value: bool) -> EntitlementRevocation:
        self.skipped = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> EntitlementRevocation:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "revocation_strategy"):
            result["revocationStrategy"] = str(self.revocation_strategy)
        elif include_empty:
            result["revocationStrategy"] = ""
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
        entitlement_id: Optional[str] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        quantity: Optional[int] = None,
        reason: Optional[str] = None,
        revocation_strategy: Optional[str] = None,
        skipped: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> EntitlementRevocation:
        instance = cls()
        if entitlement_id is not None:
            instance.entitlement_id = entitlement_id
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if quantity is not None:
            instance.quantity = quantity
        if reason is not None:
            instance.reason = reason
        if revocation_strategy is not None:
            instance.revocation_strategy = revocation_strategy
        if skipped is not None:
            instance.skipped = skipped
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementRevocation:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "revocationStrategy" in dict_ and dict_["revocationStrategy"] is not None:
            instance.revocation_strategy = str(dict_["revocationStrategy"])
        elif include_empty:
            instance.revocation_strategy = ""
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
    ) -> Dict[str, EntitlementRevocation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementRevocation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementRevocation,
        List[EntitlementRevocation],
        Dict[Any, EntitlementRevocation],
    ]:
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
            "entitlementId": "entitlement_id",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "quantity": "quantity",
            "reason": "reason",
            "revocationStrategy": "revocation_strategy",
            "skipped": "skipped",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementId": False,
            "itemId": False,
            "itemSku": False,
            "quantity": False,
            "reason": False,
            "revocationStrategy": False,
            "skipped": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
