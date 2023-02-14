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
from ....core import StrEnum


class PaymentProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class PaymentTypeEnum(StrEnum):
    LINK = "LINK"
    QR_CODE = "QR_CODE"


class PaymentUrl(Model):
    """Payment url (PaymentUrl)

    Properties:
        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum]

        payment_type: (paymentType) REQUIRED Union[str, PaymentTypeEnum]

        payment_url: (paymentUrl) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        session_data: (sessionData) OPTIONAL str

        session_id: (sessionId) OPTIONAL str
    """

    # region fields

    payment_provider: Union[str, PaymentProviderEnum]  # REQUIRED
    payment_type: Union[str, PaymentTypeEnum]  # REQUIRED
    payment_url: str  # OPTIONAL
    return_url: str  # OPTIONAL
    session_data: str  # OPTIONAL
    session_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> PaymentUrl:
        self.payment_provider = value
        return self

    def with_payment_type(self, value: Union[str, PaymentTypeEnum]) -> PaymentUrl:
        self.payment_type = value
        return self

    def with_payment_url(self, value: str) -> PaymentUrl:
        self.payment_url = value
        return self

    def with_return_url(self, value: str) -> PaymentUrl:
        self.return_url = value
        return self

    def with_session_data(self, value: str) -> PaymentUrl:
        self.session_data = value
        return self

    def with_session_id(self, value: str) -> PaymentUrl:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        if hasattr(self, "payment_type"):
            result["paymentType"] = str(self.payment_type)
        elif include_empty:
            result["paymentType"] = Union[str, PaymentTypeEnum]()
        if hasattr(self, "payment_url"):
            result["paymentUrl"] = str(self.payment_url)
        elif include_empty:
            result["paymentUrl"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "session_data"):
            result["sessionData"] = str(self.session_data)
        elif include_empty:
            result["sessionData"] = ""
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_provider: Union[str, PaymentProviderEnum],
        payment_type: Union[str, PaymentTypeEnum],
        payment_url: Optional[str] = None,
        return_url: Optional[str] = None,
        session_data: Optional[str] = None,
        session_id: Optional[str] = None,
    ) -> PaymentUrl:
        instance = cls()
        instance.payment_provider = payment_provider
        instance.payment_type = payment_type
        if payment_url is not None:
            instance.payment_url = payment_url
        if return_url is not None:
            instance.return_url = return_url
        if session_data is not None:
            instance.session_data = session_data
        if session_id is not None:
            instance.session_id = session_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentUrl:
        instance = cls()
        if not dict_:
            return instance
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        if "paymentType" in dict_ and dict_["paymentType"] is not None:
            instance.payment_type = str(dict_["paymentType"])
        elif include_empty:
            instance.payment_type = Union[str, PaymentTypeEnum]()
        if "paymentUrl" in dict_ and dict_["paymentUrl"] is not None:
            instance.payment_url = str(dict_["paymentUrl"])
        elif include_empty:
            instance.payment_url = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "sessionData" in dict_ and dict_["sessionData"] is not None:
            instance.session_data = str(dict_["sessionData"])
        elif include_empty:
            instance.session_data = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentUrl]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentUrl]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PaymentUrl, List[PaymentUrl], Dict[Any, PaymentUrl]]:
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
            "paymentProvider": "payment_provider",
            "paymentType": "payment_type",
            "paymentUrl": "payment_url",
            "returnUrl": "return_url",
            "sessionData": "session_data",
            "sessionId": "session_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "paymentProvider": True,
            "paymentType": True,
            "paymentUrl": False,
            "returnUrl": False,
            "sessionData": False,
            "sessionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "paymentProvider": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
            "paymentType": ["LINK", "QR_CODE"],
        }

    # endregion static methods
