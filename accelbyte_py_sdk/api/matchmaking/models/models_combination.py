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

from ..models.models_combination_alliances import ModelsCombinationAlliances


class ModelsCombination(Model):
    """Models combination (models.Combination)

    Properties:
        alliances: (alliances) REQUIRED List[ModelsCombinationAlliances]

        has_combination: (has_combination) REQUIRED bool

        role_flexing_enable: (role_flexing_enable) REQUIRED bool

        role_flexing_player: (role_flexing_player) REQUIRED int

        role_flexing_second: (role_flexing_second) REQUIRED int
    """

    # region fields

    alliances: List[ModelsCombinationAlliances]  # REQUIRED
    has_combination: bool  # REQUIRED
    role_flexing_enable: bool  # REQUIRED
    role_flexing_player: int  # REQUIRED
    role_flexing_second: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alliances(
        self, value: List[ModelsCombinationAlliances]
    ) -> ModelsCombination:
        self.alliances = value
        return self

    def with_has_combination(self, value: bool) -> ModelsCombination:
        self.has_combination = value
        return self

    def with_role_flexing_enable(self, value: bool) -> ModelsCombination:
        self.role_flexing_enable = value
        return self

    def with_role_flexing_player(self, value: int) -> ModelsCombination:
        self.role_flexing_player = value
        return self

    def with_role_flexing_second(self, value: int) -> ModelsCombination:
        self.role_flexing_second = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliances"):
            result["alliances"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.alliances
            ]
        elif include_empty:
            result["alliances"] = []
        if hasattr(self, "has_combination"):
            result["has_combination"] = bool(self.has_combination)
        elif include_empty:
            result["has_combination"] = False
        if hasattr(self, "role_flexing_enable"):
            result["role_flexing_enable"] = bool(self.role_flexing_enable)
        elif include_empty:
            result["role_flexing_enable"] = False
        if hasattr(self, "role_flexing_player"):
            result["role_flexing_player"] = int(self.role_flexing_player)
        elif include_empty:
            result["role_flexing_player"] = 0
        if hasattr(self, "role_flexing_second"):
            result["role_flexing_second"] = int(self.role_flexing_second)
        elif include_empty:
            result["role_flexing_second"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alliances: List[ModelsCombinationAlliances],
        has_combination: bool,
        role_flexing_enable: bool,
        role_flexing_player: int,
        role_flexing_second: int,
    ) -> ModelsCombination:
        instance = cls()
        instance.alliances = alliances
        instance.has_combination = has_combination
        instance.role_flexing_enable = role_flexing_enable
        instance.role_flexing_player = role_flexing_player
        instance.role_flexing_second = role_flexing_second
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCombination:
        instance = cls()
        if not dict_:
            return instance
        if "alliances" in dict_ and dict_["alliances"] is not None:
            instance.alliances = [
                ModelsCombinationAlliances.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["alliances"]
            ]
        elif include_empty:
            instance.alliances = []
        if "has_combination" in dict_ and dict_["has_combination"] is not None:
            instance.has_combination = bool(dict_["has_combination"])
        elif include_empty:
            instance.has_combination = False
        if "role_flexing_enable" in dict_ and dict_["role_flexing_enable"] is not None:
            instance.role_flexing_enable = bool(dict_["role_flexing_enable"])
        elif include_empty:
            instance.role_flexing_enable = False
        if "role_flexing_player" in dict_ and dict_["role_flexing_player"] is not None:
            instance.role_flexing_player = int(dict_["role_flexing_player"])
        elif include_empty:
            instance.role_flexing_player = 0
        if "role_flexing_second" in dict_ and dict_["role_flexing_second"] is not None:
            instance.role_flexing_second = int(dict_["role_flexing_second"])
        elif include_empty:
            instance.role_flexing_second = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCombination]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCombination]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCombination, List[ModelsCombination], Dict[Any, ModelsCombination]
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
            "alliances": "alliances",
            "has_combination": "has_combination",
            "role_flexing_enable": "role_flexing_enable",
            "role_flexing_player": "role_flexing_player",
            "role_flexing_second": "role_flexing_second",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alliances": True,
            "has_combination": True,
            "role_flexing_enable": True,
            "role_flexing_player": True,
            "role_flexing_second": True,
        }

    # endregion static methods
