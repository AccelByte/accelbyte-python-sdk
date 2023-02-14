# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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
        created_at: (createdAt) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        default_region: (defaultRegion) REQUIRED str

        namespace: (namespace) REQUIRED str

        published: (published) REQUIRED bool

        store_id: (storeId) REQUIRED str

        supported_languages: (supportedLanguages) REQUIRED List[str]

        supported_regions: (supportedRegions) REQUIRED List[str]

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        description: (description) OPTIONAL str

        published_time: (publishedTime) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    default_language: str  # REQUIRED
    default_region: str  # REQUIRED
    namespace: str  # REQUIRED
    published: bool  # REQUIRED
    store_id: str  # REQUIRED
    supported_languages: List[str]  # REQUIRED
    supported_regions: List[str]  # REQUIRED
    title: str  # REQUIRED
    updated_at: str  # REQUIRED
    description: str  # OPTIONAL
    published_time: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> StoreInfo:
        self.created_at = value
        return self

    def with_default_language(self, value: str) -> StoreInfo:
        self.default_language = value
        return self

    def with_default_region(self, value: str) -> StoreInfo:
        self.default_region = value
        return self

    def with_namespace(self, value: str) -> StoreInfo:
        self.namespace = value
        return self

    def with_published(self, value: bool) -> StoreInfo:
        self.published = value
        return self

    def with_store_id(self, value: str) -> StoreInfo:
        self.store_id = value
        return self

    def with_supported_languages(self, value: List[str]) -> StoreInfo:
        self.supported_languages = value
        return self

    def with_supported_regions(self, value: List[str]) -> StoreInfo:
        self.supported_regions = value
        return self

    def with_title(self, value: str) -> StoreInfo:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> StoreInfo:
        self.updated_at = value
        return self

    def with_description(self, value: str) -> StoreInfo:
        self.description = value
        return self

    def with_published_time(self, value: str) -> StoreInfo:
        self.published_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = ""
        if hasattr(self, "default_region"):
            result["defaultRegion"] = str(self.default_region)
        elif include_empty:
            result["defaultRegion"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "published"):
            result["published"] = bool(self.published)
        elif include_empty:
            result["published"] = False
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "supported_languages"):
            result["supportedLanguages"] = [str(i0) for i0 in self.supported_languages]
        elif include_empty:
            result["supportedLanguages"] = []
        if hasattr(self, "supported_regions"):
            result["supportedRegions"] = [str(i0) for i0 in self.supported_regions]
        elif include_empty:
            result["supportedRegions"] = []
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "published_time"):
            result["publishedTime"] = str(self.published_time)
        elif include_empty:
            result["publishedTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        default_language: str,
        default_region: str,
        namespace: str,
        published: bool,
        store_id: str,
        supported_languages: List[str],
        supported_regions: List[str],
        title: str,
        updated_at: str,
        description: Optional[str] = None,
        published_time: Optional[str] = None,
    ) -> StoreInfo:
        instance = cls()
        instance.created_at = created_at
        instance.default_language = default_language
        instance.default_region = default_region
        instance.namespace = namespace
        instance.published = published
        instance.store_id = store_id
        instance.supported_languages = supported_languages
        instance.supported_regions = supported_regions
        instance.title = title
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = ""
        if "defaultRegion" in dict_ and dict_["defaultRegion"] is not None:
            instance.default_region = str(dict_["defaultRegion"])
        elif include_empty:
            instance.default_region = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "published" in dict_ and dict_["published"] is not None:
            instance.published = bool(dict_["published"])
        elif include_empty:
            instance.published = False
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "supportedLanguages" in dict_ and dict_["supportedLanguages"] is not None:
            instance.supported_languages = [
                str(i0) for i0 in dict_["supportedLanguages"]
            ]
        elif include_empty:
            instance.supported_languages = []
        if "supportedRegions" in dict_ and dict_["supportedRegions"] is not None:
            instance.supported_regions = [str(i0) for i0 in dict_["supportedRegions"]]
        elif include_empty:
            instance.supported_regions = []
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "publishedTime" in dict_ and dict_["publishedTime"] is not None:
            instance.published_time = str(dict_["publishedTime"])
        elif include_empty:
            instance.published_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StoreInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StoreInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StoreInfo, List[StoreInfo], Dict[Any, StoreInfo]]:
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
            "createdAt": "created_at",
            "defaultLanguage": "default_language",
            "defaultRegion": "default_region",
            "namespace": "namespace",
            "published": "published",
            "storeId": "store_id",
            "supportedLanguages": "supported_languages",
            "supportedRegions": "supported_regions",
            "title": "title",
            "updatedAt": "updated_at",
            "description": "description",
            "publishedTime": "published_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "defaultLanguage": True,
            "defaultRegion": True,
            "namespace": True,
            "published": True,
            "storeId": True,
            "supportedLanguages": True,
            "supportedRegions": True,
            "title": True,
            "updatedAt": True,
            "description": False,
            "publishedTime": False,
        }

    # endregion static methods
