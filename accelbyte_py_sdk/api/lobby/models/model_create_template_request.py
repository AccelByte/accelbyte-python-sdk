# Auto-generated at 2021-09-21T14:10:36.185317+08:00
# from: Justice Lobby Service (1.33.0)

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


class ModelCreateTemplateRequest(Model):
    """Model create template request

    Properties:
        template_content: (templateContent) REQUIRED str

        template_language: (templateLanguage) REQUIRED str

        template_slug: (templateSlug) REQUIRED str
    """

    # region fields

    template_content: str                                                                          # REQUIRED
    template_language: str                                                                         # REQUIRED
    template_slug: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_template_content(self, value: str) -> ModelCreateTemplateRequest:
        self.template_content = value
        return self

    def with_template_language(self, value: str) -> ModelCreateTemplateRequest:
        self.template_language = value
        return self

    def with_template_slug(self, value: str) -> ModelCreateTemplateRequest:
        self.template_slug = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "template_content") and self.template_content:
            result["templateContent"] = str(self.template_content)
        elif include_empty:
            result["templateContent"] = str()
        if hasattr(self, "template_language") and self.template_language:
            result["templateLanguage"] = str(self.template_language)
        elif include_empty:
            result["templateLanguage"] = str()
        if hasattr(self, "template_slug") and self.template_slug:
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        template_content: str,
        template_language: str,
        template_slug: str,
    ) -> ModelCreateTemplateRequest:
        instance = cls()
        instance.template_content = template_content
        instance.template_language = template_language
        instance.template_slug = template_slug
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelCreateTemplateRequest:
        instance = cls()
        if "templateContent" in dict_ and dict_["templateContent"] is not None:
            instance.template_content = str(dict_["templateContent"])
        elif include_empty:
            instance.template_content = str()
        if "templateLanguage" in dict_ and dict_["templateLanguage"] is not None:
            instance.template_language = str(dict_["templateLanguage"])
        elif include_empty:
            instance.template_language = str()
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "templateContent": "template_content",
            "templateLanguage": "template_language",
            "templateSlug": "template_slug",
        }

    # endregion static methods
