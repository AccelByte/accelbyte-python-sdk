# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ds Log Manager Service (3.2.0)

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


class ModelsAllocationEvent(Model):
    """Models allocation event (models.AllocationEvent)

    Properties:
        description: (description) REQUIRED str

        time_stamp: (time_stamp) REQUIRED str

        type_: (type) REQUIRED str
    """

    # region fields

    description: str  # REQUIRED
    time_stamp: str  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelsAllocationEvent:
        self.description = value
        return self

    def with_time_stamp(self, value: str) -> ModelsAllocationEvent:
        self.time_stamp = value
        return self

    def with_type(self, value: str) -> ModelsAllocationEvent:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "time_stamp"):
            result["time_stamp"] = str(self.time_stamp)
        elif include_empty:
            result["time_stamp"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        time_stamp: str,
        type_: str,
    ) -> ModelsAllocationEvent:
        instance = cls()
        instance.description = description
        instance.time_stamp = time_stamp
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAllocationEvent:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "time_stamp" in dict_ and dict_["time_stamp"] is not None:
            instance.time_stamp = str(dict_["time_stamp"])
        elif include_empty:
            instance.time_stamp = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAllocationEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAllocationEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAllocationEvent,
        List[ModelsAllocationEvent],
        Dict[Any, ModelsAllocationEvent],
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
            "description": "description",
            "time_stamp": "time_stamp",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "time_stamp": True,
            "type": True,
        }

    # endregion static methods
