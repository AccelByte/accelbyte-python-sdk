# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class Image(Model):
    """Image (Image)

    Properties:
        height: (height) REQUIRED int

        image_url: (imageUrl) REQUIRED str

        small_image_url: (smallImageUrl) REQUIRED str

        width: (width) REQUIRED int

        as_: (as) OPTIONAL str

        caption: (caption) OPTIONAL str
    """

    # region fields

    height: int  # REQUIRED
    image_url: str  # REQUIRED
    small_image_url: str  # REQUIRED
    width: int  # REQUIRED
    as_: str  # OPTIONAL
    caption: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_height(self, value: int) -> Image:
        self.height = value
        return self

    def with_image_url(self, value: str) -> Image:
        self.image_url = value
        return self

    def with_small_image_url(self, value: str) -> Image:
        self.small_image_url = value
        return self

    def with_width(self, value: int) -> Image:
        self.width = value
        return self

    def with_as(self, value: str) -> Image:
        self.as_ = value
        return self

    def with_caption(self, value: str) -> Image:
        self.caption = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "height"):
            result["height"] = int(self.height)
        elif include_empty:
            result["height"] = 0
        if hasattr(self, "image_url"):
            result["imageUrl"] = str(self.image_url)
        elif include_empty:
            result["imageUrl"] = ""
        if hasattr(self, "small_image_url"):
            result["smallImageUrl"] = str(self.small_image_url)
        elif include_empty:
            result["smallImageUrl"] = ""
        if hasattr(self, "width"):
            result["width"] = int(self.width)
        elif include_empty:
            result["width"] = 0
        if hasattr(self, "as_"):
            result["as"] = str(self.as_)
        elif include_empty:
            result["as"] = ""
        if hasattr(self, "caption"):
            result["caption"] = str(self.caption)
        elif include_empty:
            result["caption"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        height: int,
        image_url: str,
        small_image_url: str,
        width: int,
        as_: Optional[str] = None,
        caption: Optional[str] = None,
    ) -> Image:
        instance = cls()
        instance.height = height
        instance.image_url = image_url
        instance.small_image_url = small_image_url
        instance.width = width
        if as_ is not None:
            instance.as_ = as_
        if caption is not None:
            instance.caption = caption
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Image:
        instance = cls()
        if not dict_:
            return instance
        if "height" in dict_ and dict_["height"] is not None:
            instance.height = int(dict_["height"])
        elif include_empty:
            instance.height = 0
        if "imageUrl" in dict_ and dict_["imageUrl"] is not None:
            instance.image_url = str(dict_["imageUrl"])
        elif include_empty:
            instance.image_url = ""
        if "smallImageUrl" in dict_ and dict_["smallImageUrl"] is not None:
            instance.small_image_url = str(dict_["smallImageUrl"])
        elif include_empty:
            instance.small_image_url = ""
        if "width" in dict_ and dict_["width"] is not None:
            instance.width = int(dict_["width"])
        elif include_empty:
            instance.width = 0
        if "as" in dict_ and dict_["as"] is not None:
            instance.as_ = str(dict_["as"])
        elif include_empty:
            instance.as_ = ""
        if "caption" in dict_ and dict_["caption"] is not None:
            instance.caption = str(dict_["caption"])
        elif include_empty:
            instance.caption = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Image]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Image]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Image, List[Image], Dict[Any, Image]]:
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
            "height": "height",
            "imageUrl": "image_url",
            "smallImageUrl": "small_image_url",
            "width": "width",
            "as": "as_",
            "caption": "caption",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "height": True,
            "imageUrl": True,
            "smallImageUrl": True,
            "width": True,
            "as": False,
            "caption": False,
        }

    # endregion static methods
