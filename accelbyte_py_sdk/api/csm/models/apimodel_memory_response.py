# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelMemoryResponse(Model):
    """Apimodel memory response (apimodel.MemoryResponse)

    Properties:
        memory_limit: (memoryLimit) OPTIONAL int

        request_memory: (requestMemory) OPTIONAL int
    """

    # region fields

    memory_limit: int  # OPTIONAL
    request_memory: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_memory_limit(self, value: int) -> ApimodelMemoryResponse:
        self.memory_limit = value
        return self

    def with_request_memory(self, value: int) -> ApimodelMemoryResponse:
        self.request_memory = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "memory_limit"):
            result["memoryLimit"] = int(self.memory_limit)
        elif include_empty:
            result["memoryLimit"] = 0
        if hasattr(self, "request_memory"):
            result["requestMemory"] = int(self.request_memory)
        elif include_empty:
            result["requestMemory"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        memory_limit: Optional[int] = None,
        request_memory: Optional[int] = None,
        **kwargs,
    ) -> ApimodelMemoryResponse:
        instance = cls()
        if memory_limit is not None:
            instance.memory_limit = memory_limit
        if request_memory is not None:
            instance.request_memory = request_memory
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelMemoryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "memoryLimit" in dict_ and dict_["memoryLimit"] is not None:
            instance.memory_limit = int(dict_["memoryLimit"])
        elif include_empty:
            instance.memory_limit = 0
        if "requestMemory" in dict_ and dict_["requestMemory"] is not None:
            instance.request_memory = int(dict_["requestMemory"])
        elif include_empty:
            instance.request_memory = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelMemoryResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelMemoryResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelMemoryResponse,
        List[ApimodelMemoryResponse],
        Dict[Any, ApimodelMemoryResponse],
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
            "memoryLimit": "memory_limit",
            "requestMemory": "request_memory",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "memoryLimit": False,
            "requestMemory": False,
        }

    # endregion static methods
