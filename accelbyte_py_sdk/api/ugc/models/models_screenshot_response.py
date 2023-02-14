# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.9.0)

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


class ModelsScreenshotResponse(Model):
    """Models screenshot response (models.ScreenshotResponse)

    Properties:
        description: (description) REQUIRED str

        file_extension: (fileExtension) REQUIRED str

        screenshot_id: (screenshotId) REQUIRED str

        source: (source) REQUIRED str

        url: (url) REQUIRED str

        content_type: (contentType) OPTIONAL str
    """

    # region fields

    description: str  # REQUIRED
    file_extension: str  # REQUIRED
    screenshot_id: str  # REQUIRED
    source: str  # REQUIRED
    url: str  # REQUIRED
    content_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelsScreenshotResponse:
        self.description = value
        return self

    def with_file_extension(self, value: str) -> ModelsScreenshotResponse:
        self.file_extension = value
        return self

    def with_screenshot_id(self, value: str) -> ModelsScreenshotResponse:
        self.screenshot_id = value
        return self

    def with_source(self, value: str) -> ModelsScreenshotResponse:
        self.source = value
        return self

    def with_url(self, value: str) -> ModelsScreenshotResponse:
        self.url = value
        return self

    def with_content_type(self, value: str) -> ModelsScreenshotResponse:
        self.content_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "screenshot_id"):
            result["screenshotId"] = str(self.screenshot_id)
        elif include_empty:
            result["screenshotId"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        file_extension: str,
        screenshot_id: str,
        source: str,
        url: str,
        content_type: Optional[str] = None,
    ) -> ModelsScreenshotResponse:
        instance = cls()
        instance.description = description
        instance.file_extension = file_extension
        instance.screenshot_id = screenshot_id
        instance.source = source
        instance.url = url
        if content_type is not None:
            instance.content_type = content_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsScreenshotResponse:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "screenshotId" in dict_ and dict_["screenshotId"] is not None:
            instance.screenshot_id = str(dict_["screenshotId"])
        elif include_empty:
            instance.screenshot_id = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsScreenshotResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsScreenshotResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsScreenshotResponse,
        List[ModelsScreenshotResponse],
        Dict[Any, ModelsScreenshotResponse],
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
            "description": "description",
            "fileExtension": "file_extension",
            "screenshotId": "screenshot_id",
            "source": "source",
            "url": "url",
            "contentType": "content_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "fileExtension": True,
            "screenshotId": True,
            "source": True,
            "url": True,
            "contentType": False,
        }

    # endregion static methods
