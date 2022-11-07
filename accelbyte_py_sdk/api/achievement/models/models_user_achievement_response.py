# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Achievement Service ()

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
        achievement_code: (achievementCode) REQUIRED str

        id_: (id) REQUIRED str

        latest_value: (latestValue) REQUIRED float

        name: (name) REQUIRED Dict[str, str]

        status: (status) REQUIRED int

        achieved_at: (achievedAt) OPTIONAL str
    """

    # region fields

    achievement_code: str  # REQUIRED
    id_: str  # REQUIRED
    latest_value: float  # REQUIRED
    name: Dict[str, str]  # REQUIRED
    status: int  # REQUIRED
    achieved_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

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

    def with_achieved_at(self, value: str) -> ModelsUserAchievementResponse:
        self.achieved_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "latest_value"):
            result["latestValue"] = float(self.latest_value)
        elif include_empty:
            result["latestValue"] = 0.0
        if hasattr(self, "name"):
            result["name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["name"] = {}
        if hasattr(self, "status"):
            result["status"] = int(self.status)
        elif include_empty:
            result["status"] = 0
        if hasattr(self, "achieved_at"):
            result["achievedAt"] = str(self.achieved_at)
        elif include_empty:
            result["achievedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        id_: str,
        latest_value: float,
        name: Dict[str, str],
        status: int,
        achieved_at: Optional[str] = None,
    ) -> ModelsUserAchievementResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.id_ = id_
        instance.latest_value = latest_value
        instance.name = name
        instance.status = status
        if achieved_at is not None:
            instance.achieved_at = achieved_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "latestValue" in dict_ and dict_["latestValue"] is not None:
            instance.latest_value = float(dict_["latestValue"])
        elif include_empty:
            instance.latest_value = 0.0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["name"].items()}
        elif include_empty:
            instance.name = {}
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = int(dict_["status"])
        elif include_empty:
            instance.status = 0
        if "achievedAt" in dict_ and dict_["achievedAt"] is not None:
            instance.achieved_at = str(dict_["achievedAt"])
        elif include_empty:
            instance.achieved_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserAchievementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserAchievementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserAchievementResponse,
        List[ModelsUserAchievementResponse],
        Dict[Any, ModelsUserAchievementResponse],
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
            "achievementCode": "achievement_code",
            "id": "id_",
            "latestValue": "latest_value",
            "name": "name",
            "status": "status",
            "achievedAt": "achieved_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "id": True,
            "latestValue": True,
            "name": True,
            "status": True,
            "achievedAt": False,
        }

    # endregion static methods
