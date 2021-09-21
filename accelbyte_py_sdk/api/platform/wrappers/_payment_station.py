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

from ..models import Customization
from ..models import ErrorEntity
from ..models import PaymentMethod
from ..models import PaymentOrderDetails
from ..models import PaymentOrderPaidResult
from ..models import PaymentProcessResult
from ..models import PaymentToken
from ..models import PaymentUrl
from ..models import PaymentUrlCreate
from ..models import TaxResult

from ..operations.payment_station import GetPaymentCustomization
from ..operations.payment_station import GetPaymentPublicConfig
from ..operations.payment_station import GetPaymentTaxValue
from ..operations.payment_station import Pay
from ..operations.payment_station import PublicCheckPaymentOrderPaidStatus
from ..operations.payment_station import PublicGetPaymentMethods
from ..operations.payment_station import PublicGetPaymentUrl
from ..operations.payment_station import PublicGetQRCode
from ..operations.payment_station import PublicGetUnpaidPaymentOrder
from ..operations.payment_station import PublicNormalizePaymentReturnUrl


@same_doc_as(GetPaymentCustomization)
def get_payment_customization(payment_provider: str, region: str, sandbox: Optional[bool] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentCustomization.create(
        payment_provider=payment_provider,
        region=region,
        sandbox=sandbox,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPaymentPublicConfig)
def get_payment_public_config(payment_provider: str, region: str, sandbox: Optional[bool] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentPublicConfig.create(
        payment_provider=payment_provider,
        region=region,
        sandbox=sandbox,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPaymentTaxValue)
def get_payment_tax_value(payment_provider: str, payment_order_no: str, zip_code: Optional[str] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentTaxValue.create(
        payment_provider=payment_provider,
        payment_order_no=payment_order_no,
        zip_code=zip_code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(Pay)
def pay(payment_order_no: str, body: Optional[PaymentToken] = None, payment_provider: Optional[str] = None, zip_code: Optional[str] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Pay.create(
        payment_order_no=payment_order_no,
        body=body,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicCheckPaymentOrderPaidStatus)
def public_check_payment_order_paid_status(payment_order_no: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCheckPaymentOrderPaidStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetPaymentMethods)
def public_get_payment_methods(payment_order_no: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentMethods.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetPaymentUrl)
def public_get_payment_url(body: Optional[PaymentUrlCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentUrl.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetQRCode)
def public_get_qr_code(code: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetQRCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetUnpaidPaymentOrder)
def public_get_unpaid_payment_order(payment_order_no: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUnpaidPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicNormalizePaymentReturnUrl)
def public_normalize_payment_return_url(return_url: str, order_no: str, payment_order_no: str, payment_provider: str, user_id: Optional[str] = None, foreinginvoice: Optional[str] = None, invoice_id: Optional[str] = None, status: Optional[str] = None, result_code: Optional[str] = None, payload: Optional[str] = None, type_: Optional[str] = None, token: Optional[str] = None, payer_id: Optional[str] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicNormalizePaymentReturnUrl.create(
        return_url=return_url,
        order_no=order_no,
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        user_id=user_id,
        foreinginvoice=foreinginvoice,
        invoice_id=invoice_id,
        status=status,
        result_code=result_code,
        payload=payload,
        type_=type_,
        token=token,
        payer_id=payer_id,
        namespace=namespace,
    )
    return run_request(request)
