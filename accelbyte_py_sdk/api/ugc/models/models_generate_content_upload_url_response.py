# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

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


class ModelsGenerateContentUploadURLResponse(Model):
    """Models generate content upload URL response (models.GenerateContentUploadURLResponse)

    Properties:
        file_location: (fileLocation) REQUIRED str

        url: (url) REQUIRED str

        content_type: (contentType) OPTIONAL str

        file_extension: (fileExtension) OPTIONAL str
    """

    # region fields

    file_location: str  # REQUIRED
    url: str  # REQUIRED
    content_type: str  # OPTIONAL
    file_extension: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_file_location(self, value: str) -> ModelsGenerateContentUploadURLResponse:
        self.file_location = value
        return self

    def with_url(self, value: str) -> ModelsGenerateContentUploadURLResponse:
        self.url = value
        return self

    def with_content_type(self, value: str) -> ModelsGenerateContentUploadURLResponse:
        self.content_type = value
        return self

    def with_file_extension(self, value: str) -> ModelsGenerateContentUploadURLResponse:
        self.file_extension = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file_location"):
            result["fileLocation"] = str(self.file_location)
        elif include_empty:
            result["fileLocation"] = ""
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        file_location: str,
        url: str,
        content_type: Optional[str] = None,
        file_extension: Optional[str] = None,
        **kwargs,
    ) -> ModelsGenerateContentUploadURLResponse:
        instance = cls()
        instance.file_location = file_location
        instance.url = url
        if content_type is not None:
            instance.content_type = content_type
        if file_extension is not None:
            instance.file_extension = file_extension
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGenerateContentUploadURLResponse:
        instance = cls()
        if not dict_:
            return instance
        if "fileLocation" in dict_ and dict_["fileLocation"] is not None:
            instance.file_location = str(dict_["fileLocation"])
        elif include_empty:
            instance.file_location = ""
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGenerateContentUploadURLResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGenerateContentUploadURLResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGenerateContentUploadURLResponse,
        List[ModelsGenerateContentUploadURLResponse],
        Dict[Any, ModelsGenerateContentUploadURLResponse],
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
            "fileLocation": "file_location",
            "url": "url",
            "contentType": "content_type",
            "fileExtension": "file_extension",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fileLocation": True,
            "url": True,
            "contentType": False,
            "fileExtension": False,
        }

    # endregion static methods
