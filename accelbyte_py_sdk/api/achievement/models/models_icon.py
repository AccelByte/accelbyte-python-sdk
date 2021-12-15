# justice-achievement-service ()

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


class ModelsIcon(Model):
    """Models icon (models.Icon)

    Properties:
        slug: (slug) REQUIRED str

        url: (url) REQUIRED str
    """

    # region fields

    slug: str                                                                                      # REQUIRED
    url: str                                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_slug(self, value: str) -> ModelsIcon:
        self.slug = value
        return self

    def with_url(self, value: str) -> ModelsIcon:
        self.url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "slug"):
            result["slug"] = str(self.slug)
        elif include_empty:
            result["slug"] = str()
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        slug: str,
        url: str,
    ) -> ModelsIcon:
        instance = cls()
        instance.slug = slug
        instance.url = url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsIcon:
        instance = cls()
        if not dict_:
            return instance
        if "slug" in dict_ and dict_["slug"] is not None:
            instance.slug = str(dict_["slug"])
        elif include_empty:
            instance.slug = str()
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "slug": "slug",
            "url": "url",
        }

    # endregion static methods
