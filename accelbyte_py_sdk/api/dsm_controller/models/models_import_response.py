# Auto-generated at 2021-10-14T22:17:08.962435+08:00
# from: Justice DsmController Service (2.4.0)

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
    """

    # region fields

    affected: List[str]                                                                            # REQUIRED

    # endregion fields

    # region with_x methods

    def with_affected(self, value: List[str]) -> ModelsImportResponse:
        self.affected = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "affected") and self.affected:
            result["affected"] = [str(i0) for i0 in self.affected]
        elif include_empty:
            result["affected"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        affected: List[str],
    ) -> ModelsImportResponse:
        instance = cls()
        instance.affected = affected
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
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "affected": "affected",
        }

    # endregion static methods
