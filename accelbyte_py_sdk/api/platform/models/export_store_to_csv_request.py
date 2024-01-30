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


class CatalogTypeEnum(StrEnum):
    APP = "APP"
    CATEGORY = "CATEGORY"
    ITEM = "ITEM"
    SECTION = "SECTION"
    VIEW = "VIEW"


class ExportStoreToCSVRequest(Model):
    """Export store to CSV request (ExportStoreToCSVRequest)

    Properties:
        catalog_type: (catalogType) REQUIRED Union[str, CatalogTypeEnum]

        fields_to_be_included: (fieldsToBeIncluded) OPTIONAL List[str]

        ids_to_be_exported: (idsToBeExported) OPTIONAL List[str]

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    catalog_type: Union[str, CatalogTypeEnum]  # REQUIRED
    fields_to_be_included: List[str]  # OPTIONAL
    ids_to_be_exported: List[str]  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_catalog_type(
        self, value: Union[str, CatalogTypeEnum]
    ) -> ExportStoreToCSVRequest:
        self.catalog_type = value
        return self

    def with_fields_to_be_included(self, value: List[str]) -> ExportStoreToCSVRequest:
        self.fields_to_be_included = value
        return self

    def with_ids_to_be_exported(self, value: List[str]) -> ExportStoreToCSVRequest:
        self.ids_to_be_exported = value
        return self

    def with_store_id(self, value: str) -> ExportStoreToCSVRequest:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "catalog_type"):
            result["catalogType"] = str(self.catalog_type)
        elif include_empty:
            result["catalogType"] = Union[str, CatalogTypeEnum]()
        if hasattr(self, "fields_to_be_included"):
            result["fieldsToBeIncluded"] = [
                str(i0) for i0 in self.fields_to_be_included
            ]
        elif include_empty:
            result["fieldsToBeIncluded"] = []
        if hasattr(self, "ids_to_be_exported"):
            result["idsToBeExported"] = [str(i0) for i0 in self.ids_to_be_exported]
        elif include_empty:
            result["idsToBeExported"] = []
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        catalog_type: Union[str, CatalogTypeEnum],
        fields_to_be_included: Optional[List[str]] = None,
        ids_to_be_exported: Optional[List[str]] = None,
        store_id: Optional[str] = None,
        **kwargs,
    ) -> ExportStoreToCSVRequest:
        instance = cls()
        instance.catalog_type = catalog_type
        if fields_to_be_included is not None:
            instance.fields_to_be_included = fields_to_be_included
        if ids_to_be_exported is not None:
            instance.ids_to_be_exported = ids_to_be_exported
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExportStoreToCSVRequest:
        instance = cls()
        if not dict_:
            return instance
        if "catalogType" in dict_ and dict_["catalogType"] is not None:
            instance.catalog_type = str(dict_["catalogType"])
        elif include_empty:
            instance.catalog_type = Union[str, CatalogTypeEnum]()
        if "fieldsToBeIncluded" in dict_ and dict_["fieldsToBeIncluded"] is not None:
            instance.fields_to_be_included = [
                str(i0) for i0 in dict_["fieldsToBeIncluded"]
            ]
        elif include_empty:
            instance.fields_to_be_included = []
        if "idsToBeExported" in dict_ and dict_["idsToBeExported"] is not None:
            instance.ids_to_be_exported = [str(i0) for i0 in dict_["idsToBeExported"]]
        elif include_empty:
            instance.ids_to_be_exported = []
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ExportStoreToCSVRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ExportStoreToCSVRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ExportStoreToCSVRequest,
        List[ExportStoreToCSVRequest],
        Dict[Any, ExportStoreToCSVRequest],
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
            "catalogType": "catalog_type",
            "fieldsToBeIncluded": "fields_to_be_included",
            "idsToBeExported": "ids_to_be_exported",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "catalogType": True,
            "fieldsToBeIncluded": False,
            "idsToBeExported": False,
            "storeId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "catalogType": ["APP", "CATEGORY", "ITEM", "SECTION", "VIEW"],
        }

    # endregion static methods
