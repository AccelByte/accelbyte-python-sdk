# justice-ugc-service (1.9.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsAddDownloadCountResponse(Model):
    """Models add download count response (models.AddDownloadCountResponse)

    Properties:
        content_id: (contentId) REQUIRED str
    """

    # region fields

    content_id: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_id(self, value: str) -> ModelsAddDownloadCountResponse:
        self.content_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_id"):
            result["contentId"] = str(self.content_id)
        elif include_empty:
            result["contentId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_id: str,
    ) -> ModelsAddDownloadCountResponse:
        instance = cls()
        instance.content_id = content_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAddDownloadCountResponse:
        instance = cls()
        if not dict_:
            return instance
        if "contentId" in dict_ and dict_["contentId"] is not None:
            instance.content_id = str(dict_["contentId"])
        elif include_empty:
            instance.content_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "contentId": "content_id",
        }

    # endregion static methods