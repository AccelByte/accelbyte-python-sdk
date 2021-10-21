# Auto-generated at 2021-10-21T08:52:27.611895+08:00
# from: Justice lobby Service (1.33.0)

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


class ModelTemplateContent(Model):
    """Model template content (model.TemplateContent)

    Properties:
        draft: (draft) REQUIRED str

        published: (published) REQUIRED str
    """

    # region fields

    draft: str                                                                                     # REQUIRED
    published: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_draft(self, value: str) -> ModelTemplateContent:
        self.draft = value
        return self

    def with_published(self, value: str) -> ModelTemplateContent:
        self.published = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "draft") and self.draft:
            result["draft"] = str(self.draft)
        elif include_empty:
            result["draft"] = str()
        if hasattr(self, "published") and self.published:
            result["published"] = str(self.published)
        elif include_empty:
            result["published"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        draft: str,
        published: str,
    ) -> ModelTemplateContent:
        instance = cls()
        instance.draft = draft
        instance.published = published
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelTemplateContent:
        instance = cls()
        if not dict_:
            return instance
        if "draft" in dict_ and dict_["draft"] is not None:
            instance.draft = str(dict_["draft"])
        elif include_empty:
            instance.draft = str()
        if "published" in dict_ and dict_["published"] is not None:
            instance.published = str(dict_["published"])
        elif include_empty:
            instance.published = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "draft": "draft",
            "published": "published",
        }

    # endregion static methods
