# Auto-generated at 2021-10-14T22:17:08.958192+08:00
# from: Justice DsmController Service (2.4.0)

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
        if hasattr(self, "image_count") and self.image_count:
            result["image_count"] = int(self.image_count)
        elif include_empty:
            result["image_count"] = int()
        if hasattr(self, "image_limit") and self.image_limit:
            result["image_limit"] = int(self.image_limit)
        elif include_empty:
            result["image_limit"] = int()
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
            instance.image_count = int()
        if "image_limit" in dict_ and dict_["image_limit"] is not None:
            instance.image_limit = int(dict_["image_limit"])
        elif include_empty:
            instance.image_limit = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "image_count": "image_count",
            "image_limit": "image_limit",
        }

    # endregion static methods
