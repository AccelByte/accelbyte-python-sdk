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


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class ClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CONSUMED = "CONSUMED"
    INACTIVE = "INACTIVE"
    REVOKED = "REVOKED"
    SOLD = "SOLD"


class TypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


class EntitlementIfc(Model):
    """Entitlement ifc (EntitlementIfc)

    Properties:
        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum]

        clazz: (clazz) OPTIONAL Union[str, ClazzEnum]

        collection_id: (collectionId) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        features: (features) OPTIONAL List[str]

        granted_code: (grantedCode) OPTIONAL str

        id_: (id) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_namespace: (itemNamespace) OPTIONAL str

        name: (name) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        no_origin: (noOrigin) OPTIONAL bool

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        sku: (sku) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        store_id: (storeId) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]

        updated_at: (updatedAt) OPTIONAL str

        use_count: (useCount) OPTIONAL int

        user_id: (userId) OPTIONAL str
    """

    # region fields

    app_id: str  # OPTIONAL
    app_type: Union[str, AppTypeEnum]  # OPTIONAL
    clazz: Union[str, ClazzEnum]  # OPTIONAL
    collection_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    end_date: str  # OPTIONAL
    features: List[str]  # OPTIONAL
    granted_code: str  # OPTIONAL
    id_: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_namespace: str  # OPTIONAL
    name: str  # OPTIONAL
    namespace: str  # OPTIONAL
    no_origin: bool  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL
    sku: str  # OPTIONAL
    start_date: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    store_id: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    updated_at: str  # OPTIONAL
    use_count: int  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> EntitlementIfc:
        self.app_id = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> EntitlementIfc:
        self.app_type = value
        return self

    def with_clazz(self, value: Union[str, ClazzEnum]) -> EntitlementIfc:
        self.clazz = value
        return self

    def with_collection_id(self, value: str) -> EntitlementIfc:
        self.collection_id = value
        return self

    def with_created_at(self, value: str) -> EntitlementIfc:
        self.created_at = value
        return self

    def with_end_date(self, value: str) -> EntitlementIfc:
        self.end_date = value
        return self

    def with_features(self, value: List[str]) -> EntitlementIfc:
        self.features = value
        return self

    def with_granted_code(self, value: str) -> EntitlementIfc:
        self.granted_code = value
        return self

    def with_id(self, value: str) -> EntitlementIfc:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> EntitlementIfc:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> EntitlementIfc:
        self.item_namespace = value
        return self

    def with_name(self, value: str) -> EntitlementIfc:
        self.name = value
        return self

    def with_namespace(self, value: str) -> EntitlementIfc:
        self.namespace = value
        return self

    def with_no_origin(self, value: bool) -> EntitlementIfc:
        self.no_origin = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> EntitlementIfc:
        self.origin = value
        return self

    def with_sku(self, value: str) -> EntitlementIfc:
        self.sku = value
        return self

    def with_start_date(self, value: str) -> EntitlementIfc:
        self.start_date = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> EntitlementIfc:
        self.status = value
        return self

    def with_store_id(self, value: str) -> EntitlementIfc:
        self.store_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> EntitlementIfc:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> EntitlementIfc:
        self.updated_at = value
        return self

    def with_use_count(self, value: int) -> EntitlementIfc:
        self.use_count = value
        return self

    def with_user_id(self, value: str) -> EntitlementIfc:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = Union[str, ClazzEnum]()
        if hasattr(self, "collection_id"):
            result["collectionId"] = str(self.collection_id)
        elif include_empty:
            result["collectionId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "no_origin"):
            result["noOrigin"] = bool(self.no_origin)
        elif include_empty:
            result["noOrigin"] = False
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
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
        app_id: Optional[str] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        clazz: Optional[Union[str, ClazzEnum]] = None,
        collection_id: Optional[str] = None,
        created_at: Optional[str] = None,
        end_date: Optional[str] = None,
        features: Optional[List[str]] = None,
        granted_code: Optional[str] = None,
        id_: Optional[str] = None,
        item_id: Optional[str] = None,
        item_namespace: Optional[str] = None,
        name: Optional[str] = None,
        namespace: Optional[str] = None,
        no_origin: Optional[bool] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        sku: Optional[str] = None,
        start_date: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        store_id: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        updated_at: Optional[str] = None,
        use_count: Optional[int] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> EntitlementIfc:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if clazz is not None:
            instance.clazz = clazz
        if collection_id is not None:
            instance.collection_id = collection_id
        if created_at is not None:
            instance.created_at = created_at
        if end_date is not None:
            instance.end_date = end_date
        if features is not None:
            instance.features = features
        if granted_code is not None:
            instance.granted_code = granted_code
        if id_ is not None:
            instance.id_ = id_
        if item_id is not None:
            instance.item_id = item_id
        if item_namespace is not None:
            instance.item_namespace = item_namespace
        if name is not None:
            instance.name = name
        if namespace is not None:
            instance.namespace = namespace
        if no_origin is not None:
            instance.no_origin = no_origin
        if origin is not None:
            instance.origin = origin
        if sku is not None:
            instance.sku = sku
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        if store_id is not None:
            instance.store_id = store_id
        if type_ is not None:
            instance.type_ = type_
        if updated_at is not None:
            instance.updated_at = updated_at
        if use_count is not None:
            instance.use_count = use_count
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementIfc:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = Union[str, ClazzEnum]()
        if "collectionId" in dict_ and dict_["collectionId"] is not None:
            instance.collection_id = str(dict_["collectionId"])
        elif include_empty:
            instance.collection_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "noOrigin" in dict_ and dict_["noOrigin"] is not None:
            instance.no_origin = bool(dict_["noOrigin"])
        elif include_empty:
            instance.no_origin = False
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
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
    ) -> Dict[str, EntitlementIfc]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementIfc]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[EntitlementIfc, List[EntitlementIfc], Dict[Any, EntitlementIfc]]:
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
            "appId": "app_id",
            "appType": "app_type",
            "clazz": "clazz",
            "collectionId": "collection_id",
            "createdAt": "created_at",
            "endDate": "end_date",
            "features": "features",
            "grantedCode": "granted_code",
            "id": "id_",
            "itemId": "item_id",
            "itemNamespace": "item_namespace",
            "name": "name",
            "namespace": "namespace",
            "noOrigin": "no_origin",
            "origin": "origin",
            "sku": "sku",
            "startDate": "start_date",
            "status": "status",
            "storeId": "store_id",
            "type": "type_",
            "updatedAt": "updated_at",
            "useCount": "use_count",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": False,
            "appType": False,
            "clazz": False,
            "collectionId": False,
            "createdAt": False,
            "endDate": False,
            "features": False,
            "grantedCode": False,
            "id": False,
            "itemId": False,
            "itemNamespace": False,
            "name": False,
            "namespace": False,
            "noOrigin": False,
            "origin": False,
            "sku": False,
            "startDate": False,
            "status": False,
            "storeId": False,
            "type": False,
            "updatedAt": False,
            "useCount": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],
            "clazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],
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
            "status": ["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"],
            "type": ["CONSUMABLE", "DURABLE"],
        }

    # endregion static methods
