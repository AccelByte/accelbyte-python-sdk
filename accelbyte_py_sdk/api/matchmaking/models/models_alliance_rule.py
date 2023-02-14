# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.20.2)

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

from ..models.models_combination import ModelsCombination


class ModelsAllianceRule(Model):
    """Models alliance rule (models.AllianceRule)

    Properties:
        combination: (combination) REQUIRED ModelsCombination

        max_number: (max_number) REQUIRED int

        min_number: (min_number) REQUIRED int

        player_max_number: (player_max_number) REQUIRED int

        player_min_number: (player_min_number) REQUIRED int
    """

    # region fields

    combination: ModelsCombination  # REQUIRED
    max_number: int  # REQUIRED
    min_number: int  # REQUIRED
    player_max_number: int  # REQUIRED
    player_min_number: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_combination(self, value: ModelsCombination) -> ModelsAllianceRule:
        self.combination = value
        return self

    def with_max_number(self, value: int) -> ModelsAllianceRule:
        self.max_number = value
        return self

    def with_min_number(self, value: int) -> ModelsAllianceRule:
        self.min_number = value
        return self

    def with_player_max_number(self, value: int) -> ModelsAllianceRule:
        self.player_max_number = value
        return self

    def with_player_min_number(self, value: int) -> ModelsAllianceRule:
        self.player_min_number = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "combination"):
            result["combination"] = self.combination.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["combination"] = ModelsCombination()
        if hasattr(self, "max_number"):
            result["max_number"] = int(self.max_number)
        elif include_empty:
            result["max_number"] = 0
        if hasattr(self, "min_number"):
            result["min_number"] = int(self.min_number)
        elif include_empty:
            result["min_number"] = 0
        if hasattr(self, "player_max_number"):
            result["player_max_number"] = int(self.player_max_number)
        elif include_empty:
            result["player_max_number"] = 0
        if hasattr(self, "player_min_number"):
            result["player_min_number"] = int(self.player_min_number)
        elif include_empty:
            result["player_min_number"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        combination: ModelsCombination,
        max_number: int,
        min_number: int,
        player_max_number: int,
        player_min_number: int,
    ) -> ModelsAllianceRule:
        instance = cls()
        instance.combination = combination
        instance.max_number = max_number
        instance.min_number = min_number
        instance.player_max_number = player_max_number
        instance.player_min_number = player_min_number
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAllianceRule:
        instance = cls()
        if not dict_:
            return instance
        if "combination" in dict_ and dict_["combination"] is not None:
            instance.combination = ModelsCombination.create_from_dict(
                dict_["combination"], include_empty=include_empty
            )
        elif include_empty:
            instance.combination = ModelsCombination()
        if "max_number" in dict_ and dict_["max_number"] is not None:
            instance.max_number = int(dict_["max_number"])
        elif include_empty:
            instance.max_number = 0
        if "min_number" in dict_ and dict_["min_number"] is not None:
            instance.min_number = int(dict_["min_number"])
        elif include_empty:
            instance.min_number = 0
        if "player_max_number" in dict_ and dict_["player_max_number"] is not None:
            instance.player_max_number = int(dict_["player_max_number"])
        elif include_empty:
            instance.player_max_number = 0
        if "player_min_number" in dict_ and dict_["player_min_number"] is not None:
            instance.player_min_number = int(dict_["player_min_number"])
        elif include_empty:
            instance.player_min_number = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAllianceRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAllianceRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAllianceRule, List[ModelsAllianceRule], Dict[Any, ModelsAllianceRule]
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
            "combination": "combination",
            "max_number": "max_number",
            "min_number": "min_number",
            "player_max_number": "player_max_number",
            "player_min_number": "player_min_number",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "combination": True,
            "max_number": True,
            "min_number": True,
            "player_max_number": True,
            "player_min_number": True,
        }

    # endregion static methods
