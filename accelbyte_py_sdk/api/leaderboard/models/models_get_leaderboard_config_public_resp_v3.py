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


class ModelsGetLeaderboardConfigPublicRespV3(Model):
    """Models get leaderboard config public resp V3 (models.GetLeaderboardConfigPublicRespV3)

    Properties:
        all_time: (allTime) REQUIRED bool

        cycle_ids: (cycleIds) REQUIRED List[str]

        icon_url: (iconURL) REQUIRED str

        leaderboard_code: (leaderboardCode) REQUIRED str

        name: (name) REQUIRED str

        stat_code: (statCode) REQUIRED str
    """

    # region fields

    all_time: bool  # REQUIRED
    cycle_ids: List[str]  # REQUIRED
    icon_url: str  # REQUIRED
    leaderboard_code: str  # REQUIRED
    name: str  # REQUIRED
    stat_code: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_all_time(self, value: bool) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.all_time = value
        return self

    def with_cycle_ids(
        self, value: List[str]
    ) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.cycle_ids = value
        return self

    def with_icon_url(self, value: str) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.icon_url = value
        return self

    def with_leaderboard_code(
        self, value: str
    ) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.leaderboard_code = value
        return self

    def with_name(self, value: str) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.name = value
        return self

    def with_stat_code(self, value: str) -> ModelsGetLeaderboardConfigPublicRespV3:
        self.stat_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "all_time"):
            result["allTime"] = bool(self.all_time)
        elif include_empty:
            result["allTime"] = False
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
        if hasattr(self, "icon_url"):
            result["iconURL"] = str(self.icon_url)
        elif include_empty:
            result["iconURL"] = ""
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        all_time: bool,
        cycle_ids: List[str],
        icon_url: str,
        leaderboard_code: str,
        name: str,
        stat_code: str,
        **kwargs,
    ) -> ModelsGetLeaderboardConfigPublicRespV3:
        instance = cls()
        instance.all_time = all_time
        instance.cycle_ids = cycle_ids
        instance.icon_url = icon_url
        instance.leaderboard_code = leaderboard_code
        instance.name = name
        instance.stat_code = stat_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetLeaderboardConfigPublicRespV3:
        instance = cls()
        if not dict_:
            return instance
        if "allTime" in dict_ and dict_["allTime"] is not None:
            instance.all_time = bool(dict_["allTime"])
        elif include_empty:
            instance.all_time = False
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
        if "iconURL" in dict_ and dict_["iconURL"] is not None:
            instance.icon_url = str(dict_["iconURL"])
        elif include_empty:
            instance.icon_url = ""
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetLeaderboardConfigPublicRespV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetLeaderboardConfigPublicRespV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetLeaderboardConfigPublicRespV3,
        List[ModelsGetLeaderboardConfigPublicRespV3],
        Dict[Any, ModelsGetLeaderboardConfigPublicRespV3],
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
            "allTime": "all_time",
            "cycleIds": "cycle_ids",
            "iconURL": "icon_url",
            "leaderboardCode": "leaderboard_code",
            "name": "name",
            "statCode": "stat_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allTime": True,
            "cycleIds": True,
            "iconURL": True,
            "leaderboardCode": True,
            "name": True,
            "statCode": True,
        }

    # endregion static methods
