# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.model_user_ban_with_status import ModelUserBanWithStatus


class ModelGetUserBanSummaryV3(Model):
    """Model get user ban summary V3 (model.GetUserBanSummaryV3)

    Properties:
        active_count: (activeCount) REQUIRED int

        data: (data) REQUIRED List[ModelUserBanWithStatus]

        inactive_count: (inactiveCount) REQUIRED int

        total_count: (totalCount) REQUIRED int
    """

    # region fields

    active_count: int  # REQUIRED
    data: List[ModelUserBanWithStatus]  # REQUIRED
    inactive_count: int  # REQUIRED
    total_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active_count(self, value: int) -> ModelGetUserBanSummaryV3:
        self.active_count = value
        return self

    def with_data(
        self, value: List[ModelUserBanWithStatus]
    ) -> ModelGetUserBanSummaryV3:
        self.data = value
        return self

    def with_inactive_count(self, value: int) -> ModelGetUserBanSummaryV3:
        self.inactive_count = value
        return self

    def with_total_count(self, value: int) -> ModelGetUserBanSummaryV3:
        self.total_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active_count"):
            result["activeCount"] = int(self.active_count)
        elif include_empty:
            result["activeCount"] = 0
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "inactive_count"):
            result["inactiveCount"] = int(self.inactive_count)
        elif include_empty:
            result["inactiveCount"] = 0
        if hasattr(self, "total_count"):
            result["totalCount"] = int(self.total_count)
        elif include_empty:
            result["totalCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active_count: int,
        data: List[ModelUserBanWithStatus],
        inactive_count: int,
        total_count: int,
        **kwargs,
    ) -> ModelGetUserBanSummaryV3:
        instance = cls()
        instance.active_count = active_count
        instance.data = data
        instance.inactive_count = inactive_count
        instance.total_count = total_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGetUserBanSummaryV3:
        instance = cls()
        if not dict_:
            return instance
        if "activeCount" in dict_ and dict_["activeCount"] is not None:
            instance.active_count = int(dict_["activeCount"])
        elif include_empty:
            instance.active_count = 0
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                ModelUserBanWithStatus.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "inactiveCount" in dict_ and dict_["inactiveCount"] is not None:
            instance.inactive_count = int(dict_["inactiveCount"])
        elif include_empty:
            instance.inactive_count = 0
        if "totalCount" in dict_ and dict_["totalCount"] is not None:
            instance.total_count = int(dict_["totalCount"])
        elif include_empty:
            instance.total_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGetUserBanSummaryV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGetUserBanSummaryV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGetUserBanSummaryV3,
        List[ModelGetUserBanSummaryV3],
        Dict[Any, ModelGetUserBanSummaryV3],
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
            "activeCount": "active_count",
            "data": "data",
            "inactiveCount": "inactive_count",
            "totalCount": "total_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "activeCount": True,
            "data": True,
            "inactiveCount": True,
            "totalCount": True,
        }

    # endregion static methods
