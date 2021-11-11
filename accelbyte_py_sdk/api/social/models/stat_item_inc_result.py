# justice-social-service (1.21.0)

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


class StatItemIncResult(Model):
    """Stat item inc result (StatItemIncResult)

    Properties:
        current_value: (currentValue) REQUIRED float
    """

    # region fields

    current_value: float                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_current_value(self, value: float) -> StatItemIncResult:
        self.current_value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_value"):
            result["currentValue"] = float(self.current_value)
        elif include_empty:
            result["currentValue"] = float()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        current_value: float,
    ) -> StatItemIncResult:
        instance = cls()
        instance.current_value = current_value
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatItemIncResult:
        instance = cls()
        if not dict_:
            return instance
        if "currentValue" in dict_ and dict_["currentValue"] is not None:
            instance.current_value = float(dict_["currentValue"])
        elif include_empty:
            instance.current_value = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currentValue": "current_value",
        }

    # endregion static methods
