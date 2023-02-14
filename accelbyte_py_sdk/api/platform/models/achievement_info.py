# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class AchievementInfo(Model):
    """Achievement info (AchievementInfo)

    Properties:
        id_: (id) OPTIONAL str

        name: (name) OPTIONAL str

        progress_state: (progressState) OPTIONAL str

        progression: (progression) OPTIONAL Dict[str, Any]

        service_config_id: (serviceConfigId) OPTIONAL str
    """

    # region fields

    id_: str  # OPTIONAL
    name: str  # OPTIONAL
    progress_state: str  # OPTIONAL
    progression: Dict[str, Any]  # OPTIONAL
    service_config_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> AchievementInfo:
        self.id_ = value
        return self

    def with_name(self, value: str) -> AchievementInfo:
        self.name = value
        return self

    def with_progress_state(self, value: str) -> AchievementInfo:
        self.progress_state = value
        return self

    def with_progression(self, value: Dict[str, Any]) -> AchievementInfo:
        self.progression = value
        return self

    def with_service_config_id(self, value: str) -> AchievementInfo:
        self.service_config_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "progress_state"):
            result["progressState"] = str(self.progress_state)
        elif include_empty:
            result["progressState"] = ""
        if hasattr(self, "progression"):
            result["progression"] = {str(k0): v0 for k0, v0 in self.progression.items()}
        elif include_empty:
            result["progression"] = {}
        if hasattr(self, "service_config_id"):
            result["serviceConfigId"] = str(self.service_config_id)
        elif include_empty:
            result["serviceConfigId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: Optional[str] = None,
        name: Optional[str] = None,
        progress_state: Optional[str] = None,
        progression: Optional[Dict[str, Any]] = None,
        service_config_id: Optional[str] = None,
    ) -> AchievementInfo:
        instance = cls()
        if id_ is not None:
            instance.id_ = id_
        if name is not None:
            instance.name = name
        if progress_state is not None:
            instance.progress_state = progress_state
        if progression is not None:
            instance.progression = progression
        if service_config_id is not None:
            instance.service_config_id = service_config_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AchievementInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "progressState" in dict_ and dict_["progressState"] is not None:
            instance.progress_state = str(dict_["progressState"])
        elif include_empty:
            instance.progress_state = ""
        if "progression" in dict_ and dict_["progression"] is not None:
            instance.progression = {
                str(k0): v0 for k0, v0 in dict_["progression"].items()
            }
        elif include_empty:
            instance.progression = {}
        if "serviceConfigId" in dict_ and dict_["serviceConfigId"] is not None:
            instance.service_config_id = str(dict_["serviceConfigId"])
        elif include_empty:
            instance.service_config_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AchievementInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AchievementInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AchievementInfo, List[AchievementInfo], Dict[Any, AchievementInfo]]:
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
            "id": "id_",
            "name": "name",
            "progressState": "progress_state",
            "progression": "progression",
            "serviceConfigId": "service_config_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": False,
            "name": False,
            "progressState": False,
            "progression": False,
            "serviceConfigId": False,
        }

    # endregion static methods
