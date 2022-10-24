# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.item_snapshot import ItemSnapshot


class ClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class SourceEnum(StrEnum):
    ACHIEVEMENT = "ACHIEVEMENT"
    GIFT = "GIFT"
    IAP = "IAP"
    OTHER = "OTHER"
    PROMOTION = "PROMOTION"
    PURCHASE = "PURCHASE"
    REDEEM_CODE = "REDEEM_CODE"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REWARD = "REWARD"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CONSUMED = "CONSUMED"
    INACTIVE = "INACTIVE"
    REVOKED = "REVOKED"


class TypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class TrackedEntitlementInfo(Model):
    """Tracked entitlement info (TrackedEntitlementInfo)

    Properties:
        clazz: (clazz) REQUIRED Union[str, ClazzEnum]

        created_at: (createdAt) REQUIRED str

        granted_at: (grantedAt) REQUIRED str

        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_namespace: (itemNamespace) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        source: (source) REQUIRED Union[str, SourceEnum]

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum]

        end_date: (endDate) OPTIONAL str

        features: (features) OPTIONAL List[str]

        granted_code: (grantedCode) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        replayed: (replayed) OPTIONAL bool

        request_id: (requestId) OPTIONAL str

        sku: (sku) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    clazz: Union[str, ClazzEnum]  # REQUIRED
    created_at: str  # REQUIRED
    granted_at: str  # REQUIRED
    id_: str  # REQUIRED
    item_id: str  # REQUIRED
    item_namespace: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    source: Union[str, SourceEnum]  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    app_id: str  # OPTIONAL
    app_type: Union[str, AppTypeEnum]  # OPTIONAL
    end_date: str  # OPTIONAL
    features: List[str]  # OPTIONAL
    granted_code: str  # OPTIONAL
    item_snapshot: ItemSnapshot  # OPTIONAL
    replayed: bool  # OPTIONAL
    request_id: str  # OPTIONAL
    sku: str  # OPTIONAL
    stackable: bool  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: Union[str, ClazzEnum]) -> TrackedEntitlementInfo:
        self.clazz = value
        return self

    def with_created_at(self, value: str) -> TrackedEntitlementInfo:
        self.created_at = value
        return self

    def with_granted_at(self, value: str) -> TrackedEntitlementInfo:
        self.granted_at = value
        return self

    def with_id(self, value: str) -> TrackedEntitlementInfo:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> TrackedEntitlementInfo:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> TrackedEntitlementInfo:
        self.item_namespace = value
        return self

    def with_name(self, value: str) -> TrackedEntitlementInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> TrackedEntitlementInfo:
        self.namespace = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> TrackedEntitlementInfo:
        self.source = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> TrackedEntitlementInfo:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> TrackedEntitlementInfo:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> TrackedEntitlementInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> TrackedEntitlementInfo:
        self.user_id = value
        return self

    def with_app_id(self, value: str) -> TrackedEntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> TrackedEntitlementInfo:
        self.app_type = value
        return self

    def with_end_date(self, value: str) -> TrackedEntitlementInfo:
        self.end_date = value
        return self

    def with_features(self, value: List[str]) -> TrackedEntitlementInfo:
        self.features = value
        return self

    def with_granted_code(self, value: str) -> TrackedEntitlementInfo:
        self.granted_code = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> TrackedEntitlementInfo:
        self.item_snapshot = value
        return self

    def with_replayed(self, value: bool) -> TrackedEntitlementInfo:
        self.replayed = value
        return self

    def with_request_id(self, value: str) -> TrackedEntitlementInfo:
        self.request_id = value
        return self

    def with_sku(self, value: str) -> TrackedEntitlementInfo:
        self.sku = value
        return self

    def with_stackable(self, value: bool) -> TrackedEntitlementInfo:
        self.stackable = value
        return self

    def with_start_date(self, value: str) -> TrackedEntitlementInfo:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> TrackedEntitlementInfo:
        self.store_id = value
        return self

    def with_use_count(self, value: int) -> TrackedEntitlementInfo:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = Union[str, ClazzEnum]()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_namespace"):
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = ""
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "replayed"):
            result["replayed"] = bool(self.replayed)
        elif include_empty:
            result["replayed"] = False
        if hasattr(self, "request_id"):
            result["requestId"] = str(self.request_id)
        elif include_empty:
            result["requestId"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = False
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        clazz: Union[str, ClazzEnum],
        created_at: str,
        granted_at: str,
        id_: str,
        item_id: str,
        item_namespace: str,
        name: str,
        namespace: str,
        source: Union[str, SourceEnum],
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        updated_at: str,
        user_id: str,
        app_id: Optional[str] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        end_date: Optional[str] = None,
        features: Optional[List[str]] = None,
        granted_code: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        replayed: Optional[bool] = None,
        request_id: Optional[str] = None,
        sku: Optional[str] = None,
        stackable: Optional[bool] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
        use_count: Optional[int] = None,
    ) -> TrackedEntitlementInfo:
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
        if replayed is not None:
            instance.replayed = replayed
        if request_id is not None:
            instance.request_id = request_id
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TrackedEntitlementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = Union[str, ClazzEnum]()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = ""
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(
                dict_["itemSnapshot"], include_empty=include_empty
            )
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "replayed" in dict_ and dict_["replayed"] is not None:
            instance.replayed = bool(dict_["replayed"])
        elif include_empty:
            instance.replayed = False
        if "requestId" in dict_ and dict_["requestId"] is not None:
            instance.request_id = str(dict_["requestId"])
        elif include_empty:
            instance.request_id = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = False
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TrackedEntitlementInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TrackedEntitlementInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TrackedEntitlementInfo,
        List[TrackedEntitlementInfo],
        Dict[Any, TrackedEntitlementInfo],
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
            "replayed": "replayed",
            "requestId": "request_id",
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
            "replayed": False,
            "requestId": False,
            "sku": False,
            "stackable": False,
            "startDate": False,
            "storeId": False,
            "useCount": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "clazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],
            "source": [
                "ACHIEVEMENT",
                "GIFT",
                "IAP",
                "OTHER",
                "PROMOTION",
                "PURCHASE",
                "REDEEM_CODE",
                "REFERRAL_BONUS",
                "REWARD",
            ],
            "status": ["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED"],
            "type": ["CONSUMABLE", "DURABLE"],
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],
        }

    # endregion static methods
