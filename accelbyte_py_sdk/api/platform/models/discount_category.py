# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class DiscountCategory(Model):
    """Discount category (DiscountCategory)

    Properties:
        category_path: (categoryPath) REQUIRED str

        include_sub_categories: (includeSubCategories) OPTIONAL bool
    """

    # region fields

    category_path: str  # REQUIRED
    include_sub_categories: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category_path(self, value: str) -> DiscountCategory:
        self.category_path = value
        return self

    def with_include_sub_categories(self, value: bool) -> DiscountCategory:
        self.include_sub_categories = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "include_sub_categories"):
            result["includeSubCategories"] = bool(self.include_sub_categories)
        elif include_empty:
            result["includeSubCategories"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, category_path: str, include_sub_categories: Optional[bool] = None, **kwargs
    ) -> DiscountCategory:
        instance = cls()
        instance.category_path = category_path
        if include_sub_categories is not None:
            instance.include_sub_categories = include_sub_categories
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DiscountCategory:
        instance = cls()
        if not dict_:
            return instance
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if (
            "includeSubCategories" in dict_
            and dict_["includeSubCategories"] is not None
        ):
            instance.include_sub_categories = bool(dict_["includeSubCategories"])
        elif include_empty:
            instance.include_sub_categories = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DiscountCategory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DiscountCategory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DiscountCategory, List[DiscountCategory], Dict[Any, DiscountCategory]]:
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
            "includeSubCategories": "include_sub_categories",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "categoryPath": True,
            "includeSubCategories": False,
        }

    # endregion static methods
