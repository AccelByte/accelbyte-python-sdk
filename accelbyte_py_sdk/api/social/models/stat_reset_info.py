# justice-social-service (1.18.1)

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


class StatResetInfo(Model):
    """Stat reset info (StatResetInfo)

    Properties:
        additional_data: (additionalData) OPTIONAL Dict[str, Any]
    """

    # region fields

    additional_data: Dict[str, Any]                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_additional_data(self, value: Dict[str, Any]) -> StatResetInfo:
        self.additional_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_data"):
            result["additionalData"] = {str(k0): v0 for k0, v0 in self.additional_data.items()}
        elif include_empty:
            result["additionalData"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_data: Optional[Dict[str, Any]] = None,
    ) -> StatResetInfo:
        instance = cls()
        if additional_data is not None:
            instance.additional_data = additional_data
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatResetInfo:
        instance = cls()
        if not dict_:
            return instance
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = {str(k0): v0 for k0, v0 in dict_["additionalData"].items()}
        elif include_empty:
            instance.additional_data = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "additionalData": "additional_data",
        }

    # endregion static methods
