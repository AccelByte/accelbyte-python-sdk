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

from ..models.import_store_error import ImportStoreError
from ..models.store_info import StoreInfo


class ImportStoreResult(Model):
    """Import store result (ImportStoreResult)

    Properties:
        errors: (errors) OPTIONAL List[ImportStoreError]

        store_info: (storeInfo) OPTIONAL StoreInfo

        success: (success) OPTIONAL bool
    """

    # region fields

    errors: List[ImportStoreError]  # OPTIONAL
    store_info: StoreInfo  # OPTIONAL
    success: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_errors(self, value: List[ImportStoreError]) -> ImportStoreResult:
        self.errors = value
        return self

    def with_store_info(self, value: StoreInfo) -> ImportStoreResult:
        self.store_info = value
        return self

    def with_success(self, value: bool) -> ImportStoreResult:
        self.success = value
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
        if hasattr(self, "store_info"):
            result["storeInfo"] = self.store_info.to_dict(include_empty=include_empty)
        elif include_empty:
            result["storeInfo"] = StoreInfo()
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        errors: Optional[List[ImportStoreError]] = None,
        store_info: Optional[StoreInfo] = None,
        success: Optional[bool] = None,
    ) -> ImportStoreResult:
        instance = cls()
        if errors is not None:
            instance.errors = errors
        if store_info is not None:
            instance.store_info = store_info
        if success is not None:
            instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportStoreResult:
        instance = cls()
        if not dict_:
            return instance
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = [
                ImportStoreError.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["errors"]
            ]
        elif include_empty:
            instance.errors = []
        if "storeInfo" in dict_ and dict_["storeInfo"] is not None:
            instance.store_info = StoreInfo.create_from_dict(
                dict_["storeInfo"], include_empty=include_empty
            )
        elif include_empty:
            instance.store_info = StoreInfo()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ImportStoreResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ImportStoreResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ImportStoreResult, List[ImportStoreResult], Dict[Any, ImportStoreResult]
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
            "errors": "errors",
            "storeInfo": "store_info",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errors": False,
            "storeInfo": False,
            "success": False,
        }

    # endregion static methods
