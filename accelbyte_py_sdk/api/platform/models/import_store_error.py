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
from ....core import StrEnum

from ..models.import_error_details import ImportErrorDetails
from ..models.import_store_item_info import ImportStoreItemInfo


class TypeEnum(StrEnum):
    ITEM = "ITEM"


class ImportStoreError(Model):
    """Import store error (ImportStoreError)

    Properties:
        errors: (errors) OPTIONAL List[ImportErrorDetails]

        item: (item) OPTIONAL ImportStoreItemInfo

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    errors: List[ImportErrorDetails]  # OPTIONAL
    item: ImportStoreItemInfo  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_errors(self, value: List[ImportErrorDetails]) -> ImportStoreError:
        self.errors = value
        return self

    def with_item(self, value: ImportStoreItemInfo) -> ImportStoreError:
        self.item = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> ImportStoreError:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        errors: Optional[List[ImportErrorDetails]] = None,
        item: Optional[ImportStoreItemInfo] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
    ) -> ImportStoreError:
        instance = cls()
        if errors is not None:
            instance.errors = errors
        if item is not None:
            instance.item = item
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportStoreError:
        instance = cls()
        if not dict_:
            return instance
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
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
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
            "errors": "errors",
            "item": "item",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errors": False,
            "item": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["ITEM"],
        }

    # endregion static methods
