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

from ..models.entitlement_grant_result import EntitlementGrantResult


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS"
    SUCCESS = "SUCCESS"


class BulkEntitlementGrantResult(Model):
    """Bulk entitlement grant result (BulkEntitlementGrantResult)

    Properties:
        fail_list: (failList) OPTIONAL List[EntitlementGrantResult]

        status: (status) OPTIONAL Union[str, StatusEnum]

        success_list: (successList) OPTIONAL List[EntitlementGrantResult]
    """

    # region fields

    fail_list: List[EntitlementGrantResult]  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    success_list: List[EntitlementGrantResult]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_fail_list(
        self, value: List[EntitlementGrantResult]
    ) -> BulkEntitlementGrantResult:
        self.fail_list = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> BulkEntitlementGrantResult:
        self.status = value
        return self

    def with_success_list(
        self, value: List[EntitlementGrantResult]
    ) -> BulkEntitlementGrantResult:
        self.success_list = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fail_list"):
            result["failList"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.fail_list
            ]
        elif include_empty:
            result["failList"] = []
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "success_list"):
            result["successList"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.success_list
            ]
        elif include_empty:
            result["successList"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        fail_list: Optional[List[EntitlementGrantResult]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        success_list: Optional[List[EntitlementGrantResult]] = None,
        **kwargs,
    ) -> BulkEntitlementGrantResult:
        instance = cls()
        if fail_list is not None:
            instance.fail_list = fail_list
        if status is not None:
            instance.status = status
        if success_list is not None:
            instance.success_list = success_list
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkEntitlementGrantResult:
        instance = cls()
        if not dict_:
            return instance
        if "failList" in dict_ and dict_["failList"] is not None:
            instance.fail_list = [
                EntitlementGrantResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["failList"]
            ]
        elif include_empty:
            instance.fail_list = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "successList" in dict_ and dict_["successList"] is not None:
            instance.success_list = [
                EntitlementGrantResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["successList"]
            ]
        elif include_empty:
            instance.success_list = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkEntitlementGrantResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkEntitlementGrantResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkEntitlementGrantResult,
        List[BulkEntitlementGrantResult],
        Dict[Any, BulkEntitlementGrantResult],
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
            "failList": "fail_list",
            "status": "status",
            "successList": "success_list",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failList": False,
            "status": False,
            "successList": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "PARTIAL_SUCCESS", "SUCCESS"],
        }

    # endregion static methods
