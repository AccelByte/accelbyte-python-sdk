# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import AdyenConfig
from ..models import AliPayConfig
from ..models import CheckoutConfig
from ..models import ErrorEntity
from ..models import PayPalConfig
from ..models import PaymentMerchantConfigInfo
from ..models import PaymentProviderConfigEdit
from ..models import PaymentProviderConfigInfo
from ..models import PaymentProviderConfigPagingSlicedResult
from ..models import PaymentTaxConfigEdit
from ..models import PaymentTaxConfigInfo
from ..models import StripeConfig
from ..models import TestResult
from ..models import ValidationErrorEntity
from ..models import WxPayConfigRequest
from ..models import XsollaConfig
from ..models import XsollaPaywallConfigRequest

from ..operations.payment_config import CreatePaymentProviderConfig
from ..operations.payment_config import DebugMatchedPaymentMerchantConfig
from ..operations.payment_config import DebugMatchedPaymentProviderConfig
from ..operations.payment_config import DeletePaymentProviderConfig
from ..operations.payment_config import GetAggregatePaymentProviders
from ..operations.payment_config import GetPaymentMerchantConfig
from ..operations.payment_config import GetPaymentTaxConfig
from ..operations.payment_config import GetSpecialPaymentProviders
from ..operations.payment_config import QueryPaymentProviderConfig
from ..operations.payment_config import TestAdyenConfig
from ..operations.payment_config import TestAdyenConfigById
from ..operations.payment_config import TestAliPayConfig
from ..operations.payment_config import TestAliPayConfigById
from ..operations.payment_config import TestCheckoutConfig
from ..operations.payment_config import TestCheckoutConfigById
from ..operations.payment_config import TestPayPalConfig
from ..operations.payment_config import TestPayPalConfigById
from ..operations.payment_config import TestStripeConfig
from ..operations.payment_config import TestStripeConfigById
from ..operations.payment_config import TestWxPayConfig
from ..operations.payment_config import TestWxPayConfigById
from ..operations.payment_config import TestXsollaConfig
from ..operations.payment_config import TestXsollaConfigById
from ..operations.payment_config import UpdateAdyenConfig
from ..operations.payment_config import UpdateAliPayConfig
from ..operations.payment_config import UpdateCheckoutConfig
from ..operations.payment_config import UpdatePayPalConfig
from ..operations.payment_config import UpdatePaymentProviderConfig
from ..operations.payment_config import UpdatePaymentTaxConfig
from ..operations.payment_config import UpdateStripeConfig
from ..operations.payment_config import UpdateWxPayConfig
from ..operations.payment_config import UpdateWxPayConfigCert
from ..operations.payment_config import UpdateXsollaConfig
from ..operations.payment_config import UpdateXsollaUIConfig
from ..models import (
    PaymentProviderConfigEditAggregateEnum,
    PaymentProviderConfigEditSpecialsEnum,
)
from ..models import (
    PaymentProviderConfigInfoAggregateEnum,
    PaymentProviderConfigInfoSpecialsEnum,
)
from ..models import (
    XsollaPaywallConfigRequestDeviceEnum,
    XsollaPaywallConfigRequestSizeEnum,
    XsollaPaywallConfigRequestThemeEnum,
)


@same_doc_as(CreatePaymentProviderConfig)
def create_payment_provider_config(
    body: Optional[PaymentProviderConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreatePaymentProviderConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePaymentProviderConfig)
async def create_payment_provider_config_async(
    body: Optional[PaymentProviderConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreatePaymentProviderConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DebugMatchedPaymentMerchantConfig)
def debug_matched_payment_merchant_config(
    namespace: Optional[str] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DebugMatchedPaymentMerchantConfig.create(
        namespace=namespace,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DebugMatchedPaymentMerchantConfig)
async def debug_matched_payment_merchant_config_async(
    namespace: Optional[str] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DebugMatchedPaymentMerchantConfig.create(
        namespace=namespace,
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DebugMatchedPaymentProviderConfig)
def debug_matched_payment_provider_config(
    namespace: Optional[str] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DebugMatchedPaymentProviderConfig.create(
        namespace=namespace,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DebugMatchedPaymentProviderConfig)
async def debug_matched_payment_provider_config_async(
    namespace: Optional[str] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DebugMatchedPaymentProviderConfig.create(
        namespace=namespace,
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePaymentProviderConfig)
def delete_payment_provider_config(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeletePaymentProviderConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePaymentProviderConfig)
async def delete_payment_provider_config_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeletePaymentProviderConfig.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAggregatePaymentProviders)
def get_aggregate_payment_providers(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetAggregatePaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAggregatePaymentProviders)
async def get_aggregate_payment_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetAggregatePaymentProviders.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentMerchantConfig)
def get_payment_merchant_config(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetPaymentMerchantConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentMerchantConfig)
async def get_payment_merchant_config_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetPaymentMerchantConfig.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentTaxConfig)
def get_payment_tax_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetPaymentTaxConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentTaxConfig)
async def get_payment_tax_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetPaymentTaxConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSpecialPaymentProviders)
def get_special_payment_providers(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetSpecialPaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSpecialPaymentProviders)
async def get_special_payment_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetSpecialPaymentProviders.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryPaymentProviderConfig)
def query_payment_provider_config(
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = QueryPaymentProviderConfig.create(
        limit=limit,
        namespace=namespace,
        offset=offset,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryPaymentProviderConfig)
async def query_payment_provider_config_async(
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = QueryPaymentProviderConfig.create(
        limit=limit,
        namespace=namespace,
        offset=offset,
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestAdyenConfig)
def test_adyen_config(
    body: Optional[AdyenConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAdyenConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAdyenConfig)
async def test_adyen_config_async(
    body: Optional[AdyenConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAdyenConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestAdyenConfigById)
def test_adyen_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAdyenConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAdyenConfigById)
async def test_adyen_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAdyenConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestAliPayConfig)
def test_ali_pay_config(
    body: Optional[AliPayConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAliPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAliPayConfig)
async def test_ali_pay_config_async(
    body: Optional[AliPayConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAliPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestAliPayConfigById)
def test_ali_pay_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAliPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAliPayConfigById)
async def test_ali_pay_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestAliPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestCheckoutConfig)
def test_checkout_config(
    body: Optional[CheckoutConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestCheckoutConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestCheckoutConfig)
async def test_checkout_config_async(
    body: Optional[CheckoutConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestCheckoutConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestCheckoutConfigById)
def test_checkout_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestCheckoutConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestCheckoutConfigById)
async def test_checkout_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestCheckoutConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestPayPalConfig)
def test_pay_pal_config(
    body: Optional[PayPalConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestPayPalConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestPayPalConfig)
async def test_pay_pal_config_async(
    body: Optional[PayPalConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestPayPalConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestPayPalConfigById)
def test_pay_pal_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestPayPalConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestPayPalConfigById)
async def test_pay_pal_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestPayPalConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestStripeConfig)
def test_stripe_config(
    body: Optional[StripeConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestStripeConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestStripeConfig)
async def test_stripe_config_async(
    body: Optional[StripeConfig] = None,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestStripeConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestStripeConfigById)
def test_stripe_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestStripeConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestStripeConfigById)
async def test_stripe_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestStripeConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestWxPayConfig)
def test_wx_pay_config(
    body: Optional[WxPayConfigRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestWxPayConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestWxPayConfig)
async def test_wx_pay_config_async(
    body: Optional[WxPayConfigRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestWxPayConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestWxPayConfigById)
def test_wx_pay_config_by_id(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TestWxPayConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestWxPayConfigById)
async def test_wx_pay_config_by_id_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TestWxPayConfigById.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestXsollaConfig)
def test_xsolla_config(
    body: Optional[XsollaConfig] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestXsollaConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestXsollaConfig)
async def test_xsolla_config_async(
    body: Optional[XsollaConfig] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestXsollaConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestXsollaConfigById)
def test_xsolla_config_by_id(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TestXsollaConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestXsollaConfigById)
async def test_xsolla_config_by_id_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TestXsollaConfigById.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAdyenConfig)
def update_adyen_config(
    id_: str,
    body: Optional[AdyenConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateAdyenConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAdyenConfig)
async def update_adyen_config_async(
    id_: str,
    body: Optional[AdyenConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateAdyenConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAliPayConfig)
def update_ali_pay_config(
    id_: str,
    body: Optional[AliPayConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateAliPayConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAliPayConfig)
async def update_ali_pay_config_async(
    id_: str,
    body: Optional[AliPayConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateAliPayConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCheckoutConfig)
def update_checkout_config(
    id_: str,
    body: Optional[CheckoutConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateCheckoutConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCheckoutConfig)
async def update_checkout_config_async(
    id_: str,
    body: Optional[CheckoutConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateCheckoutConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePayPalConfig)
def update_pay_pal_config(
    id_: str,
    body: Optional[PayPalConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePayPalConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePayPalConfig)
async def update_pay_pal_config_async(
    id_: str,
    body: Optional[PayPalConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePayPalConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePaymentProviderConfig)
def update_payment_provider_config(
    id_: str,
    body: Optional[PaymentProviderConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePaymentProviderConfig.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePaymentProviderConfig)
async def update_payment_provider_config_async(
    id_: str,
    body: Optional[PaymentProviderConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePaymentProviderConfig.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePaymentTaxConfig)
def update_payment_tax_config(
    body: Optional[PaymentTaxConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePaymentTaxConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePaymentTaxConfig)
async def update_payment_tax_config_async(
    body: Optional[PaymentTaxConfigEdit] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePaymentTaxConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStripeConfig)
def update_stripe_config(
    id_: str,
    body: Optional[StripeConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateStripeConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStripeConfig)
async def update_stripe_config_async(
    id_: str,
    body: Optional[StripeConfig] = None,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateStripeConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateWxPayConfig)
def update_wx_pay_config(
    id_: str,
    body: Optional[WxPayConfigRequest] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateWxPayConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateWxPayConfig)
async def update_wx_pay_config_async(
    id_: str,
    body: Optional[WxPayConfigRequest] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateWxPayConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateWxPayConfigCert)
def update_wx_pay_config_cert(
    id_: str,
    file: Optional[Any] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateWxPayConfigCert.create(
        id_=id_,
        file=file,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateWxPayConfigCert)
async def update_wx_pay_config_cert_async(
    id_: str,
    file: Optional[Any] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateWxPayConfigCert.create(
        id_=id_,
        file=file,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXsollaConfig)
def update_xsolla_config(
    id_: str,
    body: Optional[XsollaConfig] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateXsollaConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXsollaConfig)
async def update_xsolla_config_async(
    id_: str,
    body: Optional[XsollaConfig] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateXsollaConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXsollaUIConfig)
def update_xsolla_ui_config(
    id_: str,
    body: Optional[XsollaPaywallConfigRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateXsollaUIConfig.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXsollaUIConfig)
async def update_xsolla_ui_config_async(
    id_: str,
    body: Optional[XsollaPaywallConfigRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateXsollaUIConfig.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
