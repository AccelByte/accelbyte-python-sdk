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

from ..models.platform_reward import PlatformReward
from ..models.reward_migration_result import RewardMigrationResult


class EntitlementOriginSyncResult(Model):
    """entitlement origin sync result (EntitlementOriginSyncResult)

    Properties:
        reason: (reason) OPTIONAL str

        reward: (reward) OPTIONAL PlatformReward

        summary: (summary) OPTIONAL List[RewardMigrationResult]
    """

    # region fields

    reason: str  # OPTIONAL
    reward: PlatformReward  # OPTIONAL
    summary: List[RewardMigrationResult]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_reason(self, value: str) -> EntitlementOriginSyncResult:
        self.reason = value
        return self

    def with_reward(self, value: PlatformReward) -> EntitlementOriginSyncResult:
        self.reward = value
        return self

    def with_summary(
        self, value: List[RewardMigrationResult]
    ) -> EntitlementOriginSyncResult:
        self.summary = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "reward"):
            result["reward"] = self.reward.to_dict(include_empty=include_empty)
        elif include_empty:
            result["reward"] = PlatformReward()
        if hasattr(self, "summary"):
            result["summary"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.summary
            ]
        elif include_empty:
            result["summary"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reason: Optional[str] = None,
        reward: Optional[PlatformReward] = None,
        summary: Optional[List[RewardMigrationResult]] = None,
        **kwargs,
    ) -> EntitlementOriginSyncResult:
        instance = cls()
        if reason is not None:
            instance.reason = reason
        if reward is not None:
            instance.reward = reward
        if summary is not None:
            instance.summary = summary
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementOriginSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "reward" in dict_ and dict_["reward"] is not None:
            instance.reward = PlatformReward.create_from_dict(
                dict_["reward"], include_empty=include_empty
            )
        elif include_empty:
            instance.reward = PlatformReward()
        if "summary" in dict_ and dict_["summary"] is not None:
            instance.summary = [
                RewardMigrationResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["summary"]
            ]
        elif include_empty:
            instance.summary = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementOriginSyncResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementOriginSyncResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementOriginSyncResult,
        List[EntitlementOriginSyncResult],
        Dict[Any, EntitlementOriginSyncResult],
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
            "reason": "reason",
            "reward": "reward",
            "summary": "summary",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "reason": False,
            "reward": False,
            "summary": False,
        }

    # endregion static methods
