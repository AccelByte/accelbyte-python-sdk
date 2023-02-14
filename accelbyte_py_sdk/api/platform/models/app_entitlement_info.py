# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CONSUMED = "CONSUMED"
    INACTIVE = "INACTIVE"
    REVOKED = "REVOKED"


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class AppEntitlementInfo(Model):
    """App entitlement info (AppEntitlementInfo)

    Properties:
        granted_at: (grantedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        user_id: (userId) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum]

        end_date: (endDate) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        sku: (sku) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    granted_at: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    user_id: str  # REQUIRED
    app_id: str  # OPTIONAL
    app_type: Union[str, AppTypeEnum]  # OPTIONAL
    end_date: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_snapshot: ItemSnapshot  # OPTIONAL
    sku: str  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_granted_at(self, value: str) -> AppEntitlementInfo:
        self.granted_at = value
        return self

    def with_namespace(self, value: str) -> AppEntitlementInfo:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> AppEntitlementInfo:
        self.status = value
        return self

    def with_user_id(self, value: str) -> AppEntitlementInfo:
        self.user_id = value
        return self

    def with_app_id(self, value: str) -> AppEntitlementInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> AppEntitlementInfo:
        self.app_type = value
        return self

    def with_end_date(self, value: str) -> AppEntitlementInfo:
        self.end_date = value
        return self

    def with_item_id(self, value: str) -> AppEntitlementInfo:
        self.item_id = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> AppEntitlementInfo:
        self.item_snapshot = value
        return self

    def with_sku(self, value: str) -> AppEntitlementInfo:
        self.sku = value
        return self

    def with_start_date(self, value: str) -> AppEntitlementInfo:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> AppEntitlementInfo:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        granted_at: str,
        namespace: str,
        status: Union[str, StatusEnum],
        user_id: str,
        app_id: Optional[str] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        end_date: Optional[str] = None,
        item_id: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        sku: Optional[str] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> AppEntitlementInfo:
        instance = cls()
        instance.granted_at = granted_at
        instance.namespace = namespace
        instance.status = status
        instance.user_id = user_id
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if end_date is not None:
            instance.end_date = end_date
        if item_id is not None:
            instance.item_id = item_id
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if sku is not None:
            instance.sku = sku
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AppEntitlementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
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
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(
                dict_["itemSnapshot"], include_empty=include_empty
            )
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AppEntitlementInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AppEntitlementInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AppEntitlementInfo, List[AppEntitlementInfo], Dict[Any, AppEntitlementInfo]
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
            "grantedAt": "granted_at",
            "namespace": "namespace",
            "status": "status",
            "userId": "user_id",
            "appId": "app_id",
            "appType": "app_type",
            "endDate": "end_date",
            "itemId": "item_id",
            "itemSnapshot": "item_snapshot",
            "sku": "sku",
            "startDate": "start_date",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "grantedAt": True,
            "namespace": True,
            "status": True,
            "userId": True,
            "appId": False,
            "appType": False,
            "endDate": False,
            "itemId": False,
            "itemSnapshot": False,
            "sku": False,
            "startDate": False,
            "storeId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED"],
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],
        }

    # endregion static methods
