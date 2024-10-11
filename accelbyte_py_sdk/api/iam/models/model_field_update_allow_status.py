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


class ModelFieldUpdateAllowStatus(Model):
    """Model field update allow status (model.FieldUpdateAllowStatus)

    Properties:
        field: (field) REQUIRED str

        type_: (type) REQUIRED str

        next_available_edit_time: (nextAvailableEditTime) OPTIONAL int

        remaining_time_in_seconds: (remainingTimeInSeconds) OPTIONAL int
    """

    # region fields

    field: str  # REQUIRED
    type_: str  # REQUIRED
    next_available_edit_time: int  # OPTIONAL
    remaining_time_in_seconds: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_field(self, value: str) -> ModelFieldUpdateAllowStatus:
        self.field = value
        return self

    def with_type(self, value: str) -> ModelFieldUpdateAllowStatus:
        self.type_ = value
        return self

    def with_next_available_edit_time(self, value: int) -> ModelFieldUpdateAllowStatus:
        self.next_available_edit_time = value
        return self

    def with_remaining_time_in_seconds(self, value: int) -> ModelFieldUpdateAllowStatus:
        self.remaining_time_in_seconds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "next_available_edit_time"):
            result["nextAvailableEditTime"] = int(self.next_available_edit_time)
        elif include_empty:
            result["nextAvailableEditTime"] = 0
        if hasattr(self, "remaining_time_in_seconds"):
            result["remainingTimeInSeconds"] = int(self.remaining_time_in_seconds)
        elif include_empty:
            result["remainingTimeInSeconds"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        field: str,
        type_: str,
        next_available_edit_time: Optional[int] = None,
        remaining_time_in_seconds: Optional[int] = None,
        **kwargs,
    ) -> ModelFieldUpdateAllowStatus:
        instance = cls()
        instance.field = field
        instance.type_ = type_
        if next_available_edit_time is not None:
            instance.next_available_edit_time = next_available_edit_time
        if remaining_time_in_seconds is not None:
            instance.remaining_time_in_seconds = remaining_time_in_seconds
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelFieldUpdateAllowStatus:
        instance = cls()
        if not dict_:
            return instance
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if (
            "nextAvailableEditTime" in dict_
            and dict_["nextAvailableEditTime"] is not None
        ):
            instance.next_available_edit_time = int(dict_["nextAvailableEditTime"])
        elif include_empty:
            instance.next_available_edit_time = 0
        if (
            "remainingTimeInSeconds" in dict_
            and dict_["remainingTimeInSeconds"] is not None
        ):
            instance.remaining_time_in_seconds = int(dict_["remainingTimeInSeconds"])
        elif include_empty:
            instance.remaining_time_in_seconds = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelFieldUpdateAllowStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelFieldUpdateAllowStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelFieldUpdateAllowStatus,
        List[ModelFieldUpdateAllowStatus],
        Dict[Any, ModelFieldUpdateAllowStatus],
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
            "field": "field",
            "type": "type_",
            "nextAvailableEditTime": "next_available_edit_time",
            "remainingTimeInSeconds": "remaining_time_in_seconds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "field": True,
            "type": True,
            "nextAvailableEditTime": False,
            "remainingTimeInSeconds": False,
        }

    # endregion static methods
