# Justice Matchmaking Service (2.12.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class ModelsAllianceFlexingRule(Model):
    """Models alliance flexing rule (models.AllianceFlexingRule)

    Properties:
        duration: (duration) REQUIRED int

        max_number: (max_number) REQUIRED int

        min_number: (min_number) REQUIRED int

        player_max_number: (player_max_number) REQUIRED int

        player_min_number: (player_min_number) REQUIRED int
    """

    # region fields

    duration: int                                                                                  # REQUIRED
    max_number: int                                                                                # REQUIRED
    min_number: int                                                                                # REQUIRED
    player_max_number: int                                                                         # REQUIRED
    player_min_number: int                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_duration(self, value: int) -> ModelsAllianceFlexingRule:
        self.duration = value
        return self

    def with_max_number(self, value: int) -> ModelsAllianceFlexingRule:
        self.max_number = value
        return self

    def with_min_number(self, value: int) -> ModelsAllianceFlexingRule:
        self.min_number = value
        return self

    def with_player_max_number(self, value: int) -> ModelsAllianceFlexingRule:
        self.player_max_number = value
        return self

    def with_player_min_number(self, value: int) -> ModelsAllianceFlexingRule:
        self.player_min_number = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = int()
        if hasattr(self, "max_number"):
            result["max_number"] = int(self.max_number)
        elif include_empty:
            result["max_number"] = int()
        if hasattr(self, "min_number"):
            result["min_number"] = int(self.min_number)
        elif include_empty:
            result["min_number"] = int()
        if hasattr(self, "player_max_number"):
            result["player_max_number"] = int(self.player_max_number)
        elif include_empty:
            result["player_max_number"] = int()
        if hasattr(self, "player_min_number"):
            result["player_min_number"] = int(self.player_min_number)
        elif include_empty:
            result["player_min_number"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        duration: int,
        max_number: int,
        min_number: int,
        player_max_number: int,
        player_min_number: int,
    ) -> ModelsAllianceFlexingRule:
        instance = cls()
        instance.duration = duration
        instance.max_number = max_number
        instance.min_number = min_number
        instance.player_max_number = player_max_number
        instance.player_min_number = player_min_number
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAllianceFlexingRule:
        instance = cls()
        if not dict_:
            return instance
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = int()
        if "max_number" in dict_ and dict_["max_number"] is not None:
            instance.max_number = int(dict_["max_number"])
        elif include_empty:
            instance.max_number = int()
        if "min_number" in dict_ and dict_["min_number"] is not None:
            instance.min_number = int(dict_["min_number"])
        elif include_empty:
            instance.min_number = int()
        if "player_max_number" in dict_ and dict_["player_max_number"] is not None:
            instance.player_max_number = int(dict_["player_max_number"])
        elif include_empty:
            instance.player_max_number = int()
        if "player_min_number" in dict_ and dict_["player_min_number"] is not None:
            instance.player_min_number = int(dict_["player_min_number"])
        elif include_empty:
            instance.player_min_number = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "duration": "duration",
            "max_number": "max_number",
            "min_number": "min_number",
            "player_max_number": "player_max_number",
            "player_min_number": "player_min_number",
        }

    # endregion static methods
