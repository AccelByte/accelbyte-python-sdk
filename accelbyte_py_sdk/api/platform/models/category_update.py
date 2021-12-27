# justice-platform-service (3.39.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class CategoryUpdate(Model):
    """A DTO object for updating category API call. (CategoryUpdate)

    Properties:
        localization_display_names: (localizationDisplayNames) REQUIRED Dict[str, str]
    """

    # region fields

    localization_display_names: Dict[str, str]                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_localization_display_names(self, value: Dict[str, str]) -> CategoryUpdate:
        self.localization_display_names = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localization_display_names"):
            result["localizationDisplayNames"] = {str(k0): str(v0) for k0, v0 in self.localization_display_names.items()}
        elif include_empty:
            result["localizationDisplayNames"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localization_display_names: Dict[str, str],
    ) -> CategoryUpdate:
        instance = cls()
        instance.localization_display_names = localization_display_names
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CategoryUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "localizationDisplayNames" in dict_ and dict_["localizationDisplayNames"] is not None:
            instance.localization_display_names = {str(k0): str(v0) for k0, v0 in dict_["localizationDisplayNames"].items()}
        elif include_empty:
            instance.localization_display_names = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizationDisplayNames": "localization_display_names",
        }

    # endregion static methods
