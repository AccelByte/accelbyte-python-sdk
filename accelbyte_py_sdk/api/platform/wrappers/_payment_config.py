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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
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


@same_doc_as(CreatePaymentProviderConfig)
def create_payment_provider_config(body: Optional[PaymentProviderConfigEdit] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = CreatePaymentProviderConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DebugMatchedPaymentMerchantConfig)
def debug_matched_payment_merchant_config(namespace: Optional[str] = None, region: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DebugMatchedPaymentMerchantConfig.create(
        namespace=namespace,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DebugMatchedPaymentProviderConfig)
def debug_matched_payment_provider_config(namespace: Optional[str] = None, region: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DebugMatchedPaymentProviderConfig.create(
        namespace=namespace,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeletePaymentProviderConfig)
def delete_payment_provider_config(id_: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DeletePaymentProviderConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetAggregatePaymentProviders)
def get_aggregate_payment_providers(x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetAggregatePaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPaymentMerchantConfig)
def get_payment_merchant_config(id_: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetPaymentMerchantConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPaymentTaxConfig)
def get_payment_tax_config(x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetPaymentTaxConfig.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetSpecialPaymentProviders)
def get_special_payment_providers(x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetSpecialPaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryPaymentProviderConfig)
def query_payment_provider_config(limit: Optional[int] = None, namespace: Optional[str] = None, offset: Optional[int] = None, region: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = QueryPaymentProviderConfig.create(
        limit=limit,
        namespace=namespace,
        offset=offset,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestAdyenConfig)
def test_adyen_config(body: Optional[AdyenConfig] = None, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestAdyenConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestAdyenConfigById)
def test_adyen_config_by_id(id_: str, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestAdyenConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestAliPayConfig)
def test_ali_pay_config(body: Optional[AliPayConfig] = None, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestAliPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestAliPayConfigById)
def test_ali_pay_config_by_id(id_: str, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestAliPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestCheckoutConfig)
def test_checkout_config(body: Optional[CheckoutConfig] = None, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestCheckoutConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestCheckoutConfigById)
def test_checkout_config_by_id(id_: str, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestCheckoutConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestPayPalConfig)
def test_pay_pal_config(body: Optional[PayPalConfig] = None, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestPayPalConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestPayPalConfigById)
def test_pay_pal_config_by_id(id_: str, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestPayPalConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestStripeConfig)
def test_stripe_config(body: Optional[StripeConfig] = None, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestStripeConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestStripeConfigById)
def test_stripe_config_by_id(id_: str, sandbox: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestStripeConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestWxPayConfig)
def test_wx_pay_config(body: Optional[WxPayConfigRequest] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestWxPayConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestWxPayConfigById)
def test_wx_pay_config_by_id(id_: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestWxPayConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestXsollaConfig)
def test_xsolla_config(body: Optional[XsollaConfig] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestXsollaConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(TestXsollaConfigById)
def test_xsolla_config_by_id(id_: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = TestXsollaConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateAdyenConfig)
def update_adyen_config(id_: str, body: Optional[AdyenConfig] = None, sandbox: Optional[bool] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateAdyenConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateAliPayConfig)
def update_ali_pay_config(id_: str, body: Optional[AliPayConfig] = None, sandbox: Optional[bool] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateAliPayConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateCheckoutConfig)
def update_checkout_config(id_: str, body: Optional[CheckoutConfig] = None, sandbox: Optional[bool] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateCheckoutConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdatePayPalConfig)
def update_pay_pal_config(id_: str, body: Optional[PayPalConfig] = None, sandbox: Optional[bool] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdatePayPalConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdatePaymentProviderConfig)
def update_payment_provider_config(id_: str, body: Optional[PaymentProviderConfigEdit] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdatePaymentProviderConfig.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdatePaymentTaxConfig)
def update_payment_tax_config(body: Optional[PaymentTaxConfigEdit] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdatePaymentTaxConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateStripeConfig)
def update_stripe_config(id_: str, body: Optional[StripeConfig] = None, sandbox: Optional[bool] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateStripeConfig.create(
        id_=id_,
        body=body,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateWxPayConfig)
def update_wx_pay_config(id_: str, body: Optional[WxPayConfigRequest] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateWxPayConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateWxPayConfigCert)
def update_wx_pay_config_cert(id_: str, file: Optional[Any] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateWxPayConfigCert.create(
        id_=id_,
        file=file,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateXsollaConfig)
def update_xsolla_config(id_: str, body: Optional[XsollaConfig] = None, validate: Optional[bool] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateXsollaConfig.create(
        id_=id_,
        body=body,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateXsollaUIConfig)
def update_xsolla_ui_config(id_: str, body: Optional[XsollaPaywallConfigRequest] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateXsollaUIConfig.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)
