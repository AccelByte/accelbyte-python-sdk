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


class ModelsBinaryRecordRequest(Model):
    """Models binary record request (models.BinaryRecordRequest)

    Properties:
        content_type: (content_type) REQUIRED str

        file_location: (file_location) REQUIRED str
    """

    # region fields

    content_type: str  # REQUIRED
    file_location: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> ModelsBinaryRecordRequest:
        self.content_type = value
        return self

    def with_file_location(self, value: str) -> ModelsBinaryRecordRequest:
        self.file_location = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_type"):
            result["content_type"] = str(self.content_type)
        elif include_empty:
            result["content_type"] = ""
        if hasattr(self, "file_location"):
            result["file_location"] = str(self.file_location)
        elif include_empty:
            result["file_location"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, content_type: str, file_location: str, **kwargs
    ) -> ModelsBinaryRecordRequest:
        instance = cls()
        instance.content_type = content_type
        instance.file_location = file_location
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBinaryRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "content_type" in dict_ and dict_["content_type"] is not None:
            instance.content_type = str(dict_["content_type"])
        elif include_empty:
            instance.content_type = ""
        if "file_location" in dict_ and dict_["file_location"] is not None:
            instance.file_location = str(dict_["file_location"])
        elif include_empty:
            instance.file_location = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBinaryRecordRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBinaryRecordRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBinaryRecordRequest,
        List[ModelsBinaryRecordRequest],
        Dict[Any, ModelsBinaryRecordRequest],
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
            "file_location": "file_location",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "content_type": True,
            "file_location": True,
        }

    # endregion static methods
