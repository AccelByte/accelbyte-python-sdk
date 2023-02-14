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


class AppLocalization(Model):
    """App localization (AppLocalization)

    Properties:
        announcement: (announcement) OPTIONAL str

        slogan: (slogan) OPTIONAL str
    """

    # region fields

    announcement: str  # OPTIONAL
    slogan: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_announcement(self, value: str) -> AppLocalization:
        self.announcement = value
        return self

    def with_slogan(self, value: str) -> AppLocalization:
        self.slogan = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "announcement"):
            result["announcement"] = str(self.announcement)
        elif include_empty:
            result["announcement"] = ""
        if hasattr(self, "slogan"):
            result["slogan"] = str(self.slogan)
        elif include_empty:
            result["slogan"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        announcement: Optional[str] = None,
        slogan: Optional[str] = None,
    ) -> AppLocalization:
        instance = cls()
        if announcement is not None:
            instance.announcement = announcement
        if slogan is not None:
            instance.slogan = slogan
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AppLocalization:
        instance = cls()
        if not dict_:
            return instance
        if "announcement" in dict_ and dict_["announcement"] is not None:
            instance.announcement = str(dict_["announcement"])
        elif include_empty:
            instance.announcement = ""
        if "slogan" in dict_ and dict_["slogan"] is not None:
            instance.slogan = str(dict_["slogan"])
        elif include_empty:
            instance.slogan = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AppLocalization]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AppLocalization]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AppLocalization, List[AppLocalization], Dict[Any, AppLocalization]]:
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
            "announcement": "announcement",
            "slogan": "slogan",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "announcement": False,
            "slogan": False,
        }

    # endregion static methods
