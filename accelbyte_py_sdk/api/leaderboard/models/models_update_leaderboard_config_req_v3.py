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


class ModelsUpdateLeaderboardConfigReqV3(Model):
    """Models update leaderboard config req V3 (models.UpdateLeaderboardConfigReqV3)

    Properties:
        all_time: (allTime) REQUIRED bool

        descending: (descending) REQUIRED bool

        name: (name) REQUIRED str

        cycle_ids: (cycleIds) OPTIONAL List[str]

        description: (description) OPTIONAL str

        icon_url: (iconURL) OPTIONAL str
    """

    # region fields

    all_time: bool  # REQUIRED
    descending: bool  # REQUIRED
    name: str  # REQUIRED
    cycle_ids: List[str]  # OPTIONAL
    description: str  # OPTIONAL
    icon_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_all_time(self, value: bool) -> ModelsUpdateLeaderboardConfigReqV3:
        self.all_time = value
        return self

    def with_descending(self, value: bool) -> ModelsUpdateLeaderboardConfigReqV3:
        self.descending = value
        return self

    def with_name(self, value: str) -> ModelsUpdateLeaderboardConfigReqV3:
        self.name = value
        return self

    def with_cycle_ids(self, value: List[str]) -> ModelsUpdateLeaderboardConfigReqV3:
        self.cycle_ids = value
        return self

    def with_description(self, value: str) -> ModelsUpdateLeaderboardConfigReqV3:
        self.description = value
        return self

    def with_icon_url(self, value: str) -> ModelsUpdateLeaderboardConfigReqV3:
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
        if hasattr(self, "descending"):
            result["descending"] = bool(self.descending)
        elif include_empty:
            result["descending"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
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
        descending: bool,
        name: str,
        cycle_ids: Optional[List[str]] = None,
        description: Optional[str] = None,
        icon_url: Optional[str] = None,
        **kwargs,
    ) -> ModelsUpdateLeaderboardConfigReqV3:
        instance = cls()
        instance.all_time = all_time
        instance.descending = descending
        instance.name = name
        if cycle_ids is not None:
            instance.cycle_ids = cycle_ids
        if description is not None:
            instance.description = description
        if icon_url is not None:
            instance.icon_url = icon_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateLeaderboardConfigReqV3:
        instance = cls()
        if not dict_:
            return instance
        if "allTime" in dict_ and dict_["allTime"] is not None:
            instance.all_time = bool(dict_["allTime"])
        elif include_empty:
            instance.all_time = False
        if "descending" in dict_ and dict_["descending"] is not None:
            instance.descending = bool(dict_["descending"])
        elif include_empty:
            instance.descending = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
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
    ) -> Dict[str, ModelsUpdateLeaderboardConfigReqV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateLeaderboardConfigReqV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateLeaderboardConfigReqV3,
        List[ModelsUpdateLeaderboardConfigReqV3],
        Dict[Any, ModelsUpdateLeaderboardConfigReqV3],
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
            "descending": "descending",
            "name": "name",
            "cycleIds": "cycle_ids",
            "description": "description",
            "iconURL": "icon_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allTime": True,
            "descending": True,
            "name": True,
            "cycleIds": False,
            "description": False,
            "iconURL": False,
        }

    # endregion static methods
