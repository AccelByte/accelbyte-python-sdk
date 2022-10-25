# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.17.2)

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


class ModelsAllianceRuleV1(Model):
    """Models alliance rule V1 (models.AllianceRuleV1)

    Properties:
        combination: (combination) REQUIRED ModelsCombination

        max_number: (maxNumber) REQUIRED int

        min_number: (minNumber) REQUIRED int

        player_max_number: (playerMaxNumber) REQUIRED int

        player_min_number: (playerMinNumber) REQUIRED int
    """

    # region fields

    combination: ModelsCombination  # REQUIRED
    max_number: int  # REQUIRED
    min_number: int  # REQUIRED
    player_max_number: int  # REQUIRED
    player_min_number: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_combination(self, value: ModelsCombination) -> ModelsAllianceRuleV1:
        self.combination = value
        return self

    def with_max_number(self, value: int) -> ModelsAllianceRuleV1:
        self.max_number = value
        return self

    def with_min_number(self, value: int) -> ModelsAllianceRuleV1:
        self.min_number = value
        return self

    def with_player_max_number(self, value: int) -> ModelsAllianceRuleV1:
        self.player_max_number = value
        return self

    def with_player_min_number(self, value: int) -> ModelsAllianceRuleV1:
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
            result["maxNumber"] = int(self.max_number)
        elif include_empty:
            result["maxNumber"] = 0
        if hasattr(self, "min_number"):
            result["minNumber"] = int(self.min_number)
        elif include_empty:
            result["minNumber"] = 0
        if hasattr(self, "player_max_number"):
            result["playerMaxNumber"] = int(self.player_max_number)
        elif include_empty:
            result["playerMaxNumber"] = 0
        if hasattr(self, "player_min_number"):
            result["playerMinNumber"] = int(self.player_min_number)
        elif include_empty:
            result["playerMinNumber"] = 0
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
    ) -> ModelsAllianceRuleV1:
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
    ) -> ModelsAllianceRuleV1:
        instance = cls()
        if not dict_:
            return instance
        if "combination" in dict_ and dict_["combination"] is not None:
            instance.combination = ModelsCombination.create_from_dict(
                dict_["combination"], include_empty=include_empty
            )
        elif include_empty:
            instance.combination = ModelsCombination()
        if "maxNumber" in dict_ and dict_["maxNumber"] is not None:
            instance.max_number = int(dict_["maxNumber"])
        elif include_empty:
            instance.max_number = 0
        if "minNumber" in dict_ and dict_["minNumber"] is not None:
            instance.min_number = int(dict_["minNumber"])
        elif include_empty:
            instance.min_number = 0
        if "playerMaxNumber" in dict_ and dict_["playerMaxNumber"] is not None:
            instance.player_max_number = int(dict_["playerMaxNumber"])
        elif include_empty:
            instance.player_max_number = 0
        if "playerMinNumber" in dict_ and dict_["playerMinNumber"] is not None:
            instance.player_min_number = int(dict_["playerMinNumber"])
        elif include_empty:
            instance.player_min_number = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAllianceRuleV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAllianceRuleV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAllianceRuleV1,
        List[ModelsAllianceRuleV1],
        Dict[Any, ModelsAllianceRuleV1],
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
            "maxNumber": "max_number",
            "minNumber": "min_number",
            "playerMaxNumber": "player_max_number",
            "playerMinNumber": "player_min_number",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "combination": True,
            "maxNumber": True,
            "minNumber": True,
            "playerMaxNumber": True,
            "playerMinNumber": True,
        }

    # endregion static methods
