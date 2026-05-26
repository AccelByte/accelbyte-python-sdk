# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class CheckBalanceResponse(Model):
    """Check balance response (CheckBalanceResponse)

    Properties:
        enough_balance: (enoughBalance) OPTIONAL bool
    """

    # region fields

    enough_balance: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enough_balance(self, value: bool) -> CheckBalanceResponse:
        self.enough_balance = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enough_balance"):
            result["enoughBalance"] = bool(self.enough_balance)
        elif include_empty:
            result["enoughBalance"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, enough_balance: Optional[bool] = None, **kwargs
    ) -> CheckBalanceResponse:
        instance = cls()
        if enough_balance is not None:
            instance.enough_balance = enough_balance
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CheckBalanceResponse:
        instance = cls()
        if not dict_:
            return instance
        if "enoughBalance" in dict_ and dict_["enoughBalance"] is not None:
            instance.enough_balance = bool(dict_["enoughBalance"])
        elif include_empty:
            instance.enough_balance = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CheckBalanceResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CheckBalanceResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CheckBalanceResponse,
        List[CheckBalanceResponse],
        Dict[Any, CheckBalanceResponse],
    ]:
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
            "enoughBalance": "enough_balance",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enoughBalance": False,
        }

    # endregion static methods
