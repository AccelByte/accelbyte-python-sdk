# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.currency_summary import CurrencySummary


class OrderSummary(Model):
    """Order summary (OrderSummary)

    Properties:
        currency: (currency) OPTIONAL CurrencySummary

        ext: (ext) OPTIONAL Dict[str, Any]

        free: (free) OPTIONAL bool
    """

    # region fields

    currency: CurrencySummary  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    free: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(self, value: CurrencySummary) -> OrderSummary:
        self.currency = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> OrderSummary:
        self.ext = value
        return self

    def with_free(self, value: bool) -> OrderSummary:
        self.free = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "free"):
            result["free"] = bool(self.free)
        elif include_empty:
            result["free"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: Optional[CurrencySummary] = None,
        ext: Optional[Dict[str, Any]] = None,
        free: Optional[bool] = None,
    ) -> OrderSummary:
        instance = cls()
        if currency is not None:
            instance.currency = currency
        if ext is not None:
            instance.ext = ext
        if free is not None:
            instance.free = free
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderSummary:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "free" in dict_ and dict_["free"] is not None:
            instance.free = bool(dict_["free"])
        elif include_empty:
            instance.free = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OrderSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OrderSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OrderSummary, List[OrderSummary], Dict[Any, OrderSummary]]:
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
            "currency": "currency",
            "ext": "ext",
            "free": "free",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": False,
            "ext": False,
            "free": False,
        }

    # endregion static methods
