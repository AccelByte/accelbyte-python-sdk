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

from ..models.model_goal_response import ModelGoalResponse


class ModelGoalOrder(Model):
    """Model goal order (model.GoalOrder)

    Properties:
        goal: (goal) REQUIRED ModelGoalResponse

        order: (order) REQUIRED int
    """

    # region fields

    goal: ModelGoalResponse  # REQUIRED
    order: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_goal(self, value: ModelGoalResponse) -> ModelGoalOrder:
        self.goal = value
        return self

    def with_order(self, value: int) -> ModelGoalOrder:
        self.order = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "goal"):
            result["goal"] = self.goal.to_dict(include_empty=include_empty)
        elif include_empty:
            result["goal"] = ModelGoalResponse()
        if hasattr(self, "order"):
            result["order"] = int(self.order)
        elif include_empty:
            result["order"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, goal: ModelGoalResponse, order: int, **kwargs) -> ModelGoalOrder:
        instance = cls()
        instance.goal = goal
        instance.order = order
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGoalOrder:
        instance = cls()
        if not dict_:
            return instance
        if "goal" in dict_ and dict_["goal"] is not None:
            instance.goal = ModelGoalResponse.create_from_dict(
                dict_["goal"], include_empty=include_empty
            )
        elif include_empty:
            instance.goal = ModelGoalResponse()
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = int(dict_["order"])
        elif include_empty:
            instance.order = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGoalOrder]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGoalOrder]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelGoalOrder, List[ModelGoalOrder], Dict[Any, ModelGoalOrder]]:
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
            "goal": "goal",
            "order": "order",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "goal": True,
            "order": True,
        }

    # endregion static methods
