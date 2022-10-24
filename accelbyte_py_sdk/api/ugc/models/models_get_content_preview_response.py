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

from ..models.models_preview_url import ModelsPreviewURL


class ModelsGetContentPreviewResponse(Model):
    """Models get content preview response (models.GetContentPreviewResponse)

    Properties:
        preview: (preview) REQUIRED str

        preview_url: (previewURL) OPTIONAL ModelsPreviewURL
    """

    # region fields

    preview: str  # REQUIRED
    preview_url: ModelsPreviewURL  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_preview(self, value: str) -> ModelsGetContentPreviewResponse:
        self.preview = value
        return self

    def with_preview_url(
        self, value: ModelsPreviewURL
    ) -> ModelsGetContentPreviewResponse:
        self.preview_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "preview"):
            result["preview"] = str(self.preview)
        elif include_empty:
            result["preview"] = ""
        if hasattr(self, "preview_url"):
            result["previewURL"] = self.preview_url.to_dict(include_empty=include_empty)
        elif include_empty:
            result["previewURL"] = ModelsPreviewURL()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        preview: str,
        preview_url: Optional[ModelsPreviewURL] = None,
    ) -> ModelsGetContentPreviewResponse:
        instance = cls()
        instance.preview = preview
        if preview_url is not None:
            instance.preview_url = preview_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetContentPreviewResponse:
        instance = cls()
        if not dict_:
            return instance
        if "preview" in dict_ and dict_["preview"] is not None:
            instance.preview = str(dict_["preview"])
        elif include_empty:
            instance.preview = ""
        if "previewURL" in dict_ and dict_["previewURL"] is not None:
            instance.preview_url = ModelsPreviewURL.create_from_dict(
                dict_["previewURL"], include_empty=include_empty
            )
        elif include_empty:
            instance.preview_url = ModelsPreviewURL()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetContentPreviewResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetContentPreviewResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetContentPreviewResponse,
        List[ModelsGetContentPreviewResponse],
        Dict[Any, ModelsGetContentPreviewResponse],
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
            "preview": "preview",
            "previewURL": "preview_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "preview": True,
            "previewURL": False,
        }

    # endregion static methods
