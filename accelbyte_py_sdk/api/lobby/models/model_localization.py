# justice-lobby-server (staging)

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

from ..models.model_template_content import ModelTemplateContent


class ModelLocalization(Model):
    """Model localization (model.Localization)

    Properties:
        last_draft_at: (lastDraftAt) REQUIRED str

        last_published_at: (lastPublishedAt) REQUIRED str

        template_content: (templateContent) REQUIRED ModelTemplateContent

        template_language: (templateLanguage) REQUIRED str
    """

    # region fields

    last_draft_at: str                                                                             # REQUIRED
    last_published_at: str                                                                         # REQUIRED
    template_content: ModelTemplateContent                                                         # REQUIRED
    template_language: str                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_last_draft_at(self, value: str) -> ModelLocalization:
        self.last_draft_at = value
        return self

    def with_last_published_at(self, value: str) -> ModelLocalization:
        self.last_published_at = value
        return self

    def with_template_content(self, value: ModelTemplateContent) -> ModelLocalization:
        self.template_content = value
        return self

    def with_template_language(self, value: str) -> ModelLocalization:
        self.template_language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "last_draft_at"):
            result["lastDraftAt"] = str(self.last_draft_at)
        elif include_empty:
            result["lastDraftAt"] = str()
        if hasattr(self, "last_published_at"):
            result["lastPublishedAt"] = str(self.last_published_at)
        elif include_empty:
            result["lastPublishedAt"] = str()
        if hasattr(self, "template_content"):
            result["templateContent"] = self.template_content.to_dict(include_empty=include_empty)
        elif include_empty:
            result["templateContent"] = ModelTemplateContent()
        if hasattr(self, "template_language"):
            result["templateLanguage"] = str(self.template_language)
        elif include_empty:
            result["templateLanguage"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        last_draft_at: str,
        last_published_at: str,
        template_content: ModelTemplateContent,
        template_language: str,
    ) -> ModelLocalization:
        instance = cls()
        instance.last_draft_at = last_draft_at
        instance.last_published_at = last_published_at
        instance.template_content = template_content
        instance.template_language = template_language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelLocalization:
        instance = cls()
        if not dict_:
            return instance
        if "lastDraftAt" in dict_ and dict_["lastDraftAt"] is not None:
            instance.last_draft_at = str(dict_["lastDraftAt"])
        elif include_empty:
            instance.last_draft_at = str()
        if "lastPublishedAt" in dict_ and dict_["lastPublishedAt"] is not None:
            instance.last_published_at = str(dict_["lastPublishedAt"])
        elif include_empty:
            instance.last_published_at = str()
        if "templateContent" in dict_ and dict_["templateContent"] is not None:
            instance.template_content = ModelTemplateContent.create_from_dict(dict_["templateContent"], include_empty=include_empty)
        elif include_empty:
            instance.template_content = ModelTemplateContent()
        if "templateLanguage" in dict_ and dict_["templateLanguage"] is not None:
            instance.template_language = str(dict_["templateLanguage"])
        elif include_empty:
            instance.template_language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "lastDraftAt": "last_draft_at",
            "lastPublishedAt": "last_published_at",
            "templateContent": "template_content",
            "templateLanguage": "template_language",
        }

    # endregion static methods
