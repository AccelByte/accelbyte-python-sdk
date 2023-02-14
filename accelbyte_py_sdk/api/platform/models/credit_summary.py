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


class CreditSummary(Model):
    """Credit summary (CreditSummary)

    Properties:
        amount: (amount) REQUIRED int

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        wallet_id: (walletId) REQUIRED str
    """

    # region fields

    amount: int  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    wallet_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> CreditSummary:
        self.amount = value
        return self

    def with_namespace(self, value: str) -> CreditSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> CreditSummary:
        self.user_id = value
        return self

    def with_wallet_id(self, value: str) -> CreditSummary:
        self.wallet_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "wallet_id"):
            result["walletId"] = str(self.wallet_id)
        elif include_empty:
            result["walletId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
        namespace: str,
        user_id: str,
        wallet_id: str,
    ) -> CreditSummary:
        instance = cls()
        instance.amount = amount
        instance.namespace = namespace
        instance.user_id = user_id
        instance.wallet_id = wallet_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreditSummary:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreditSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreditSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CreditSummary, List[CreditSummary], Dict[Any, CreditSummary]]:
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
            "amount": "amount",
            "namespace": "namespace",
            "userId": "user_id",
            "walletId": "wallet_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": True,
            "namespace": True,
            "userId": True,
            "walletId": True,
        }

    # endregion static methods
