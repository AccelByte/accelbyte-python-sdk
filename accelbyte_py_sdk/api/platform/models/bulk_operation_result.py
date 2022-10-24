# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class BulkOperationResult(Model):
    """Bulk operation result (BulkOperationResult)

    Properties:
        affected: (affected) OPTIONAL int
    """

    # region fields

    affected: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_affected(self, value: int) -> BulkOperationResult:
        self.affected = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "affected"):
            result["affected"] = int(self.affected)
        elif include_empty:
            result["affected"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        affected: Optional[int] = None,
    ) -> BulkOperationResult:
        instance = cls()
        if affected is not None:
            instance.affected = affected
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkOperationResult:
        instance = cls()
        if not dict_:
            return instance
        if "affected" in dict_ and dict_["affected"] is not None:
            instance.affected = int(dict_["affected"])
        elif include_empty:
            instance.affected = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkOperationResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkOperationResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkOperationResult, List[BulkOperationResult], Dict[Any, BulkOperationResult]
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
            "affected": "affected",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "affected": False,
        }

    # endregion static methods
