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


class FullCategoryInfo(Model):
    """Full category info (FullCategoryInfo)

    Properties:
        category_path: (categoryPath) REQUIRED str

        created_at: (createdAt) REQUIRED str

        localization_display_names: (localizationDisplayNames) REQUIRED Dict[str, str]

        namespace: (namespace) REQUIRED str

        parent_category_path: (parentCategoryPath) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        root: (root) OPTIONAL bool
    """

    # region fields

    category_path: str                                                                             # REQUIRED
    created_at: str                                                                                # REQUIRED
    localization_display_names: Dict[str, str]                                                     # REQUIRED
    namespace: str                                                                                 # REQUIRED
    parent_category_path: str                                                                      # REQUIRED
    updated_at: str                                                                                # REQUIRED
    root: bool                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category_path(self, value: str) -> FullCategoryInfo:
        self.category_path = value
        return self

    def with_created_at(self, value: str) -> FullCategoryInfo:
        self.created_at = value
        return self

    def with_localization_display_names(self, value: Dict[str, str]) -> FullCategoryInfo:
        self.localization_display_names = value
        return self

    def with_namespace(self, value: str) -> FullCategoryInfo:
        self.namespace = value
        return self

    def with_parent_category_path(self, value: str) -> FullCategoryInfo:
        self.parent_category_path = value
        return self

    def with_updated_at(self, value: str) -> FullCategoryInfo:
        self.updated_at = value
        return self

    def with_root(self, value: bool) -> FullCategoryInfo:
        self.root = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "localization_display_names"):
            result["localizationDisplayNames"] = {str(k0): str(v0) for k0, v0 in self.localization_display_names.items()}
        elif include_empty:
            result["localizationDisplayNames"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "parent_category_path"):
            result["parentCategoryPath"] = str(self.parent_category_path)
        elif include_empty:
            result["parentCategoryPath"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "root"):
            result["root"] = bool(self.root)
        elif include_empty:
            result["root"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        parent_category_path: str,
        category_path: str,
        created_at: str,
        updated_at: str,
        localization_display_names: Dict[str, str],
        root: Optional[bool] = None,
    ) -> FullCategoryInfo:
        instance = cls()
        instance.namespace = namespace
        instance.parent_category_path = parent_category_path
        instance.category_path = category_path
        instance.created_at = created_at
        instance.updated_at = updated_at
        instance.localization_display_names = localization_display_names
        if root is not None:
            instance.root = root
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FullCategoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "localizationDisplayNames" in dict_ and dict_["localizationDisplayNames"] is not None:
            instance.localization_display_names = {str(k0): str(v0) for k0, v0 in dict_["localizationDisplayNames"].items()}
        elif include_empty:
            instance.localization_display_names = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "parentCategoryPath" in dict_ and dict_["parentCategoryPath"] is not None:
            instance.parent_category_path = str(dict_["parentCategoryPath"])
        elif include_empty:
            instance.parent_category_path = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "root" in dict_ and dict_["root"] is not None:
            instance.root = bool(dict_["root"])
        elif include_empty:
            instance.root = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "categoryPath": "category_path",
            "createdAt": "created_at",
            "localizationDisplayNames": "localization_display_names",
            "namespace": "namespace",
            "parentCategoryPath": "parent_category_path",
            "updatedAt": "updated_at",
            "root": "root",
        }

    # endregion static methods
