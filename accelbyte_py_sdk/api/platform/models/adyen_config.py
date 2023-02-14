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


class AdyenConfig(Model):
    """A DTO object for updating adyen config. (AdyenConfig)

    Properties:
        allowed_payment_methods: (allowedPaymentMethods) OPTIONAL List[str]

        api_key: (apiKey) OPTIONAL str

        authorise_as_capture: (authoriseAsCapture) OPTIONAL bool

        blocked_payment_methods: (blockedPaymentMethods) OPTIONAL List[str]

        client_key: (clientKey) OPTIONAL str

        drop_in_settings: (dropInSettings) OPTIONAL str

        live_endpoint_url_prefix: (liveEndpointUrlPrefix) OPTIONAL str

        merchant_account: (merchantAccount) OPTIONAL str

        notification_hmac_key: (notificationHmacKey) OPTIONAL str

        notification_password: (notificationPassword) OPTIONAL str

        notification_username: (notificationUsername) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        settings: (settings) OPTIONAL str
    """

    # region fields

    allowed_payment_methods: List[str]  # OPTIONAL
    api_key: str  # OPTIONAL
    authorise_as_capture: bool  # OPTIONAL
    blocked_payment_methods: List[str]  # OPTIONAL
    client_key: str  # OPTIONAL
    drop_in_settings: str  # OPTIONAL
    live_endpoint_url_prefix: str  # OPTIONAL
    merchant_account: str  # OPTIONAL
    notification_hmac_key: str  # OPTIONAL
    notification_password: str  # OPTIONAL
    notification_username: str  # OPTIONAL
    return_url: str  # OPTIONAL
    settings: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_payment_methods(self, value: List[str]) -> AdyenConfig:
        self.allowed_payment_methods = value
        return self

    def with_api_key(self, value: str) -> AdyenConfig:
        self.api_key = value
        return self

    def with_authorise_as_capture(self, value: bool) -> AdyenConfig:
        self.authorise_as_capture = value
        return self

    def with_blocked_payment_methods(self, value: List[str]) -> AdyenConfig:
        self.blocked_payment_methods = value
        return self

    def with_client_key(self, value: str) -> AdyenConfig:
        self.client_key = value
        return self

    def with_drop_in_settings(self, value: str) -> AdyenConfig:
        self.drop_in_settings = value
        return self

    def with_live_endpoint_url_prefix(self, value: str) -> AdyenConfig:
        self.live_endpoint_url_prefix = value
        return self

    def with_merchant_account(self, value: str) -> AdyenConfig:
        self.merchant_account = value
        return self

    def with_notification_hmac_key(self, value: str) -> AdyenConfig:
        self.notification_hmac_key = value
        return self

    def with_notification_password(self, value: str) -> AdyenConfig:
        self.notification_password = value
        return self

    def with_notification_username(self, value: str) -> AdyenConfig:
        self.notification_username = value
        return self

    def with_return_url(self, value: str) -> AdyenConfig:
        self.return_url = value
        return self

    def with_settings(self, value: str) -> AdyenConfig:
        self.settings = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_payment_methods"):
            result["allowedPaymentMethods"] = [
                str(i0) for i0 in self.allowed_payment_methods
            ]
        elif include_empty:
            result["allowedPaymentMethods"] = []
        if hasattr(self, "api_key"):
            result["apiKey"] = str(self.api_key)
        elif include_empty:
            result["apiKey"] = ""
        if hasattr(self, "authorise_as_capture"):
            result["authoriseAsCapture"] = bool(self.authorise_as_capture)
        elif include_empty:
            result["authoriseAsCapture"] = False
        if hasattr(self, "blocked_payment_methods"):
            result["blockedPaymentMethods"] = [
                str(i0) for i0 in self.blocked_payment_methods
            ]
        elif include_empty:
            result["blockedPaymentMethods"] = []
        if hasattr(self, "client_key"):
            result["clientKey"] = str(self.client_key)
        elif include_empty:
            result["clientKey"] = ""
        if hasattr(self, "drop_in_settings"):
            result["dropInSettings"] = str(self.drop_in_settings)
        elif include_empty:
            result["dropInSettings"] = ""
        if hasattr(self, "live_endpoint_url_prefix"):
            result["liveEndpointUrlPrefix"] = str(self.live_endpoint_url_prefix)
        elif include_empty:
            result["liveEndpointUrlPrefix"] = ""
        if hasattr(self, "merchant_account"):
            result["merchantAccount"] = str(self.merchant_account)
        elif include_empty:
            result["merchantAccount"] = ""
        if hasattr(self, "notification_hmac_key"):
            result["notificationHmacKey"] = str(self.notification_hmac_key)
        elif include_empty:
            result["notificationHmacKey"] = ""
        if hasattr(self, "notification_password"):
            result["notificationPassword"] = str(self.notification_password)
        elif include_empty:
            result["notificationPassword"] = ""
        if hasattr(self, "notification_username"):
            result["notificationUsername"] = str(self.notification_username)
        elif include_empty:
            result["notificationUsername"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "settings"):
            result["settings"] = str(self.settings)
        elif include_empty:
            result["settings"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_payment_methods: Optional[List[str]] = None,
        api_key: Optional[str] = None,
        authorise_as_capture: Optional[bool] = None,
        blocked_payment_methods: Optional[List[str]] = None,
        client_key: Optional[str] = None,
        drop_in_settings: Optional[str] = None,
        live_endpoint_url_prefix: Optional[str] = None,
        merchant_account: Optional[str] = None,
        notification_hmac_key: Optional[str] = None,
        notification_password: Optional[str] = None,
        notification_username: Optional[str] = None,
        return_url: Optional[str] = None,
        settings: Optional[str] = None,
    ) -> AdyenConfig:
        instance = cls()
        if allowed_payment_methods is not None:
            instance.allowed_payment_methods = allowed_payment_methods
        if api_key is not None:
            instance.api_key = api_key
        if authorise_as_capture is not None:
            instance.authorise_as_capture = authorise_as_capture
        if blocked_payment_methods is not None:
            instance.blocked_payment_methods = blocked_payment_methods
        if client_key is not None:
            instance.client_key = client_key
        if drop_in_settings is not None:
            instance.drop_in_settings = drop_in_settings
        if live_endpoint_url_prefix is not None:
            instance.live_endpoint_url_prefix = live_endpoint_url_prefix
        if merchant_account is not None:
            instance.merchant_account = merchant_account
        if notification_hmac_key is not None:
            instance.notification_hmac_key = notification_hmac_key
        if notification_password is not None:
            instance.notification_password = notification_password
        if notification_username is not None:
            instance.notification_username = notification_username
        if return_url is not None:
            instance.return_url = return_url
        if settings is not None:
            instance.settings = settings
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdyenConfig:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowedPaymentMethods" in dict_
            and dict_["allowedPaymentMethods"] is not None
        ):
            instance.allowed_payment_methods = [
                str(i0) for i0 in dict_["allowedPaymentMethods"]
            ]
        elif include_empty:
            instance.allowed_payment_methods = []
        if "apiKey" in dict_ and dict_["apiKey"] is not None:
            instance.api_key = str(dict_["apiKey"])
        elif include_empty:
            instance.api_key = ""
        if "authoriseAsCapture" in dict_ and dict_["authoriseAsCapture"] is not None:
            instance.authorise_as_capture = bool(dict_["authoriseAsCapture"])
        elif include_empty:
            instance.authorise_as_capture = False
        if (
            "blockedPaymentMethods" in dict_
            and dict_["blockedPaymentMethods"] is not None
        ):
            instance.blocked_payment_methods = [
                str(i0) for i0 in dict_["blockedPaymentMethods"]
            ]
        elif include_empty:
            instance.blocked_payment_methods = []
        if "clientKey" in dict_ and dict_["clientKey"] is not None:
            instance.client_key = str(dict_["clientKey"])
        elif include_empty:
            instance.client_key = ""
        if "dropInSettings" in dict_ and dict_["dropInSettings"] is not None:
            instance.drop_in_settings = str(dict_["dropInSettings"])
        elif include_empty:
            instance.drop_in_settings = ""
        if (
            "liveEndpointUrlPrefix" in dict_
            and dict_["liveEndpointUrlPrefix"] is not None
        ):
            instance.live_endpoint_url_prefix = str(dict_["liveEndpointUrlPrefix"])
        elif include_empty:
            instance.live_endpoint_url_prefix = ""
        if "merchantAccount" in dict_ and dict_["merchantAccount"] is not None:
            instance.merchant_account = str(dict_["merchantAccount"])
        elif include_empty:
            instance.merchant_account = ""
        if "notificationHmacKey" in dict_ and dict_["notificationHmacKey"] is not None:
            instance.notification_hmac_key = str(dict_["notificationHmacKey"])
        elif include_empty:
            instance.notification_hmac_key = ""
        if (
            "notificationPassword" in dict_
            and dict_["notificationPassword"] is not None
        ):
            instance.notification_password = str(dict_["notificationPassword"])
        elif include_empty:
            instance.notification_password = ""
        if (
            "notificationUsername" in dict_
            and dict_["notificationUsername"] is not None
        ):
            instance.notification_username = str(dict_["notificationUsername"])
        elif include_empty:
            instance.notification_username = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "settings" in dict_ and dict_["settings"] is not None:
            instance.settings = str(dict_["settings"])
        elif include_empty:
            instance.settings = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AdyenConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AdyenConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AdyenConfig, List[AdyenConfig], Dict[Any, AdyenConfig]]:
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
            "allowedPaymentMethods": "allowed_payment_methods",
            "apiKey": "api_key",
            "authoriseAsCapture": "authorise_as_capture",
            "blockedPaymentMethods": "blocked_payment_methods",
            "clientKey": "client_key",
            "dropInSettings": "drop_in_settings",
            "liveEndpointUrlPrefix": "live_endpoint_url_prefix",
            "merchantAccount": "merchant_account",
            "notificationHmacKey": "notification_hmac_key",
            "notificationPassword": "notification_password",
            "notificationUsername": "notification_username",
            "returnUrl": "return_url",
            "settings": "settings",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedPaymentMethods": False,
            "apiKey": False,
            "authoriseAsCapture": False,
            "blockedPaymentMethods": False,
            "clientKey": False,
            "dropInSettings": False,
            "liveEndpointUrlPrefix": False,
            "merchantAccount": False,
            "notificationHmacKey": False,
            "notificationPassword": False,
            "notificationUsername": False,
            "returnUrl": False,
            "settings": False,
        }

    # endregion static methods
