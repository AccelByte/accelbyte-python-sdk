# justice-ugc-service (1.10.0)

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


class ModelsUpdateScreenshot(Model):
    """Models update screenshot (models.updateScreenshot)

    Properties:
        description: (description) REQUIRED str

        screenshot_id: (screenshotId) REQUIRED str
    """

    # region fields

    description: str                                                                               # REQUIRED
    screenshot_id: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelsUpdateScreenshot:
        self.description = value
        return self

    def with_screenshot_id(self, value: str) -> ModelsUpdateScreenshot:
        self.screenshot_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "screenshot_id"):
            result["screenshotId"] = str(self.screenshot_id)
        elif include_empty:
            result["screenshotId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        screenshot_id: str,
    ) -> ModelsUpdateScreenshot:
        instance = cls()
        instance.description = description
        instance.screenshot_id = screenshot_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateScreenshot:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "screenshotId" in dict_ and dict_["screenshotId"] is not None:
            instance.screenshot_id = str(dict_["screenshotId"])
        elif include_empty:
            instance.screenshot_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "screenshotId": "screenshot_id",
        }

    # endregion static methods
