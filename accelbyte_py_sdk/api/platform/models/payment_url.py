# justice-platform-service (4.2.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class PaymentUrl(Model):
    """Payment url (PaymentUrl)

    Properties:
        payment_provider: (paymentProvider) REQUIRED str

        payment_type: (paymentType) REQUIRED str

        payment_url: (paymentUrl) REQUIRED str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    payment_provider: str                                                                          # REQUIRED
    payment_type: str                                                                              # REQUIRED
    payment_url: str                                                                               # REQUIRED
    return_url: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_provider(self, value: str) -> PaymentUrl:
        self.payment_provider = value
        return self

    def with_payment_type(self, value: str) -> PaymentUrl:
        self.payment_type = value
        return self

    def with_payment_url(self, value: str) -> PaymentUrl:
        self.payment_url = value
        return self

    def with_return_url(self, value: str) -> PaymentUrl:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "payment_type"):
            result["paymentType"] = str(self.payment_type)
        elif include_empty:
            result["paymentType"] = str()
        if hasattr(self, "payment_url"):
            result["paymentUrl"] = str(self.payment_url)
        elif include_empty:
            result["paymentUrl"] = str()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_provider: str,
        payment_type: str,
        payment_url: str,
        return_url: Optional[str] = None,
    ) -> PaymentUrl:
        instance = cls()
        instance.payment_provider = payment_provider
        instance.payment_type = payment_type
        instance.payment_url = payment_url
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentUrl:
        instance = cls()
        if not dict_:
            return instance
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "paymentType" in dict_ and dict_["paymentType"] is not None:
            instance.payment_type = str(dict_["paymentType"])
        elif include_empty:
            instance.payment_type = str()
        if "paymentUrl" in dict_ and dict_["paymentUrl"] is not None:
            instance.payment_url = str(dict_["paymentUrl"])
        elif include_empty:
            instance.payment_url = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PaymentUrl]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PaymentUrl]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PaymentUrl, List[PaymentUrl]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentProvider": "payment_provider",
            "paymentType": "payment_type",
            "paymentUrl": "payment_url",
            "returnUrl": "return_url",
        }

    # endregion static methods
