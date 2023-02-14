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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CANCELLED = "CANCELLED"
    EXPIRED = "EXPIRED"
    INIT = "INIT"


class SubscribedByEnum(StrEnum):
    PLATFORM = "PLATFORM"
    USER = "USER"


class SubscriptionSummary(Model):
    """Subscription summary (SubscriptionSummary)

    Properties:
        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        user_id: (userId) REQUIRED str

        current_period_end: (currentPeriodEnd) OPTIONAL str

        current_period_start: (currentPeriodStart) OPTIONAL str

        sku: (sku) OPTIONAL str

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum]
    """

    # region fields

    id_: str  # REQUIRED
    item_id: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    user_id: str  # REQUIRED
    current_period_end: str  # OPTIONAL
    current_period_start: str  # OPTIONAL
    sku: str  # OPTIONAL
    subscribed_by: Union[str, SubscribedByEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SubscriptionSummary:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> SubscriptionSummary:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> SubscriptionSummary:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> SubscriptionSummary:
        self.status = value
        return self

    def with_user_id(self, value: str) -> SubscriptionSummary:
        self.user_id = value
        return self

    def with_current_period_end(self, value: str) -> SubscriptionSummary:
        self.current_period_end = value
        return self

    def with_current_period_start(self, value: str) -> SubscriptionSummary:
        self.current_period_start = value
        return self

    def with_sku(self, value: str) -> SubscriptionSummary:
        self.sku = value
        return self

    def with_subscribed_by(
        self, value: Union[str, SubscribedByEnum]
    ) -> SubscriptionSummary:
        self.subscribed_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
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
        if hasattr(self, "current_period_end"):
            result["currentPeriodEnd"] = str(self.current_period_end)
        elif include_empty:
            result["currentPeriodEnd"] = ""
        if hasattr(self, "current_period_start"):
            result["currentPeriodStart"] = str(self.current_period_start)
        elif include_empty:
            result["currentPeriodStart"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "subscribed_by"):
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = Union[str, SubscribedByEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        item_id: str,
        namespace: str,
        status: Union[str, StatusEnum],
        user_id: str,
        current_period_end: Optional[str] = None,
        current_period_start: Optional[str] = None,
        sku: Optional[str] = None,
        subscribed_by: Optional[Union[str, SubscribedByEnum]] = None,
    ) -> SubscriptionSummary:
        instance = cls()
        instance.id_ = id_
        instance.item_id = item_id
        instance.namespace = namespace
        instance.status = status
        instance.user_id = user_id
        if current_period_end is not None:
            instance.current_period_end = current_period_end
        if current_period_start is not None:
            instance.current_period_start = current_period_start
        if sku is not None:
            instance.sku = sku
        if subscribed_by is not None:
            instance.subscribed_by = subscribed_by
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SubscriptionSummary:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
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
        if "currentPeriodEnd" in dict_ and dict_["currentPeriodEnd"] is not None:
            instance.current_period_end = str(dict_["currentPeriodEnd"])
        elif include_empty:
            instance.current_period_end = ""
        if "currentPeriodStart" in dict_ and dict_["currentPeriodStart"] is not None:
            instance.current_period_start = str(dict_["currentPeriodStart"])
        elif include_empty:
            instance.current_period_start = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = Union[str, SubscribedByEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SubscriptionSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SubscriptionSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SubscriptionSummary, List[SubscriptionSummary], Dict[Any, SubscriptionSummary]
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
            "id": "id_",
            "itemId": "item_id",
            "namespace": "namespace",
            "status": "status",
            "userId": "user_id",
            "currentPeriodEnd": "current_period_end",
            "currentPeriodStart": "current_period_start",
            "sku": "sku",
            "subscribedBy": "subscribed_by",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "itemId": True,
            "namespace": True,
            "status": True,
            "userId": True,
            "currentPeriodEnd": False,
            "currentPeriodStart": False,
            "sku": False,
            "subscribedBy": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACTIVE", "CANCELLED", "EXPIRED", "INIT"],
            "subscribedBy": ["PLATFORM", "USER"],
        }

    # endregion static methods
