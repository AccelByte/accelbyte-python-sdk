# justice-ugc-service (1.12.0)

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

from ..models.models_create_screenshot_request_item import ModelsCreateScreenshotRequestItem


class ModelsCreateScreenshotRequest(Model):
    """Models create screenshot request (models.CreateScreenshotRequest)

    Properties:
        screenshots: (screenshots) REQUIRED List[ModelsCreateScreenshotRequestItem]
    """

    # region fields

    screenshots: List[ModelsCreateScreenshotRequestItem]                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_screenshots(self, value: List[ModelsCreateScreenshotRequestItem]) -> ModelsCreateScreenshotRequest:
        self.screenshots = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "screenshots"):
            result["screenshots"] = [i0.to_dict(include_empty=include_empty) for i0 in self.screenshots]
        elif include_empty:
            result["screenshots"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        screenshots: List[ModelsCreateScreenshotRequestItem],
    ) -> ModelsCreateScreenshotRequest:
        instance = cls()
        instance.screenshots = screenshots
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateScreenshotRequest:
        instance = cls()
        if not dict_:
            return instance
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [ModelsCreateScreenshotRequestItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["screenshots"]]
        elif include_empty:
            instance.screenshots = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "screenshots": "screenshots",
        }

    # endregion static methods
