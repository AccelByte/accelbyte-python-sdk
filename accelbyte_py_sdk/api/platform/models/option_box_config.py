# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.option_box_item import OptionBoxItem


class OptionBoxConfig(Model):
    """Option box config. (OptionBoxConfig)

    Properties:
        box_items: (boxItems) OPTIONAL List[OptionBoxItem]
    """

    # region fields

    box_items: List[OptionBoxItem]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_box_items(self, value: List[OptionBoxItem]) -> OptionBoxConfig:
        self.box_items = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "box_items"):
            result["boxItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.box_items
            ]
        elif include_empty:
            result["boxItems"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        box_items: Optional[List[OptionBoxItem]] = None,
    ) -> OptionBoxConfig:
        instance = cls()
        if box_items is not None:
            instance.box_items = box_items
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OptionBoxConfig:
        instance = cls()
        if not dict_:
            return instance
        if "boxItems" in dict_ and dict_["boxItems"] is not None:
            instance.box_items = [
                OptionBoxItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["boxItems"]
            ]
        elif include_empty:
            instance.box_items = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OptionBoxConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OptionBoxConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OptionBoxConfig, List[OptionBoxConfig], Dict[Any, OptionBoxConfig]]:
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
            "boxItems": "box_items",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "boxItems": False,
        }

    # endregion static methods
