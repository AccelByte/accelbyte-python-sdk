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

from ..models.fulfill_item_result import FulfillItemResult


class FulfillmentStateInfo(Model):
    """Fulfillment state info (FulfillmentStateInfo)

    Properties:
        failed_list: (failedList) OPTIONAL List[FulfillItemResult]

        success_list: (successList) OPTIONAL List[FulfillItemResult]
    """

    # region fields

    failed_list: List[FulfillItemResult]  # OPTIONAL
    success_list: List[FulfillItemResult]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_failed_list(self, value: List[FulfillItemResult]) -> FulfillmentStateInfo:
        self.failed_list = value
        return self

    def with_success_list(self, value: List[FulfillItemResult]) -> FulfillmentStateInfo:
        self.success_list = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failed_list"):
            result["failedList"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.failed_list
            ]
        elif include_empty:
            result["failedList"] = []
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
        failed_list: Optional[List[FulfillItemResult]] = None,
        success_list: Optional[List[FulfillItemResult]] = None,
        **kwargs,
    ) -> FulfillmentStateInfo:
        instance = cls()
        if failed_list is not None:
            instance.failed_list = failed_list
        if success_list is not None:
            instance.success_list = success_list
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentStateInfo:
        instance = cls()
        if not dict_:
            return instance
        if "failedList" in dict_ and dict_["failedList"] is not None:
            instance.failed_list = [
                FulfillItemResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["failedList"]
            ]
        elif include_empty:
            instance.failed_list = []
        if "successList" in dict_ and dict_["successList"] is not None:
            instance.success_list = [
                FulfillItemResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["successList"]
            ]
        elif include_empty:
            instance.success_list = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentStateInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentStateInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentStateInfo,
        List[FulfillmentStateInfo],
        Dict[Any, FulfillmentStateInfo],
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
            "failedList": "failed_list",
            "successList": "success_list",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failedList": False,
            "successList": False,
        }

    # endregion static methods
