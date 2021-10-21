# justice-dsm-controller-service (2.6.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ModelsImportResponse(Model):
    """Models import response (models.ImportResponse)

    Properties:
        affected: (affected) REQUIRED List[str]

        failed: (failed) REQUIRED List[str]
    """

    # region fields

    affected: List[str]                                                                            # REQUIRED
    failed: List[str]                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_affected(self, value: List[str]) -> ModelsImportResponse:
        self.affected = value
        return self

    def with_failed(self, value: List[str]) -> ModelsImportResponse:
        self.failed = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "affected") and self.affected:
            result["affected"] = [str(i0) for i0 in self.affected]
        elif include_empty:
            result["affected"] = []
        if hasattr(self, "failed") and self.failed:
            result["failed"] = [str(i0) for i0 in self.failed]
        elif include_empty:
            result["failed"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        affected: List[str],
        failed: List[str],
    ) -> ModelsImportResponse:
        instance = cls()
        instance.affected = affected
        instance.failed = failed
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsImportResponse:
        instance = cls()
        if not dict_:
            return instance
        if "affected" in dict_ and dict_["affected"] is not None:
            instance.affected = [str(i0) for i0 in dict_["affected"]]
        elif include_empty:
            instance.affected = []
        if "failed" in dict_ and dict_["failed"] is not None:
            instance.failed = [str(i0) for i0 in dict_["failed"]]
        elif include_empty:
            instance.failed = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "affected": "affected",
            "failed": "failed",
        }

    # endregion static methods
