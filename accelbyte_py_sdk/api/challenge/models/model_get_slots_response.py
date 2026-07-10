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

from ..models.model_current_round_slot_response import ModelCurrentRoundSlotResponse
from ..models.model_template_slot_response import ModelTemplateSlotResponse


class ModelGetSlotsResponse(Model):
    """Model get slots response (model.GetSlotsResponse)

    Properties:
        current_round: (currentRound) REQUIRED List[ModelCurrentRoundSlotResponse]

        template_slots: (templateSlots) OPTIONAL List[ModelTemplateSlotResponse]
    """

    # region fields

    current_round: List[ModelCurrentRoundSlotResponse]  # REQUIRED
    template_slots: List[ModelTemplateSlotResponse]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_current_round(
        self, value: List[ModelCurrentRoundSlotResponse]
    ) -> ModelGetSlotsResponse:
        self.current_round = value
        return self

    def with_template_slots(
        self, value: List[ModelTemplateSlotResponse]
    ) -> ModelGetSlotsResponse:
        self.template_slots = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_round"):
            result["currentRound"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.current_round
            ]
        elif include_empty:
            result["currentRound"] = []
        if hasattr(self, "template_slots"):
            result["templateSlots"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.template_slots
            ]
        elif include_empty:
            result["templateSlots"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        current_round: List[ModelCurrentRoundSlotResponse],
        template_slots: Optional[List[ModelTemplateSlotResponse]] = None,
        **kwargs,
    ) -> ModelGetSlotsResponse:
        instance = cls()
        instance.current_round = current_round
        if template_slots is not None:
            instance.template_slots = template_slots
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGetSlotsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "currentRound" in dict_ and dict_["currentRound"] is not None:
            instance.current_round = [
                ModelCurrentRoundSlotResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["currentRound"]
            ]
        elif include_empty:
            instance.current_round = []
        if "templateSlots" in dict_ and dict_["templateSlots"] is not None:
            instance.template_slots = [
                ModelTemplateSlotResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["templateSlots"]
            ]
        elif include_empty:
            instance.template_slots = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGetSlotsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGetSlotsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGetSlotsResponse,
        List[ModelGetSlotsResponse],
        Dict[Any, ModelGetSlotsResponse],
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
            "currentRound": "current_round",
            "templateSlots": "template_slots",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currentRound": True,
            "templateSlots": False,
        }

    # endregion static methods
