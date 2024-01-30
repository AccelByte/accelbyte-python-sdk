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
from ....core import StrEnum

from ..models.import_error_details import ImportErrorDetails
from ..models.import_store_app_info import ImportStoreAppInfo
from ..models.import_store_category_info import ImportStoreCategoryInfo
from ..models.import_store_item_info import ImportStoreItemInfo
from ..models.import_store_section_info import ImportStoreSectionInfo
from ..models.import_store_view_info import ImportStoreViewInfo


class TypeEnum(StrEnum):
    APP = "APP"
    CATEGORY = "CATEGORY"
    ITEM = "ITEM"
    SECTION = "SECTION"
    STORE = "STORE"
    VIEW = "VIEW"


class ImportStoreError(Model):
    """Import store error (ImportStoreError)

    Properties:
        app: (app) OPTIONAL ImportStoreAppInfo

        category: (category) OPTIONAL ImportStoreCategoryInfo

        errors: (errors) OPTIONAL List[ImportErrorDetails]

        item: (item) OPTIONAL ImportStoreItemInfo

        section: (section) OPTIONAL ImportStoreSectionInfo

        type_: (type) OPTIONAL Union[str, TypeEnum]

        view: (view) OPTIONAL ImportStoreViewInfo
    """

    # region fields

    app: ImportStoreAppInfo  # OPTIONAL
    category: ImportStoreCategoryInfo  # OPTIONAL
    errors: List[ImportErrorDetails]  # OPTIONAL
    item: ImportStoreItemInfo  # OPTIONAL
    section: ImportStoreSectionInfo  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    view: ImportStoreViewInfo  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app(self, value: ImportStoreAppInfo) -> ImportStoreError:
        self.app = value
        return self

    def with_category(self, value: ImportStoreCategoryInfo) -> ImportStoreError:
        self.category = value
        return self

    def with_errors(self, value: List[ImportErrorDetails]) -> ImportStoreError:
        self.errors = value
        return self

    def with_item(self, value: ImportStoreItemInfo) -> ImportStoreError:
        self.item = value
        return self

    def with_section(self, value: ImportStoreSectionInfo) -> ImportStoreError:
        self.section = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> ImportStoreError:
        self.type_ = value
        return self

    def with_view(self, value: ImportStoreViewInfo) -> ImportStoreError:
        self.view = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app"):
            result["app"] = self.app.to_dict(include_empty=include_empty)
        elif include_empty:
            result["app"] = ImportStoreAppInfo()
        if hasattr(self, "category"):
            result["category"] = self.category.to_dict(include_empty=include_empty)
        elif include_empty:
            result["category"] = ImportStoreCategoryInfo()
        if hasattr(self, "errors"):
            result["errors"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.errors
            ]
        elif include_empty:
            result["errors"] = []
        if hasattr(self, "item"):
            result["item"] = self.item.to_dict(include_empty=include_empty)
        elif include_empty:
            result["item"] = ImportStoreItemInfo()
        if hasattr(self, "section"):
            result["section"] = self.section.to_dict(include_empty=include_empty)
        elif include_empty:
            result["section"] = ImportStoreSectionInfo()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "view"):
            result["view"] = self.view.to_dict(include_empty=include_empty)
        elif include_empty:
            result["view"] = ImportStoreViewInfo()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app: Optional[ImportStoreAppInfo] = None,
        category: Optional[ImportStoreCategoryInfo] = None,
        errors: Optional[List[ImportErrorDetails]] = None,
        item: Optional[ImportStoreItemInfo] = None,
        section: Optional[ImportStoreSectionInfo] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        view: Optional[ImportStoreViewInfo] = None,
        **kwargs,
    ) -> ImportStoreError:
        instance = cls()
        if app is not None:
            instance.app = app
        if category is not None:
            instance.category = category
        if errors is not None:
            instance.errors = errors
        if item is not None:
            instance.item = item
        if section is not None:
            instance.section = section
        if type_ is not None:
            instance.type_ = type_
        if view is not None:
            instance.view = view
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportStoreError:
        instance = cls()
        if not dict_:
            return instance
        if "app" in dict_ and dict_["app"] is not None:
            instance.app = ImportStoreAppInfo.create_from_dict(
                dict_["app"], include_empty=include_empty
            )
        elif include_empty:
            instance.app = ImportStoreAppInfo()
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = ImportStoreCategoryInfo.create_from_dict(
                dict_["category"], include_empty=include_empty
            )
        elif include_empty:
            instance.category = ImportStoreCategoryInfo()
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = [
                ImportErrorDetails.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["errors"]
            ]
        elif include_empty:
            instance.errors = []
        if "item" in dict_ and dict_["item"] is not None:
            instance.item = ImportStoreItemInfo.create_from_dict(
                dict_["item"], include_empty=include_empty
            )
        elif include_empty:
            instance.item = ImportStoreItemInfo()
        if "section" in dict_ and dict_["section"] is not None:
            instance.section = ImportStoreSectionInfo.create_from_dict(
                dict_["section"], include_empty=include_empty
            )
        elif include_empty:
            instance.section = ImportStoreSectionInfo()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "view" in dict_ and dict_["view"] is not None:
            instance.view = ImportStoreViewInfo.create_from_dict(
                dict_["view"], include_empty=include_empty
            )
        elif include_empty:
            instance.view = ImportStoreViewInfo()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ImportStoreError]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ImportStoreError]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ImportStoreError, List[ImportStoreError], Dict[Any, ImportStoreError]]:
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
            "app": "app",
            "category": "category",
            "errors": "errors",
            "item": "item",
            "section": "section",
            "type": "type_",
            "view": "view",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "app": False,
            "category": False,
            "errors": False,
            "item": False,
            "section": False,
            "type": False,
            "view": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["APP", "CATEGORY", "ITEM", "SECTION", "STORE", "VIEW"],
        }

    # endregion static methods
