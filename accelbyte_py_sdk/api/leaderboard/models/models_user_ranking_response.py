# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.19.0)

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

from ..models.models_user_ranking_response_detail import ModelsUserRankingResponseDetail


class ModelsUserRankingResponse(Model):
    """Models user ranking response (models.UserRankingResponse)

    Properties:
        all_time: (allTime) REQUIRED ModelsUserRankingResponseDetail

        current: (current) REQUIRED ModelsUserRankingResponseDetail

        daily: (daily) REQUIRED ModelsUserRankingResponseDetail

        monthly: (monthly) REQUIRED ModelsUserRankingResponseDetail

        user_id: (userId) REQUIRED str

        weekly: (weekly) REQUIRED ModelsUserRankingResponseDetail
    """

    # region fields

    all_time: ModelsUserRankingResponseDetail  # REQUIRED
    current: ModelsUserRankingResponseDetail  # REQUIRED
    daily: ModelsUserRankingResponseDetail  # REQUIRED
    monthly: ModelsUserRankingResponseDetail  # REQUIRED
    user_id: str  # REQUIRED
    weekly: ModelsUserRankingResponseDetail  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_all_time(
        self, value: ModelsUserRankingResponseDetail
    ) -> ModelsUserRankingResponse:
        self.all_time = value
        return self

    def with_current(
        self, value: ModelsUserRankingResponseDetail
    ) -> ModelsUserRankingResponse:
        self.current = value
        return self

    def with_daily(
        self, value: ModelsUserRankingResponseDetail
    ) -> ModelsUserRankingResponse:
        self.daily = value
        return self

    def with_monthly(
        self, value: ModelsUserRankingResponseDetail
    ) -> ModelsUserRankingResponse:
        self.monthly = value
        return self

    def with_user_id(self, value: str) -> ModelsUserRankingResponse:
        self.user_id = value
        return self

    def with_weekly(
        self, value: ModelsUserRankingResponseDetail
    ) -> ModelsUserRankingResponse:
        self.weekly = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "all_time"):
            result["allTime"] = self.all_time.to_dict(include_empty=include_empty)
        elif include_empty:
            result["allTime"] = ModelsUserRankingResponseDetail()
        if hasattr(self, "current"):
            result["current"] = self.current.to_dict(include_empty=include_empty)
        elif include_empty:
            result["current"] = ModelsUserRankingResponseDetail()
        if hasattr(self, "daily"):
            result["daily"] = self.daily.to_dict(include_empty=include_empty)
        elif include_empty:
            result["daily"] = ModelsUserRankingResponseDetail()
        if hasattr(self, "monthly"):
            result["monthly"] = self.monthly.to_dict(include_empty=include_empty)
        elif include_empty:
            result["monthly"] = ModelsUserRankingResponseDetail()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "weekly"):
            result["weekly"] = self.weekly.to_dict(include_empty=include_empty)
        elif include_empty:
            result["weekly"] = ModelsUserRankingResponseDetail()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        all_time: ModelsUserRankingResponseDetail,
        current: ModelsUserRankingResponseDetail,
        daily: ModelsUserRankingResponseDetail,
        monthly: ModelsUserRankingResponseDetail,
        user_id: str,
        weekly: ModelsUserRankingResponseDetail,
    ) -> ModelsUserRankingResponse:
        instance = cls()
        instance.all_time = all_time
        instance.current = current
        instance.daily = daily
        instance.monthly = monthly
        instance.user_id = user_id
        instance.weekly = weekly
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserRankingResponse:
        instance = cls()
        if not dict_:
            return instance
        if "allTime" in dict_ and dict_["allTime"] is not None:
            instance.all_time = ModelsUserRankingResponseDetail.create_from_dict(
                dict_["allTime"], include_empty=include_empty
            )
        elif include_empty:
            instance.all_time = ModelsUserRankingResponseDetail()
        if "current" in dict_ and dict_["current"] is not None:
            instance.current = ModelsUserRankingResponseDetail.create_from_dict(
                dict_["current"], include_empty=include_empty
            )
        elif include_empty:
            instance.current = ModelsUserRankingResponseDetail()
        if "daily" in dict_ and dict_["daily"] is not None:
            instance.daily = ModelsUserRankingResponseDetail.create_from_dict(
                dict_["daily"], include_empty=include_empty
            )
        elif include_empty:
            instance.daily = ModelsUserRankingResponseDetail()
        if "monthly" in dict_ and dict_["monthly"] is not None:
            instance.monthly = ModelsUserRankingResponseDetail.create_from_dict(
                dict_["monthly"], include_empty=include_empty
            )
        elif include_empty:
            instance.monthly = ModelsUserRankingResponseDetail()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "weekly" in dict_ and dict_["weekly"] is not None:
            instance.weekly = ModelsUserRankingResponseDetail.create_from_dict(
                dict_["weekly"], include_empty=include_empty
            )
        elif include_empty:
            instance.weekly = ModelsUserRankingResponseDetail()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserRankingResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserRankingResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserRankingResponse,
        List[ModelsUserRankingResponse],
        Dict[Any, ModelsUserRankingResponse],
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
            "current": "current",
            "daily": "daily",
            "monthly": "monthly",
            "userId": "user_id",
            "weekly": "weekly",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allTime": True,
            "current": True,
            "daily": True,
            "monthly": True,
            "userId": True,
            "weekly": True,
        }

    # endregion static methods
