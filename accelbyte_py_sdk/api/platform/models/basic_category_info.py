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


class BasicCategoryInfo(Model):
    """Basic category info (BasicCategoryInfo)

    Properties:
        category_path: (categoryPath) REQUIRED str

        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        parent_category_path: (parentCategoryPath) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        root: (root) OPTIONAL bool
    """

    # region fields

    category_path: str  # REQUIRED
    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    parent_category_path: str  # REQUIRED
    updated_at: str  # REQUIRED
    root: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category_path(self, value: str) -> BasicCategoryInfo:
        self.category_path = value
        return self

    def with_created_at(self, value: str) -> BasicCategoryInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> BasicCategoryInfo:
        self.namespace = value
        return self

    def with_parent_category_path(self, value: str) -> BasicCategoryInfo:
        self.parent_category_path = value
        return self

    def with_updated_at(self, value: str) -> BasicCategoryInfo:
        self.updated_at = value
        return self

    def with_root(self, value: bool) -> BasicCategoryInfo:
        self.root = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "parent_category_path"):
            result["parentCategoryPath"] = str(self.parent_category_path)
        elif include_empty:
            result["parentCategoryPath"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "root"):
            result["root"] = bool(self.root)
        elif include_empty:
            result["root"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category_path: str,
        created_at: str,
        namespace: str,
        parent_category_path: str,
        updated_at: str,
        root: Optional[bool] = None,
    ) -> BasicCategoryInfo:
        instance = cls()
        instance.category_path = category_path
        instance.created_at = created_at
        instance.namespace = namespace
        instance.parent_category_path = parent_category_path
        instance.updated_at = updated_at
        if root is not None:
            instance.root = root
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BasicCategoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "parentCategoryPath" in dict_ and dict_["parentCategoryPath"] is not None:
            instance.parent_category_path = str(dict_["parentCategoryPath"])
        elif include_empty:
            instance.parent_category_path = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "root" in dict_ and dict_["root"] is not None:
            instance.root = bool(dict_["root"])
        elif include_empty:
            instance.root = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BasicCategoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BasicCategoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BasicCategoryInfo, List[BasicCategoryInfo], Dict[Any, BasicCategoryInfo]
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
            "categoryPath": "category_path",
            "createdAt": "created_at",
            "namespace": "namespace",
            "parentCategoryPath": "parent_category_path",
            "updatedAt": "updated_at",
            "root": "root",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "categoryPath": True,
            "createdAt": True,
            "namespace": True,
            "parentCategoryPath": True,
            "updatedAt": True,
            "root": False,
        }

    # endregion static methods
