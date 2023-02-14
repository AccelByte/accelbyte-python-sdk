# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Achievement Service (2.14.0)

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


class ModelsGlobalAchievementResponse(Model):
    """Models global achievement response (models.GlobalAchievementResponse)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        latest_value: (latestValue) REQUIRED float

        name: (name) REQUIRED Dict[str, str]

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED int

        achieved_at: (achievedAt) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    achievement_code: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    latest_value: float  # REQUIRED
    name: Dict[str, str]  # REQUIRED
    namespace: str  # REQUIRED
    status: int  # REQUIRED
    achieved_at: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsGlobalAchievementResponse:
        self.achievement_code = value
        return self

    def with_created_at(self, value: str) -> ModelsGlobalAchievementResponse:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ModelsGlobalAchievementResponse:
        self.id_ = value
        return self

    def with_latest_value(self, value: float) -> ModelsGlobalAchievementResponse:
        self.latest_value = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsGlobalAchievementResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsGlobalAchievementResponse:
        self.namespace = value
        return self

    def with_status(self, value: int) -> ModelsGlobalAchievementResponse:
        self.status = value
        return self

    def with_achieved_at(self, value: str) -> ModelsGlobalAchievementResponse:
        self.achieved_at = value
        return self

    def with_updated_at(self, value: str) -> ModelsGlobalAchievementResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = int(self.status)
        elif include_empty:
            result["status"] = 0
        if hasattr(self, "achieved_at"):
            result["achievedAt"] = str(self.achieved_at)
        elif include_empty:
            result["achievedAt"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        created_at: str,
        id_: str,
        latest_value: float,
        name: Dict[str, str],
        namespace: str,
        status: int,
        achieved_at: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> ModelsGlobalAchievementResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.created_at = created_at
        instance.id_ = id_
        instance.latest_value = latest_value
        instance.name = name
        instance.namespace = namespace
        instance.status = status
        if achieved_at is not None:
            instance.achieved_at = achieved_at
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGlobalAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = int(dict_["status"])
        elif include_empty:
            instance.status = 0
        if "achievedAt" in dict_ and dict_["achievedAt"] is not None:
            instance.achieved_at = str(dict_["achievedAt"])
        elif include_empty:
            instance.achieved_at = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGlobalAchievementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGlobalAchievementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGlobalAchievementResponse,
        List[ModelsGlobalAchievementResponse],
        Dict[Any, ModelsGlobalAchievementResponse],
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
            "createdAt": "created_at",
            "id": "id_",
            "latestValue": "latest_value",
            "name": "name",
            "namespace": "namespace",
            "status": "status",
            "achievedAt": "achieved_at",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "createdAt": True,
            "id": True,
            "latestValue": True,
            "name": True,
            "namespace": True,
            "status": True,
            "achievedAt": False,
            "updatedAt": False,
        }

    # endregion static methods
