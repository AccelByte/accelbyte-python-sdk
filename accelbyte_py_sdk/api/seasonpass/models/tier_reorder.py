# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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


class TierReorder(Model):
    """Tier reorder (TierReorder)

    Properties:
        new_index: (newIndex) OPTIONAL int
    """

    # region fields

    new_index: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_new_index(self, value: int) -> TierReorder:
        self.new_index = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "new_index"):
            result["newIndex"] = int(self.new_index)
        elif include_empty:
            result["newIndex"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        new_index: Optional[int] = None,
    ) -> TierReorder:
        instance = cls()
        if new_index is not None:
            instance.new_index = new_index
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TierReorder:
        instance = cls()
        if not dict_:
            return instance
        if "newIndex" in dict_ and dict_["newIndex"] is not None:
            instance.new_index = int(dict_["newIndex"])
        elif include_empty:
            instance.new_index = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TierReorder]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TierReorder]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TierReorder, List[TierReorder], Dict[Any, TierReorder]]:
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
            "newIndex": "new_index",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "newIndex": False,
        }

    # endregion static methods
