# justice-lobby-server (staging)

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models.model_template_localization import ModelTemplateLocalization


class ModelTemplateLocalizationResponse(Model):
    """Model template localization response (model.TemplateLocalizationResponse)

    Properties:
        first: (first) REQUIRED str

        last: (last) REQUIRED str

        next_: (next) REQUIRED str

        previous: (previous) REQUIRED str

        template_localization: (templateLocalization) REQUIRED List[ModelTemplateLocalization]
    """

    # region fields

    first: str                                                                                     # REQUIRED
    last: str                                                                                      # REQUIRED
    next_: str                                                                                     # REQUIRED
    previous: str                                                                                  # REQUIRED
    template_localization: List[ModelTemplateLocalization]                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_first(self, value: str) -> ModelTemplateLocalizationResponse:
        self.first = value
        return self

    def with_last(self, value: str) -> ModelTemplateLocalizationResponse:
        self.last = value
        return self

    def with_next(self, value: str) -> ModelTemplateLocalizationResponse:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> ModelTemplateLocalizationResponse:
        self.previous = value
        return self

    def with_template_localization(self, value: List[ModelTemplateLocalization]) -> ModelTemplateLocalizationResponse:
        self.template_localization = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first"):
            result["first"] = str(self.first)
        elif include_empty:
            result["first"] = str()
        if hasattr(self, "last"):
            result["last"] = str(self.last)
        elif include_empty:
            result["last"] = str()
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = str()
        if hasattr(self, "previous"):
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = str()
        if hasattr(self, "template_localization"):
            result["templateLocalization"] = [i0.to_dict(include_empty=include_empty) for i0 in self.template_localization]
        elif include_empty:
            result["templateLocalization"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        first: str,
        last: str,
        next_: str,
        previous: str,
        template_localization: List[ModelTemplateLocalization],
    ) -> ModelTemplateLocalizationResponse:
        instance = cls()
        instance.first = first
        instance.last = last
        instance.next_ = next_
        instance.previous = previous
        instance.template_localization = template_localization
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelTemplateLocalizationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "first" in dict_ and dict_["first"] is not None:
            instance.first = str(dict_["first"])
        elif include_empty:
            instance.first = str()
        if "last" in dict_ and dict_["last"] is not None:
            instance.last = str(dict_["last"])
        elif include_empty:
            instance.last = str()
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = str()
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = str()
        if "templateLocalization" in dict_ and dict_["templateLocalization"] is not None:
            instance.template_localization = [ModelTemplateLocalization.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["templateLocalization"]]
        elif include_empty:
            instance.template_localization = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "first": "first",
            "last": "last",
            "next": "next_",
            "previous": "previous",
            "templateLocalization": "template_localization",
        }

    # endregion static methods
