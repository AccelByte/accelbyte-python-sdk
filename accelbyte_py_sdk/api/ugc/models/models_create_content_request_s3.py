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

from ..models.models_preview_metadata import ModelsPreviewMetadata


class ModelsCreateContentRequestS3(Model):
    """Models create content request S3 (models.CreateContentRequestS3)

    Properties:
        content_type: (contentType) REQUIRED str

        custom_attributes: (customAttributes) REQUIRED Dict[str, Any]

        file_extension: (fileExtension) REQUIRED str

        name: (name) REQUIRED str

        preview: (preview) REQUIRED str

        preview_metadata: (previewMetadata) REQUIRED ModelsPreviewMetadata

        sub_type: (subType) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    content_type: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # REQUIRED
    file_extension: str  # REQUIRED
    name: str  # REQUIRED
    preview: str  # REQUIRED
    preview_metadata: ModelsPreviewMetadata  # REQUIRED
    sub_type: str  # REQUIRED
    tags: List[str]  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> ModelsCreateContentRequestS3:
        self.content_type = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsCreateContentRequestS3:
        self.custom_attributes = value
        return self

    def with_file_extension(self, value: str) -> ModelsCreateContentRequestS3:
        self.file_extension = value
        return self

    def with_name(self, value: str) -> ModelsCreateContentRequestS3:
        self.name = value
        return self

    def with_preview(self, value: str) -> ModelsCreateContentRequestS3:
        self.preview = value
        return self

    def with_preview_metadata(
        self, value: ModelsPreviewMetadata
    ) -> ModelsCreateContentRequestS3:
        self.preview_metadata = value
        return self

    def with_sub_type(self, value: str) -> ModelsCreateContentRequestS3:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> ModelsCreateContentRequestS3:
        self.tags = value
        return self

    def with_type(self, value: str) -> ModelsCreateContentRequestS3:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "preview"):
            result["preview"] = str(self.preview)
        elif include_empty:
            result["preview"] = ""
        if hasattr(self, "preview_metadata"):
            result["previewMetadata"] = self.preview_metadata.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["previewMetadata"] = ModelsPreviewMetadata()
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_type: str,
        custom_attributes: Dict[str, Any],
        file_extension: str,
        name: str,
        preview: str,
        preview_metadata: ModelsPreviewMetadata,
        sub_type: str,
        tags: List[str],
        type_: str,
    ) -> ModelsCreateContentRequestS3:
        instance = cls()
        instance.content_type = content_type
        instance.custom_attributes = custom_attributes
        instance.file_extension = file_extension
        instance.name = name
        instance.preview = preview
        instance.preview_metadata = preview_metadata
        instance.sub_type = sub_type
        instance.tags = tags
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateContentRequestS3:
        instance = cls()
        if not dict_:
            return instance
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "preview" in dict_ and dict_["preview"] is not None:
            instance.preview = str(dict_["preview"])
        elif include_empty:
            instance.preview = ""
        if "previewMetadata" in dict_ and dict_["previewMetadata"] is not None:
            instance.preview_metadata = ModelsPreviewMetadata.create_from_dict(
                dict_["previewMetadata"], include_empty=include_empty
            )
        elif include_empty:
            instance.preview_metadata = ModelsPreviewMetadata()
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateContentRequestS3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateContentRequestS3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateContentRequestS3,
        List[ModelsCreateContentRequestS3],
        Dict[Any, ModelsCreateContentRequestS3],
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
            "customAttributes": "custom_attributes",
            "fileExtension": "file_extension",
            "name": "name",
            "preview": "preview",
            "previewMetadata": "preview_metadata",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentType": True,
            "customAttributes": True,
            "fileExtension": True,
            "name": True,
            "preview": True,
            "previewMetadata": True,
            "subType": True,
            "tags": True,
            "type": True,
        }

    # endregion static methods
