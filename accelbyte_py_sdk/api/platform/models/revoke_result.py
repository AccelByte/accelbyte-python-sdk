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

from ..models.platform_reward import PlatformReward
from ..models.revoke_item_summary import RevokeItemSummary


class StatusEnum(StrEnum):
    COMPLETED = "COMPLETED"
    SKIPPED = "SKIPPED"


class RevokeResult(Model):
    """Revoke result (RevokeResult)

    Properties:
        revoke_item_summaries: (revokeItemSummaries) OPTIONAL List[RevokeItemSummary]

        reward: (reward) OPTIONAL PlatformReward

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    revoke_item_summaries: List[RevokeItemSummary]  # OPTIONAL
    reward: PlatformReward  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_revoke_item_summaries(
        self, value: List[RevokeItemSummary]
    ) -> RevokeResult:
        self.revoke_item_summaries = value
        return self

    def with_reward(self, value: PlatformReward) -> RevokeResult:
        self.reward = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RevokeResult:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "revoke_item_summaries"):
            result["revokeItemSummaries"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.revoke_item_summaries
            ]
        elif include_empty:
            result["revokeItemSummaries"] = []
        if hasattr(self, "reward"):
            result["reward"] = self.reward.to_dict(include_empty=include_empty)
        elif include_empty:
            result["reward"] = PlatformReward()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        revoke_item_summaries: Optional[List[RevokeItemSummary]] = None,
        reward: Optional[PlatformReward] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> RevokeResult:
        instance = cls()
        if revoke_item_summaries is not None:
            instance.revoke_item_summaries = revoke_item_summaries
        if reward is not None:
            instance.reward = reward
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeResult:
        instance = cls()
        if not dict_:
            return instance
        if "revokeItemSummaries" in dict_ and dict_["revokeItemSummaries"] is not None:
            instance.revoke_item_summaries = [
                RevokeItemSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["revokeItemSummaries"]
            ]
        elif include_empty:
            instance.revoke_item_summaries = []
        if "reward" in dict_ and dict_["reward"] is not None:
            instance.reward = PlatformReward.create_from_dict(
                dict_["reward"], include_empty=include_empty
            )
        elif include_empty:
            instance.reward = PlatformReward()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RevokeResult, List[RevokeResult], Dict[Any, RevokeResult]]:
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
            "revokeItemSummaries": "revoke_item_summaries",
            "reward": "reward",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "revokeItemSummaries": False,
            "reward": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["COMPLETED", "SKIPPED"],
        }

    # endregion static methods
