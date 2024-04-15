# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Legal Service

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


class DownloadExportedAgreementsInCSVResponse(Model):
    """Download exported agreements in CSV response (DownloadExportedAgreementsInCSVResponse)

    Properties:
        done: (done) REQUIRED bool

        download_url: (downloadUrl) OPTIONAL str
    """

    # region fields

    done: bool  # REQUIRED
    download_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_done(self, value: bool) -> DownloadExportedAgreementsInCSVResponse:
        self.done = value
        return self

    def with_download_url(self, value: str) -> DownloadExportedAgreementsInCSVResponse:
        self.download_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "done"):
            result["done"] = bool(self.done)
        elif include_empty:
            result["done"] = False
        if hasattr(self, "download_url"):
            result["downloadUrl"] = str(self.download_url)
        elif include_empty:
            result["downloadUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, done: bool, download_url: Optional[str] = None, **kwargs
    ) -> DownloadExportedAgreementsInCSVResponse:
        instance = cls()
        instance.done = done
        if download_url is not None:
            instance.download_url = download_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DownloadExportedAgreementsInCSVResponse:
        instance = cls()
        if not dict_:
            return instance
        if "done" in dict_ and dict_["done"] is not None:
            instance.done = bool(dict_["done"])
        elif include_empty:
            instance.done = False
        if "downloadUrl" in dict_ and dict_["downloadUrl"] is not None:
            instance.download_url = str(dict_["downloadUrl"])
        elif include_empty:
            instance.download_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DownloadExportedAgreementsInCSVResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DownloadExportedAgreementsInCSVResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DownloadExportedAgreementsInCSVResponse,
        List[DownloadExportedAgreementsInCSVResponse],
        Dict[Any, DownloadExportedAgreementsInCSVResponse],
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
            "done": "done",
            "downloadUrl": "download_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "done": True,
            "downloadUrl": False,
        }

    # endregion static methods
