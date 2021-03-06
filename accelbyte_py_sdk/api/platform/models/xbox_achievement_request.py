# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.12.0)

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


class XboxAchievementRequest(Model):
    """Xbox achievement request (xbox achievement request)

    Properties:
        id_: (id) OPTIONAL str

        percent_complete: (percentComplete) OPTIONAL int
    """

    # region fields

    id_: str  # OPTIONAL
    percent_complete: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> XboxAchievementRequest:
        self.id_ = value
        return self

    def with_percent_complete(self, value: int) -> XboxAchievementRequest:
        self.percent_complete = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "percent_complete"):
            result["percentComplete"] = int(self.percent_complete)
        elif include_empty:
            result["percentComplete"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: Optional[str] = None,
        percent_complete: Optional[int] = None,
    ) -> XboxAchievementRequest:
        instance = cls()
        if id_ is not None:
            instance.id_ = id_
        if percent_complete is not None:
            instance.percent_complete = percent_complete
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XboxAchievementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "percentComplete" in dict_ and dict_["percentComplete"] is not None:
            instance.percent_complete = int(dict_["percentComplete"])
        elif include_empty:
            instance.percent_complete = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XboxAchievementRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XboxAchievementRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XboxAchievementRequest,
        List[XboxAchievementRequest],
        Dict[Any, XboxAchievementRequest],
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
            "percentComplete": "percent_complete",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": False,
            "percentComplete": False,
        }

    # endregion static methods
