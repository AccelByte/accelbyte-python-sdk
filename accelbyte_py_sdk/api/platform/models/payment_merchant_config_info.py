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

from ..models.adyen_config import AdyenConfig
from ..models.ali_pay_config import AliPayConfig
from ..models.checkout_config import CheckoutConfig
from ..models.pay_pal_config import PayPalConfig
from ..models.stripe_config import StripeConfig
from ..models.wx_pay_config_info import WxPayConfigInfo
from ..models.xsolla_config import XsollaConfig
from ..models.xsolla_paywall_config import XsollaPaywallConfig


class PaymentMerchantConfigInfo(Model):
    """Payment merchant config info (PaymentMerchantConfigInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        adyen_config: (adyenConfig) OPTIONAL AdyenConfig

        adyen_sandbox_config: (adyenSandboxConfig) OPTIONAL AdyenConfig

        ali_pay_config: (aliPayConfig) OPTIONAL AliPayConfig

        ali_pay_sandbox_config: (aliPaySandboxConfig) OPTIONAL AliPayConfig

        checkout_config: (checkoutConfig) OPTIONAL CheckoutConfig

        checkout_sandbox_config: (checkoutSandboxConfig) OPTIONAL CheckoutConfig

        pay_pal_config: (payPalConfig) OPTIONAL PayPalConfig

        pay_pal_sandbox_config: (payPalSandboxConfig) OPTIONAL PayPalConfig

        stripe_config: (stripeConfig) OPTIONAL StripeConfig

        stripe_sandbox_config: (stripeSandboxConfig) OPTIONAL StripeConfig

        wx_pay_config: (wxPayConfig) OPTIONAL WxPayConfigInfo

        xsolla_config: (xsollaConfig) OPTIONAL XsollaConfig

        xsolla_paywall_config: (xsollaPaywallConfig) OPTIONAL XsollaPaywallConfig
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    updated_at: str  # REQUIRED
    adyen_config: AdyenConfig  # OPTIONAL
    adyen_sandbox_config: AdyenConfig  # OPTIONAL
    ali_pay_config: AliPayConfig  # OPTIONAL
    ali_pay_sandbox_config: AliPayConfig  # OPTIONAL
    checkout_config: CheckoutConfig  # OPTIONAL
    checkout_sandbox_config: CheckoutConfig  # OPTIONAL
    pay_pal_config: PayPalConfig  # OPTIONAL
    pay_pal_sandbox_config: PayPalConfig  # OPTIONAL
    stripe_config: StripeConfig  # OPTIONAL
    stripe_sandbox_config: StripeConfig  # OPTIONAL
    wx_pay_config: WxPayConfigInfo  # OPTIONAL
    xsolla_config: XsollaConfig  # OPTIONAL
    xsolla_paywall_config: XsollaPaywallConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> PaymentMerchantConfigInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> PaymentMerchantConfigInfo:
        self.id_ = value
        return self

    def with_updated_at(self, value: str) -> PaymentMerchantConfigInfo:
        self.updated_at = value
        return self

    def with_adyen_config(self, value: AdyenConfig) -> PaymentMerchantConfigInfo:
        self.adyen_config = value
        return self

    def with_adyen_sandbox_config(
        self, value: AdyenConfig
    ) -> PaymentMerchantConfigInfo:
        self.adyen_sandbox_config = value
        return self

    def with_ali_pay_config(self, value: AliPayConfig) -> PaymentMerchantConfigInfo:
        self.ali_pay_config = value
        return self

    def with_ali_pay_sandbox_config(
        self, value: AliPayConfig
    ) -> PaymentMerchantConfigInfo:
        self.ali_pay_sandbox_config = value
        return self

    def with_checkout_config(self, value: CheckoutConfig) -> PaymentMerchantConfigInfo:
        self.checkout_config = value
        return self

    def with_checkout_sandbox_config(
        self, value: CheckoutConfig
    ) -> PaymentMerchantConfigInfo:
        self.checkout_sandbox_config = value
        return self

    def with_pay_pal_config(self, value: PayPalConfig) -> PaymentMerchantConfigInfo:
        self.pay_pal_config = value
        return self

    def with_pay_pal_sandbox_config(
        self, value: PayPalConfig
    ) -> PaymentMerchantConfigInfo:
        self.pay_pal_sandbox_config = value
        return self

    def with_stripe_config(self, value: StripeConfig) -> PaymentMerchantConfigInfo:
        self.stripe_config = value
        return self

    def with_stripe_sandbox_config(
        self, value: StripeConfig
    ) -> PaymentMerchantConfigInfo:
        self.stripe_sandbox_config = value
        return self

    def with_wx_pay_config(self, value: WxPayConfigInfo) -> PaymentMerchantConfigInfo:
        self.wx_pay_config = value
        return self

    def with_xsolla_config(self, value: XsollaConfig) -> PaymentMerchantConfigInfo:
        self.xsolla_config = value
        return self

    def with_xsolla_paywall_config(
        self, value: XsollaPaywallConfig
    ) -> PaymentMerchantConfigInfo:
        self.xsolla_paywall_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "adyen_config"):
            result["adyenConfig"] = self.adyen_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["adyenConfig"] = AdyenConfig()
        if hasattr(self, "adyen_sandbox_config"):
            result["adyenSandboxConfig"] = self.adyen_sandbox_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["adyenSandboxConfig"] = AdyenConfig()
        if hasattr(self, "ali_pay_config"):
            result["aliPayConfig"] = self.ali_pay_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["aliPayConfig"] = AliPayConfig()
        if hasattr(self, "ali_pay_sandbox_config"):
            result["aliPaySandboxConfig"] = self.ali_pay_sandbox_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["aliPaySandboxConfig"] = AliPayConfig()
        if hasattr(self, "checkout_config"):
            result["checkoutConfig"] = self.checkout_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["checkoutConfig"] = CheckoutConfig()
        if hasattr(self, "checkout_sandbox_config"):
            result["checkoutSandboxConfig"] = self.checkout_sandbox_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["checkoutSandboxConfig"] = CheckoutConfig()
        if hasattr(self, "pay_pal_config"):
            result["payPalConfig"] = self.pay_pal_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["payPalConfig"] = PayPalConfig()
        if hasattr(self, "pay_pal_sandbox_config"):
            result["payPalSandboxConfig"] = self.pay_pal_sandbox_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["payPalSandboxConfig"] = PayPalConfig()
        if hasattr(self, "stripe_config"):
            result["stripeConfig"] = self.stripe_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["stripeConfig"] = StripeConfig()
        if hasattr(self, "stripe_sandbox_config"):
            result["stripeSandboxConfig"] = self.stripe_sandbox_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["stripeSandboxConfig"] = StripeConfig()
        if hasattr(self, "wx_pay_config"):
            result["wxPayConfig"] = self.wx_pay_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["wxPayConfig"] = WxPayConfigInfo()
        if hasattr(self, "xsolla_config"):
            result["xsollaConfig"] = self.xsolla_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["xsollaConfig"] = XsollaConfig()
        if hasattr(self, "xsolla_paywall_config"):
            result["xsollaPaywallConfig"] = self.xsolla_paywall_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["xsollaPaywallConfig"] = XsollaPaywallConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        updated_at: str,
        adyen_config: Optional[AdyenConfig] = None,
        adyen_sandbox_config: Optional[AdyenConfig] = None,
        ali_pay_config: Optional[AliPayConfig] = None,
        ali_pay_sandbox_config: Optional[AliPayConfig] = None,
        checkout_config: Optional[CheckoutConfig] = None,
        checkout_sandbox_config: Optional[CheckoutConfig] = None,
        pay_pal_config: Optional[PayPalConfig] = None,
        pay_pal_sandbox_config: Optional[PayPalConfig] = None,
        stripe_config: Optional[StripeConfig] = None,
        stripe_sandbox_config: Optional[StripeConfig] = None,
        wx_pay_config: Optional[WxPayConfigInfo] = None,
        xsolla_config: Optional[XsollaConfig] = None,
        xsolla_paywall_config: Optional[XsollaPaywallConfig] = None,
    ) -> PaymentMerchantConfigInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.updated_at = updated_at
        if adyen_config is not None:
            instance.adyen_config = adyen_config
        if adyen_sandbox_config is not None:
            instance.adyen_sandbox_config = adyen_sandbox_config
        if ali_pay_config is not None:
            instance.ali_pay_config = ali_pay_config
        if ali_pay_sandbox_config is not None:
            instance.ali_pay_sandbox_config = ali_pay_sandbox_config
        if checkout_config is not None:
            instance.checkout_config = checkout_config
        if checkout_sandbox_config is not None:
            instance.checkout_sandbox_config = checkout_sandbox_config
        if pay_pal_config is not None:
            instance.pay_pal_config = pay_pal_config
        if pay_pal_sandbox_config is not None:
            instance.pay_pal_sandbox_config = pay_pal_sandbox_config
        if stripe_config is not None:
            instance.stripe_config = stripe_config
        if stripe_sandbox_config is not None:
            instance.stripe_sandbox_config = stripe_sandbox_config
        if wx_pay_config is not None:
            instance.wx_pay_config = wx_pay_config
        if xsolla_config is not None:
            instance.xsolla_config = xsolla_config
        if xsolla_paywall_config is not None:
            instance.xsolla_paywall_config = xsolla_paywall_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentMerchantConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "adyenConfig" in dict_ and dict_["adyenConfig"] is not None:
            instance.adyen_config = AdyenConfig.create_from_dict(
                dict_["adyenConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.adyen_config = AdyenConfig()
        if "adyenSandboxConfig" in dict_ and dict_["adyenSandboxConfig"] is not None:
            instance.adyen_sandbox_config = AdyenConfig.create_from_dict(
                dict_["adyenSandboxConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.adyen_sandbox_config = AdyenConfig()
        if "aliPayConfig" in dict_ and dict_["aliPayConfig"] is not None:
            instance.ali_pay_config = AliPayConfig.create_from_dict(
                dict_["aliPayConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.ali_pay_config = AliPayConfig()
        if "aliPaySandboxConfig" in dict_ and dict_["aliPaySandboxConfig"] is not None:
            instance.ali_pay_sandbox_config = AliPayConfig.create_from_dict(
                dict_["aliPaySandboxConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.ali_pay_sandbox_config = AliPayConfig()
        if "checkoutConfig" in dict_ and dict_["checkoutConfig"] is not None:
            instance.checkout_config = CheckoutConfig.create_from_dict(
                dict_["checkoutConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.checkout_config = CheckoutConfig()
        if (
            "checkoutSandboxConfig" in dict_
            and dict_["checkoutSandboxConfig"] is not None
        ):
            instance.checkout_sandbox_config = CheckoutConfig.create_from_dict(
                dict_["checkoutSandboxConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.checkout_sandbox_config = CheckoutConfig()
        if "payPalConfig" in dict_ and dict_["payPalConfig"] is not None:
            instance.pay_pal_config = PayPalConfig.create_from_dict(
                dict_["payPalConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.pay_pal_config = PayPalConfig()
        if "payPalSandboxConfig" in dict_ and dict_["payPalSandboxConfig"] is not None:
            instance.pay_pal_sandbox_config = PayPalConfig.create_from_dict(
                dict_["payPalSandboxConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.pay_pal_sandbox_config = PayPalConfig()
        if "stripeConfig" in dict_ and dict_["stripeConfig"] is not None:
            instance.stripe_config = StripeConfig.create_from_dict(
                dict_["stripeConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.stripe_config = StripeConfig()
        if "stripeSandboxConfig" in dict_ and dict_["stripeSandboxConfig"] is not None:
            instance.stripe_sandbox_config = StripeConfig.create_from_dict(
                dict_["stripeSandboxConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.stripe_sandbox_config = StripeConfig()
        if "wxPayConfig" in dict_ and dict_["wxPayConfig"] is not None:
            instance.wx_pay_config = WxPayConfigInfo.create_from_dict(
                dict_["wxPayConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.wx_pay_config = WxPayConfigInfo()
        if "xsollaConfig" in dict_ and dict_["xsollaConfig"] is not None:
            instance.xsolla_config = XsollaConfig.create_from_dict(
                dict_["xsollaConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.xsolla_config = XsollaConfig()
        if "xsollaPaywallConfig" in dict_ and dict_["xsollaPaywallConfig"] is not None:
            instance.xsolla_paywall_config = XsollaPaywallConfig.create_from_dict(
                dict_["xsollaPaywallConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.xsolla_paywall_config = XsollaPaywallConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentMerchantConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentMerchantConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentMerchantConfigInfo,
        List[PaymentMerchantConfigInfo],
        Dict[Any, PaymentMerchantConfigInfo],
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
            "createdAt": "created_at",
            "id": "id_",
            "updatedAt": "updated_at",
            "adyenConfig": "adyen_config",
            "adyenSandboxConfig": "adyen_sandbox_config",
            "aliPayConfig": "ali_pay_config",
            "aliPaySandboxConfig": "ali_pay_sandbox_config",
            "checkoutConfig": "checkout_config",
            "checkoutSandboxConfig": "checkout_sandbox_config",
            "payPalConfig": "pay_pal_config",
            "payPalSandboxConfig": "pay_pal_sandbox_config",
            "stripeConfig": "stripe_config",
            "stripeSandboxConfig": "stripe_sandbox_config",
            "wxPayConfig": "wx_pay_config",
            "xsollaConfig": "xsolla_config",
            "xsollaPaywallConfig": "xsolla_paywall_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "updatedAt": True,
            "adyenConfig": False,
            "adyenSandboxConfig": False,
            "aliPayConfig": False,
            "aliPaySandboxConfig": False,
            "checkoutConfig": False,
            "checkoutSandboxConfig": False,
            "payPalConfig": False,
            "payPalSandboxConfig": False,
            "stripeConfig": False,
            "stripeSandboxConfig": False,
            "wxPayConfig": False,
            "xsollaConfig": False,
            "xsollaPaywallConfig": False,
        }

    # endregion static methods
