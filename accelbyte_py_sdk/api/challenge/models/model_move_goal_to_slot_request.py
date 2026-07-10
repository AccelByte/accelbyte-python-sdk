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


class ModelMoveGoalToSlotRequest(Model):
    """Model move goal to slot request (model.MoveGoalToSlotRequest)

    Properties:
        slot_index: (slotIndex) REQUIRED int
    """

    # region fields

    slot_index: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_slot_index(self, value: int) -> ModelMoveGoalToSlotRequest:
        self.slot_index = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "slot_index"):
            result["slotIndex"] = int(self.slot_index)
        elif include_empty:
            result["slotIndex"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, slot_index: int, **kwargs) -> ModelMoveGoalToSlotRequest:
        instance = cls()
        instance.slot_index = slot_index
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelMoveGoalToSlotRequest:
        instance = cls()
        if not dict_:
            return instance
        if "slotIndex" in dict_ and dict_["slotIndex"] is not None:
            instance.slot_index = int(dict_["slotIndex"])
        elif include_empty:
            instance.slot_index = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelMoveGoalToSlotRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelMoveGoalToSlotRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelMoveGoalToSlotRequest,
        List[ModelMoveGoalToSlotRequest],
        Dict[Any, ModelMoveGoalToSlotRequest],
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
            "slotIndex": "slot_index",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "slotIndex": True,
        }

    # endregion static methods
