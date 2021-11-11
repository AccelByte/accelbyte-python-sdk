# justice-platform-service (3.34.0)

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


class StripeConfig(Model):
    """A DTO object for updating stripe config. (StripeConfig)

    Properties:
        allowed_payment_method_types: (allowedPaymentMethodTypes) OPTIONAL List[str]

        publishable_key: (publishableKey) OPTIONAL str

        secret_key: (secretKey) OPTIONAL str

        webhook_secret: (webhookSecret) OPTIONAL str
    """

    # region fields

    allowed_payment_method_types: List[str]                                                        # OPTIONAL
    publishable_key: str                                                                           # OPTIONAL
    secret_key: str                                                                                # OPTIONAL
    webhook_secret: str                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_payment_method_types(self, value: List[str]) -> StripeConfig:
        self.allowed_payment_method_types = value
        return self

    def with_publishable_key(self, value: str) -> StripeConfig:
        self.publishable_key = value
        return self

    def with_secret_key(self, value: str) -> StripeConfig:
        self.secret_key = value
        return self

    def with_webhook_secret(self, value: str) -> StripeConfig:
        self.webhook_secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_payment_method_types"):
            result["allowedPaymentMethodTypes"] = [str(i0) for i0 in self.allowed_payment_method_types]
        elif include_empty:
            result["allowedPaymentMethodTypes"] = []
        if hasattr(self, "publishable_key"):
            result["publishableKey"] = str(self.publishable_key)
        elif include_empty:
            result["publishableKey"] = str()
        if hasattr(self, "secret_key"):
            result["secretKey"] = str(self.secret_key)
        elif include_empty:
            result["secretKey"] = str()
        if hasattr(self, "webhook_secret"):
            result["webhookSecret"] = str(self.webhook_secret)
        elif include_empty:
            result["webhookSecret"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        publishable_key: Optional[str] = None,
        secret_key: Optional[str] = None,
        webhook_secret: Optional[str] = None,
        allowed_payment_method_types: Optional[List[str]] = None,
    ) -> StripeConfig:
        instance = cls()
        if publishable_key is not None:
            instance.publishable_key = publishable_key
        if secret_key is not None:
            instance.secret_key = secret_key
        if webhook_secret is not None:
            instance.webhook_secret = webhook_secret
        if allowed_payment_method_types is not None:
            instance.allowed_payment_method_types = allowed_payment_method_types
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StripeConfig:
        instance = cls()
        if not dict_:
            return instance
        if "allowedPaymentMethodTypes" in dict_ and dict_["allowedPaymentMethodTypes"] is not None:
            instance.allowed_payment_method_types = [str(i0) for i0 in dict_["allowedPaymentMethodTypes"]]
        elif include_empty:
            instance.allowed_payment_method_types = []
        if "publishableKey" in dict_ and dict_["publishableKey"] is not None:
            instance.publishable_key = str(dict_["publishableKey"])
        elif include_empty:
            instance.publishable_key = str()
        if "secretKey" in dict_ and dict_["secretKey"] is not None:
            instance.secret_key = str(dict_["secretKey"])
        elif include_empty:
            instance.secret_key = str()
        if "webhookSecret" in dict_ and dict_["webhookSecret"] is not None:
            instance.webhook_secret = str(dict_["webhookSecret"])
        elif include_empty:
            instance.webhook_secret = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allowedPaymentMethodTypes": "allowed_payment_method_types",
            "publishableKey": "publishable_key",
            "secretKey": "secret_key",
            "webhookSecret": "webhook_secret",
        }

    # endregion static methods
