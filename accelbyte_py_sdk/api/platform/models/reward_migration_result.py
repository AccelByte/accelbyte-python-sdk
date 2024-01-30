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


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class RewardMigrationResult(Model):
    """Reward migration result (RewardMigrationResult)

    Properties:
        item_id: (itemId) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        reason: (reason) OPTIONAL str

        sku: (sku) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        synced_count: (syncedCount) OPTIONAL int

        synced_entitlement_ids: (syncedEntitlementIds) OPTIONAL List[str]
    """

    # region fields

    item_id: str  # OPTIONAL
    quantity: int  # OPTIONAL
    reason: str  # OPTIONAL
    sku: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    synced_count: int  # OPTIONAL
    synced_entitlement_ids: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> RewardMigrationResult:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> RewardMigrationResult:
        self.quantity = value
        return self

    def with_reason(self, value: str) -> RewardMigrationResult:
        self.reason = value
        return self

    def with_sku(self, value: str) -> RewardMigrationResult:
        self.sku = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RewardMigrationResult:
        self.status = value
        return self

    def with_synced_count(self, value: int) -> RewardMigrationResult:
        self.synced_count = value
        return self

    def with_synced_entitlement_ids(self, value: List[str]) -> RewardMigrationResult:
        self.synced_entitlement_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "synced_count"):
            result["syncedCount"] = int(self.synced_count)
        elif include_empty:
            result["syncedCount"] = 0
        if hasattr(self, "synced_entitlement_ids"):
            result["syncedEntitlementIds"] = [
                str(i0) for i0 in self.synced_entitlement_ids
            ]
        elif include_empty:
            result["syncedEntitlementIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: Optional[str] = None,
        quantity: Optional[int] = None,
        reason: Optional[str] = None,
        sku: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        synced_count: Optional[int] = None,
        synced_entitlement_ids: Optional[List[str]] = None,
        **kwargs,
    ) -> RewardMigrationResult:
        instance = cls()
        if item_id is not None:
            instance.item_id = item_id
        if quantity is not None:
            instance.quantity = quantity
        if reason is not None:
            instance.reason = reason
        if sku is not None:
            instance.sku = sku
        if status is not None:
            instance.status = status
        if synced_count is not None:
            instance.synced_count = synced_count
        if synced_entitlement_ids is not None:
            instance.synced_entitlement_ids = synced_entitlement_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RewardMigrationResult:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "syncedCount" in dict_ and dict_["syncedCount"] is not None:
            instance.synced_count = int(dict_["syncedCount"])
        elif include_empty:
            instance.synced_count = 0
        if (
            "syncedEntitlementIds" in dict_
            and dict_["syncedEntitlementIds"] is not None
        ):
            instance.synced_entitlement_ids = [
                str(i0) for i0 in dict_["syncedEntitlementIds"]
            ]
        elif include_empty:
            instance.synced_entitlement_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardMigrationResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardMigrationResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RewardMigrationResult,
        List[RewardMigrationResult],
        Dict[Any, RewardMigrationResult],
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
            "itemId": "item_id",
            "quantity": "quantity",
            "reason": "reason",
            "sku": "sku",
            "status": "status",
            "syncedCount": "synced_count",
            "syncedEntitlementIds": "synced_entitlement_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": False,
            "quantity": False,
            "reason": False,
            "sku": False,
            "status": False,
            "syncedCount": False,
            "syncedEntitlementIds": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
