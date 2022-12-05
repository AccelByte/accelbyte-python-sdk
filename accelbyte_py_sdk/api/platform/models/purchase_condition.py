# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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

from ..models.condition_group import ConditionGroup


class PurchaseCondition(Model):
    """Purchase condition (PurchaseCondition)

    Properties:
        condition_groups: (conditionGroups) OPTIONAL List[ConditionGroup]
    """

    # region fields

    condition_groups: List[ConditionGroup]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_condition_groups(self, value: List[ConditionGroup]) -> PurchaseCondition:
        self.condition_groups = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "condition_groups"):
            result["conditionGroups"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.condition_groups
            ]
        elif include_empty:
            result["conditionGroups"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        condition_groups: Optional[List[ConditionGroup]] = None,
    ) -> PurchaseCondition:
        instance = cls()
        if condition_groups is not None:
            instance.condition_groups = condition_groups
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PurchaseCondition:
        instance = cls()
        if not dict_:
            return instance
        if "conditionGroups" in dict_ and dict_["conditionGroups"] is not None:
            instance.condition_groups = [
                ConditionGroup.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["conditionGroups"]
            ]
        elif include_empty:
            instance.condition_groups = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PurchaseCondition]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PurchaseCondition]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PurchaseCondition, List[PurchaseCondition], Dict[Any, PurchaseCondition]
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
            "conditionGroups": "condition_groups",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "conditionGroups": False,
        }

    # endregion static methods
