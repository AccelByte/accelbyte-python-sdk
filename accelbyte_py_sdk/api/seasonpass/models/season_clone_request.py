# justice-seasonpass-service (1.5.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class SeasonCloneRequest(Model):
    """A DTO object for clone season API call. (SeasonCloneRequest)

    Properties:
        end: (end) REQUIRED str

        name: (name) REQUIRED str

        start: (start) REQUIRED str
    """

    # region fields

    end: str                                                                                       # REQUIRED
    name: str                                                                                      # REQUIRED
    start: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_end(self, value: str) -> SeasonCloneRequest:
        self.end = value
        return self

    def with_name(self, value: str) -> SeasonCloneRequest:
        self.name = value
        return self

    def with_start(self, value: str) -> SeasonCloneRequest:
        self.start = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        end: str,
        name: str,
        start: str,
    ) -> SeasonCloneRequest:
        instance = cls()
        instance.end = end
        instance.name = name
        instance.start = start
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SeasonCloneRequest:
        instance = cls()
        if not dict_:
            return instance
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "end": "end",
            "name": "name",
            "start": "start",
        }

    # endregion static methods
