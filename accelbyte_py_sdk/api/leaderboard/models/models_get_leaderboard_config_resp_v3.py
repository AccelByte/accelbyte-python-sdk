# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Leaderboard Service

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


class ModelsGetLeaderboardConfigRespV3(Model):
    """Models get leaderboard config resp V3 (models.GetLeaderboardConfigRespV3)

    Properties:
        all_time: (allTime) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        cycle_ids: (cycleIds) REQUIRED List[str]

        descending: (descending) REQUIRED bool

        is_deleted: (isDeleted) REQUIRED bool

        leaderboard_code: (leaderboardCode) REQUIRED str

        name: (name) REQUIRED str

        stat_code: (statCode) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        deleted_at: (deletedAt) OPTIONAL str

        description: (description) OPTIONAL str

        icon_url: (iconURL) OPTIONAL str
    """

    # region fields

    all_time: bool  # REQUIRED
    created_at: str  # REQUIRED
    cycle_ids: List[str]  # REQUIRED
    descending: bool  # REQUIRED
    is_deleted: bool  # REQUIRED
    leaderboard_code: str  # REQUIRED
    name: str  # REQUIRED
    stat_code: str  # REQUIRED
    updated_at: str  # REQUIRED
    deleted_at: str  # OPTIONAL
    description: str  # OPTIONAL
    icon_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_all_time(self, value: bool) -> ModelsGetLeaderboardConfigRespV3:
        self.all_time = value
        return self

    def with_created_at(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.created_at = value
        return self

    def with_cycle_ids(self, value: List[str]) -> ModelsGetLeaderboardConfigRespV3:
        self.cycle_ids = value
        return self

    def with_descending(self, value: bool) -> ModelsGetLeaderboardConfigRespV3:
        self.descending = value
        return self

    def with_is_deleted(self, value: bool) -> ModelsGetLeaderboardConfigRespV3:
        self.is_deleted = value
        return self

    def with_leaderboard_code(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.leaderboard_code = value
        return self

    def with_name(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.name = value
        return self

    def with_stat_code(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.stat_code = value
        return self

    def with_updated_at(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.updated_at = value
        return self

    def with_deleted_at(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.deleted_at = value
        return self

    def with_description(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.description = value
        return self

    def with_icon_url(self, value: str) -> ModelsGetLeaderboardConfigRespV3:
        self.icon_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "all_time"):
            result["allTime"] = bool(self.all_time)
        elif include_empty:
            result["allTime"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
        if hasattr(self, "descending"):
            result["descending"] = bool(self.descending)
        elif include_empty:
            result["descending"] = False
        if hasattr(self, "is_deleted"):
            result["isDeleted"] = bool(self.is_deleted)
        elif include_empty:
            result["isDeleted"] = False
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "icon_url"):
            result["iconURL"] = str(self.icon_url)
        elif include_empty:
            result["iconURL"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        all_time: bool,
        created_at: str,
        cycle_ids: List[str],
        descending: bool,
        is_deleted: bool,
        leaderboard_code: str,
        name: str,
        stat_code: str,
        updated_at: str,
        deleted_at: Optional[str] = None,
        description: Optional[str] = None,
        icon_url: Optional[str] = None,
        **kwargs,
    ) -> ModelsGetLeaderboardConfigRespV3:
        instance = cls()
        instance.all_time = all_time
        instance.created_at = created_at
        instance.cycle_ids = cycle_ids
        instance.descending = descending
        instance.is_deleted = is_deleted
        instance.leaderboard_code = leaderboard_code
        instance.name = name
        instance.stat_code = stat_code
        instance.updated_at = updated_at
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if description is not None:
            instance.description = description
        if icon_url is not None:
            instance.icon_url = icon_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetLeaderboardConfigRespV3:
        instance = cls()
        if not dict_:
            return instance
        if "allTime" in dict_ and dict_["allTime"] is not None:
            instance.all_time = bool(dict_["allTime"])
        elif include_empty:
            instance.all_time = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
        if "descending" in dict_ and dict_["descending"] is not None:
            instance.descending = bool(dict_["descending"])
        elif include_empty:
            instance.descending = False
        if "isDeleted" in dict_ and dict_["isDeleted"] is not None:
            instance.is_deleted = bool(dict_["isDeleted"])
        elif include_empty:
            instance.is_deleted = False
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = str(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "iconURL" in dict_ and dict_["iconURL"] is not None:
            instance.icon_url = str(dict_["iconURL"])
        elif include_empty:
            instance.icon_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetLeaderboardConfigRespV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetLeaderboardConfigRespV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetLeaderboardConfigRespV3,
        List[ModelsGetLeaderboardConfigRespV3],
        Dict[Any, ModelsGetLeaderboardConfigRespV3],
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
            "allTime": "all_time",
            "createdAt": "created_at",
            "cycleIds": "cycle_ids",
            "descending": "descending",
            "isDeleted": "is_deleted",
            "leaderboardCode": "leaderboard_code",
            "name": "name",
            "statCode": "stat_code",
            "updatedAt": "updated_at",
            "deletedAt": "deleted_at",
            "description": "description",
            "iconURL": "icon_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allTime": True,
            "createdAt": True,
            "cycleIds": True,
            "descending": True,
            "isDeleted": True,
            "leaderboardCode": True,
            "name": True,
            "statCode": True,
            "updatedAt": True,
            "deletedAt": False,
            "description": False,
            "iconURL": False,
        }

    # endregion static methods
