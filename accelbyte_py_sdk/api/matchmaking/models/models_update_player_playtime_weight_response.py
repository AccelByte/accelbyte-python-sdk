# Justice Matchmaking Service (2.10.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsUpdatePlayerPlaytimeWeightResponse(Model):
    """Models update player playtime weight response (models.UpdatePlayerPlaytimeWeightResponse)

    Properties:
        playtime: (playtime) REQUIRED str

        user_id: (userID) REQUIRED str

        weight: (weight) REQUIRED float
    """

    # region fields

    playtime: str                                                                                  # REQUIRED
    user_id: str                                                                                   # REQUIRED
    weight: float                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_playtime(self, value: str) -> ModelsUpdatePlayerPlaytimeWeightResponse:
        self.playtime = value
        return self

    def with_user_id(self, value: str) -> ModelsUpdatePlayerPlaytimeWeightResponse:
        self.user_id = value
        return self

    def with_weight(self, value: float) -> ModelsUpdatePlayerPlaytimeWeightResponse:
        self.weight = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "playtime"):
            result["playtime"] = str(self.playtime)
        elif include_empty:
            result["playtime"] = str()
        if hasattr(self, "user_id"):
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = str()
        if hasattr(self, "weight"):
            result["weight"] = float(self.weight)
        elif include_empty:
            result["weight"] = float()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        playtime: str,
        user_id: str,
        weight: float,
    ) -> ModelsUpdatePlayerPlaytimeWeightResponse:
        instance = cls()
        instance.playtime = playtime
        instance.user_id = user_id
        instance.weight = weight
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdatePlayerPlaytimeWeightResponse:
        instance = cls()
        if not dict_:
            return instance
        if "playtime" in dict_ and dict_["playtime"] is not None:
            instance.playtime = str(dict_["playtime"])
        elif include_empty:
            instance.playtime = str()
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = str()
        if "weight" in dict_ and dict_["weight"] is not None:
            instance.weight = float(dict_["weight"])
        elif include_empty:
            instance.weight = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "playtime": "playtime",
            "userID": "user_id",
            "weight": "weight",
        }

    # endregion static methods
