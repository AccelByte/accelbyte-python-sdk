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


class ImportStoreCategoryInfo(Model):
    """Import store category info (ImportStoreCategoryInfo)

    Properties:
        category_id: (categoryId) OPTIONAL str

        category_path: (categoryPath) OPTIONAL str

        namespace: (namespace) OPTIONAL str
    """

    # region fields

    category_id: str  # OPTIONAL
    category_path: str  # OPTIONAL
    namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category_id(self, value: str) -> ImportStoreCategoryInfo:
        self.category_id = value
        return self

    def with_category_path(self, value: str) -> ImportStoreCategoryInfo:
        self.category_path = value
        return self

    def with_namespace(self, value: str) -> ImportStoreCategoryInfo:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_id"):
            result["categoryId"] = str(self.category_id)
        elif include_empty:
            result["categoryId"] = ""
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category_id: Optional[str] = None,
        category_path: Optional[str] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> ImportStoreCategoryInfo:
        instance = cls()
        if category_id is not None:
            instance.category_id = category_id
        if category_path is not None:
            instance.category_path = category_path
        if namespace is not None:
            instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportStoreCategoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "categoryId" in dict_ and dict_["categoryId"] is not None:
            instance.category_id = str(dict_["categoryId"])
        elif include_empty:
            instance.category_id = ""
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ImportStoreCategoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ImportStoreCategoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ImportStoreCategoryInfo,
        List[ImportStoreCategoryInfo],
        Dict[Any, ImportStoreCategoryInfo],
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
            "categoryId": "category_id",
            "categoryPath": "category_path",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "categoryId": False,
            "categoryPath": False,
            "namespace": False,
        }

    # endregion static methods
