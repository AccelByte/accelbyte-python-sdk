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


class ClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class TypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


class EntitlementSummary(Model):
    """Entitlement summary (EntitlementSummary)

    Properties:
        clazz: (clazz) REQUIRED Union[str, ClazzEnum]

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        end_date: (endDate) OPTIONAL str

        granted_code: (grantedCode) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        stacked_use_count: (stackedUseCount) OPTIONAL int

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    clazz: Union[str, ClazzEnum]  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    end_date: str  # OPTIONAL
    granted_code: str  # OPTIONAL
    item_id: str  # OPTIONAL
    stackable: bool  # OPTIONAL
    stacked_use_count: int  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: Union[str, ClazzEnum]) -> EntitlementSummary:
        self.clazz = value
        return self

    def with_created_at(self, value: str) -> EntitlementSummary:
        self.created_at = value
        return self

    def with_id(self, value: str) -> EntitlementSummary:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> EntitlementSummary:
        self.namespace = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> EntitlementSummary:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> EntitlementSummary:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> EntitlementSummary:
        self.user_id = value
        return self

    def with_end_date(self, value: str) -> EntitlementSummary:
        self.end_date = value
        return self

    def with_granted_code(self, value: str) -> EntitlementSummary:
        self.granted_code = value
        return self

    def with_item_id(self, value: str) -> EntitlementSummary:
        self.item_id = value
        return self

    def with_stackable(self, value: bool) -> EntitlementSummary:
        self.stackable = value
        return self

    def with_stacked_use_count(self, value: int) -> EntitlementSummary:
        self.stacked_use_count = value
        return self

    def with_start_date(self, value: str) -> EntitlementSummary:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> EntitlementSummary:
        self.store_id = value
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        clazz: Union[str, ClazzEnum],
        created_at: str,
        id_: str,
        namespace: str,
        type_: Union[str, TypeEnum],
        updated_at: str,
        user_id: str,
        end_date: Optional[str] = None,
        granted_code: Optional[str] = None,
        item_id: Optional[str] = None,
        stackable: Optional[bool] = None,
        stacked_use_count: Optional[int] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> EntitlementSummary:
        instance = cls()
        instance.clazz = clazz
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.user_id = user_id
        if end_date is not None:
            instance.end_date = end_date
        if granted_code is not None:
            instance.granted_code = granted_code
        if item_id is not None:
            instance.item_id = item_id
        if stackable is not None:
            instance.stackable = stackable
        if stacked_use_count is not None:
            instance.stacked_use_count = stacked_use_count
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementSummary:
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementSummary, List[EntitlementSummary], Dict[Any, EntitlementSummary]
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
            "namespace": "namespace",
            "type": "type_",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "endDate": "end_date",
            "grantedCode": "granted_code",
            "itemId": "item_id",
            "stackable": "stackable",
            "stackedUseCount": "stacked_use_count",
            "startDate": "start_date",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clazz": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "type": True,
            "updatedAt": True,
            "userId": True,
            "endDate": False,
            "grantedCode": False,
            "itemId": False,
            "stackable": False,
            "stackedUseCount": False,
            "startDate": False,
            "storeId": False,
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
            "type": ["CONSUMABLE", "DURABLE"],
        }

    # endregion static methods
