# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-lobby-server (staging)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.model_localization import ModelLocalization


class ModelTemplateResponse(Model):
    """Model template response (model.TemplateResponse)

    Properties:
        localizations: (localizations) REQUIRED List[ModelLocalization]

        template_slug: (templateSlug) REQUIRED str
    """

    # region fields

    localizations: List[ModelLocalization]                                                         # REQUIRED
    template_slug: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_localizations(self, value: List[ModelLocalization]) -> ModelTemplateResponse:
        self.localizations = value
        return self

    def with_template_slug(self, value: str) -> ModelTemplateResponse:
        self.template_slug = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "localizations") or self.localizations is None:
            return False
        if not hasattr(self, "template_slug") or self.template_slug is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localizations"):
            result["localizations"] = [i0.to_dict(include_empty=include_empty) for i0 in self.localizations]
        elif include_empty:
            result["localizations"] = []
        if hasattr(self, "template_slug"):
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localizations: List[ModelLocalization],
        template_slug: str,
    ) -> ModelTemplateResponse:
        instance = cls()
        instance.localizations = localizations
        instance.template_slug = template_slug
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelTemplateResponse:
        instance = cls()
        if not dict_:
            return instance
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = [ModelLocalization.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["localizations"]]
        elif include_empty:
            instance.localizations = []
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelTemplateResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelTemplateResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelTemplateResponse, List[ModelTemplateResponse]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizations": "localizations",
            "templateSlug": "template_slug",
        }

    # endregion static methods
