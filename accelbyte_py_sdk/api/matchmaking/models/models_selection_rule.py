# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service (2.27.2)

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
from ....core import StrEnum


class SelectionEnum(StrEnum):
    NEWEST = "newest"
    OLDEST = "oldest"
    PIVOT = "pivot"
    RANDOM = "random"


class ModelsSelectionRule(Model):
    """Models selection rule (models.SelectionRule)

    Properties:
        selection: (selection) REQUIRED Union[str, SelectionEnum]

        threshold: (threshold) REQUIRED int
    """

    # region fields

    selection: Union[str, SelectionEnum]  # REQUIRED
    threshold: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_selection(self, value: Union[str, SelectionEnum]) -> ModelsSelectionRule:
        self.selection = value
        return self

    def with_threshold(self, value: int) -> ModelsSelectionRule:
        self.threshold = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "selection"):
            result["selection"] = str(self.selection)
        elif include_empty:
            result["selection"] = Union[str, SelectionEnum]()
        if hasattr(self, "threshold"):
            result["threshold"] = int(self.threshold)
        elif include_empty:
            result["threshold"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, selection: Union[str, SelectionEnum], threshold: int, **kwargs
    ) -> ModelsSelectionRule:
        instance = cls()
        instance.selection = selection
        instance.threshold = threshold
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSelectionRule:
        instance = cls()
        if not dict_:
            return instance
        if "selection" in dict_ and dict_["selection"] is not None:
            instance.selection = str(dict_["selection"])
        elif include_empty:
            instance.selection = Union[str, SelectionEnum]()
        if "threshold" in dict_ and dict_["threshold"] is not None:
            instance.threshold = int(dict_["threshold"])
        elif include_empty:
            instance.threshold = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSelectionRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSelectionRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSelectionRule, List[ModelsSelectionRule], Dict[Any, ModelsSelectionRule]
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
            "selection": "selection",
            "threshold": "threshold",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "selection": True,
            "threshold": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "selection": ["newest", "oldest", "pivot", "random"],
        }

    # endregion static methods
