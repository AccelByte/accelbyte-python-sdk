# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Leaderboard Service

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

from ..models.models_user_cycle_ranking_response_detail import (
    ModelsUserCycleRankingResponseDetail,
)
from ..models.models_user_ranking_response_detail_v3 import (
    ModelsUserRankingResponseDetailV3,
)


class ModelsUserLeaderboardRankingV3(Model):
    """Models user leaderboard ranking V3 (models.UserLeaderboardRankingV3)

    Properties:
        cycles: (cycles) REQUIRED List[ModelsUserCycleRankingResponseDetail]

        leaderboard_code: (leaderboardCode) REQUIRED str

        leaderboard_name: (leaderboardName) REQUIRED str

        user_id: (userId) REQUIRED str

        all_time: (allTime) OPTIONAL ModelsUserRankingResponseDetailV3
    """

    # region fields

    cycles: List[ModelsUserCycleRankingResponseDetail]  # REQUIRED
    leaderboard_code: str  # REQUIRED
    leaderboard_name: str  # REQUIRED
    user_id: str  # REQUIRED
    all_time: ModelsUserRankingResponseDetailV3  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_cycles(
        self, value: List[ModelsUserCycleRankingResponseDetail]
    ) -> ModelsUserLeaderboardRankingV3:
        self.cycles = value
        return self

    def with_leaderboard_code(self, value: str) -> ModelsUserLeaderboardRankingV3:
        self.leaderboard_code = value
        return self

    def with_leaderboard_name(self, value: str) -> ModelsUserLeaderboardRankingV3:
        self.leaderboard_name = value
        return self

    def with_user_id(self, value: str) -> ModelsUserLeaderboardRankingV3:
        self.user_id = value
        return self

    def with_all_time(
        self, value: ModelsUserRankingResponseDetailV3
    ) -> ModelsUserLeaderboardRankingV3:
        self.all_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycles"):
            result["cycles"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.cycles
            ]
        elif include_empty:
            result["cycles"] = []
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = ""
        if hasattr(self, "leaderboard_name"):
            result["leaderboardName"] = str(self.leaderboard_name)
        elif include_empty:
            result["leaderboardName"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "all_time"):
            result["allTime"] = self.all_time.to_dict(include_empty=include_empty)
        elif include_empty:
            result["allTime"] = ModelsUserRankingResponseDetailV3()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cycles: List[ModelsUserCycleRankingResponseDetail],
        leaderboard_code: str,
        leaderboard_name: str,
        user_id: str,
        all_time: Optional[ModelsUserRankingResponseDetailV3] = None,
        **kwargs,
    ) -> ModelsUserLeaderboardRankingV3:
        instance = cls()
        instance.cycles = cycles
        instance.leaderboard_code = leaderboard_code
        instance.leaderboard_name = leaderboard_name
        instance.user_id = user_id
        if all_time is not None:
            instance.all_time = all_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserLeaderboardRankingV3:
        instance = cls()
        if not dict_:
            return instance
        if "cycles" in dict_ and dict_["cycles"] is not None:
            instance.cycles = [
                ModelsUserCycleRankingResponseDetail.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["cycles"]
            ]
        elif include_empty:
            instance.cycles = []
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = ""
        if "leaderboardName" in dict_ and dict_["leaderboardName"] is not None:
            instance.leaderboard_name = str(dict_["leaderboardName"])
        elif include_empty:
            instance.leaderboard_name = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "allTime" in dict_ and dict_["allTime"] is not None:
            instance.all_time = ModelsUserRankingResponseDetailV3.create_from_dict(
                dict_["allTime"], include_empty=include_empty
            )
        elif include_empty:
            instance.all_time = ModelsUserRankingResponseDetailV3()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserLeaderboardRankingV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserLeaderboardRankingV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserLeaderboardRankingV3,
        List[ModelsUserLeaderboardRankingV3],
        Dict[Any, ModelsUserLeaderboardRankingV3],
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
            "cycles": "cycles",
            "leaderboardCode": "leaderboard_code",
            "leaderboardName": "leaderboard_name",
            "userId": "user_id",
            "allTime": "all_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cycles": True,
            "leaderboardCode": True,
            "leaderboardName": True,
            "userId": True,
            "allTime": False,
        }

    # endregion static methods
