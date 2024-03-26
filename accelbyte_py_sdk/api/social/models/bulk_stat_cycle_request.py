# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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


class BulkStatCycleRequest(Model):
    """Bulk stat cycle request (BulkStatCycleRequest)

    Properties:
        cycle_ids: (cycleIds) REQUIRED List[str]
    """

    # region fields

    cycle_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cycle_ids(self, value: List[str]) -> BulkStatCycleRequest:
        self.cycle_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, cycle_ids: List[str], **kwargs) -> BulkStatCycleRequest:
        instance = cls()
        instance.cycle_ids = cycle_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkStatCycleRequest:
        instance = cls()
        if not dict_:
            return instance
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkStatCycleRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkStatCycleRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkStatCycleRequest,
        List[BulkStatCycleRequest],
        Dict[Any, BulkStatCycleRequest],
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
            "cycleIds": "cycle_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cycleIds": True,
        }

    # endregion static methods
