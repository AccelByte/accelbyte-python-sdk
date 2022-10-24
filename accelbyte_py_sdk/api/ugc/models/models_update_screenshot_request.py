# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.5.5)

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

from ..models.models_update_screenshot import ModelsUpdateScreenshot


class ModelsUpdateScreenshotRequest(Model):
    """Models update screenshot request (models.UpdateScreenshotRequest)

    Properties:
        screenshots: (screenshots) REQUIRED List[ModelsUpdateScreenshot]
    """

    # region fields

    screenshots: List[ModelsUpdateScreenshot]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_screenshots(
        self, value: List[ModelsUpdateScreenshot]
    ) -> ModelsUpdateScreenshotRequest:
        self.screenshots = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "screenshots"):
            result["screenshots"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.screenshots
            ]
        elif include_empty:
            result["screenshots"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        screenshots: List[ModelsUpdateScreenshot],
    ) -> ModelsUpdateScreenshotRequest:
        instance = cls()
        instance.screenshots = screenshots
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateScreenshotRequest:
        instance = cls()
        if not dict_:
            return instance
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [
                ModelsUpdateScreenshot.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["screenshots"]
            ]
        elif include_empty:
            instance.screenshots = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateScreenshotRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateScreenshotRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateScreenshotRequest,
        List[ModelsUpdateScreenshotRequest],
        Dict[Any, ModelsUpdateScreenshotRequest],
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
            "screenshots": "screenshots",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "screenshots": True,
        }

    # endregion static methods
