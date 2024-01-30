# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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


class ModelsBinaryInfoResponse(Model):
    """Models binary info response (models.BinaryInfoResponse)

    Properties:
        content_type: (content_type) REQUIRED str

        created_at: (created_at) REQUIRED str

        file_location: (file_location) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        version: (version) REQUIRED int

        url: (url) OPTIONAL str
    """

    # region fields

    content_type: str  # REQUIRED
    created_at: str  # REQUIRED
    file_location: str  # REQUIRED
    updated_at: str  # REQUIRED
    version: int  # REQUIRED
    url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> ModelsBinaryInfoResponse:
        self.content_type = value
        return self

    def with_created_at(self, value: str) -> ModelsBinaryInfoResponse:
        self.created_at = value
        return self

    def with_file_location(self, value: str) -> ModelsBinaryInfoResponse:
        self.file_location = value
        return self

    def with_updated_at(self, value: str) -> ModelsBinaryInfoResponse:
        self.updated_at = value
        return self

    def with_version(self, value: int) -> ModelsBinaryInfoResponse:
        self.version = value
        return self

    def with_url(self, value: str) -> ModelsBinaryInfoResponse:
        self.url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_type"):
            result["content_type"] = str(self.content_type)
        elif include_empty:
            result["content_type"] = ""
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "file_location"):
            result["file_location"] = str(self.file_location)
        elif include_empty:
            result["file_location"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_type: str,
        created_at: str,
        file_location: str,
        updated_at: str,
        version: int,
        url: Optional[str] = None,
        **kwargs,
    ) -> ModelsBinaryInfoResponse:
        instance = cls()
        instance.content_type = content_type
        instance.created_at = created_at
        instance.file_location = file_location
        instance.updated_at = updated_at
        instance.version = version
        if url is not None:
            instance.url = url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBinaryInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if "content_type" in dict_ and dict_["content_type"] is not None:
            instance.content_type = str(dict_["content_type"])
        elif include_empty:
            instance.content_type = ""
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "file_location" in dict_ and dict_["file_location"] is not None:
            instance.file_location = str(dict_["file_location"])
        elif include_empty:
            instance.file_location = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBinaryInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBinaryInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBinaryInfoResponse,
        List[ModelsBinaryInfoResponse],
        Dict[Any, ModelsBinaryInfoResponse],
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
            "content_type": "content_type",
            "created_at": "created_at",
            "file_location": "file_location",
            "updated_at": "updated_at",
            "version": "version",
            "url": "url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "content_type": True,
            "created_at": True,
            "file_location": True,
            "updated_at": True,
            "version": True,
            "url": False,
        }

    # endregion static methods
