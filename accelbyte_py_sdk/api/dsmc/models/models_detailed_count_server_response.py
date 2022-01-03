# justice-dsm-controller-service (2.11.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsDetailedCountServerResponse(Model):
    """Models detailed count server response (models.DetailedCountServerResponse)

    Properties:
        busy_count: (busy_count) REQUIRED int

        creating_count: (creating_count) REQUIRED int

        ready_count: (ready_count) REQUIRED int

        unreachable_count: (unreachable_count) REQUIRED int
    """

    # region fields

    busy_count: int                                                                                # REQUIRED
    creating_count: int                                                                            # REQUIRED
    ready_count: int                                                                               # REQUIRED
    unreachable_count: int                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_busy_count(self, value: int) -> ModelsDetailedCountServerResponse:
        self.busy_count = value
        return self

    def with_creating_count(self, value: int) -> ModelsDetailedCountServerResponse:
        self.creating_count = value
        return self

    def with_ready_count(self, value: int) -> ModelsDetailedCountServerResponse:
        self.ready_count = value
        return self

    def with_unreachable_count(self, value: int) -> ModelsDetailedCountServerResponse:
        self.unreachable_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "busy_count"):
            result["busy_count"] = int(self.busy_count)
        elif include_empty:
            result["busy_count"] = int()
        if hasattr(self, "creating_count"):
            result["creating_count"] = int(self.creating_count)
        elif include_empty:
            result["creating_count"] = int()
        if hasattr(self, "ready_count"):
            result["ready_count"] = int(self.ready_count)
        elif include_empty:
            result["ready_count"] = int()
        if hasattr(self, "unreachable_count"):
            result["unreachable_count"] = int(self.unreachable_count)
        elif include_empty:
            result["unreachable_count"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        busy_count: int,
        creating_count: int,
        ready_count: int,
        unreachable_count: int,
    ) -> ModelsDetailedCountServerResponse:
        instance = cls()
        instance.busy_count = busy_count
        instance.creating_count = creating_count
        instance.ready_count = ready_count
        instance.unreachable_count = unreachable_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDetailedCountServerResponse:
        instance = cls()
        if not dict_:
            return instance
        if "busy_count" in dict_ and dict_["busy_count"] is not None:
            instance.busy_count = int(dict_["busy_count"])
        elif include_empty:
            instance.busy_count = int()
        if "creating_count" in dict_ and dict_["creating_count"] is not None:
            instance.creating_count = int(dict_["creating_count"])
        elif include_empty:
            instance.creating_count = int()
        if "ready_count" in dict_ and dict_["ready_count"] is not None:
            instance.ready_count = int(dict_["ready_count"])
        elif include_empty:
            instance.ready_count = int()
        if "unreachable_count" in dict_ and dict_["unreachable_count"] is not None:
            instance.unreachable_count = int(dict_["unreachable_count"])
        elif include_empty:
            instance.unreachable_count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "busy_count": "busy_count",
            "creating_count": "creating_count",
            "ready_count": "ready_count",
            "unreachable_count": "unreachable_count",
        }

    # endregion static methods
