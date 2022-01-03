# justice-platform-service (3.40.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class EntitlementSummary(Model):
    """Entitlement summary (EntitlementSummary)

    Properties:
        clazz: (clazz) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        type_: (type) REQUIRED str

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

    clazz: str                                                                                     # REQUIRED
    created_at: str                                                                                # REQUIRED
    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    type_: str                                                                                     # REQUIRED
    updated_at: str                                                                                # REQUIRED
    user_id: str                                                                                   # REQUIRED
    end_date: str                                                                                  # OPTIONAL
    granted_code: str                                                                              # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    stacked_use_count: int                                                                         # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    store_id: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: str) -> EntitlementSummary:
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

    def with_type(self, value: str) -> EntitlementSummary:
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
            result["clazz"] = str()
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
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "stacked_use_count"):
            result["stackedUseCount"] = int(self.stacked_use_count)
        elif include_empty:
            result["stackedUseCount"] = int()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        clazz: str,
        created_at: str,
        id_: str,
        namespace: str,
        type_: str,
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EntitlementSummary:
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
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
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
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "stackedUseCount" in dict_ and dict_["stackedUseCount"] is not None:
            instance.stacked_use_count = int(dict_["stackedUseCount"])
        elif include_empty:
            instance.stacked_use_count = int()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        return instance

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

    # endregion static methods
