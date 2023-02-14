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


class ModelsPreviewMetadata(Model):
    """Models preview metadata (models.previewMetadata)

    Properties:
        preview_content_type: (previewContentType) REQUIRED str

        preview_file_extension: (previewFileExtension) REQUIRED str
    """

    # region fields

    preview_content_type: str  # REQUIRED
    preview_file_extension: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_preview_content_type(self, value: str) -> ModelsPreviewMetadata:
        self.preview_content_type = value
        return self

    def with_preview_file_extension(self, value: str) -> ModelsPreviewMetadata:
        self.preview_file_extension = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "preview_content_type"):
            result["previewContentType"] = str(self.preview_content_type)
        elif include_empty:
            result["previewContentType"] = ""
        if hasattr(self, "preview_file_extension"):
            result["previewFileExtension"] = str(self.preview_file_extension)
        elif include_empty:
            result["previewFileExtension"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        preview_content_type: str,
        preview_file_extension: str,
    ) -> ModelsPreviewMetadata:
        instance = cls()
        instance.preview_content_type = preview_content_type
        instance.preview_file_extension = preview_file_extension
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPreviewMetadata:
        instance = cls()
        if not dict_:
            return instance
        if "previewContentType" in dict_ and dict_["previewContentType"] is not None:
            instance.preview_content_type = str(dict_["previewContentType"])
        elif include_empty:
            instance.preview_content_type = ""
        if (
            "previewFileExtension" in dict_
            and dict_["previewFileExtension"] is not None
        ):
            instance.preview_file_extension = str(dict_["previewFileExtension"])
        elif include_empty:
            instance.preview_file_extension = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPreviewMetadata]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPreviewMetadata]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPreviewMetadata,
        List[ModelsPreviewMetadata],
        Dict[Any, ModelsPreviewMetadata],
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
            "previewContentType": "preview_content_type",
            "previewFileExtension": "preview_file_extension",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "previewContentType": True,
            "previewFileExtension": True,
        }

    # endregion static methods
