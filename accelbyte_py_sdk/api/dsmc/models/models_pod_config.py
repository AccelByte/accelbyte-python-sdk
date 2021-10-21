# justice-dsm-controller-service (2.6.0)

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


class ModelsPodConfig(Model):
    """Models pod config (models.PodConfig)

    Properties:
        cpu_limit: (cpu_limit) REQUIRED int

        mem_limit: (mem_limit) REQUIRED int

        params: (params) REQUIRED str
    """

    # region fields

    cpu_limit: int                                                                                 # REQUIRED
    mem_limit: int                                                                                 # REQUIRED
    params: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cpu_limit(self, value: int) -> ModelsPodConfig:
        self.cpu_limit = value
        return self

    def with_mem_limit(self, value: int) -> ModelsPodConfig:
        self.mem_limit = value
        return self

    def with_params(self, value: str) -> ModelsPodConfig:
        self.params = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cpu_limit") and self.cpu_limit:
            result["cpu_limit"] = int(self.cpu_limit)
        elif include_empty:
            result["cpu_limit"] = int()
        if hasattr(self, "mem_limit") and self.mem_limit:
            result["mem_limit"] = int(self.mem_limit)
        elif include_empty:
            result["mem_limit"] = int()
        if hasattr(self, "params") and self.params:
            result["params"] = str(self.params)
        elif include_empty:
            result["params"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cpu_limit: int,
        mem_limit: int,
        params: str,
    ) -> ModelsPodConfig:
        instance = cls()
        instance.cpu_limit = cpu_limit
        instance.mem_limit = mem_limit
        instance.params = params
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPodConfig:
        instance = cls()
        if not dict_:
            return instance
        if "cpu_limit" in dict_ and dict_["cpu_limit"] is not None:
            instance.cpu_limit = int(dict_["cpu_limit"])
        elif include_empty:
            instance.cpu_limit = int()
        if "mem_limit" in dict_ and dict_["mem_limit"] is not None:
            instance.mem_limit = int(dict_["mem_limit"])
        elif include_empty:
            instance.mem_limit = int()
        if "params" in dict_ and dict_["params"] is not None:
            instance.params = str(dict_["params"])
        elif include_empty:
            instance.params = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "cpu_limit": "cpu_limit",
            "mem_limit": "mem_limit",
            "params": "params",
        }

    # endregion static methods