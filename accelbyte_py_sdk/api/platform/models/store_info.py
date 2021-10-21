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


class StoreInfo(Model):
    """Store info (StoreInfo)

    Properties:
        store_id: (storeId) REQUIRED str

        namespace: (namespace) REQUIRED str

        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        published: (published) REQUIRED bool

        supported_languages: (supportedLanguages) REQUIRED List[str]

        supported_regions: (supportedRegions) REQUIRED List[str]

        default_region: (defaultRegion) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        published_time: (publishedTime) OPTIONAL str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    store_id: str                                                                                  # REQUIRED
    namespace: str                                                                                 # REQUIRED
    title: str                                                                                     # REQUIRED
    description: str                                                                               # OPTIONAL
    published: bool                                                                                # REQUIRED
    supported_languages: List[str]                                                                 # REQUIRED
    supported_regions: List[str]                                                                   # REQUIRED
    default_region: str                                                                            # REQUIRED
    default_language: str                                                                          # REQUIRED
    published_time: str                                                                            # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_store_id(self, value: str) -> StoreInfo:
        self.store_id = value
        return self

    def with_namespace(self, value: str) -> StoreInfo:
        self.namespace = value
        return self

    def with_title(self, value: str) -> StoreInfo:
        self.title = value
        return self

    def with_description(self, value: str) -> StoreInfo:
        self.description = value
        return self

    def with_published(self, value: bool) -> StoreInfo:
        self.published = value
        return self

    def with_supported_languages(self, value: List[str]) -> StoreInfo:
        self.supported_languages = value
        return self

    def with_supported_regions(self, value: List[str]) -> StoreInfo:
        self.supported_regions = value
        return self

    def with_default_region(self, value: str) -> StoreInfo:
        self.default_region = value
        return self

    def with_default_language(self, value: str) -> StoreInfo:
        self.default_language = value
        return self

    def with_published_time(self, value: str) -> StoreInfo:
        self.published_time = value
        return self

    def with_created_at(self, value: str) -> StoreInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> StoreInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "title") and self.title:
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "published") and self.published:
            result["published"] = bool(self.published)
        elif include_empty:
            result["published"] = bool()
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
        if hasattr(self, "published_time") and self.published_time:
            result["publishedTime"] = str(self.published_time)
        elif include_empty:
            result["publishedTime"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        store_id: str,
        namespace: str,
        title: str,
        published: bool,
        supported_languages: List[str],
        supported_regions: List[str],
        default_region: str,
        default_language: str,
        created_at: str,
        updated_at: str,
        description: Optional[str] = None,
        published_time: Optional[str] = None,
    ) -> StoreInfo:
        instance = cls()
        instance.store_id = store_id
        instance.namespace = namespace
        instance.title = title
        instance.published = published
        instance.supported_languages = supported_languages
        instance.supported_regions = supported_regions
        instance.default_region = default_region
        instance.default_language = default_language
        instance.created_at = created_at
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if published_time is not None:
            instance.published_time = published_time
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StoreInfo:
        instance = cls()
        if not dict_:
            return instance
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "published" in dict_ and dict_["published"] is not None:
            instance.published = bool(dict_["published"])
        elif include_empty:
            instance.published = bool()
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
        if "publishedTime" in dict_ and dict_["publishedTime"] is not None:
            instance.published_time = str(dict_["publishedTime"])
        elif include_empty:
            instance.published_time = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "storeId": "store_id",
            "namespace": "namespace",
            "title": "title",
            "description": "description",
            "published": "published",
            "supportedLanguages": "supported_languages",
            "supportedRegions": "supported_regions",
            "defaultRegion": "default_region",
            "defaultLanguage": "default_language",
            "publishedTime": "published_time",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
