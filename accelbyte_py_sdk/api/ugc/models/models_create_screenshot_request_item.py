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
from ....core import StrEnum


class FileExtensionEnum(StrEnum):
    BMP = "bmp"
    JFIF = "jfif"
    JPEG = "jpeg"
    JPG = "jpg"
    PJP = "pjp"
    PNG = "png"


class ModelsCreateScreenshotRequestItem(Model):
    """Models create screenshot request item (models.createScreenshotRequestItem)

    Properties:
        content_type: (contentType) REQUIRED str

        description: (description) REQUIRED str

        file_extension: (fileExtension) REQUIRED Union[str, FileExtensionEnum]
    """

    # region fields

    content_type: str  # REQUIRED
    description: str  # REQUIRED
    file_extension: Union[str, FileExtensionEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> ModelsCreateScreenshotRequestItem:
        self.content_type = value
        return self

    def with_description(self, value: str) -> ModelsCreateScreenshotRequestItem:
        self.description = value
        return self

    def with_file_extension(
        self, value: Union[str, FileExtensionEnum]
    ) -> ModelsCreateScreenshotRequestItem:
        self.file_extension = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = Union[str, FileExtensionEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_type: str,
        description: str,
        file_extension: Union[str, FileExtensionEnum],
    ) -> ModelsCreateScreenshotRequestItem:
        instance = cls()
        instance.content_type = content_type
        instance.description = description
        instance.file_extension = file_extension
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateScreenshotRequestItem:
        instance = cls()
        if not dict_:
            return instance
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = Union[str, FileExtensionEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateScreenshotRequestItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateScreenshotRequestItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateScreenshotRequestItem,
        List[ModelsCreateScreenshotRequestItem],
        Dict[Any, ModelsCreateScreenshotRequestItem],
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
            "contentType": "content_type",
            "description": "description",
            "fileExtension": "file_extension",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentType": True,
            "description": True,
            "fileExtension": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "fileExtension": ["bmp", "jfif", "jpeg", "jpg", "pjp", "png"],
        }

    # endregion static methods
