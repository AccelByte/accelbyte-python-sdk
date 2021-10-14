# Auto-generated at 2021-10-14T22:17:08.973751+08:00
# from: Justice DsmController Service (2.4.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsPodCountConfig(Model):
    """Models pod count config (models.PodCountConfig)

    Properties:
        buffer_count: (buffer_count) REQUIRED int

        max_count: (max_count) REQUIRED int

        min_count: (min_count) REQUIRED int
    """

    # region fields

    buffer_count: int                                                                              # REQUIRED
    max_count: int                                                                                 # REQUIRED
    min_count: int                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_buffer_count(self, value: int) -> ModelsPodCountConfig:
        self.buffer_count = value
        return self

    def with_max_count(self, value: int) -> ModelsPodCountConfig:
        self.max_count = value
        return self

    def with_min_count(self, value: int) -> ModelsPodCountConfig:
        self.min_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "buffer_count") and self.buffer_count:
            result["buffer_count"] = int(self.buffer_count)
        elif include_empty:
            result["buffer_count"] = int()
        if hasattr(self, "max_count") and self.max_count:
            result["max_count"] = int(self.max_count)
        elif include_empty:
            result["max_count"] = int()
        if hasattr(self, "min_count") and self.min_count:
            result["min_count"] = int(self.min_count)
        elif include_empty:
            result["min_count"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        buffer_count: int,
        max_count: int,
        min_count: int,
    ) -> ModelsPodCountConfig:
        instance = cls()
        instance.buffer_count = buffer_count
        instance.max_count = max_count
        instance.min_count = min_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPodCountConfig:
        instance = cls()
        if not dict_:
            return instance
        if "buffer_count" in dict_ and dict_["buffer_count"] is not None:
            instance.buffer_count = int(dict_["buffer_count"])
        elif include_empty:
            instance.buffer_count = int()
        if "max_count" in dict_ and dict_["max_count"] is not None:
            instance.max_count = int(dict_["max_count"])
        elif include_empty:
            instance.max_count = int()
        if "min_count" in dict_ and dict_["min_count"] is not None:
            instance.min_count = int(dict_["min_count"])
        elif include_empty:
            instance.min_count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "buffer_count": "buffer_count",
            "max_count": "max_count",
            "min_count": "min_count",
        }

    # endregion static methods
