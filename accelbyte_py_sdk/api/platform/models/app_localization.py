# justice-platform-service (3.40.0)

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


class AppLocalization(Model):
    """App localization (AppLocalization)

    Properties:
        announcement: (announcement) OPTIONAL str

        slogan: (slogan) OPTIONAL str
    """

    # region fields

    announcement: str                                                                              # OPTIONAL
    slogan: str                                                                                    # OPTIONAL

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
            result["announcement"] = str()
        if hasattr(self, "slogan"):
            result["slogan"] = str(self.slogan)
        elif include_empty:
            result["slogan"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppLocalization:
        instance = cls()
        if not dict_:
            return instance
        if "announcement" in dict_ and dict_["announcement"] is not None:
            instance.announcement = str(dict_["announcement"])
        elif include_empty:
            instance.announcement = str()
        if "slogan" in dict_ and dict_["slogan"] is not None:
            instance.slogan = str(dict_["slogan"])
        elif include_empty:
            instance.slogan = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "announcement": "announcement",
            "slogan": "slogan",
        }

    # endregion static methods
