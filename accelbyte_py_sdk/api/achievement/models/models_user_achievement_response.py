# justice-achievement-service ()

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsUserAchievementResponse(Model):
    """Models user achievement response (models.UserAchievementResponse)

    Properties:
        achieved_at: (achievedAt) REQUIRED str

        achievement_code: (achievementCode) REQUIRED str

        id_: (id) REQUIRED str

        latest_value: (latestValue) REQUIRED float

        name: (name) REQUIRED Dict[str, str]

        status: (status) REQUIRED int
    """

    # region fields

    achieved_at: str                                                                               # REQUIRED
    achievement_code: str                                                                          # REQUIRED
    id_: str                                                                                       # REQUIRED
    latest_value: float                                                                            # REQUIRED
    name: Dict[str, str]                                                                           # REQUIRED
    status: int                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_achieved_at(self, value: str) -> ModelsUserAchievementResponse:
        self.achieved_at = value
        return self

    def with_achievement_code(self, value: str) -> ModelsUserAchievementResponse:
        self.achievement_code = value
        return self

    def with_id(self, value: str) -> ModelsUserAchievementResponse:
        self.id_ = value
        return self

    def with_latest_value(self, value: float) -> ModelsUserAchievementResponse:
        self.latest_value = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsUserAchievementResponse:
        self.name = value
        return self

    def with_status(self, value: int) -> ModelsUserAchievementResponse:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achieved_at"):
            result["achievedAt"] = str(self.achieved_at)
        elif include_empty:
            result["achievedAt"] = str()
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "latest_value"):
            result["latestValue"] = float(self.latest_value)
        elif include_empty:
            result["latestValue"] = float()
        if hasattr(self, "name"):
            result["name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["name"] = {}
        if hasattr(self, "status"):
            result["status"] = int(self.status)
        elif include_empty:
            result["status"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achieved_at: str,
        achievement_code: str,
        id_: str,
        latest_value: float,
        name: Dict[str, str],
        status: int,
    ) -> ModelsUserAchievementResponse:
        instance = cls()
        instance.achieved_at = achieved_at
        instance.achievement_code = achievement_code
        instance.id_ = id_
        instance.latest_value = latest_value
        instance.name = name
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUserAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievedAt" in dict_ and dict_["achievedAt"] is not None:
            instance.achieved_at = str(dict_["achievedAt"])
        elif include_empty:
            instance.achieved_at = str()
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "latestValue" in dict_ and dict_["latestValue"] is not None:
            instance.latest_value = float(dict_["latestValue"])
        elif include_empty:
            instance.latest_value = float()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["name"].items()}
        elif include_empty:
            instance.name = {}
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = int(dict_["status"])
        elif include_empty:
            instance.status = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "achievedAt": "achieved_at",
            "achievementCode": "achievement_code",
            "id": "id_",
            "latestValue": "latest_value",
            "name": "name",
            "status": "status",
        }

    # endregion static methods
