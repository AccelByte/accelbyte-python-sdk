# Auto-generated at 2021-09-21T14:10:38.681605+08:00
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


class EntitlementSummary(Model):
    """Entitlement summary

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        clazz: (clazz) REQUIRED str

        type_: (type) REQUIRED str

        stackable: (stackable) OPTIONAL bool

        stacked_use_count: (stackedUseCount) OPTIONAL int

        stacked_quantity: (stackedQuantity) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        granted_code: (grantedCode) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        end_date: (endDate) OPTIONAL str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    clazz: str                                                                                     # REQUIRED
    type_: str                                                                                     # REQUIRED
    stackable: bool                                                                                # OPTIONAL
    stacked_use_count: int                                                                         # OPTIONAL
    stacked_quantity: int                                                                          # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED
    granted_code: str                                                                              # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    end_date: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> EntitlementSummary:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> EntitlementSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> EntitlementSummary:
        self.user_id = value
        return self

    def with_clazz(self, value: str) -> EntitlementSummary:
        self.clazz = value
        return self

    def with_type(self, value: str) -> EntitlementSummary:
        self.type_ = value
        return self

    def with_stackable(self, value: bool) -> EntitlementSummary:
        self.stackable = value
        return self

    def with_stacked_use_count(self, value: int) -> EntitlementSummary:
        self.stacked_use_count = value
        return self

    def with_stacked_quantity(self, value: int) -> EntitlementSummary:
        self.stacked_quantity = value
        return self

    def with_created_at(self, value: str) -> EntitlementSummary:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> EntitlementSummary:
        self.updated_at = value
        return self

    def with_granted_code(self, value: str) -> EntitlementSummary:
        self.granted_code = value
        return self

    def with_start_date(self, value: str) -> EntitlementSummary:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> EntitlementSummary:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "clazz") and self.clazz:
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "stackable") and self.stackable:
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "stacked_use_count") and self.stacked_use_count:
            result["stackedUseCount"] = int(self.stacked_use_count)
        elif include_empty:
            result["stackedUseCount"] = int()
        if hasattr(self, "stacked_quantity") and self.stacked_quantity:
            result["stackedQuantity"] = int(self.stacked_quantity)
        elif include_empty:
            result["stackedQuantity"] = int()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "granted_code") and self.granted_code:
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = str()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        user_id: str,
        clazz: str,
        type_: str,
        created_at: str,
        updated_at: str,
        stackable: Optional[bool] = None,
        stacked_use_count: Optional[int] = None,
        stacked_quantity: Optional[int] = None,
        granted_code: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
    ) -> EntitlementSummary:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.user_id = user_id
        instance.clazz = clazz
        instance.type_ = type_
        instance.created_at = created_at
        instance.updated_at = updated_at
        if stackable is not None:
            instance.stackable = stackable
        if stacked_use_count is not None:
            instance.stacked_use_count = stacked_use_count
        if stacked_quantity is not None:
            instance.stacked_quantity = stacked_quantity
        if granted_code is not None:
            instance.granted_code = granted_code
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EntitlementSummary:
        instance = cls()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "stackedUseCount" in dict_ and dict_["stackedUseCount"] is not None:
            instance.stacked_use_count = int(dict_["stackedUseCount"])
        elif include_empty:
            instance.stacked_use_count = int()
        if "stackedQuantity" in dict_ and dict_["stackedQuantity"] is not None:
            instance.stacked_quantity = int(dict_["stackedQuantity"])
        elif include_empty:
            instance.stacked_quantity = int()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "userId": "user_id",
            "clazz": "clazz",
            "type": "type_",
            "stackable": "stackable",
            "stackedUseCount": "stacked_use_count",
            "stackedQuantity": "stacked_quantity",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
            "grantedCode": "granted_code",
            "startDate": "start_date",
            "endDate": "end_date",
        }

    # endregion static methods
