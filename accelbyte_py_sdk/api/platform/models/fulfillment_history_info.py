# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary
from ..models.fulfillment_error import FulfillmentError
from ..models.fulfillment_item import FulfillmentItem


class FulfillmentHistoryInfo(Model):
    """Fulfillment history info (FulfillmentHistoryInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        code: (code) OPTIONAL str

        credit_summaries: (creditSummaries) OPTIONAL List[CreditSummary]

        entitlement_summaries: (entitlementSummaries) OPTIONAL List[EntitlementSummary]

        fulfill_items: (fulfillItems) OPTIONAL List[FulfillmentItem]

        fulfillment_error: (fulfillmentError) OPTIONAL FulfillmentError

        granted_item_ids: (grantedItemIds) OPTIONAL List[str]

        order_no: (orderNo) OPTIONAL str
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    status: str                                                                                    # REQUIRED
    updated_at: str                                                                                # REQUIRED
    user_id: str                                                                                   # REQUIRED
    code: str                                                                                      # OPTIONAL
    credit_summaries: List[CreditSummary]                                                          # OPTIONAL
    entitlement_summaries: List[EntitlementSummary]                                                # OPTIONAL
    fulfill_items: List[FulfillmentItem]                                                           # OPTIONAL
    fulfillment_error: FulfillmentError                                                            # OPTIONAL
    granted_item_ids: List[str]                                                                    # OPTIONAL
    order_no: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> FulfillmentHistoryInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> FulfillmentHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> FulfillmentHistoryInfo:
        self.namespace = value
        return self

    def with_status(self, value: str) -> FulfillmentHistoryInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> FulfillmentHistoryInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> FulfillmentHistoryInfo:
        self.user_id = value
        return self

    def with_code(self, value: str) -> FulfillmentHistoryInfo:
        self.code = value
        return self

    def with_credit_summaries(self, value: List[CreditSummary]) -> FulfillmentHistoryInfo:
        self.credit_summaries = value
        return self

    def with_entitlement_summaries(self, value: List[EntitlementSummary]) -> FulfillmentHistoryInfo:
        self.entitlement_summaries = value
        return self

    def with_fulfill_items(self, value: List[FulfillmentItem]) -> FulfillmentHistoryInfo:
        self.fulfill_items = value
        return self

    def with_fulfillment_error(self, value: FulfillmentError) -> FulfillmentHistoryInfo:
        self.fulfillment_error = value
        return self

    def with_granted_item_ids(self, value: List[str]) -> FulfillmentHistoryInfo:
        self.granted_item_ids = value
        return self

    def with_order_no(self, value: str) -> FulfillmentHistoryInfo:
        self.order_no = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "created_at") or self.created_at is None:
            return False
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "status") or self.status is None:
            return False
        if not hasattr(self, "updated_at") or self.updated_at is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "credit_summaries"):
            result["creditSummaries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.credit_summaries]
        elif include_empty:
            result["creditSummaries"] = []
        if hasattr(self, "entitlement_summaries"):
            result["entitlementSummaries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.entitlement_summaries]
        elif include_empty:
            result["entitlementSummaries"] = []
        if hasattr(self, "fulfill_items"):
            result["fulfillItems"] = [i0.to_dict(include_empty=include_empty) for i0 in self.fulfill_items]
        elif include_empty:
            result["fulfillItems"] = []
        if hasattr(self, "fulfillment_error"):
            result["fulfillmentError"] = self.fulfillment_error.to_dict(include_empty=include_empty)
        elif include_empty:
            result["fulfillmentError"] = FulfillmentError()
        if hasattr(self, "granted_item_ids"):
            result["grantedItemIds"] = [str(i0) for i0 in self.granted_item_ids]
        elif include_empty:
            result["grantedItemIds"] = []
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        namespace: str,
        status: str,
        updated_at: str,
        user_id: str,
        code: Optional[str] = None,
        credit_summaries: Optional[List[CreditSummary]] = None,
        entitlement_summaries: Optional[List[EntitlementSummary]] = None,
        fulfill_items: Optional[List[FulfillmentItem]] = None,
        fulfillment_error: Optional[FulfillmentError] = None,
        granted_item_ids: Optional[List[str]] = None,
        order_no: Optional[str] = None,
    ) -> FulfillmentHistoryInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        instance.user_id = user_id
        if code is not None:
            instance.code = code
        if credit_summaries is not None:
            instance.credit_summaries = credit_summaries
        if entitlement_summaries is not None:
            instance.entitlement_summaries = entitlement_summaries
        if fulfill_items is not None:
            instance.fulfill_items = fulfill_items
        if fulfillment_error is not None:
            instance.fulfillment_error = fulfillment_error
        if granted_item_ids is not None:
            instance.granted_item_ids = granted_item_ids
        if order_no is not None:
            instance.order_no = order_no
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "creditSummaries" in dict_ and dict_["creditSummaries"] is not None:
            instance.credit_summaries = [CreditSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["creditSummaries"]]
        elif include_empty:
            instance.credit_summaries = []
        if "entitlementSummaries" in dict_ and dict_["entitlementSummaries"] is not None:
            instance.entitlement_summaries = [EntitlementSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["entitlementSummaries"]]
        elif include_empty:
            instance.entitlement_summaries = []
        if "fulfillItems" in dict_ and dict_["fulfillItems"] is not None:
            instance.fulfill_items = [FulfillmentItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["fulfillItems"]]
        elif include_empty:
            instance.fulfill_items = []
        if "fulfillmentError" in dict_ and dict_["fulfillmentError"] is not None:
            instance.fulfillment_error = FulfillmentError.create_from_dict(dict_["fulfillmentError"], include_empty=include_empty)
        elif include_empty:
            instance.fulfillment_error = FulfillmentError()
        if "grantedItemIds" in dict_ and dict_["grantedItemIds"] is not None:
            instance.granted_item_ids = [str(i0) for i0 in dict_["grantedItemIds"]]
        elif include_empty:
            instance.granted_item_ids = []
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, FulfillmentHistoryInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[FulfillmentHistoryInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[FulfillmentHistoryInfo, List[FulfillmentHistoryInfo]]:
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
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "code": "code",
            "creditSummaries": "credit_summaries",
            "entitlementSummaries": "entitlement_summaries",
            "fulfillItems": "fulfill_items",
            "fulfillmentError": "fulfillment_error",
            "grantedItemIds": "granted_item_ids",
            "orderNo": "order_no",
        }

    # endregion static methods
