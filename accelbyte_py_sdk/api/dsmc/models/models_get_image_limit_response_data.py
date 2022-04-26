# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
# 
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

# justice-dsm-controller-service (3.0.0)

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


class ModelsGetImageLimitResponseData(Model):
    """Models get image limit response data (models.GetImageLimitResponseData)

    Properties:
        image_count: (image_count) REQUIRED int

        image_limit: (image_limit) REQUIRED int
    """

    # region fields

    image_count: int                                                                               # REQUIRED
    image_limit: int                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_image_count(self, value: int) -> ModelsGetImageLimitResponseData:
        self.image_count = value
        return self

    def with_image_limit(self, value: int) -> ModelsGetImageLimitResponseData:
        self.image_limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "image_count"):
            result["image_count"] = int(self.image_count)
        elif include_empty:
            result["image_count"] = 0
        if hasattr(self, "image_limit"):
            result["image_limit"] = int(self.image_limit)
        elif include_empty:
            result["image_limit"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        image_count: int,
        image_limit: int,
    ) -> ModelsGetImageLimitResponseData:
        instance = cls()
        instance.image_count = image_count
        instance.image_limit = image_limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetImageLimitResponseData:
        instance = cls()
        if not dict_:
            return instance
        if "image_count" in dict_ and dict_["image_count"] is not None:
            instance.image_count = int(dict_["image_count"])
        elif include_empty:
            instance.image_count = 0
        if "image_limit" in dict_ and dict_["image_limit"] is not None:
            instance.image_limit = int(dict_["image_limit"])
        elif include_empty:
            instance.image_limit = 0
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsGetImageLimitResponseData]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsGetImageLimitResponseData]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsGetImageLimitResponseData, List[ModelsGetImageLimitResponseData], Dict[Any, ModelsGetImageLimitResponseData]]:
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
            "image_count": "image_count",
            "image_limit": "image_limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "image_count": True,
            "image_limit": True,
        }

    # endregion static methods
