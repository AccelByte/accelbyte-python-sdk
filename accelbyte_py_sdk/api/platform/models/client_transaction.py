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


class ClientTransaction(Model):
    """Client transaction (ClientTransaction)

    Properties:
        amount_consumed: (amountConsumed) OPTIONAL int

        client_transaction_id: (clientTransactionId) OPTIONAL str
    """

    # region fields

    amount_consumed: int  # OPTIONAL
    client_transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount_consumed(self, value: int) -> ClientTransaction:
        self.amount_consumed = value
        return self

    def with_client_transaction_id(self, value: str) -> ClientTransaction:
        self.client_transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount_consumed"):
            result["amountConsumed"] = int(self.amount_consumed)
        elif include_empty:
            result["amountConsumed"] = 0
        if hasattr(self, "client_transaction_id"):
            result["clientTransactionId"] = str(self.client_transaction_id)
        elif include_empty:
            result["clientTransactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount_consumed: Optional[int] = None,
        client_transaction_id: Optional[str] = None,
        **kwargs,
    ) -> ClientTransaction:
        instance = cls()
        if amount_consumed is not None:
            instance.amount_consumed = amount_consumed
        if client_transaction_id is not None:
            instance.client_transaction_id = client_transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientTransaction:
        instance = cls()
        if not dict_:
            return instance
        if "amountConsumed" in dict_ and dict_["amountConsumed"] is not None:
            instance.amount_consumed = int(dict_["amountConsumed"])
        elif include_empty:
            instance.amount_consumed = 0
        if "clientTransactionId" in dict_ and dict_["clientTransactionId"] is not None:
            instance.client_transaction_id = str(dict_["clientTransactionId"])
        elif include_empty:
            instance.client_transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientTransaction]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientTransaction]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientTransaction, List[ClientTransaction], Dict[Any, ClientTransaction]
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
            "amountConsumed": "amount_consumed",
            "clientTransactionId": "client_transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amountConsumed": False,
            "clientTransactionId": False,
        }

    # endregion static methods
