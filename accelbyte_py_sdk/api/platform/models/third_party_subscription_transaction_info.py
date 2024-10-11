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


class PlatformEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    OCULUS = "OCULUS"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


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


class ThirdPartySubscriptionTransactionInfo(Model):
    """Third party subscription transaction info (ThirdPartySubscriptionTransactionInfo)

    Properties:
        active: (active) REQUIRED bool

        expired_at: (expiredAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        original_transaction_id: (originalTransactionId) REQUIRED str

        platform: (platform) REQUIRED Union[str, PlatformEnum]

        status: (status) REQUIRED Union[str, StatusEnum]

        subscription_product_id: (subscriptionProductId) REQUIRED str

        user_id: (userId) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        last_transaction_id: (lastTransactionId) OPTIONAL str

        purchase_token: (purchaseToken) OPTIONAL str

        start_at: (startAt) OPTIONAL str

        subscription_group_id: (subscriptionGroupId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    active: bool  # REQUIRED
    expired_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    original_transaction_id: str  # REQUIRED
    platform: Union[str, PlatformEnum]  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    subscription_product_id: str  # REQUIRED
    user_id: str  # REQUIRED
    created_at: str  # OPTIONAL
    last_transaction_id: str  # OPTIONAL
    purchase_token: str  # OPTIONAL
    start_at: str  # OPTIONAL
    subscription_group_id: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ThirdPartySubscriptionTransactionInfo:
        self.active = value
        return self

    def with_expired_at(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.expired_at = value
        return self

    def with_id(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.namespace = value
        return self

    def with_original_transaction_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.original_transaction_id = value
        return self

    def with_platform(
        self, value: Union[str, PlatformEnum]
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.platform = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.status = value
        return self

    def with_subscription_product_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.subscription_product_id = value
        return self

    def with_user_id(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.user_id = value
        return self

    def with_created_at(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.created_at = value
        return self

    def with_last_transaction_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.last_transaction_id = value
        return self

    def with_purchase_token(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.purchase_token = value
        return self

    def with_start_at(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.start_at = value
        return self

    def with_subscription_group_id(
        self, value: str
    ) -> ThirdPartySubscriptionTransactionInfo:
        self.subscription_group_id = value
        return self

    def with_updated_at(self, value: str) -> ThirdPartySubscriptionTransactionInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "original_transaction_id"):
            result["originalTransactionId"] = str(self.original_transaction_id)
        elif include_empty:
            result["originalTransactionId"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "subscription_product_id"):
            result["subscriptionProductId"] = str(self.subscription_product_id)
        elif include_empty:
            result["subscriptionProductId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "last_transaction_id"):
            result["lastTransactionId"] = str(self.last_transaction_id)
        elif include_empty:
            result["lastTransactionId"] = ""
        if hasattr(self, "purchase_token"):
            result["purchaseToken"] = str(self.purchase_token)
        elif include_empty:
            result["purchaseToken"] = ""
        if hasattr(self, "start_at"):
            result["startAt"] = str(self.start_at)
        elif include_empty:
            result["startAt"] = ""
        if hasattr(self, "subscription_group_id"):
            result["subscriptionGroupId"] = str(self.subscription_group_id)
        elif include_empty:
            result["subscriptionGroupId"] = ""
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
        active: bool,
        expired_at: str,
        id_: str,
        namespace: str,
        original_transaction_id: str,
        platform: Union[str, PlatformEnum],
        status: Union[str, StatusEnum],
        subscription_product_id: str,
        user_id: str,
        created_at: Optional[str] = None,
        last_transaction_id: Optional[str] = None,
        purchase_token: Optional[str] = None,
        start_at: Optional[str] = None,
        subscription_group_id: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ThirdPartySubscriptionTransactionInfo:
        instance = cls()
        instance.active = active
        instance.expired_at = expired_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.original_transaction_id = original_transaction_id
        instance.platform = platform
        instance.status = status
        instance.subscription_product_id = subscription_product_id
        instance.user_id = user_id
        if created_at is not None:
            instance.created_at = created_at
        if last_transaction_id is not None:
            instance.last_transaction_id = last_transaction_id
        if purchase_token is not None:
            instance.purchase_token = purchase_token
        if start_at is not None:
            instance.start_at = start_at
        if subscription_group_id is not None:
            instance.subscription_group_id = subscription_group_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ThirdPartySubscriptionTransactionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "originalTransactionId" in dict_
            and dict_["originalTransactionId"] is not None
        ):
            instance.original_transaction_id = str(dict_["originalTransactionId"])
        elif include_empty:
            instance.original_transaction_id = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if (
            "subscriptionProductId" in dict_
            and dict_["subscriptionProductId"] is not None
        ):
            instance.subscription_product_id = str(dict_["subscriptionProductId"])
        elif include_empty:
            instance.subscription_product_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "lastTransactionId" in dict_ and dict_["lastTransactionId"] is not None:
            instance.last_transaction_id = str(dict_["lastTransactionId"])
        elif include_empty:
            instance.last_transaction_id = ""
        if "purchaseToken" in dict_ and dict_["purchaseToken"] is not None:
            instance.purchase_token = str(dict_["purchaseToken"])
        elif include_empty:
            instance.purchase_token = ""
        if "startAt" in dict_ and dict_["startAt"] is not None:
            instance.start_at = str(dict_["startAt"])
        elif include_empty:
            instance.start_at = ""
        if "subscriptionGroupId" in dict_ and dict_["subscriptionGroupId"] is not None:
            instance.subscription_group_id = str(dict_["subscriptionGroupId"])
        elif include_empty:
            instance.subscription_group_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ThirdPartySubscriptionTransactionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ThirdPartySubscriptionTransactionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ThirdPartySubscriptionTransactionInfo,
        List[ThirdPartySubscriptionTransactionInfo],
        Dict[Any, ThirdPartySubscriptionTransactionInfo],
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
            "active": "active",
            "expiredAt": "expired_at",
            "id": "id_",
            "namespace": "namespace",
            "originalTransactionId": "original_transaction_id",
            "platform": "platform",
            "status": "status",
            "subscriptionProductId": "subscription_product_id",
            "userId": "user_id",
            "createdAt": "created_at",
            "lastTransactionId": "last_transaction_id",
            "purchaseToken": "purchase_token",
            "startAt": "start_at",
            "subscriptionGroupId": "subscription_group_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "expiredAt": True,
            "id": True,
            "namespace": True,
            "originalTransactionId": True,
            "platform": True,
            "status": True,
            "subscriptionProductId": True,
            "userId": True,
            "createdAt": False,
            "lastTransactionId": False,
            "purchaseToken": False,
            "startAt": False,
            "subscriptionGroupId": False,
            "updatedAt": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "platform": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "OCULUS",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],
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
