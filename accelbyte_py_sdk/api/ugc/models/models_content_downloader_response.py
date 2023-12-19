# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service (2.19.0)

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


class ModelsContentDownloaderResponse(Model):
    """Models content downloader response (models.ContentDownloaderResponse)

    Properties:
        content_id: (contentId) REQUIRED str

        created_time: (createdTime) REQUIRED str

        downloaded_by: (downloadedBy) REQUIRED str

        namespace: (namespace) REQUIRED str
    """

    # region fields

    content_id: str  # REQUIRED
    created_time: str  # REQUIRED
    downloaded_by: str  # REQUIRED
    namespace: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_id(self, value: str) -> ModelsContentDownloaderResponse:
        self.content_id = value
        return self

    def with_created_time(self, value: str) -> ModelsContentDownloaderResponse:
        self.created_time = value
        return self

    def with_downloaded_by(self, value: str) -> ModelsContentDownloaderResponse:
        self.downloaded_by = value
        return self

    def with_namespace(self, value: str) -> ModelsContentDownloaderResponse:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_id"):
            result["contentId"] = str(self.content_id)
        elif include_empty:
            result["contentId"] = ""
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "downloaded_by"):
            result["downloadedBy"] = str(self.downloaded_by)
        elif include_empty:
            result["downloadedBy"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_id: str,
        created_time: str,
        downloaded_by: str,
        namespace: str,
        **kwargs,
    ) -> ModelsContentDownloaderResponse:
        instance = cls()
        instance.content_id = content_id
        instance.created_time = created_time
        instance.downloaded_by = downloaded_by
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsContentDownloaderResponse:
        instance = cls()
        if not dict_:
            return instance
        if "contentId" in dict_ and dict_["contentId"] is not None:
            instance.content_id = str(dict_["contentId"])
        elif include_empty:
            instance.content_id = ""
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = ""
        if "downloadedBy" in dict_ and dict_["downloadedBy"] is not None:
            instance.downloaded_by = str(dict_["downloadedBy"])
        elif include_empty:
            instance.downloaded_by = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsContentDownloaderResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsContentDownloaderResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsContentDownloaderResponse,
        List[ModelsContentDownloaderResponse],
        Dict[Any, ModelsContentDownloaderResponse],
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
            "createdTime": "created_time",
            "downloadedBy": "downloaded_by",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentId": True,
            "createdTime": True,
            "downloadedBy": True,
            "namespace": True,
        }

    # endregion static methods
