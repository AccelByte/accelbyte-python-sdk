# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.5.5)

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


class ModelsContentLikeResponse(Model):
    """Models content like response (models.ContentLikeResponse)

    Properties:
        content_id: (contentId) REQUIRED str

        like_status: (likeStatus) REQUIRED bool
    """

    # region fields

    content_id: str  # REQUIRED
    like_status: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_id(self, value: str) -> ModelsContentLikeResponse:
        self.content_id = value
        return self

    def with_like_status(self, value: bool) -> ModelsContentLikeResponse:
        self.like_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_id"):
            result["contentId"] = str(self.content_id)
        elif include_empty:
            result["contentId"] = ""
        if hasattr(self, "like_status"):
            result["likeStatus"] = bool(self.like_status)
        elif include_empty:
            result["likeStatus"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_id: str,
        like_status: bool,
    ) -> ModelsContentLikeResponse:
        instance = cls()
        instance.content_id = content_id
        instance.like_status = like_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsContentLikeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "contentId" in dict_ and dict_["contentId"] is not None:
            instance.content_id = str(dict_["contentId"])
        elif include_empty:
            instance.content_id = ""
        if "likeStatus" in dict_ and dict_["likeStatus"] is not None:
            instance.like_status = bool(dict_["likeStatus"])
        elif include_empty:
            instance.like_status = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsContentLikeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsContentLikeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsContentLikeResponse,
        List[ModelsContentLikeResponse],
        Dict[Any, ModelsContentLikeResponse],
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
            "contentId": "content_id",
            "likeStatus": "like_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentId": True,
            "likeStatus": True,
        }

    # endregion static methods
