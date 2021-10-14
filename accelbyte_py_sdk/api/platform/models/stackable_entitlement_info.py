# Auto-generated at 2021-10-14T22:17:16.251751+08:00
# from: Justice Platform Service (3.24.0)

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


class StackableEntitlementInfo(Model):
    """Stackable entitlement info (StackableEntitlementInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        clazz: (clazz) REQUIRED str

        type_: (type) REQUIRED str

        status: (status) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        sku: (sku) OPTIONAL str

        user_id: (userId) REQUIRED str

        item_id: (itemId) REQUIRED str

        granted_code: (grantedCode) OPTIONAL str

        item_namespace: (itemNamespace) REQUIRED str

        name: (name) REQUIRED str

        features: (features) OPTIONAL List[str]

        use_count: (useCount) OPTIONAL int

        quantity: (quantity) OPTIONAL int

        source: (source) REQUIRED str

        distributed_quantity: (distributedQuantity) OPTIONAL int

        target_namespace: (targetNamespace) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        start_date: (startDate) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        granted_at: (grantedAt) REQUIRED str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        stacked_use_count: (stackedUseCount) OPTIONAL int

        stacked_quantity: (stackedQuantity) OPTIONAL int
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    clazz: str                                                                                     # REQUIRED
    type_: str                                                                                     # REQUIRED
    status: str                                                                                    # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    user_id: str                                                                                   # REQUIRED
    item_id: str                                                                                   # REQUIRED
    granted_code: str                                                                              # OPTIONAL
    item_namespace: str                                                                            # REQUIRED
    name: str                                                                                      # REQUIRED
    features: List[str]                                                                            # OPTIONAL
    use_count: int                                                                                 # OPTIONAL
    quantity: int                                                                                  # OPTIONAL
    source: str                                                                                    # REQUIRED
    distributed_quantity: int                                                                      # OPTIONAL
    target_namespace: str                                                                          # OPTIONAL
    item_snapshot: ItemSnapshot                                                                    # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    end_date: str                                                                                  # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    granted_at: str                                                                                # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED
    stacked_use_count: int                                                                         # OPTIONAL
    stacked_quantity: int                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> StackableEntitlementInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> StackableEntitlementInfo:
        self.namespace = value
        return self

    def with_clazz(self, value: str) -> StackableEntitlementInfo:
        self.clazz = value
        return self

    def with_type(self, value: str) -> StackableEntitlementInfo:
        self.type_ = value
        return self

    def with_status(self, value: str) -> StackableEntitlementInfo:
        self.status = value
        return self

    def with_app_id(self, value: str) -> StackableEntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> StackableEntitlementInfo:
        self.app_type = value
        return self

    def with_sku(self, value: str) -> StackableEntitlementInfo:
        self.sku = value
        return self

    def with_user_id(self, value: str) -> StackableEntitlementInfo:
        self.user_id = value
        return self

    def with_item_id(self, value: str) -> StackableEntitlementInfo:
        self.item_id = value
        return self

    def with_granted_code(self, value: str) -> StackableEntitlementInfo:
        self.granted_code = value
        return self

    def with_item_namespace(self, value: str) -> StackableEntitlementInfo:
        self.item_namespace = value
        return self

    def with_name(self, value: str) -> StackableEntitlementInfo:
        self.name = value
        return self

    def with_features(self, value: List[str]) -> StackableEntitlementInfo:
        self.features = value
        return self

    def with_use_count(self, value: int) -> StackableEntitlementInfo:
        self.use_count = value
        return self

    def with_quantity(self, value: int) -> StackableEntitlementInfo:
        self.quantity = value
        return self

    def with_source(self, value: str) -> StackableEntitlementInfo:
        self.source = value
        return self

    def with_distributed_quantity(self, value: int) -> StackableEntitlementInfo:
        self.distributed_quantity = value
        return self

    def with_target_namespace(self, value: str) -> StackableEntitlementInfo:
        self.target_namespace = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> StackableEntitlementInfo:
        self.item_snapshot = value
        return self

    def with_start_date(self, value: str) -> StackableEntitlementInfo:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> StackableEntitlementInfo:
        self.end_date = value
        return self

    def with_stackable(self, value: bool) -> StackableEntitlementInfo:
        self.stackable = value
        return self

    def with_granted_at(self, value: str) -> StackableEntitlementInfo:
        self.granted_at = value
        return self

    def with_created_at(self, value: str) -> StackableEntitlementInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> StackableEntitlementInfo:
        self.updated_at = value
        return self

    def with_stacked_use_count(self, value: int) -> StackableEntitlementInfo:
        self.stacked_use_count = value
        return self

    def with_stacked_quantity(self, value: int) -> StackableEntitlementInfo:
        self.stacked_quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "clazz") and self.clazz:
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "granted_code") and self.granted_code:
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = str()
        if hasattr(self, "item_namespace") and self.item_namespace:
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "features") and self.features:
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "use_count") and self.use_count:
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = int()
        if hasattr(self, "quantity") and self.quantity:
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "source") and self.source:
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "distributed_quantity") and self.distributed_quantity:
            result["distributedQuantity"] = int(self.distributed_quantity)
        elif include_empty:
            result["distributedQuantity"] = int()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "item_snapshot") and self.item_snapshot:
            result["itemSnapshot"] = self.item_snapshot.to_dict(include_empty=include_empty)
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "stackable") and self.stackable:
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "granted_at") and self.granted_at:
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "stacked_use_count") and self.stacked_use_count:
            result["stackedUseCount"] = int(self.stacked_use_count)
        elif include_empty:
            result["stackedUseCount"] = int()
        if hasattr(self, "stacked_quantity") and self.stacked_quantity:
            result["stackedQuantity"] = int(self.stacked_quantity)
        elif include_empty:
            result["stackedQuantity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        clazz: str,
        type_: str,
        status: str,
        user_id: str,
        item_id: str,
        item_namespace: str,
        name: str,
        source: str,
        granted_at: str,
        created_at: str,
        updated_at: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        sku: Optional[str] = None,
        granted_code: Optional[str] = None,
        features: Optional[List[str]] = None,
        use_count: Optional[int] = None,
        quantity: Optional[int] = None,
        distributed_quantity: Optional[int] = None,
        target_namespace: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        stackable: Optional[bool] = None,
        stacked_use_count: Optional[int] = None,
        stacked_quantity: Optional[int] = None,
    ) -> StackableEntitlementInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.clazz = clazz
        instance.type_ = type_
        instance.status = status
        instance.user_id = user_id
        instance.item_id = item_id
        instance.item_namespace = item_namespace
        instance.name = name
        instance.source = source
        instance.granted_at = granted_at
        instance.created_at = created_at
        instance.updated_at = updated_at
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if sku is not None:
            instance.sku = sku
        if granted_code is not None:
            instance.granted_code = granted_code
        if features is not None:
            instance.features = features
        if use_count is not None:
            instance.use_count = use_count
        if quantity is not None:
            instance.quantity = quantity
        if distributed_quantity is not None:
            instance.distributed_quantity = distributed_quantity
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        if stackable is not None:
            instance.stackable = stackable
        if stacked_use_count is not None:
            instance.stacked_use_count = stacked_use_count
        if stacked_quantity is not None:
            instance.stacked_quantity = stacked_quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StackableEntitlementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
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
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = str()
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "distributedQuantity" in dict_ and dict_["distributedQuantity"] is not None:
            instance.distributed_quantity = int(dict_["distributedQuantity"])
        elif include_empty:
            instance.distributed_quantity = int()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(dict_["itemSnapshot"], include_empty=include_empty)
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "stackedUseCount" in dict_ and dict_["stackedUseCount"] is not None:
            instance.stacked_use_count = int(dict_["stackedUseCount"])
        elif include_empty:
            instance.stacked_use_count = int()
        if "stackedQuantity" in dict_ and dict_["stackedQuantity"] is not None:
            instance.stacked_quantity = int(dict_["stackedQuantity"])
        elif include_empty:
            instance.stacked_quantity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "clazz": "clazz",
            "type": "type_",
            "status": "status",
            "appId": "app_id",
            "appType": "app_type",
            "sku": "sku",
            "userId": "user_id",
            "itemId": "item_id",
            "grantedCode": "granted_code",
            "itemNamespace": "item_namespace",
            "name": "name",
            "features": "features",
            "useCount": "use_count",
            "quantity": "quantity",
            "source": "source",
            "distributedQuantity": "distributed_quantity",
            "targetNamespace": "target_namespace",
            "itemSnapshot": "item_snapshot",
            "startDate": "start_date",
            "endDate": "end_date",
            "stackable": "stackable",
            "grantedAt": "granted_at",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
            "stackedUseCount": "stacked_use_count",
            "stackedQuantity": "stacked_quantity",
        }

    # endregion static methods
