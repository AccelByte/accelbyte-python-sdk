# justice-platform-service (3.40.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

    affected: int                                                                                  # OPTIONAL

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
            result["affected"] = int()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BulkOperationResult:
        instance = cls()
        if not dict_:
            return instance
        if "affected" in dict_ and dict_["affected"] is not None:
            instance.affected = int(dict_["affected"])
        elif include_empty:
            instance.affected = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "affected": "affected",
        }

    # endregion static methods
