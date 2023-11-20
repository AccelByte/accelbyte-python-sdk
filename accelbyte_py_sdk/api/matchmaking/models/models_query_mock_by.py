# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service (2.26.2)

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


class ModelsQueryMockBy(Model):
    """Models query mock by (models.QueryMockBy)

    Properties:
        timestamp_after: (timestamp_after) REQUIRED int
    """

    # region fields

    timestamp_after: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_timestamp_after(self, value: int) -> ModelsQueryMockBy:
        self.timestamp_after = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "timestamp_after"):
            result["timestamp_after"] = int(self.timestamp_after)
        elif include_empty:
            result["timestamp_after"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, timestamp_after: int, **kwargs) -> ModelsQueryMockBy:
        instance = cls()
        instance.timestamp_after = timestamp_after
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsQueryMockBy:
        instance = cls()
        if not dict_:
            return instance
        if "timestamp_after" in dict_ and dict_["timestamp_after"] is not None:
            instance.timestamp_after = int(dict_["timestamp_after"])
        elif include_empty:
            instance.timestamp_after = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsQueryMockBy]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsQueryMockBy]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsQueryMockBy, List[ModelsQueryMockBy], Dict[Any, ModelsQueryMockBy]
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
            "timestamp_after": "timestamp_after",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "timestamp_after": True,
        }

    # endregion static methods
