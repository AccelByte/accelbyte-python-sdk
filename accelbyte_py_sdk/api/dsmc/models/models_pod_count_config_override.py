# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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


class ModelsPodCountConfigOverride(Model):
    """Models pod count config override (models.PodCountConfigOverride)

    Properties:
        buffer_count: (buffer_count) REQUIRED int

        buffer_percent: (buffer_percent) REQUIRED int

        max_count: (max_count) REQUIRED int

        min_count: (min_count) REQUIRED int

        name: (name) REQUIRED str

        unlimited: (unlimited) REQUIRED bool

        use_buffer_percent: (use_buffer_percent) REQUIRED bool
    """

    # region fields

    buffer_count: int  # REQUIRED
    buffer_percent: int  # REQUIRED
    max_count: int  # REQUIRED
    min_count: int  # REQUIRED
    name: str  # REQUIRED
    unlimited: bool  # REQUIRED
    use_buffer_percent: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_buffer_count(self, value: int) -> ModelsPodCountConfigOverride:
        self.buffer_count = value
        return self

    def with_buffer_percent(self, value: int) -> ModelsPodCountConfigOverride:
        self.buffer_percent = value
        return self

    def with_max_count(self, value: int) -> ModelsPodCountConfigOverride:
        self.max_count = value
        return self

    def with_min_count(self, value: int) -> ModelsPodCountConfigOverride:
        self.min_count = value
        return self

    def with_name(self, value: str) -> ModelsPodCountConfigOverride:
        self.name = value
        return self

    def with_unlimited(self, value: bool) -> ModelsPodCountConfigOverride:
        self.unlimited = value
        return self

    def with_use_buffer_percent(self, value: bool) -> ModelsPodCountConfigOverride:
        self.use_buffer_percent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "buffer_count"):
            result["buffer_count"] = int(self.buffer_count)
        elif include_empty:
            result["buffer_count"] = 0
        if hasattr(self, "buffer_percent"):
            result["buffer_percent"] = int(self.buffer_percent)
        elif include_empty:
            result["buffer_percent"] = 0
        if hasattr(self, "max_count"):
            result["max_count"] = int(self.max_count)
        elif include_empty:
            result["max_count"] = 0
        if hasattr(self, "min_count"):
            result["min_count"] = int(self.min_count)
        elif include_empty:
            result["min_count"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "unlimited"):
            result["unlimited"] = bool(self.unlimited)
        elif include_empty:
            result["unlimited"] = False
        if hasattr(self, "use_buffer_percent"):
            result["use_buffer_percent"] = bool(self.use_buffer_percent)
        elif include_empty:
            result["use_buffer_percent"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        buffer_count: int,
        buffer_percent: int,
        max_count: int,
        min_count: int,
        name: str,
        unlimited: bool,
        use_buffer_percent: bool,
    ) -> ModelsPodCountConfigOverride:
        instance = cls()
        instance.buffer_count = buffer_count
        instance.buffer_percent = buffer_percent
        instance.max_count = max_count
        instance.min_count = min_count
        instance.name = name
        instance.unlimited = unlimited
        instance.use_buffer_percent = use_buffer_percent
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPodCountConfigOverride:
        instance = cls()
        if not dict_:
            return instance
        if "buffer_count" in dict_ and dict_["buffer_count"] is not None:
            instance.buffer_count = int(dict_["buffer_count"])
        elif include_empty:
            instance.buffer_count = 0
        if "buffer_percent" in dict_ and dict_["buffer_percent"] is not None:
            instance.buffer_percent = int(dict_["buffer_percent"])
        elif include_empty:
            instance.buffer_percent = 0
        if "max_count" in dict_ and dict_["max_count"] is not None:
            instance.max_count = int(dict_["max_count"])
        elif include_empty:
            instance.max_count = 0
        if "min_count" in dict_ and dict_["min_count"] is not None:
            instance.min_count = int(dict_["min_count"])
        elif include_empty:
            instance.min_count = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "unlimited" in dict_ and dict_["unlimited"] is not None:
            instance.unlimited = bool(dict_["unlimited"])
        elif include_empty:
            instance.unlimited = False
        if "use_buffer_percent" in dict_ and dict_["use_buffer_percent"] is not None:
            instance.use_buffer_percent = bool(dict_["use_buffer_percent"])
        elif include_empty:
            instance.use_buffer_percent = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPodCountConfigOverride]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPodCountConfigOverride]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPodCountConfigOverride,
        List[ModelsPodCountConfigOverride],
        Dict[Any, ModelsPodCountConfigOverride],
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
            "buffer_count": "buffer_count",
            "buffer_percent": "buffer_percent",
            "max_count": "max_count",
            "min_count": "min_count",
            "name": "name",
            "unlimited": "unlimited",
            "use_buffer_percent": "use_buffer_percent",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "buffer_count": True,
            "buffer_percent": True,
            "max_count": True,
            "min_count": True,
            "name": True,
            "unlimited": True,
            "use_buffer_percent": True,
        }

    # endregion static methods
