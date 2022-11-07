# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ds Log Manager Service (2.6.0)

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

from ..models.models_download_logs_request import ModelsDownloadLogsRequest


class ModelsBatchDownloadLogsRequest(Model):
    """Models batch download logs request (models.BatchDownloadLogsRequest)

    Properties:
        downloads: (Downloads) REQUIRED List[ModelsDownloadLogsRequest]
    """

    # region fields

    downloads: List[ModelsDownloadLogsRequest]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_downloads(
        self, value: List[ModelsDownloadLogsRequest]
    ) -> ModelsBatchDownloadLogsRequest:
        self.downloads = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "downloads"):
            result["Downloads"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.downloads
            ]
        elif include_empty:
            result["Downloads"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        downloads: List[ModelsDownloadLogsRequest],
    ) -> ModelsBatchDownloadLogsRequest:
        instance = cls()
        instance.downloads = downloads
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBatchDownloadLogsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Downloads" in dict_ and dict_["Downloads"] is not None:
            instance.downloads = [
                ModelsDownloadLogsRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["Downloads"]
            ]
        elif include_empty:
            instance.downloads = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBatchDownloadLogsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBatchDownloadLogsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBatchDownloadLogsRequest,
        List[ModelsBatchDownloadLogsRequest],
        Dict[Any, ModelsBatchDownloadLogsRequest],
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
            "Downloads": "downloads",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Downloads": True,
        }

    # endregion static methods
