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

from ..models.item_snapshot import ItemSnapshot


class ClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CONSUMED = "CONSUMED"
    INACTIVE = "INACTIVE"
    REVOKED = "REVOKED"
    SOLD = "SOLD"


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class OriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


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


class TypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


class StackableEntitlementInfo(Model):
    """Stackable entitlement info (StackableEntitlementInfo)

    Properties:
        clazz: (clazz) REQUIRED Union[str, ClazzEnum]

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_namespace: (itemNamespace) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum]

        collection_id: (collectionId) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        features: (features) OPTIONAL List[str]

        granted_at: (grantedAt) OPTIONAL str

        granted_code: (grantedCode) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        name: (name) OPTIONAL str

        no_origin: (noOrigin) OPTIONAL bool

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        platform_available: (platformAvailable) OPTIONAL bool

        sku: (sku) OPTIONAL str

        source: (source) OPTIONAL Union[str, SourceEnum]

        stackable: (stackable) OPTIONAL bool

        stacked_use_count: (stackedUseCount) OPTIONAL int

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]

        use_count: (useCount) OPTIONAL int

        user_id: (userId) OPTIONAL str
    """

    # region fields

    clazz: Union[str, ClazzEnum]  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    item_id: str  # REQUIRED
    item_namespace: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    app_id: str  # OPTIONAL
    app_type: Union[str, AppTypeEnum]  # OPTIONAL
    collection_id: str  # OPTIONAL
    end_date: str  # OPTIONAL
    features: List[str]  # OPTIONAL
    granted_at: str  # OPTIONAL
    granted_code: str  # OPTIONAL
    item_snapshot: ItemSnapshot  # OPTIONAL
    name: str  # OPTIONAL
    no_origin: bool  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL
    platform_available: bool  # OPTIONAL
    sku: str  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL
    stackable: bool  # OPTIONAL
    stacked_use_count: int  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    use_count: int  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: Union[str, ClazzEnum]) -> StackableEntitlementInfo:
        self.clazz = value
        return self

    def with_created_at(self, value: str) -> StackableEntitlementInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> StackableEntitlementInfo:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> StackableEntitlementInfo:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> StackableEntitlementInfo:
        self.item_namespace = value
        return self

    def with_namespace(self, value: str) -> StackableEntitlementInfo:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> StackableEntitlementInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> StackableEntitlementInfo:
        self.updated_at = value
        return self

    def with_app_id(self, value: str) -> StackableEntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> StackableEntitlementInfo:
        self.app_type = value
        return self

    def with_collection_id(self, value: str) -> StackableEntitlementInfo:
        self.collection_id = value
        return self

    def with_end_date(self, value: str) -> StackableEntitlementInfo:
        self.end_date = value
        return self

    def with_features(self, value: List[str]) -> StackableEntitlementInfo:
        self.features = value
        return self

    def with_granted_at(self, value: str) -> StackableEntitlementInfo:
        self.granted_at = value
        return self

    def with_granted_code(self, value: str) -> StackableEntitlementInfo:
        self.granted_code = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> StackableEntitlementInfo:
        self.item_snapshot = value
        return self

    def with_name(self, value: str) -> StackableEntitlementInfo:
        self.name = value
        return self

    def with_no_origin(self, value: bool) -> StackableEntitlementInfo:
        self.no_origin = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> StackableEntitlementInfo:
        self.origin = value
        return self

    def with_platform_available(self, value: bool) -> StackableEntitlementInfo:
        self.platform_available = value
        return self

    def with_sku(self, value: str) -> StackableEntitlementInfo:
        self.sku = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> StackableEntitlementInfo:
        self.source = value
        return self

    def with_stackable(self, value: bool) -> StackableEntitlementInfo:
        self.stackable = value
        return self

    def with_stacked_use_count(self, value: int) -> StackableEntitlementInfo:
        self.stacked_use_count = value
        return self

    def with_start_date(self, value: str) -> StackableEntitlementInfo:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> StackableEntitlementInfo:
        self.store_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> StackableEntitlementInfo:
        self.type_ = value
        return self

    def with_use_count(self, value: int) -> StackableEntitlementInfo:
        self.use_count = value
        return self

    def with_user_id(self, value: str) -> StackableEntitlementInfo:
        self.user_id = value
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "collection_id"):
            result["collectionId"] = str(self.collection_id)
        elif include_empty:
            result["collectionId"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = ""
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
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "no_origin"):
            result["noOrigin"] = bool(self.no_origin)
        elif include_empty:
            result["noOrigin"] = False
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "platform_available"):
            result["platformAvailable"] = bool(self.platform_available)
        elif include_empty:
            result["platformAvailable"] = False
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = False
        if hasattr(self, "stacked_use_count"):
            result["stackedUseCount"] = int(self.stacked_use_count)
        elif include_empty:
            result["stackedUseCount"] = 0
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        clazz: Union[str, ClazzEnum],
        created_at: str,
        id_: str,
        item_id: str,
        item_namespace: str,
        namespace: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        app_id: Optional[str] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        collection_id: Optional[str] = None,
        end_date: Optional[str] = None,
        features: Optional[List[str]] = None,
        granted_at: Optional[str] = None,
        granted_code: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        name: Optional[str] = None,
        no_origin: Optional[bool] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        platform_available: Optional[bool] = None,
        sku: Optional[str] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        stackable: Optional[bool] = None,
        stacked_use_count: Optional[int] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        use_count: Optional[int] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> StackableEntitlementInfo:
        instance = cls()
        instance.clazz = clazz
        instance.created_at = created_at
        instance.id_ = id_
        instance.item_id = item_id
        instance.item_namespace = item_namespace
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if collection_id is not None:
            instance.collection_id = collection_id
        if end_date is not None:
            instance.end_date = end_date
        if features is not None:
            instance.features = features
        if granted_at is not None:
            instance.granted_at = granted_at
        if granted_code is not None:
            instance.granted_code = granted_code
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if name is not None:
            instance.name = name
        if no_origin is not None:
            instance.no_origin = no_origin
        if origin is not None:
            instance.origin = origin
        if platform_available is not None:
            instance.platform_available = platform_available
        if sku is not None:
            instance.sku = sku
        if source is not None:
            instance.source = source
        if stackable is not None:
            instance.stackable = stackable
        if stacked_use_count is not None:
            instance.stacked_use_count = stacked_use_count
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        if type_ is not None:
            instance.type_ = type_
        if use_count is not None:
            instance.use_count = use_count
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StackableEntitlementInfo:
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "collectionId" in dict_ and dict_["collectionId"] is not None:
            instance.collection_id = str(dict_["collectionId"])
        elif include_empty:
            instance.collection_id = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = ""
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
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "noOrigin" in dict_ and dict_["noOrigin"] is not None:
            instance.no_origin = bool(dict_["noOrigin"])
        elif include_empty:
            instance.no_origin = False
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "platformAvailable" in dict_ and dict_["platformAvailable"] is not None:
            instance.platform_available = bool(dict_["platformAvailable"])
        elif include_empty:
            instance.platform_available = False
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = False
        if "stackedUseCount" in dict_ and dict_["stackedUseCount"] is not None:
            instance.stacked_use_count = int(dict_["stackedUseCount"])
        elif include_empty:
            instance.stacked_use_count = 0
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StackableEntitlementInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StackableEntitlementInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        StackableEntitlementInfo,
        List[StackableEntitlementInfo],
        Dict[Any, StackableEntitlementInfo],
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
            "id": "id_",
            "itemId": "item_id",
            "itemNamespace": "item_namespace",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
            "appId": "app_id",
            "appType": "app_type",
            "collectionId": "collection_id",
            "endDate": "end_date",
            "features": "features",
            "grantedAt": "granted_at",
            "grantedCode": "granted_code",
            "itemSnapshot": "item_snapshot",
            "name": "name",
            "noOrigin": "no_origin",
            "origin": "origin",
            "platformAvailable": "platform_available",
            "sku": "sku",
            "source": "source",
            "stackable": "stackable",
            "stackedUseCount": "stacked_use_count",
            "startDate": "start_date",
            "storeId": "store_id",
            "type": "type_",
            "useCount": "use_count",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clazz": True,
            "createdAt": True,
            "id": True,
            "itemId": True,
            "itemNamespace": True,
            "namespace": True,
            "status": True,
            "updatedAt": True,
            "appId": False,
            "appType": False,
            "collectionId": False,
            "endDate": False,
            "features": False,
            "grantedAt": False,
            "grantedCode": False,
            "itemSnapshot": False,
            "name": False,
            "noOrigin": False,
            "origin": False,
            "platformAvailable": False,
            "sku": False,
            "source": False,
            "stackable": False,
            "stackedUseCount": False,
            "startDate": False,
            "storeId": False,
            "type": False,
            "useCount": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "clazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],
            "status": ["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"],
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],
            "origin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
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
            "type": ["CONSUMABLE", "DURABLE"],
        }

    # endregion static methods
