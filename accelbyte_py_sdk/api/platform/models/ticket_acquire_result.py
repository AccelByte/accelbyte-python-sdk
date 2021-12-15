# justice-platform-service (3.39.0)

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


class TicketAcquireResult(Model):
    """Ticket acquire result (TicketAcquireResult)

    Properties:
        values: (values) OPTIONAL List[str]
    """

    # region fields

    values: List[str]                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_values(self, value: List[str]) -> TicketAcquireResult:
        self.values = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "values"):
            result["values"] = [str(i0) for i0 in self.values]
        elif include_empty:
            result["values"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        values: Optional[List[str]] = None,
    ) -> TicketAcquireResult:
        instance = cls()
        if values is not None:
            instance.values = values
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TicketAcquireResult:
        instance = cls()
        if not dict_:
            return instance
        if "values" in dict_ and dict_["values"] is not None:
            instance.values = [str(i0) for i0 in dict_["values"]]
        elif include_empty:
            instance.values = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "values": "values",
        }

    # endregion static methods
