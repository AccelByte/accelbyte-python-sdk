# justice-platform-service (3.34.0)

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


class StoreCreate(Model):
    """A DTO object for creating store API call. (StoreCreate)

    Properties:
        title: (title) REQUIRED str

        default_language: (defaultLanguage) OPTIONAL str

        default_region: (defaultRegion) OPTIONAL str

        description: (description) OPTIONAL str

        supported_languages: (supportedLanguages) OPTIONAL List[str]

        supported_regions: (supportedRegions) OPTIONAL List[str]
    """

    # region fields

    title: str                                                                                     # REQUIRED
    default_language: str                                                                          # OPTIONAL
    default_region: str                                                                            # OPTIONAL
    description: str                                                                               # OPTIONAL
    supported_languages: List[str]                                                                 # OPTIONAL
    supported_regions: List[str]                                                                   # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_title(self, value: str) -> StoreCreate:
        self.title = value
        return self

    def with_default_language(self, value: str) -> StoreCreate:
        self.default_language = value
        return self

    def with_default_region(self, value: str) -> StoreCreate:
        self.default_region = value
        return self

    def with_description(self, value: str) -> StoreCreate:
        self.description = value
        return self

    def with_supported_languages(self, value: List[str]) -> StoreCreate:
        self.supported_languages = value
        return self

    def with_supported_regions(self, value: List[str]) -> StoreCreate:
        self.supported_regions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = str()
        if hasattr(self, "default_region"):
            result["defaultRegion"] = str(self.default_region)
        elif include_empty:
            result["defaultRegion"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "supported_languages"):
            result["supportedLanguages"] = [str(i0) for i0 in self.supported_languages]
        elif include_empty:
            result["supportedLanguages"] = []
        if hasattr(self, "supported_regions"):
            result["supportedRegions"] = [str(i0) for i0 in self.supported_regions]
        elif include_empty:
            result["supportedRegions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        title: str,
        default_language: Optional[str] = None,
        default_region: Optional[str] = None,
        description: Optional[str] = None,
        supported_languages: Optional[List[str]] = None,
        supported_regions: Optional[List[str]] = None,
    ) -> StoreCreate:
        instance = cls()
        instance.title = title
        if default_language is not None:
            instance.default_language = default_language
        if default_region is not None:
            instance.default_region = default_region
        if description is not None:
            instance.description = description
        if supported_languages is not None:
            instance.supported_languages = supported_languages
        if supported_regions is not None:
            instance.supported_regions = supported_regions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StoreCreate:
        instance = cls()
        if not dict_:
            return instance
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        if "defaultRegion" in dict_ and dict_["defaultRegion"] is not None:
            instance.default_region = str(dict_["defaultRegion"])
        elif include_empty:
            instance.default_region = str()
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
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "title": "title",
            "defaultLanguage": "default_language",
            "defaultRegion": "default_region",
            "description": "description",
            "supportedLanguages": "supported_languages",
            "supportedRegions": "supported_regions",
        }

    # endregion static methods
