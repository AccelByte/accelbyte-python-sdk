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


class ApiRegionConfig(Model):
    """Api region config (api.RegionConfig)

    Properties:
        buffer_size: (bufferSize) REQUIRED int

        dynamic_buffer: (dynamicBuffer) REQUIRED bool

        max_server_count: (maxServerCount) REQUIRED int

        min_server_count: (minServerCount) REQUIRED int

        region: (region) REQUIRED str
    """

    # region fields

    buffer_size: int  # REQUIRED
    dynamic_buffer: bool  # REQUIRED
    max_server_count: int  # REQUIRED
    min_server_count: int  # REQUIRED
    region: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_buffer_size(self, value: int) -> ApiRegionConfig:
        self.buffer_size = value
        return self

    def with_dynamic_buffer(self, value: bool) -> ApiRegionConfig:
        self.dynamic_buffer = value
        return self

    def with_max_server_count(self, value: int) -> ApiRegionConfig:
        self.max_server_count = value
        return self

    def with_min_server_count(self, value: int) -> ApiRegionConfig:
        self.min_server_count = value
        return self

    def with_region(self, value: str) -> ApiRegionConfig:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "buffer_size"):
            result["bufferSize"] = int(self.buffer_size)
        elif include_empty:
            result["bufferSize"] = 0
        if hasattr(self, "dynamic_buffer"):
            result["dynamicBuffer"] = bool(self.dynamic_buffer)
        elif include_empty:
            result["dynamicBuffer"] = False
        if hasattr(self, "max_server_count"):
            result["maxServerCount"] = int(self.max_server_count)
        elif include_empty:
            result["maxServerCount"] = 0
        if hasattr(self, "min_server_count"):
            result["minServerCount"] = int(self.min_server_count)
        elif include_empty:
            result["minServerCount"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        buffer_size: int,
        dynamic_buffer: bool,
        max_server_count: int,
        min_server_count: int,
        region: str,
        **kwargs,
    ) -> ApiRegionConfig:
        instance = cls()
        instance.buffer_size = buffer_size
        instance.dynamic_buffer = dynamic_buffer
        instance.max_server_count = max_server_count
        instance.min_server_count = min_server_count
        instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiRegionConfig:
        instance = cls()
        if not dict_:
            return instance
        if "bufferSize" in dict_ and dict_["bufferSize"] is not None:
            instance.buffer_size = int(dict_["bufferSize"])
        elif include_empty:
            instance.buffer_size = 0
        if "dynamicBuffer" in dict_ and dict_["dynamicBuffer"] is not None:
            instance.dynamic_buffer = bool(dict_["dynamicBuffer"])
        elif include_empty:
            instance.dynamic_buffer = False
        if "maxServerCount" in dict_ and dict_["maxServerCount"] is not None:
            instance.max_server_count = int(dict_["maxServerCount"])
        elif include_empty:
            instance.max_server_count = 0
        if "minServerCount" in dict_ and dict_["minServerCount"] is not None:
            instance.min_server_count = int(dict_["minServerCount"])
        elif include_empty:
            instance.min_server_count = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiRegionConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiRegionConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiRegionConfig, List[ApiRegionConfig], Dict[Any, ApiRegionConfig]]:
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
            "bufferSize": "buffer_size",
            "dynamicBuffer": "dynamic_buffer",
            "maxServerCount": "max_server_count",
            "minServerCount": "min_server_count",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bufferSize": True,
            "dynamicBuffer": True,
            "maxServerCount": True,
            "minServerCount": True,
            "region": True,
        }

    # endregion static methods
