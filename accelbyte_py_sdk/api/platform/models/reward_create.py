# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class RewardCreate(Model):
    """Reward create (RewardCreate)

    Properties:
        event_topic: (eventTopic) REQUIRED str

        reward_code: (rewardCode) REQUIRED str

        description: (description) OPTIONAL str

        max_awarded: (maxAwarded) OPTIONAL int

        max_awarded_per_user: (maxAwardedPerUser) OPTIONAL int

        namespace_expression: (namespaceExpression) OPTIONAL str

        reward_conditions: (rewardConditions) OPTIONAL List[RewardCondition]

        user_id_expression: (userIdExpression) OPTIONAL str
    """

    # region fields

    event_topic: str  # REQUIRED
    reward_code: str  # REQUIRED
    description: str  # OPTIONAL
    max_awarded: int  # OPTIONAL
    max_awarded_per_user: int  # OPTIONAL
    namespace_expression: str  # OPTIONAL
    reward_conditions: List[RewardCondition]  # OPTIONAL
    user_id_expression: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_topic(self, value: str) -> RewardCreate:
        self.event_topic = value
        return self

    def with_reward_code(self, value: str) -> RewardCreate:
        self.reward_code = value
        return self

    def with_description(self, value: str) -> RewardCreate:
        self.description = value
        return self

    def with_max_awarded(self, value: int) -> RewardCreate:
        self.max_awarded = value
        return self

    def with_max_awarded_per_user(self, value: int) -> RewardCreate:
        self.max_awarded_per_user = value
        return self

    def with_namespace_expression(self, value: str) -> RewardCreate:
        self.namespace_expression = value
        return self

    def with_reward_conditions(self, value: List[RewardCondition]) -> RewardCreate:
        self.reward_conditions = value
        return self

    def with_user_id_expression(self, value: str) -> RewardCreate:
        self.user_id_expression = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_topic"):
            result["eventTopic"] = str(self.event_topic)
        elif include_empty:
            result["eventTopic"] = ""
        if hasattr(self, "reward_code"):
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "max_awarded"):
            result["maxAwarded"] = int(self.max_awarded)
        elif include_empty:
            result["maxAwarded"] = 0
        if hasattr(self, "max_awarded_per_user"):
            result["maxAwardedPerUser"] = int(self.max_awarded_per_user)
        elif include_empty:
            result["maxAwardedPerUser"] = 0
        if hasattr(self, "namespace_expression"):
            result["namespaceExpression"] = str(self.namespace_expression)
        elif include_empty:
            result["namespaceExpression"] = ""
        if hasattr(self, "reward_conditions"):
            result["rewardConditions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.reward_conditions
            ]
        elif include_empty:
            result["rewardConditions"] = []
        if hasattr(self, "user_id_expression"):
            result["userIdExpression"] = str(self.user_id_expression)
        elif include_empty:
            result["userIdExpression"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_topic: str,
        reward_code: str,
        description: Optional[str] = None,
        max_awarded: Optional[int] = None,
        max_awarded_per_user: Optional[int] = None,
        namespace_expression: Optional[str] = None,
        reward_conditions: Optional[List[RewardCondition]] = None,
        user_id_expression: Optional[str] = None,
    ) -> RewardCreate:
        instance = cls()
        instance.event_topic = event_topic
        instance.reward_code = reward_code
        if description is not None:
            instance.description = description
        if max_awarded is not None:
            instance.max_awarded = max_awarded
        if max_awarded_per_user is not None:
            instance.max_awarded_per_user = max_awarded_per_user
        if namespace_expression is not None:
            instance.namespace_expression = namespace_expression
        if reward_conditions is not None:
            instance.reward_conditions = reward_conditions
        if user_id_expression is not None:
            instance.user_id_expression = user_id_expression
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardCreate:
        instance = cls()
        if not dict_:
            return instance
        if "eventTopic" in dict_ and dict_["eventTopic"] is not None:
            instance.event_topic = str(dict_["eventTopic"])
        elif include_empty:
            instance.event_topic = ""
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "maxAwarded" in dict_ and dict_["maxAwarded"] is not None:
            instance.max_awarded = int(dict_["maxAwarded"])
        elif include_empty:
            instance.max_awarded = 0
        if "maxAwardedPerUser" in dict_ and dict_["maxAwardedPerUser"] is not None:
            instance.max_awarded_per_user = int(dict_["maxAwardedPerUser"])
        elif include_empty:
            instance.max_awarded_per_user = 0
        if "namespaceExpression" in dict_ and dict_["namespaceExpression"] is not None:
            instance.namespace_expression = str(dict_["namespaceExpression"])
        elif include_empty:
            instance.namespace_expression = ""
        if "rewardConditions" in dict_ and dict_["rewardConditions"] is not None:
            instance.reward_conditions = [
                RewardCondition.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewardConditions"]
            ]
        elif include_empty:
            instance.reward_conditions = []
        if "userIdExpression" in dict_ and dict_["userIdExpression"] is not None:
            instance.user_id_expression = str(dict_["userIdExpression"])
        elif include_empty:
            instance.user_id_expression = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardCreate, List[RewardCreate], Dict[Any, RewardCreate]]:
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
            "eventTopic": "event_topic",
            "rewardCode": "reward_code",
            "description": "description",
            "maxAwarded": "max_awarded",
            "maxAwardedPerUser": "max_awarded_per_user",
            "namespaceExpression": "namespace_expression",
            "rewardConditions": "reward_conditions",
            "userIdExpression": "user_id_expression",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventTopic": True,
            "rewardCode": True,
            "description": False,
            "maxAwarded": False,
            "maxAwardedPerUser": False,
            "namespaceExpression": False,
            "rewardConditions": False,
            "userIdExpression": False,
        }

    # endregion static methods
