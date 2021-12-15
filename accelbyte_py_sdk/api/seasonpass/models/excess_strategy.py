# justice-seasonpass-service (1.5.0)

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


class ExcessStrategy(Model):
    """Excess strategy (ExcessStrategy)

    Properties:
        method: (method) REQUIRED str

        currency: (currency) OPTIONAL str

        percent_per_exp: (percentPerExp) OPTIONAL int
    """

    # region fields

    method: str                                                                                    # REQUIRED
    currency: str                                                                                  # OPTIONAL
    percent_per_exp: int                                                                           # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_method(self, value: str) -> ExcessStrategy:
        self.method = value
        return self

    def with_currency(self, value: str) -> ExcessStrategy:
        self.currency = value
        return self

    def with_percent_per_exp(self, value: int) -> ExcessStrategy:
        self.percent_per_exp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "method"):
            result["method"] = str(self.method)
        elif include_empty:
            result["method"] = str()
        if hasattr(self, "currency"):
            result["currency"] = str(self.currency)
        elif include_empty:
            result["currency"] = str()
        if hasattr(self, "percent_per_exp"):
            result["percentPerExp"] = int(self.percent_per_exp)
        elif include_empty:
            result["percentPerExp"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        method: str,
        currency: Optional[str] = None,
        percent_per_exp: Optional[int] = None,
    ) -> ExcessStrategy:
        instance = cls()
        instance.method = method
        if currency is not None:
            instance.currency = currency
        if percent_per_exp is not None:
            instance.percent_per_exp = percent_per_exp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ExcessStrategy:
        instance = cls()
        if not dict_:
            return instance
        if "method" in dict_ and dict_["method"] is not None:
            instance.method = str(dict_["method"])
        elif include_empty:
            instance.method = str()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = str(dict_["currency"])
        elif include_empty:
            instance.currency = str()
        if "percentPerExp" in dict_ and dict_["percentPerExp"] is not None:
            instance.percent_per_exp = int(dict_["percentPerExp"])
        elif include_empty:
            instance.percent_per_exp = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "method": "method",
            "currency": "currency",
            "percentPerExp": "percent_per_exp",
        }

    # endregion static methods
