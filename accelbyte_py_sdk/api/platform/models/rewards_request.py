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

from ..models.platform_reward import PlatformReward


class EntitlementOriginEnum(StrEnum):
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
    CONSUME_ENTITLEMENT = "CONSUME_ENTITLEMENT"
    DLC = "DLC"
    EXPIRATION = "EXPIRATION"
    GIFT = "GIFT"
    IAP = "IAP"
    IAP_CHARGEBACK_REVERSED = "IAP_CHARGEBACK_REVERSED"
    ORDER_REVOCATION = "ORDER_REVOCATION"
    OTHER = "OTHER"
    PAYMENT = "PAYMENT"
    PROMOTION = "PROMOTION"
    PURCHASE = "PURCHASE"
    REDEEM_CODE = "REDEEM_CODE"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REWARD = "REWARD"
    SELL_BACK = "SELL_BACK"


class RewardsRequest(Model):
    """A DTO object for rewards request API call. (RewardsRequest)

    Properties:
        rewards: (rewards) REQUIRED List[PlatformReward]

        entitlement_collection_id: (entitlementCollectionId) OPTIONAL str

        entitlement_origin: (entitlementOrigin) OPTIONAL Union[str, EntitlementOriginEnum]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        source: (source) OPTIONAL Union[str, SourceEnum]

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    rewards: List[PlatformReward]  # REQUIRED
    entitlement_collection_id: str  # OPTIONAL
    entitlement_origin: Union[str, EntitlementOriginEnum]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_rewards(self, value: List[PlatformReward]) -> RewardsRequest:
        self.rewards = value
        return self

    def with_entitlement_collection_id(self, value: str) -> RewardsRequest:
        self.entitlement_collection_id = value
        return self

    def with_entitlement_origin(
        self, value: Union[str, EntitlementOriginEnum]
    ) -> RewardsRequest:
        self.entitlement_origin = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> RewardsRequest:
        self.metadata = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> RewardsRequest:
        self.origin = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> RewardsRequest:
        self.source = value
        return self

    def with_transaction_id(self, value: str) -> RewardsRequest:
        self.transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "entitlement_collection_id"):
            result["entitlementCollectionId"] = str(self.entitlement_collection_id)
        elif include_empty:
            result["entitlementCollectionId"] = ""
        if hasattr(self, "entitlement_origin"):
            result["entitlementOrigin"] = str(self.entitlement_origin)
        elif include_empty:
            result["entitlementOrigin"] = Union[str, EntitlementOriginEnum]()
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        rewards: List[PlatformReward],
        entitlement_collection_id: Optional[str] = None,
        entitlement_origin: Optional[Union[str, EntitlementOriginEnum]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        transaction_id: Optional[str] = None,
        **kwargs,
    ) -> RewardsRequest:
        instance = cls()
        instance.rewards = rewards
        if entitlement_collection_id is not None:
            instance.entitlement_collection_id = entitlement_collection_id
        if entitlement_origin is not None:
            instance.entitlement_origin = entitlement_origin
        if metadata is not None:
            instance.metadata = metadata
        if origin is not None:
            instance.origin = origin
        if source is not None:
            instance.source = source
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RewardsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                PlatformReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if (
            "entitlementCollectionId" in dict_
            and dict_["entitlementCollectionId"] is not None
        ):
            instance.entitlement_collection_id = str(dict_["entitlementCollectionId"])
        elif include_empty:
            instance.entitlement_collection_id = ""
        if "entitlementOrigin" in dict_ and dict_["entitlementOrigin"] is not None:
            instance.entitlement_origin = str(dict_["entitlementOrigin"])
        elif include_empty:
            instance.entitlement_origin = Union[str, EntitlementOriginEnum]()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardsRequest, List[RewardsRequest], Dict[Any, RewardsRequest]]:
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
            "rewards": "rewards",
            "entitlementCollectionId": "entitlement_collection_id",
            "entitlementOrigin": "entitlement_origin",
            "metadata": "metadata",
            "origin": "origin",
            "source": "source",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "rewards": True,
            "entitlementCollectionId": False,
            "entitlementOrigin": False,
            "metadata": False,
            "origin": False,
            "source": False,
            "transactionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementOrigin": [
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
                "CONSUME_ENTITLEMENT",
                "DLC",
                "EXPIRATION",
                "GIFT",
                "IAP",
                "IAP_CHARGEBACK_REVERSED",
                "ORDER_REVOCATION",
                "OTHER",
                "PAYMENT",
                "PROMOTION",
                "PURCHASE",
                "REDEEM_CODE",
                "REFERRAL_BONUS",
                "REWARD",
                "SELL_BACK",
            ],
        }

    # endregion static methods
