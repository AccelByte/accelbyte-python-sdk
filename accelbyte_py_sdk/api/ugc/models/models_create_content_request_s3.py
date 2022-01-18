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


class ModelsCreateContentRequestS3(Model):
    """Models create content request S3 (models.CreateContentRequestS3)

    Properties:
        content_type: (contentType) REQUIRED str

        file_extension: (fileExtension) REQUIRED str

        name: (name) REQUIRED str

        preview: (preview) REQUIRED str

        sub_type: (subType) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    content_type: str                                                                              # REQUIRED
    file_extension: str                                                                            # REQUIRED
    name: str                                                                                      # REQUIRED
    preview: str                                                                                   # REQUIRED
    sub_type: str                                                                                  # REQUIRED
    tags: List[str]                                                                                # REQUIRED
    type_: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> ModelsCreateContentRequestS3:
        self.content_type = value
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
            result["contentType"] = str()
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "preview"):
            result["preview"] = str(self.preview)
        elif include_empty:
            result["preview"] = str()
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = str()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_type: str,
        file_extension: str,
        name: str,
        preview: str,
        sub_type: str,
        tags: List[str],
        type_: str,
    ) -> ModelsCreateContentRequestS3:
        instance = cls()
        instance.content_type = content_type
        instance.file_extension = file_extension
        instance.name = name
        instance.preview = preview
        instance.sub_type = sub_type
        instance.tags = tags
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateContentRequestS3:
        instance = cls()
        if not dict_:
            return instance
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = str()
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "preview" in dict_ and dict_["preview"] is not None:
            instance.preview = str(dict_["preview"])
        elif include_empty:
            instance.preview = str()
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "contentType": "content_type",
            "fileExtension": "file_extension",
            "name": "name",
            "preview": "preview",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
        }

    # endregion static methods
