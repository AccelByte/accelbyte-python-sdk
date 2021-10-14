# Auto-generated at 2021-10-14T22:17:16.274553+08:00
# from: Justice Platform Service (3.24.0)

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


class StoreUpdate(Model):
    """A DTO object for updating store API call. (StoreUpdate)

    Properties:
        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        supported_languages: (supportedLanguages) OPTIONAL List[str]

        supported_regions: (supportedRegions) OPTIONAL List[str]

        default_region: (defaultRegion) OPTIONAL str

        default_language: (defaultLanguage) OPTIONAL str
    """

    # region fields

    title: str                                                                                     # REQUIRED
    description: str                                                                               # OPTIONAL
    supported_languages: List[str]                                                                 # OPTIONAL
    supported_regions: List[str]                                                                   # OPTIONAL
    default_region: str                                                                            # OPTIONAL
    default_language: str                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_title(self, value: str) -> StoreUpdate:
        self.title = value
        return self

    def with_description(self, value: str) -> StoreUpdate:
        self.description = value
        return self

    def with_supported_languages(self, value: List[str]) -> StoreUpdate:
        self.supported_languages = value
        return self

    def with_supported_regions(self, value: List[str]) -> StoreUpdate:
        self.supported_regions = value
        return self

    def with_default_region(self, value: str) -> StoreUpdate:
        self.default_region = value
        return self

    def with_default_language(self, value: str) -> StoreUpdate:
        self.default_language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "title") and self.title:
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "supported_languages") and self.supported_languages:
            result["supportedLanguages"] = [str(i0) for i0 in self.supported_languages]
        elif include_empty:
            result["supportedLanguages"] = []
        if hasattr(self, "supported_regions") and self.supported_regions:
            result["supportedRegions"] = [str(i0) for i0 in self.supported_regions]
        elif include_empty:
            result["supportedRegions"] = []
        if hasattr(self, "default_region") and self.default_region:
            result["defaultRegion"] = str(self.default_region)
        elif include_empty:
            result["defaultRegion"] = str()
        if hasattr(self, "default_language") and self.default_language:
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        title: str,
        description: Optional[str] = None,
        supported_languages: Optional[List[str]] = None,
        supported_regions: Optional[List[str]] = None,
        default_region: Optional[str] = None,
        default_language: Optional[str] = None,
    ) -> StoreUpdate:
        instance = cls()
        instance.title = title
        if description is not None:
            instance.description = description
        if supported_languages is not None:
            instance.supported_languages = supported_languages
        if supported_regions is not None:
            instance.supported_regions = supported_regions
        if default_region is not None:
            instance.default_region = default_region
        if default_language is not None:
            instance.default_language = default_language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StoreUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "supportedLanguages" in dict_ and dict_["supportedLanguages"] is not None:
            instance.supported_languages = [str(i0) for i0 in dict_["supportedLanguages"]]
        elif include_empty:
            instance.supported_languages = []
        if "supportedRegions" in dict_ and dict_["supportedRegions"] is not None:
            instance.supported_regions = [str(i0) for i0 in dict_["supportedRegions"]]
        elif include_empty:
            instance.supported_regions = []
        if "defaultRegion" in dict_ and dict_["defaultRegion"] is not None:
            instance.default_region = str(dict_["defaultRegion"])
        elif include_empty:
            instance.default_region = str()
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "title": "title",
            "description": "description",
            "supportedLanguages": "supported_languages",
            "supportedRegions": "supported_regions",
            "defaultRegion": "default_region",
            "defaultLanguage": "default_language",
        }

    # endregion static methods
