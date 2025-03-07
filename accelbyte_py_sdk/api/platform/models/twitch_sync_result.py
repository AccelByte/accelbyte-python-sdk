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


class IapOrderStatusEnum(StrEnum):
    FAILED = "FAILED"
    FULFILLED = "FULFILLED"
    PARTIAL_REVOKED = "PARTIAL_REVOKED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"
    VERIFIED = "VERIFIED"


class TwitchSyncResult(Model):
    """Twitch sync result (TwitchSyncResult)

    Properties:
        iap_order_status: (iapOrderStatus) OPTIONAL Union[str, IapOrderStatusEnum]

        item_sku: (itemSku) OPTIONAL str

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    iap_order_status: Union[str, IapOrderStatusEnum]  # OPTIONAL
    item_sku: str  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_iap_order_status(
        self, value: Union[str, IapOrderStatusEnum]
    ) -> TwitchSyncResult:
        self.iap_order_status = value
        return self

    def with_item_sku(self, value: str) -> TwitchSyncResult:
        self.item_sku = value
        return self

    def with_transaction_id(self, value: str) -> TwitchSyncResult:
        self.transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "iap_order_status"):
            result["iapOrderStatus"] = str(self.iap_order_status)
        elif include_empty:
            result["iapOrderStatus"] = Union[str, IapOrderStatusEnum]()
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        iap_order_status: Optional[Union[str, IapOrderStatusEnum]] = None,
        item_sku: Optional[str] = None,
        transaction_id: Optional[str] = None,
        **kwargs,
    ) -> TwitchSyncResult:
        instance = cls()
        if iap_order_status is not None:
            instance.iap_order_status = iap_order_status
        if item_sku is not None:
            instance.item_sku = item_sku
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TwitchSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "iapOrderStatus" in dict_ and dict_["iapOrderStatus"] is not None:
            instance.iap_order_status = str(dict_["iapOrderStatus"])
        elif include_empty:
            instance.iap_order_status = Union[str, IapOrderStatusEnum]()
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TwitchSyncResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TwitchSyncResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TwitchSyncResult, List[TwitchSyncResult], Dict[Any, TwitchSyncResult]]:
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
            "iapOrderStatus": "iap_order_status",
            "itemSku": "item_sku",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "iapOrderStatus": False,
            "itemSku": False,
            "transactionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "iapOrderStatus": [
                "FAILED",
                "FULFILLED",
                "PARTIAL_REVOKED",
                "REVOKED",
                "REVOKE_FAILED",
                "VERIFIED",
            ],
        }

    # endregion static methods
