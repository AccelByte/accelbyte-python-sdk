# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class TicketSaleDecrementRequest(Model):
    """Ticket sale decrement request (TicketSaleDecrementRequest)

    Properties:
        order_no: (orderNo) REQUIRED str
    """

    # region fields

    order_no: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_order_no(self, value: str) -> TicketSaleDecrementRequest:
        self.order_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        order_no: str,
    ) -> TicketSaleDecrementRequest:
        instance = cls()
        instance.order_no = order_no
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TicketSaleDecrementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TicketSaleDecrementRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TicketSaleDecrementRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TicketSaleDecrementRequest,
        List[TicketSaleDecrementRequest],
        Dict[Any, TicketSaleDecrementRequest],
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
            "orderNo": "order_no",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "orderNo": True,
        }

    # endregion static methods
