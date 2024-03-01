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


class ModelRequirementProgressionResponse(Model):
    """Model requirement progression response (model.RequirementProgressionResponse)

    Properties:
        id_: (id) REQUIRED str

        target_value: (targetValue) REQUIRED float

        completed_at: (completedAt) OPTIONAL str

        currrent_value: (currrentValue) OPTIONAL float
    """

    # region fields

    id_: str  # REQUIRED
    target_value: float  # REQUIRED
    completed_at: str  # OPTIONAL
    currrent_value: float  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelRequirementProgressionResponse:
        self.id_ = value
        return self

    def with_target_value(self, value: float) -> ModelRequirementProgressionResponse:
        self.target_value = value
        return self

    def with_completed_at(self, value: str) -> ModelRequirementProgressionResponse:
        self.completed_at = value
        return self

    def with_currrent_value(self, value: float) -> ModelRequirementProgressionResponse:
        self.currrent_value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "target_value"):
            result["targetValue"] = float(self.target_value)
        elif include_empty:
            result["targetValue"] = 0.0
        if hasattr(self, "completed_at"):
            result["completedAt"] = str(self.completed_at)
        elif include_empty:
            result["completedAt"] = ""
        if hasattr(self, "currrent_value"):
            result["currrentValue"] = float(self.currrent_value)
        elif include_empty:
            result["currrentValue"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        target_value: float,
        completed_at: Optional[str] = None,
        currrent_value: Optional[float] = None,
        **kwargs,
    ) -> ModelRequirementProgressionResponse:
        instance = cls()
        instance.id_ = id_
        instance.target_value = target_value
        if completed_at is not None:
            instance.completed_at = completed_at
        if currrent_value is not None:
            instance.currrent_value = currrent_value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRequirementProgressionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "targetValue" in dict_ and dict_["targetValue"] is not None:
            instance.target_value = float(dict_["targetValue"])
        elif include_empty:
            instance.target_value = 0.0
        if "completedAt" in dict_ and dict_["completedAt"] is not None:
            instance.completed_at = str(dict_["completedAt"])
        elif include_empty:
            instance.completed_at = ""
        if "currrentValue" in dict_ and dict_["currrentValue"] is not None:
            instance.currrent_value = float(dict_["currrentValue"])
        elif include_empty:
            instance.currrent_value = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRequirementProgressionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRequirementProgressionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRequirementProgressionResponse,
        List[ModelRequirementProgressionResponse],
        Dict[Any, ModelRequirementProgressionResponse],
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
            "id": "id_",
            "targetValue": "target_value",
            "completedAt": "completed_at",
            "currrentValue": "currrent_value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "targetValue": True,
            "completedAt": False,
            "currrentValue": False,
        }

    # endregion static methods
