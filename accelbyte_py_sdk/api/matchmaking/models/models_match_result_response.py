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

from ..models.models_player_result_response import ModelsPlayerResultResponse


class ModelsMatchResultResponse(Model):
    """Models match result response (models.MatchResultResponse)

    Properties:
        match_id: (match_id) REQUIRED str

        players: (players) REQUIRED List[ModelsPlayerResultResponse]
    """

    # region fields

    match_id: str  # REQUIRED
    players: List[ModelsPlayerResultResponse]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_id(self, value: str) -> ModelsMatchResultResponse:
        self.match_id = value
        return self

    def with_players(
        self, value: List[ModelsPlayerResultResponse]
    ) -> ModelsMatchResultResponse:
        self.players = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_id"):
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "players"):
            result["players"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.players
            ]
        elif include_empty:
            result["players"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_id: str,
        players: List[ModelsPlayerResultResponse],
    ) -> ModelsMatchResultResponse:
        instance = cls()
        instance.match_id = match_id
        instance.players = players
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMatchResultResponse:
        instance = cls()
        if not dict_:
            return instance
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "players" in dict_ and dict_["players"] is not None:
            instance.players = [
                ModelsPlayerResultResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["players"]
            ]
        elif include_empty:
            instance.players = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMatchResultResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMatchResultResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMatchResultResponse,
        List[ModelsMatchResultResponse],
        Dict[Any, ModelsMatchResultResponse],
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
            "match_id": "match_id",
            "players": "players",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "match_id": True,
            "players": True,
        }

    # endregion static methods
