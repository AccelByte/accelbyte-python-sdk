# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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

from ..models.item_snapshot import ItemSnapshot


class EntitlementInfo(Model):
    """Entitlement info (EntitlementInfo)

    Properties:
        clazz: (clazz) REQUIRED str

        created_at: (createdAt) REQUIRED str

        granted_at: (grantedAt) REQUIRED str

        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_namespace: (itemNamespace) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        source: (source) REQUIRED str

        status: (status) REQUIRED str

        type_: (type) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        features: (features) OPTIONAL List[str]

        granted_code: (grantedCode) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        sku: (sku) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    clazz: str                                                                                     # REQUIRED
    created_at: str                                                                                # REQUIRED
    granted_at: str                                                                                # REQUIRED
    id_: str                                                                                       # REQUIRED
    item_id: str                                                                                   # REQUIRED
    item_namespace: str                                                                            # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    source: str                                                                                    # REQUIRED
    status: str                                                                                    # REQUIRED
    type_: str                                                                                     # REQUIRED
    updated_at: str                                                                                # REQUIRED
    user_id: str                                                                                   # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    end_date: str                                                                                  # OPTIONAL
    features: List[str]                                                                            # OPTIONAL
    granted_code: str                                                                              # OPTIONAL
    item_snapshot: ItemSnapshot                                                                    # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    store_id: str                                                                                  # OPTIONAL
    use_count: int                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: str) -> EntitlementInfo:
        self.clazz = value
        return self

    def with_created_at(self, value: str) -> EntitlementInfo:
        self.created_at = value
        return self

    def with_granted_at(self, value: str) -> EntitlementInfo:
        self.granted_at = value
        return self

    def with_id(self, value: str) -> EntitlementInfo:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> EntitlementInfo:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> EntitlementInfo:
        self.item_namespace = value
        return self

    def with_name(self, value: str) -> EntitlementInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> EntitlementInfo:
        self.namespace = value
        return self

    def with_source(self, value: str) -> EntitlementInfo:
        self.source = value
        return self

    def with_status(self, value: str) -> EntitlementInfo:
        self.status = value
        return self

    def with_type(self, value: str) -> EntitlementInfo:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> EntitlementInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> EntitlementInfo:
        self.user_id = value
        return self

    def with_app_id(self, value: str) -> EntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> EntitlementInfo:
        self.app_type = value
        return self

    def with_end_date(self, value: str) -> EntitlementInfo:
        self.end_date = value
        return self

    def with_features(self, value: List[str]) -> EntitlementInfo:
        self.features = value
        return self

    def with_granted_code(self, value: str) -> EntitlementInfo:
        self.granted_code = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> EntitlementInfo:
        self.item_snapshot = value
        return self

    def with_sku(self, value: str) -> EntitlementInfo:
        self.sku = value
        return self

    def with_stackable(self, value: bool) -> EntitlementInfo:
        self.stackable = value
        return self

    def with_start_date(self, value: str) -> EntitlementInfo:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> EntitlementInfo:
        self.store_id = value
        return self

    def with_use_count(self, value: int) -> EntitlementInfo:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "item_namespace"):
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = str()
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(include_empty=include_empty)
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        clazz: str,
        created_at: str,
        granted_at: str,
        id_: str,
        item_id: str,
        item_namespace: str,
        name: str,
        namespace: str,
        source: str,
        status: str,
        type_: str,
        updated_at: str,
        user_id: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        end_date: Optional[str] = None,
        features: Optional[List[str]] = None,
        granted_code: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        sku: Optional[str] = None,
        stackable: Optional[bool] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
        use_count: Optional[int] = None,
    ) -> EntitlementInfo:
        instance = cls()
        instance.clazz = clazz
        instance.created_at = created_at
        instance.granted_at = granted_at
        instance.id_ = id_
        instance.item_id = item_id
        instance.item_namespace = item_namespace
        instance.name = name
        instance.namespace = namespace
        instance.source = source
        instance.status = status
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.user_id = user_id
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if end_date is not None:
            instance.end_date = end_date
        if features is not None:
            instance.features = features
        if granted_code is not None:
            instance.granted_code = granted_code
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if sku is not None:
            instance.sku = sku
        if stackable is not None:
            instance.stackable = stackable
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EntitlementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = str()
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(dict_["itemSnapshot"], include_empty=include_empty)
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, EntitlementInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[EntitlementInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[EntitlementInfo, List[EntitlementInfo]]:
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
            "clazz": "clazz",
            "createdAt": "created_at",
            "grantedAt": "granted_at",
            "id": "id_",
            "itemId": "item_id",
            "itemNamespace": "item_namespace",
            "name": "name",
            "namespace": "namespace",
            "source": "source",
            "status": "status",
            "type": "type_",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "appId": "app_id",
            "appType": "app_type",
            "endDate": "end_date",
            "features": "features",
            "grantedCode": "granted_code",
            "itemSnapshot": "item_snapshot",
            "sku": "sku",
            "stackable": "stackable",
            "startDate": "start_date",
            "storeId": "store_id",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clazz": True,
            "createdAt": True,
            "grantedAt": True,
            "id": True,
            "itemId": True,
            "itemNamespace": True,
            "name": True,
            "namespace": True,
            "source": True,
            "status": True,
            "type": True,
            "updatedAt": True,
            "userId": True,
            "appId": False,
            "appType": False,
            "endDate": False,
            "features": False,
            "grantedCode": False,
            "itemSnapshot": False,
            "sku": False,
            "stackable": False,
            "startDate": False,
            "storeId": False,
            "useCount": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "clazz": ["APP", "ENTITLEMENT", "CODE", "SUBSCRIPTION", "MEDIA"],
            "source": ["PURCHASE", "IAP", "PROMOTION", "ACHIEVEMENT", "REFERRAL_BONUS", "REDEEM_CODE", "REWARD", "GIFT", "OTHER"],
            "status": ["ACTIVE", "INACTIVE", "CONSUMED", "REVOKED"],
            "type": ["DURABLE", "CONSUMABLE"],
            "appType": ["GAME", "SOFTWARE", "DLC", "DEMO"],
        }

    # endregion static methods
