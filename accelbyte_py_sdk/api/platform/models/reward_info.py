# justice-platform-service (3.34.0)

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

from ..models.reward_condition import RewardCondition


class RewardInfo(Model):
    """Reward info (RewardInfo)

    Properties:
        event_topic: (eventTopic) REQUIRED str

        namespace: (namespace) REQUIRED str

        reward_id: (rewardId) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        max_awarded: (maxAwarded) OPTIONAL int

        max_awarded_per_user: (maxAwardedPerUser) OPTIONAL int

        reward_code: (rewardCode) OPTIONAL str

        reward_conditions: (rewardConditions) OPTIONAL List[RewardCondition]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    event_topic: str                                                                               # REQUIRED
    namespace: str                                                                                 # REQUIRED
    reward_id: str                                                                                 # REQUIRED
    created_at: str                                                                                # OPTIONAL
    description: str                                                                               # OPTIONAL
    max_awarded: int                                                                               # OPTIONAL
    max_awarded_per_user: int                                                                      # OPTIONAL
    reward_code: str                                                                               # OPTIONAL
    reward_conditions: List[RewardCondition]                                                       # OPTIONAL
    updated_at: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_topic(self, value: str) -> RewardInfo:
        self.event_topic = value
        return self

    def with_namespace(self, value: str) -> RewardInfo:
        self.namespace = value
        return self

    def with_reward_id(self, value: str) -> RewardInfo:
        self.reward_id = value
        return self

    def with_created_at(self, value: str) -> RewardInfo:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RewardInfo:
        self.description = value
        return self

    def with_max_awarded(self, value: int) -> RewardInfo:
        self.max_awarded = value
        return self

    def with_max_awarded_per_user(self, value: int) -> RewardInfo:
        self.max_awarded_per_user = value
        return self

    def with_reward_code(self, value: str) -> RewardInfo:
        self.reward_code = value
        return self

    def with_reward_conditions(self, value: List[RewardCondition]) -> RewardInfo:
        self.reward_conditions = value
        return self

    def with_updated_at(self, value: str) -> RewardInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_topic"):
            result["eventTopic"] = str(self.event_topic)
        elif include_empty:
            result["eventTopic"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "reward_id"):
            result["rewardId"] = str(self.reward_id)
        elif include_empty:
            result["rewardId"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "max_awarded"):
            result["maxAwarded"] = int(self.max_awarded)
        elif include_empty:
            result["maxAwarded"] = int()
        if hasattr(self, "max_awarded_per_user"):
            result["maxAwardedPerUser"] = int(self.max_awarded_per_user)
        elif include_empty:
            result["maxAwardedPerUser"] = int()
        if hasattr(self, "reward_code"):
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = str()
        if hasattr(self, "reward_conditions"):
            result["rewardConditions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.reward_conditions]
        elif include_empty:
            result["rewardConditions"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reward_id: str,
        namespace: str,
        event_topic: str,
        reward_code: Optional[str] = None,
        description: Optional[str] = None,
        reward_conditions: Optional[List[RewardCondition]] = None,
        max_awarded: Optional[int] = None,
        max_awarded_per_user: Optional[int] = None,
        created_at: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> RewardInfo:
        instance = cls()
        instance.reward_id = reward_id
        instance.namespace = namespace
        instance.event_topic = event_topic
        if reward_code is not None:
            instance.reward_code = reward_code
        if description is not None:
            instance.description = description
        if reward_conditions is not None:
            instance.reward_conditions = reward_conditions
        if max_awarded is not None:
            instance.max_awarded = max_awarded
        if max_awarded_per_user is not None:
            instance.max_awarded_per_user = max_awarded_per_user
        if created_at is not None:
            instance.created_at = created_at
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardInfo:
        instance = cls()
        if not dict_:
            return instance
        if "eventTopic" in dict_ and dict_["eventTopic"] is not None:
            instance.event_topic = str(dict_["eventTopic"])
        elif include_empty:
            instance.event_topic = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "rewardId" in dict_ and dict_["rewardId"] is not None:
            instance.reward_id = str(dict_["rewardId"])
        elif include_empty:
            instance.reward_id = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "maxAwarded" in dict_ and dict_["maxAwarded"] is not None:
            instance.max_awarded = int(dict_["maxAwarded"])
        elif include_empty:
            instance.max_awarded = int()
        if "maxAwardedPerUser" in dict_ and dict_["maxAwardedPerUser"] is not None:
            instance.max_awarded_per_user = int(dict_["maxAwardedPerUser"])
        elif include_empty:
            instance.max_awarded_per_user = int()
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = str()
        if "rewardConditions" in dict_ and dict_["rewardConditions"] is not None:
            instance.reward_conditions = [RewardCondition.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["rewardConditions"]]
        elif include_empty:
            instance.reward_conditions = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "eventTopic": "event_topic",
            "namespace": "namespace",
            "rewardId": "reward_id",
            "createdAt": "created_at",
            "description": "description",
            "maxAwarded": "max_awarded",
            "maxAwardedPerUser": "max_awarded_per_user",
            "rewardCode": "reward_code",
            "rewardConditions": "reward_conditions",
            "updatedAt": "updated_at",
        }

    # endregion static methods
