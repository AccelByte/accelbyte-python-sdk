# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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
    """Model create template request (model.CreateTemplateRequest)

    Properties:
        template_content: (templateContent) REQUIRED str

        template_language: (templateLanguage) REQUIRED str

        template_slug: (templateSlug) REQUIRED str
    """

    # region fields

    template_content: str  # REQUIRED
    template_language: str  # REQUIRED
    template_slug: str  # REQUIRED

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
        result: dict = {}
        if hasattr(self, "template_content"):
            result["templateContent"] = str(self.template_content)
        elif include_empty:
            result["templateContent"] = ""
        if hasattr(self, "template_language"):
            result["templateLanguage"] = str(self.template_language)
        elif include_empty:
            result["templateLanguage"] = ""
        if hasattr(self, "template_slug"):
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCreateTemplateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "templateContent" in dict_ and dict_["templateContent"] is not None:
            instance.template_content = str(dict_["templateContent"])
        elif include_empty:
            instance.template_content = ""
        if "templateLanguage" in dict_ and dict_["templateLanguage"] is not None:
            instance.template_language = str(dict_["templateLanguage"])
        elif include_empty:
            instance.template_language = ""
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCreateTemplateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCreateTemplateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCreateTemplateRequest,
        List[ModelCreateTemplateRequest],
        Dict[Any, ModelCreateTemplateRequest],
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
            "templateContent": "template_content",
            "templateLanguage": "template_language",
            "templateSlug": "template_slug",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "templateContent": True,
            "templateLanguage": True,
            "templateSlug": True,
        }

    # endregion static methods
