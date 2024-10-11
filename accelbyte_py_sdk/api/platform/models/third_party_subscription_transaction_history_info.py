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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    BILLING_RETRY_PERIOD = "BILLING_RETRY_PERIOD"
    CANCELED = "CANCELED"
    EXPIRED = "EXPIRED"
    IN_GRACE_PERIOD = "IN_GRACE_PERIOD"
    ON_HOLD = "ON_HOLD"
    PAUSED = "PAUSED"
    PENDING = "PENDING"
    REVOKED = "REVOKED"
    UNKNOWN = "UNKNOWN"


class ThirdPartySubscriptionTransactionHistoryInfo(Model):
    """Third party subscription transaction history info (ThirdPartySubscriptionTransactionHistoryInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        third_party_subscription_id: (thirdPartySubscriptionId) REQUIRED str

        user_id: (userId) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        expired_at: (expiredAt) OPTIONAL str

        last_transaction_id: (lastTransactionId) OPTIONAL str

        operator: (operator) OPTIONAL str

        reason: (reason) OPTIONAL str

        subscription_product_id: (subscriptionProductId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    third_party_subscription_id: str  # REQUIRED
    user_id: str  # REQUIRED
    created_at: str  # OPTIONAL
    expired_at: str  # OPTIONAL
    last_transaction_id: str  # OPTIONAL
    operator: str  # OPTIONAL
    reason: str  # OPTIONAL
    subscription_product_id: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.namespace = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.status = value
        return self

    def with_third_party_subscription_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.third_party_subscription_id = value
        return self

    def with_user_id(self, value: str) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.user_id = value
        return self

    def with_created_at(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.created_at = value
        return self

    def with_expired_at(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.expired_at = value
        return self

    def with_last_transaction_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.last_transaction_id = value
        return self

    def with_operator(self, value: str) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.operator = value
        return self

    def with_reason(self, value: str) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.reason = value
        return self

    def with_subscription_product_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.subscription_product_id = value
        return self

    def with_updated_at(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "third_party_subscription_id"):
            result["thirdPartySubscriptionId"] = str(self.third_party_subscription_id)
        elif include_empty:
            result["thirdPartySubscriptionId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        if hasattr(self, "last_transaction_id"):
            result["lastTransactionId"] = str(self.last_transaction_id)
        elif include_empty:
            result["lastTransactionId"] = ""
        if hasattr(self, "operator"):
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "subscription_product_id"):
            result["subscriptionProductId"] = str(self.subscription_product_id)
        elif include_empty:
            result["subscriptionProductId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        status: Union[str, StatusEnum],
        third_party_subscription_id: str,
        user_id: str,
        created_at: Optional[str] = None,
        expired_at: Optional[str] = None,
        last_transaction_id: Optional[str] = None,
        operator: Optional[str] = None,
        reason: Optional[str] = None,
        subscription_product_id: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.status = status
        instance.third_party_subscription_id = third_party_subscription_id
        instance.user_id = user_id
        if created_at is not None:
            instance.created_at = created_at
        if expired_at is not None:
            instance.expired_at = expired_at
        if last_transaction_id is not None:
            instance.last_transaction_id = last_transaction_id
        if operator is not None:
            instance.operator = operator
        if reason is not None:
            instance.reason = reason
        if subscription_product_id is not None:
            instance.subscription_product_id = subscription_product_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ThirdPartySubscriptionTransactionHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if (
            "thirdPartySubscriptionId" in dict_
            and dict_["thirdPartySubscriptionId"] is not None
        ):
            instance.third_party_subscription_id = str(
                dict_["thirdPartySubscriptionId"]
            )
        elif include_empty:
            instance.third_party_subscription_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "lastTransactionId" in dict_ and dict_["lastTransactionId"] is not None:
            instance.last_transaction_id = str(dict_["lastTransactionId"])
        elif include_empty:
            instance.last_transaction_id = ""
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if (
            "subscriptionProductId" in dict_
            and dict_["subscriptionProductId"] is not None
        ):
            instance.subscription_product_id = str(dict_["subscriptionProductId"])
        elif include_empty:
            instance.subscription_product_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ThirdPartySubscriptionTransactionHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ThirdPartySubscriptionTransactionHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ThirdPartySubscriptionTransactionHistoryInfo,
        List[ThirdPartySubscriptionTransactionHistoryInfo],
        Dict[Any, ThirdPartySubscriptionTransactionHistoryInfo],
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
            "namespace": "namespace",
            "status": "status",
            "thirdPartySubscriptionId": "third_party_subscription_id",
            "userId": "user_id",
            "createdAt": "created_at",
            "expiredAt": "expired_at",
            "lastTransactionId": "last_transaction_id",
            "operator": "operator",
            "reason": "reason",
            "subscriptionProductId": "subscription_product_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "status": True,
            "thirdPartySubscriptionId": True,
            "userId": True,
            "createdAt": False,
            "expiredAt": False,
            "lastTransactionId": False,
            "operator": False,
            "reason": False,
            "subscriptionProductId": False,
            "updatedAt": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": [
                "ACTIVE",
                "BILLING_RETRY_PERIOD",
                "CANCELED",
                "EXPIRED",
                "IN_GRACE_PERIOD",
                "ON_HOLD",
                "PAUSED",
                "PENDING",
                "REVOKED",
                "UNKNOWN",
            ],
        }

    # endregion static methods
