# justice-ugc-service (1.13.0)

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

from ..models.models_screenshot_response import ModelsScreenshotResponse


class ModelsCreateScreenshotResponse(Model):
    """Models create screenshot response (models.CreateScreenshotResponse)

    Properties:
        screenshots: (screenshots) REQUIRED List[ModelsScreenshotResponse]
    """

    # region fields

    screenshots: List[ModelsScreenshotResponse]                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_screenshots(self, value: List[ModelsScreenshotResponse]) -> ModelsCreateScreenshotResponse:
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
        screenshots: List[ModelsScreenshotResponse],
    ) -> ModelsCreateScreenshotResponse:
        instance = cls()
        instance.screenshots = screenshots
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateScreenshotResponse:
        instance = cls()
        if not dict_:
            return instance
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [ModelsScreenshotResponse.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["screenshots"]]
        elif include_empty:
            instance.screenshots = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsCreateScreenshotResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsCreateScreenshotResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsCreateScreenshotResponse, List[ModelsCreateScreenshotResponse]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "screenshots": "screenshots",
        }

    # endregion static methods
