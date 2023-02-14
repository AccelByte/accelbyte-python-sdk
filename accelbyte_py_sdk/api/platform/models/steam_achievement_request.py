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


class SteamAchievementRequest(Model):
    """Steam achievement request (steam achievement request)

    Properties:
        id_: (id) OPTIONAL str

        value: (value) OPTIONAL int
    """

    # region fields

    id_: str  # OPTIONAL
    value: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SteamAchievementRequest:
        self.id_ = value
        return self

    def with_value(self, value: int) -> SteamAchievementRequest:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "value"):
            result["value"] = int(self.value)
        elif include_empty:
            result["value"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: Optional[str] = None,
        value: Optional[int] = None,
    ) -> SteamAchievementRequest:
        instance = cls()
        if id_ is not None:
            instance.id_ = id_
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SteamAchievementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = int(dict_["value"])
        elif include_empty:
            instance.value = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SteamAchievementRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SteamAchievementRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SteamAchievementRequest,
        List[SteamAchievementRequest],
        Dict[Any, SteamAchievementRequest],
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
            "id": "id_",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": False,
            "value": False,
        }

    # endregion static methods
