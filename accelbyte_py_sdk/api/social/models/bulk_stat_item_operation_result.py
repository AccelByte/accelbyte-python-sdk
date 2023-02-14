# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.33.0)

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


class BulkStatItemOperationResult(Model):
    """Bulk stat item operation result (BulkStatItemOperationResult)

    Properties:
        details: (details) OPTIONAL Dict[str, Any]

        stat_code: (statCode) OPTIONAL str

        success: (success) OPTIONAL bool
    """

    # region fields

    details: Dict[str, Any]  # OPTIONAL
    stat_code: str  # OPTIONAL
    success: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_details(self, value: Dict[str, Any]) -> BulkStatItemOperationResult:
        self.details = value
        return self

    def with_stat_code(self, value: str) -> BulkStatItemOperationResult:
        self.stat_code = value
        return self

    def with_success(self, value: bool) -> BulkStatItemOperationResult:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "details"):
            result["details"] = {str(k0): v0 for k0, v0 in self.details.items()}
        elif include_empty:
            result["details"] = {}
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
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
        details: Optional[Dict[str, Any]] = None,
        stat_code: Optional[str] = None,
        success: Optional[bool] = None,
    ) -> BulkStatItemOperationResult:
        instance = cls()
        if details is not None:
            instance.details = details
        if stat_code is not None:
            instance.stat_code = stat_code
        if success is not None:
            instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkStatItemOperationResult:
        instance = cls()
        if not dict_:
            return instance
        if "details" in dict_ and dict_["details"] is not None:
            instance.details = {str(k0): v0 for k0, v0 in dict_["details"].items()}
        elif include_empty:
            instance.details = {}
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkStatItemOperationResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkStatItemOperationResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkStatItemOperationResult,
        List[BulkStatItemOperationResult],
        Dict[Any, BulkStatItemOperationResult],
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
            "details": "details",
            "statCode": "stat_code",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "details": False,
            "statCode": False,
            "success": False,
        }

    # endregion static methods
