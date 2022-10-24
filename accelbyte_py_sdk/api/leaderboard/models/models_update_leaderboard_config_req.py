# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.15.9)

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

from ..models.models_daily_config import ModelsDailyConfig
from ..models.models_monthly_config import ModelsMonthlyConfig
from ..models.models_weekly_config import ModelsWeeklyConfig


class ModelsUpdateLeaderboardConfigReq(Model):
    """Models update leaderboard config req (models.UpdateLeaderboardConfigReq)

    Properties:
        daily: (daily) REQUIRED ModelsDailyConfig

        descending: (descending) REQUIRED bool

        icon_url: (iconURL) REQUIRED str

        monthly: (monthly) REQUIRED ModelsMonthlyConfig

        name: (name) REQUIRED str

        season_period: (seasonPeriod) REQUIRED int

        start_time: (startTime) REQUIRED str

        stat_code: (statCode) REQUIRED str

        weekly: (weekly) REQUIRED ModelsWeeklyConfig
    """

    # region fields

    daily: ModelsDailyConfig  # REQUIRED
    descending: bool  # REQUIRED
    icon_url: str  # REQUIRED
    monthly: ModelsMonthlyConfig  # REQUIRED
    name: str  # REQUIRED
    season_period: int  # REQUIRED
    start_time: str  # REQUIRED
    stat_code: str  # REQUIRED
    weekly: ModelsWeeklyConfig  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_daily(self, value: ModelsDailyConfig) -> ModelsUpdateLeaderboardConfigReq:
        self.daily = value
        return self

    def with_descending(self, value: bool) -> ModelsUpdateLeaderboardConfigReq:
        self.descending = value
        return self

    def with_icon_url(self, value: str) -> ModelsUpdateLeaderboardConfigReq:
        self.icon_url = value
        return self

    def with_monthly(
        self, value: ModelsMonthlyConfig
    ) -> ModelsUpdateLeaderboardConfigReq:
        self.monthly = value
        return self

    def with_name(self, value: str) -> ModelsUpdateLeaderboardConfigReq:
        self.name = value
        return self

    def with_season_period(self, value: int) -> ModelsUpdateLeaderboardConfigReq:
        self.season_period = value
        return self

    def with_start_time(self, value: str) -> ModelsUpdateLeaderboardConfigReq:
        self.start_time = value
        return self

    def with_stat_code(self, value: str) -> ModelsUpdateLeaderboardConfigReq:
        self.stat_code = value
        return self

    def with_weekly(
        self, value: ModelsWeeklyConfig
    ) -> ModelsUpdateLeaderboardConfigReq:
        self.weekly = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "daily"):
            result["daily"] = self.daily.to_dict(include_empty=include_empty)
        elif include_empty:
            result["daily"] = ModelsDailyConfig()
        if hasattr(self, "descending"):
            result["descending"] = bool(self.descending)
        elif include_empty:
            result["descending"] = False
        if hasattr(self, "icon_url"):
            result["iconURL"] = str(self.icon_url)
        elif include_empty:
            result["iconURL"] = ""
        if hasattr(self, "monthly"):
            result["monthly"] = self.monthly.to_dict(include_empty=include_empty)
        elif include_empty:
            result["monthly"] = ModelsMonthlyConfig()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "season_period"):
            result["seasonPeriod"] = int(self.season_period)
        elif include_empty:
            result["seasonPeriod"] = 0
        if hasattr(self, "start_time"):
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "weekly"):
            result["weekly"] = self.weekly.to_dict(include_empty=include_empty)
        elif include_empty:
            result["weekly"] = ModelsWeeklyConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        daily: ModelsDailyConfig,
        descending: bool,
        icon_url: str,
        monthly: ModelsMonthlyConfig,
        name: str,
        season_period: int,
        start_time: str,
        stat_code: str,
        weekly: ModelsWeeklyConfig,
    ) -> ModelsUpdateLeaderboardConfigReq:
        instance = cls()
        instance.daily = daily
        instance.descending = descending
        instance.icon_url = icon_url
        instance.monthly = monthly
        instance.name = name
        instance.season_period = season_period
        instance.start_time = start_time
        instance.stat_code = stat_code
        instance.weekly = weekly
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateLeaderboardConfigReq:
        instance = cls()
        if not dict_:
            return instance
        if "daily" in dict_ and dict_["daily"] is not None:
            instance.daily = ModelsDailyConfig.create_from_dict(
                dict_["daily"], include_empty=include_empty
            )
        elif include_empty:
            instance.daily = ModelsDailyConfig()
        if "descending" in dict_ and dict_["descending"] is not None:
            instance.descending = bool(dict_["descending"])
        elif include_empty:
            instance.descending = False
        if "iconURL" in dict_ and dict_["iconURL"] is not None:
            instance.icon_url = str(dict_["iconURL"])
        elif include_empty:
            instance.icon_url = ""
        if "monthly" in dict_ and dict_["monthly"] is not None:
            instance.monthly = ModelsMonthlyConfig.create_from_dict(
                dict_["monthly"], include_empty=include_empty
            )
        elif include_empty:
            instance.monthly = ModelsMonthlyConfig()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "seasonPeriod" in dict_ and dict_["seasonPeriod"] is not None:
            instance.season_period = int(dict_["seasonPeriod"])
        elif include_empty:
            instance.season_period = 0
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "weekly" in dict_ and dict_["weekly"] is not None:
            instance.weekly = ModelsWeeklyConfig.create_from_dict(
                dict_["weekly"], include_empty=include_empty
            )
        elif include_empty:
            instance.weekly = ModelsWeeklyConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateLeaderboardConfigReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateLeaderboardConfigReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateLeaderboardConfigReq,
        List[ModelsUpdateLeaderboardConfigReq],
        Dict[Any, ModelsUpdateLeaderboardConfigReq],
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
            "daily": "daily",
            "descending": "descending",
            "iconURL": "icon_url",
            "monthly": "monthly",
            "name": "name",
            "seasonPeriod": "season_period",
            "startTime": "start_time",
            "statCode": "stat_code",
            "weekly": "weekly",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "daily": True,
            "descending": True,
            "iconURL": True,
            "monthly": True,
            "name": True,
            "seasonPeriod": True,
            "startTime": True,
            "statCode": True,
            "weekly": True,
        }

    # endregion static methods
