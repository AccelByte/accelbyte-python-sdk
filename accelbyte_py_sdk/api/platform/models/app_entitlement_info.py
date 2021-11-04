# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.item_snapshot import ItemSnapshot


class AppEntitlementInfo(Model):
    """App entitlement info (AppEntitlementInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        sku: (sku) OPTIONAL str

        user_id: (userId) REQUIRED str

        store_id: (storeId) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        granted_at: (grantedAt) REQUIRED str

        status: (status) REQUIRED str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot
    """

    # region fields

    namespace: str                                                                                 # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    user_id: str                                                                                   # REQUIRED
    store_id: str                                                                                  # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    end_date: str                                                                                  # OPTIONAL
    granted_at: str                                                                                # REQUIRED
    status: str                                                                                    # REQUIRED
    item_snapshot: ItemSnapshot                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> AppEntitlementInfo:
        self.namespace = value
        return self

    def with_app_id(self, value: str) -> AppEntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> AppEntitlementInfo:
        self.app_type = value
        return self

    def with_sku(self, value: str) -> AppEntitlementInfo:
        self.sku = value
        return self

    def with_user_id(self, value: str) -> AppEntitlementInfo:
        self.user_id = value
        return self

    def with_store_id(self, value: str) -> AppEntitlementInfo:
        self.store_id = value
        return self

    def with_item_id(self, value: str) -> AppEntitlementInfo:
        self.item_id = value
        return self

    def with_start_date(self, value: str) -> AppEntitlementInfo:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> AppEntitlementInfo:
        self.end_date = value
        return self

    def with_granted_at(self, value: str) -> AppEntitlementInfo:
        self.granted_at = value
        return self

    def with_status(self, value: str) -> AppEntitlementInfo:
        self.status = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> AppEntitlementInfo:
        self.item_snapshot = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(include_empty=include_empty)
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        granted_at: str,
        status: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        sku: Optional[str] = None,
        store_id: Optional[str] = None,
        item_id: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
    ) -> AppEntitlementInfo:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.granted_at = granted_at
        instance.status = status
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if sku is not None:
            instance.sku = sku
        if store_id is not None:
            instance.store_id = store_id
        if item_id is not None:
            instance.item_id = item_id
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppEntitlementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(dict_["itemSnapshot"], include_empty=include_empty)
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "appId": "app_id",
            "appType": "app_type",
            "sku": "sku",
            "userId": "user_id",
            "storeId": "store_id",
            "itemId": "item_id",
            "startDate": "start_date",
            "endDate": "end_date",
            "grantedAt": "granted_at",
            "status": "status",
            "itemSnapshot": "item_snapshot",
        }

    # endregion static methods
