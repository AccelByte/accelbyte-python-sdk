# Auto-generated at 2021-09-27T17:12:37.355954+08:00
# from: Justice SessionBrowser Service ()

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


class ModelsGameSessionSetting(Model):
    """Models game session setting

    Properties:
        allow_join_in_progress: (allow_join_in_progress) REQUIRED bool

        current_player: (current_player) REQUIRED int

        map_name: (map_name) REQUIRED str

        max_player: (max_player) REQUIRED int

        mode: (mode) REQUIRED str

        num_bot: (num_bot) REQUIRED int

        settings: (settings) REQUIRED Dict[str, Any]
    """

    # region fields

    allow_join_in_progress: bool                                                                   # REQUIRED
    current_player: int                                                                            # REQUIRED
    map_name: str                                                                                  # REQUIRED
    max_player: int                                                                                # REQUIRED
    mode: str                                                                                      # REQUIRED
    num_bot: int                                                                                   # REQUIRED
    settings: Dict[str, Any]                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_join_in_progress(self, value: bool) -> ModelsGameSessionSetting:
        self.allow_join_in_progress = value
        return self

    def with_current_player(self, value: int) -> ModelsGameSessionSetting:
        self.current_player = value
        return self

    def with_map_name(self, value: str) -> ModelsGameSessionSetting:
        self.map_name = value
        return self

    def with_max_player(self, value: int) -> ModelsGameSessionSetting:
        self.max_player = value
        return self

    def with_mode(self, value: str) -> ModelsGameSessionSetting:
        self.mode = value
        return self

    def with_num_bot(self, value: int) -> ModelsGameSessionSetting:
        self.num_bot = value
        return self

    def with_settings(self, value: Dict[str, Any]) -> ModelsGameSessionSetting:
        self.settings = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "allow_join_in_progress") and self.allow_join_in_progress:
            result["allow_join_in_progress"] = bool(self.allow_join_in_progress)
        elif include_empty:
            result["allow_join_in_progress"] = bool()
        if hasattr(self, "current_player") and self.current_player:
            result["current_player"] = int(self.current_player)
        elif include_empty:
            result["current_player"] = int()
        if hasattr(self, "map_name") and self.map_name:
            result["map_name"] = str(self.map_name)
        elif include_empty:
            result["map_name"] = str()
        if hasattr(self, "max_player") and self.max_player:
            result["max_player"] = int(self.max_player)
        elif include_empty:
            result["max_player"] = int()
        if hasattr(self, "mode") and self.mode:
            result["mode"] = str(self.mode)
        elif include_empty:
            result["mode"] = str()
        if hasattr(self, "num_bot") and self.num_bot:
            result["num_bot"] = int(self.num_bot)
        elif include_empty:
            result["num_bot"] = int()
        if hasattr(self, "settings") and self.settings:
            result["settings"] = {str(k0): v0 for k0, v0 in self.settings.items()}
        elif include_empty:
            result["settings"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_join_in_progress: bool,
        current_player: int,
        map_name: str,
        max_player: int,
        mode: str,
        num_bot: int,
        settings: Dict[str, Any],
    ) -> ModelsGameSessionSetting:
        instance = cls()
        instance.allow_join_in_progress = allow_join_in_progress
        instance.current_player = current_player
        instance.map_name = map_name
        instance.max_player = max_player
        instance.mode = mode
        instance.num_bot = num_bot
        instance.settings = settings
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGameSessionSetting:
        instance = cls()
        if not dict_:
            return instance
        if "allow_join_in_progress" in dict_ and dict_["allow_join_in_progress"] is not None:
            instance.allow_join_in_progress = bool(dict_["allow_join_in_progress"])
        elif include_empty:
            instance.allow_join_in_progress = bool()
        if "current_player" in dict_ and dict_["current_player"] is not None:
            instance.current_player = int(dict_["current_player"])
        elif include_empty:
            instance.current_player = int()
        if "map_name" in dict_ and dict_["map_name"] is not None:
            instance.map_name = str(dict_["map_name"])
        elif include_empty:
            instance.map_name = str()
        if "max_player" in dict_ and dict_["max_player"] is not None:
            instance.max_player = int(dict_["max_player"])
        elif include_empty:
            instance.max_player = int()
        if "mode" in dict_ and dict_["mode"] is not None:
            instance.mode = str(dict_["mode"])
        elif include_empty:
            instance.mode = str()
        if "num_bot" in dict_ and dict_["num_bot"] is not None:
            instance.num_bot = int(dict_["num_bot"])
        elif include_empty:
            instance.num_bot = int()
        if "settings" in dict_ and dict_["settings"] is not None:
            instance.settings = {str(k0): v0 for k0, v0 in dict_["settings"].items()}
        elif include_empty:
            instance.settings = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allow_join_in_progress": "allow_join_in_progress",
            "current_player": "current_player",
            "map_name": "map_name",
            "max_player": "max_player",
            "mode": "mode",
            "num_bot": "num_bot",
            "settings": "settings",
        }

    # endregion static methods
