# justice-platform-service (3.34.0)

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


class TaxResult(Model):
    """Tax result (TaxResult)

    Properties:
        enable_tax: (enableTax) OPTIONAL bool

        tax: (tax) OPTIONAL int

        formatted_tax: (formattedTax) OPTIONAL str

        state: (state) OPTIONAL str
    """

    # region fields

    enable_tax: bool                                                                               # OPTIONAL
    tax: int                                                                                       # OPTIONAL
    formatted_tax: str                                                                             # OPTIONAL
    state: str                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enable_tax(self, value: bool) -> TaxResult:
        self.enable_tax = value
        return self

    def with_tax(self, value: int) -> TaxResult:
        self.tax = value
        return self

    def with_formatted_tax(self, value: str) -> TaxResult:
        self.formatted_tax = value
        return self

    def with_state(self, value: str) -> TaxResult:
        self.state = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enable_tax") and self.enable_tax:
            result["enableTax"] = bool(self.enable_tax)
        elif include_empty:
            result["enableTax"] = bool()
        if hasattr(self, "tax") and self.tax:
            result["tax"] = int(self.tax)
        elif include_empty:
            result["tax"] = int()
        if hasattr(self, "formatted_tax") and self.formatted_tax:
            result["formattedTax"] = str(self.formatted_tax)
        elif include_empty:
            result["formattedTax"] = str()
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enable_tax: Optional[bool] = None,
        tax: Optional[int] = None,
        formatted_tax: Optional[str] = None,
        state: Optional[str] = None,
    ) -> TaxResult:
        instance = cls()
        if enable_tax is not None:
            instance.enable_tax = enable_tax
        if tax is not None:
            instance.tax = tax
        if formatted_tax is not None:
            instance.formatted_tax = formatted_tax
        if state is not None:
            instance.state = state
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TaxResult:
        instance = cls()
        if not dict_:
            return instance
        if "enableTax" in dict_ and dict_["enableTax"] is not None:
            instance.enable_tax = bool(dict_["enableTax"])
        elif include_empty:
            instance.enable_tax = bool()
        if "tax" in dict_ and dict_["tax"] is not None:
            instance.tax = int(dict_["tax"])
        elif include_empty:
            instance.tax = int()
        if "formattedTax" in dict_ and dict_["formattedTax"] is not None:
            instance.formatted_tax = str(dict_["formattedTax"])
        elif include_empty:
            instance.formatted_tax = str()
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "enableTax": "enable_tax",
            "tax": "tax",
            "formattedTax": "formatted_tax",
            "state": "state",
        }

    # endregion static methods
