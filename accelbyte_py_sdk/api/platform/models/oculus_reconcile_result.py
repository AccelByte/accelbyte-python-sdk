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


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class OculusReconcileResult(Model):
    """Oculus reconcile result (OculusReconcileResult)

    Properties:
        iap_order_status: (iapOrderStatus) OPTIONAL Union[str, IapOrderStatusEnum]

        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        oculus_item_sku: (oculusItemSku) OPTIONAL str

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    iap_order_status: Union[str, IapOrderStatusEnum]  # OPTIONAL
    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    oculus_item_sku: str  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_iap_order_status(
        self, value: Union[str, IapOrderStatusEnum]
    ) -> OculusReconcileResult:
        self.iap_order_status = value
        return self

    def with_item_identity(self, value: str) -> OculusReconcileResult:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> OculusReconcileResult:
        self.item_identity_type = value
        return self

    def with_oculus_item_sku(self, value: str) -> OculusReconcileResult:
        self.oculus_item_sku = value
        return self

    def with_transaction_id(self, value: str) -> OculusReconcileResult:
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
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "oculus_item_sku"):
            result["oculusItemSku"] = str(self.oculus_item_sku)
        elif include_empty:
            result["oculusItemSku"] = ""
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
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        oculus_item_sku: Optional[str] = None,
        transaction_id: Optional[str] = None,
        **kwargs,
    ) -> OculusReconcileResult:
        instance = cls()
        if iap_order_status is not None:
            instance.iap_order_status = iap_order_status
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if oculus_item_sku is not None:
            instance.oculus_item_sku = oculus_item_sku
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OculusReconcileResult:
        instance = cls()
        if not dict_:
            return instance
        if "iapOrderStatus" in dict_ and dict_["iapOrderStatus"] is not None:
            instance.iap_order_status = str(dict_["iapOrderStatus"])
        elif include_empty:
            instance.iap_order_status = Union[str, IapOrderStatusEnum]()
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if "oculusItemSku" in dict_ and dict_["oculusItemSku"] is not None:
            instance.oculus_item_sku = str(dict_["oculusItemSku"])
        elif include_empty:
            instance.oculus_item_sku = ""
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OculusReconcileResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OculusReconcileResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OculusReconcileResult,
        List[OculusReconcileResult],
        Dict[Any, OculusReconcileResult],
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
            "iapOrderStatus": "iap_order_status",
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "oculusItemSku": "oculus_item_sku",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "iapOrderStatus": False,
            "itemIdentity": False,
            "itemIdentityType": False,
            "oculusItemSku": False,
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
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
        }

    # endregion static methods
