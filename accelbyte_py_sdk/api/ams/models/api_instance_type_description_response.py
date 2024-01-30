# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiInstanceTypeDescriptionResponse(Model):
    """Api instance type description response (api.InstanceTypeDescriptionResponse)

    Properties:
        description: (description) REQUIRED str

        id_: (id) REQUIRED str

        memory_gi_b: (memoryGiB) REQUIRED float

        min_speed: (minSpeed) REQUIRED str

        name: (name) REQUIRED str

        virtual_cpu: (virtualCpu) REQUIRED int
    """

    # region fields

    description: str  # REQUIRED
    id_: str  # REQUIRED
    memory_gi_b: float  # REQUIRED
    min_speed: str  # REQUIRED
    name: str  # REQUIRED
    virtual_cpu: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ApiInstanceTypeDescriptionResponse:
        self.description = value
        return self

    def with_id(self, value: str) -> ApiInstanceTypeDescriptionResponse:
        self.id_ = value
        return self

    def with_memory_gi_b(self, value: float) -> ApiInstanceTypeDescriptionResponse:
        self.memory_gi_b = value
        return self

    def with_min_speed(self, value: str) -> ApiInstanceTypeDescriptionResponse:
        self.min_speed = value
        return self

    def with_name(self, value: str) -> ApiInstanceTypeDescriptionResponse:
        self.name = value
        return self

    def with_virtual_cpu(self, value: int) -> ApiInstanceTypeDescriptionResponse:
        self.virtual_cpu = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "memory_gi_b"):
            result["memoryGiB"] = float(self.memory_gi_b)
        elif include_empty:
            result["memoryGiB"] = 0.0
        if hasattr(self, "min_speed"):
            result["minSpeed"] = str(self.min_speed)
        elif include_empty:
            result["minSpeed"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "virtual_cpu"):
            result["virtualCpu"] = int(self.virtual_cpu)
        elif include_empty:
            result["virtualCpu"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        id_: str,
        memory_gi_b: float,
        min_speed: str,
        name: str,
        virtual_cpu: int,
        **kwargs,
    ) -> ApiInstanceTypeDescriptionResponse:
        instance = cls()
        instance.description = description
        instance.id_ = id_
        instance.memory_gi_b = memory_gi_b
        instance.min_speed = min_speed
        instance.name = name
        instance.virtual_cpu = virtual_cpu
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiInstanceTypeDescriptionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "memoryGiB" in dict_ and dict_["memoryGiB"] is not None:
            instance.memory_gi_b = float(dict_["memoryGiB"])
        elif include_empty:
            instance.memory_gi_b = 0.0
        if "minSpeed" in dict_ and dict_["minSpeed"] is not None:
            instance.min_speed = str(dict_["minSpeed"])
        elif include_empty:
            instance.min_speed = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "virtualCpu" in dict_ and dict_["virtualCpu"] is not None:
            instance.virtual_cpu = int(dict_["virtualCpu"])
        elif include_empty:
            instance.virtual_cpu = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiInstanceTypeDescriptionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiInstanceTypeDescriptionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiInstanceTypeDescriptionResponse,
        List[ApiInstanceTypeDescriptionResponse],
        Dict[Any, ApiInstanceTypeDescriptionResponse],
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
            "id": "id_",
            "memoryGiB": "memory_gi_b",
            "minSpeed": "min_speed",
            "name": "name",
            "virtualCpu": "virtual_cpu",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "id": True,
            "memoryGiB": True,
            "minSpeed": True,
            "name": True,
            "virtualCpu": True,
        }

    # endregion static methods
