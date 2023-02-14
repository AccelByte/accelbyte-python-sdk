# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class TypeEnum(StrEnum):
    IMAGE = "image"
    VIDEO = "video"


class VideoSourceEnum(StrEnum):
    GENERIC = "generic"
    VIMEO = "vimeo"
    YOUTUBE = "youtube"


class Slide(Model):
    """Slide (Slide)

    Properties:
        alt: (alt) OPTIONAL str

        preview_url: (previewUrl) OPTIONAL str

        thumbnail_url: (thumbnailUrl) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]

        url: (url) OPTIONAL str

        video_source: (videoSource) OPTIONAL Union[str, VideoSourceEnum]
    """

    # region fields

    alt: str  # OPTIONAL
    preview_url: str  # OPTIONAL
    thumbnail_url: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    url: str  # OPTIONAL
    video_source: Union[str, VideoSourceEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_alt(self, value: str) -> Slide:
        self.alt = value
        return self

    def with_preview_url(self, value: str) -> Slide:
        self.preview_url = value
        return self

    def with_thumbnail_url(self, value: str) -> Slide:
        self.thumbnail_url = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> Slide:
        self.type_ = value
        return self

    def with_url(self, value: str) -> Slide:
        self.url = value
        return self

    def with_video_source(self, value: Union[str, VideoSourceEnum]) -> Slide:
        self.video_source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alt"):
            result["alt"] = str(self.alt)
        elif include_empty:
            result["alt"] = ""
        if hasattr(self, "preview_url"):
            result["previewUrl"] = str(self.preview_url)
        elif include_empty:
            result["previewUrl"] = ""
        if hasattr(self, "thumbnail_url"):
            result["thumbnailUrl"] = str(self.thumbnail_url)
        elif include_empty:
            result["thumbnailUrl"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        if hasattr(self, "video_source"):
            result["videoSource"] = str(self.video_source)
        elif include_empty:
            result["videoSource"] = Union[str, VideoSourceEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alt: Optional[str] = None,
        preview_url: Optional[str] = None,
        thumbnail_url: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        url: Optional[str] = None,
        video_source: Optional[Union[str, VideoSourceEnum]] = None,
    ) -> Slide:
        instance = cls()
        if alt is not None:
            instance.alt = alt
        if preview_url is not None:
            instance.preview_url = preview_url
        if thumbnail_url is not None:
            instance.thumbnail_url = thumbnail_url
        if type_ is not None:
            instance.type_ = type_
        if url is not None:
            instance.url = url
        if video_source is not None:
            instance.video_source = video_source
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Slide:
        instance = cls()
        if not dict_:
            return instance
        if "alt" in dict_ and dict_["alt"] is not None:
            instance.alt = str(dict_["alt"])
        elif include_empty:
            instance.alt = ""
        if "previewUrl" in dict_ and dict_["previewUrl"] is not None:
            instance.preview_url = str(dict_["previewUrl"])
        elif include_empty:
            instance.preview_url = ""
        if "thumbnailUrl" in dict_ and dict_["thumbnailUrl"] is not None:
            instance.thumbnail_url = str(dict_["thumbnailUrl"])
        elif include_empty:
            instance.thumbnail_url = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        if "videoSource" in dict_ and dict_["videoSource"] is not None:
            instance.video_source = str(dict_["videoSource"])
        elif include_empty:
            instance.video_source = Union[str, VideoSourceEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Slide]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Slide]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Slide, List[Slide], Dict[Any, Slide]]:
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
            "alt": "alt",
            "previewUrl": "preview_url",
            "thumbnailUrl": "thumbnail_url",
            "type": "type_",
            "url": "url",
            "videoSource": "video_source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alt": False,
            "previewUrl": False,
            "thumbnailUrl": False,
            "type": False,
            "url": False,
            "videoSource": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["image", "video"],
            "videoSource": ["generic", "vimeo", "youtube"],
        }

    # endregion static methods
