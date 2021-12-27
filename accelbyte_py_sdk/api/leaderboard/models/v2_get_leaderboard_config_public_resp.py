# justice-leaderboard-service (2.11.0)

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


class V2GetLeaderboardConfigPublicResp(Model):
    """V2 get leaderboard config public resp (v2.GetLeaderboardConfigPublicResp)

    Properties:
        icon_url: (iconURL) REQUIRED str

        leaderboard_code: (leaderboardCode) REQUIRED str

        name: (name) REQUIRED str

        stat_code: (statCode) REQUIRED str
    """

    # region fields

    icon_url: str                                                                                  # REQUIRED
    leaderboard_code: str                                                                          # REQUIRED
    name: str                                                                                      # REQUIRED
    stat_code: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_icon_url(self, value: str) -> V2GetLeaderboardConfigPublicResp:
        self.icon_url = value
        return self

    def with_leaderboard_code(self, value: str) -> V2GetLeaderboardConfigPublicResp:
        self.leaderboard_code = value
        return self

    def with_name(self, value: str) -> V2GetLeaderboardConfigPublicResp:
        self.name = value
        return self

    def with_stat_code(self, value: str) -> V2GetLeaderboardConfigPublicResp:
        self.stat_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "icon_url"):
            result["iconURL"] = str(self.icon_url)
        elif include_empty:
            result["iconURL"] = str()
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        icon_url: str,
        leaderboard_code: str,
        name: str,
        stat_code: str,
    ) -> V2GetLeaderboardConfigPublicResp:
        instance = cls()
        instance.icon_url = icon_url
        instance.leaderboard_code = leaderboard_code
        instance.name = name
        instance.stat_code = stat_code
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> V2GetLeaderboardConfigPublicResp:
        instance = cls()
        if not dict_:
            return instance
        if "iconURL" in dict_ and dict_["iconURL"] is not None:
            instance.icon_url = str(dict_["iconURL"])
        elif include_empty:
            instance.icon_url = str()
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "iconURL": "icon_url",
            "leaderboardCode": "leaderboard_code",
            "name": "name",
            "statCode": "stat_code",
        }

    # endregion static methods
