# justice-leaderboard-service (2.11.2)

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


class V2Entry(Model):
    """V2 entry (v2.Entry)

    Properties:
        point: (point) REQUIRED float

        additional_data: (additionalData) OPTIONAL Dict[str, Any]

        hidden: (hidden) OPTIONAL bool
    """

    # region fields

    point: float                                                                                   # REQUIRED
    additional_data: Dict[str, Any]                                                                # OPTIONAL
    hidden: bool                                                                                   # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_point(self, value: float) -> V2Entry:
        self.point = value
        return self

    def with_additional_data(self, value: Dict[str, Any]) -> V2Entry:
        self.additional_data = value
        return self

    def with_hidden(self, value: bool) -> V2Entry:
        self.hidden = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "point"):
            result["point"] = float(self.point)
        elif include_empty:
            result["point"] = float()
        if hasattr(self, "additional_data"):
            result["additionalData"] = {str(k0): v0 for k0, v0 in self.additional_data.items()}
        elif include_empty:
            result["additionalData"] = {}
        if hasattr(self, "hidden"):
            result["hidden"] = bool(self.hidden)
        elif include_empty:
            result["hidden"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        point: float,
        additional_data: Optional[Dict[str, Any]] = None,
        hidden: Optional[bool] = None,
    ) -> V2Entry:
        instance = cls()
        instance.point = point
        if additional_data is not None:
            instance.additional_data = additional_data
        if hidden is not None:
            instance.hidden = hidden
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> V2Entry:
        instance = cls()
        if not dict_:
            return instance
        if "point" in dict_ and dict_["point"] is not None:
            instance.point = float(dict_["point"])
        elif include_empty:
            instance.point = float()
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = {str(k0): v0 for k0, v0 in dict_["additionalData"].items()}
        elif include_empty:
            instance.additional_data = {}
        if "hidden" in dict_ and dict_["hidden"] is not None:
            instance.hidden = bool(dict_["hidden"])
        elif include_empty:
            instance.hidden = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "point": "point",
            "additionalData": "additional_data",
            "hidden": "hidden",
        }

    # endregion static methods
