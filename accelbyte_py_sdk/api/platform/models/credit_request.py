# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
# 
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.7.0)

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
from ....core import StrEnum


class SourceEnum(StrEnum):
    PURCHASE = "PURCHASE"
    IAP = "IAP"
    PROMOTION = "PROMOTION"
    ACHIEVEMENT = "ACHIEVEMENT"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REDEEM_CODE = "REDEEM_CODE"
    REWARD = "REWARD"
    GIFT = "GIFT"
    REFUND = "REFUND"
    OTHER = "OTHER"


class CreditRequest(Model):
    """A DTO for wallet's credit (CreditRequest)

    Properties:
        amount: (amount) REQUIRED int

        reason: (reason) OPTIONAL str

        source: (source) OPTIONAL Union[str, SourceEnum]
    """

    # region fields

    amount: int                                                                                    # REQUIRED
    reason: str                                                                                    # OPTIONAL
    source: Union[str, SourceEnum]                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> CreditRequest:
        self.amount = value
        return self

    def with_reason(self, value: str) -> CreditRequest:
        self.reason = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> CreditRequest:
        self.source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
        reason: Optional[str] = None,
        source: Optional[Union[str, SourceEnum]] = None,
    ) -> CreditRequest:
        instance = cls()
        instance.amount = amount
        if reason is not None:
            instance.reason = reason
        if source is not None:
            instance.source = source
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreditRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, CreditRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[CreditRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[CreditRequest, List[CreditRequest], Dict[Any, CreditRequest]]:
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
            "reason": "reason",
            "source": "source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": True,
            "reason": False,
            "source": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": ["PURCHASE", "IAP", "PROMOTION", "ACHIEVEMENT", "REFERRAL_BONUS", "REDEEM_CODE", "REWARD", "GIFT", "REFUND", "OTHER"],
        }

    # endregion static methods
