# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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


class ModelClaimUserRewardsByGoalCodeRequest(Model):
    """Model claim user rewards by goal code request (model.ClaimUserRewardsByGoalCodeRequest)

    Properties:
        goal_code: (goalCode) REQUIRED str
    """

    # region fields

    goal_code: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_goal_code(self, value: str) -> ModelClaimUserRewardsByGoalCodeRequest:
        self.goal_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "goal_code"):
            result["goalCode"] = str(self.goal_code)
        elif include_empty:
            result["goalCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, goal_code: str, **kwargs) -> ModelClaimUserRewardsByGoalCodeRequest:
        instance = cls()
        instance.goal_code = goal_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelClaimUserRewardsByGoalCodeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "goalCode" in dict_ and dict_["goalCode"] is not None:
            instance.goal_code = str(dict_["goalCode"])
        elif include_empty:
            instance.goal_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelClaimUserRewardsByGoalCodeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelClaimUserRewardsByGoalCodeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelClaimUserRewardsByGoalCodeRequest,
        List[ModelClaimUserRewardsByGoalCodeRequest],
        Dict[Any, ModelClaimUserRewardsByGoalCodeRequest],
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
            "goalCode": "goal_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "goalCode": True,
        }

    # endregion static methods
