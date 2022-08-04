# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class ModelsCountActiveSessionResponse(Model):
    """Models count active session response (models.CountActiveSessionResponse)

    Properties:
        custom_game: (custom_game) REQUIRED int

        matchmaking_game: (matchmaking_game) REQUIRED int

        total: (total) REQUIRED int
    """

    # region fields

    custom_game: int  # REQUIRED
    matchmaking_game: int  # REQUIRED
    total: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_custom_game(self, value: int) -> ModelsCountActiveSessionResponse:
        self.custom_game = value
        return self

    def with_matchmaking_game(self, value: int) -> ModelsCountActiveSessionResponse:
        self.matchmaking_game = value
        return self

    def with_total(self, value: int) -> ModelsCountActiveSessionResponse:
        self.total = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_game"):
            result["custom_game"] = int(self.custom_game)
        elif include_empty:
            result["custom_game"] = 0
        if hasattr(self, "matchmaking_game"):
            result["matchmaking_game"] = int(self.matchmaking_game)
        elif include_empty:
            result["matchmaking_game"] = 0
        if hasattr(self, "total"):
            result["total"] = int(self.total)
        elif include_empty:
            result["total"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_game: int,
        matchmaking_game: int,
        total: int,
    ) -> ModelsCountActiveSessionResponse:
        instance = cls()
        instance.custom_game = custom_game
        instance.matchmaking_game = matchmaking_game
        instance.total = total
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCountActiveSessionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "custom_game" in dict_ and dict_["custom_game"] is not None:
            instance.custom_game = int(dict_["custom_game"])
        elif include_empty:
            instance.custom_game = 0
        if "matchmaking_game" in dict_ and dict_["matchmaking_game"] is not None:
            instance.matchmaking_game = int(dict_["matchmaking_game"])
        elif include_empty:
            instance.matchmaking_game = 0
        if "total" in dict_ and dict_["total"] is not None:
            instance.total = int(dict_["total"])
        elif include_empty:
            instance.total = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCountActiveSessionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCountActiveSessionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCountActiveSessionResponse,
        List[ModelsCountActiveSessionResponse],
        Dict[Any, ModelsCountActiveSessionResponse],
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
            "custom_game": "custom_game",
            "matchmaking_game": "matchmaking_game",
            "total": "total",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "custom_game": True,
            "matchmaking_game": True,
            "total": True,
        }

    # endregion static methods
