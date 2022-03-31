# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-seasonpass-service (1.11.1)

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
import re
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

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, SeasonCloneRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[SeasonCloneRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[SeasonCloneRequest, List[SeasonCloneRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "end": "end",
            "name": "name",
            "start": "start",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "end": True,
            "name": True,
            "start": True,
        }

    # endregion static methods
