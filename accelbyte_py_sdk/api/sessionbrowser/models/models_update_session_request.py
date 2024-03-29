# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Browser Service

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


class ModelsUpdateSessionRequest(Model):
    """Models update session request (models.UpdateSessionRequest)

    Properties:
        game_max_player: (game_max_player) REQUIRED int
    """

    # region fields

    game_max_player: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_game_max_player(self, value: int) -> ModelsUpdateSessionRequest:
        self.game_max_player = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "game_max_player"):
            result["game_max_player"] = int(self.game_max_player)
        elif include_empty:
            result["game_max_player"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, game_max_player: int, **kwargs) -> ModelsUpdateSessionRequest:
        instance = cls()
        instance.game_max_player = game_max_player
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "game_max_player" in dict_ and dict_["game_max_player"] is not None:
            instance.game_max_player = int(dict_["game_max_player"])
        elif include_empty:
            instance.game_max_player = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateSessionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateSessionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateSessionRequest,
        List[ModelsUpdateSessionRequest],
        Dict[Any, ModelsUpdateSessionRequest],
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
            "game_max_player": "game_max_player",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "game_max_player": True,
        }

    # endregion static methods
