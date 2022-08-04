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
from ....core import deprecated
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
from ..operations.payment_station import GetPaymentCustomizationPaymentProviderEnum
from ..operations.payment_station import GetPaymentPublicConfig
from ..operations.payment_station import GetPaymentPublicConfigPaymentProviderEnum
from ..operations.payment_station import GetPaymentTaxValue
from ..operations.payment_station import GetPaymentTaxValuePaymentProviderEnum
from ..operations.payment_station import Pay
from ..operations.payment_station import PayPaymentProviderEnum
from ..operations.payment_station import PublicCheckPaymentOrderPaidStatus
from ..operations.payment_station import PublicGetPaymentMethods
from ..operations.payment_station import PublicGetPaymentUrl
from ..operations.payment_station import PublicGetQRCode
from ..operations.payment_station import PublicGetUnpaidPaymentOrder
from ..operations.payment_station import PublicNormalizePaymentReturnUrl
from ..operations.payment_station import (
    PublicNormalizePaymentReturnUrlPaymentProviderEnum,
)
from ..models import PaymentMethodPaymentProviderEnum
from ..models import PaymentUrlPaymentProviderEnum, PaymentUrlPaymentTypeEnum
from ..models import PaymentUrlCreatePaymentProviderEnum


@deprecated
@same_doc_as(GetPaymentCustomization)
def get_payment_customization(
    payment_provider: Union[str, GetPaymentCustomizationPaymentProviderEnum],
    region: str,
    sandbox: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetPaymentCustomization)
async def get_payment_customization_async(
    payment_provider: Union[str, GetPaymentCustomizationPaymentProviderEnum],
    region: str,
    sandbox: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentPublicConfig)
def get_payment_public_config(
    payment_provider: Union[str, GetPaymentPublicConfigPaymentProviderEnum],
    region: str,
    sandbox: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentPublicConfig)
async def get_payment_public_config_async(
    payment_provider: Union[str, GetPaymentPublicConfigPaymentProviderEnum],
    region: str,
    sandbox: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentTaxValue)
def get_payment_tax_value(
    payment_order_no: str,
    payment_provider: Union[str, GetPaymentTaxValuePaymentProviderEnum],
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentTaxValue.create(
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentTaxValue)
async def get_payment_tax_value_async(
    payment_order_no: str,
    payment_provider: Union[str, GetPaymentTaxValuePaymentProviderEnum],
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentTaxValue.create(
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Pay)
def pay(
    payment_order_no: str,
    body: Optional[PaymentToken] = None,
    payment_provider: Optional[Union[str, PayPaymentProviderEnum]] = None,
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Pay)
async def pay_async(
    payment_order_no: str,
    body: Optional[PaymentToken] = None,
    payment_provider: Optional[Union[str, PayPaymentProviderEnum]] = None,
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCheckPaymentOrderPaidStatus)
def public_check_payment_order_paid_status(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCheckPaymentOrderPaidStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCheckPaymentOrderPaidStatus)
async def public_check_payment_order_paid_status_async(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCheckPaymentOrderPaidStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPaymentMethods)
def public_get_payment_methods(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentMethods.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPaymentMethods)
async def public_get_payment_methods_async(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentMethods.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPaymentUrl)
def public_get_payment_url(
    body: Optional[PaymentUrlCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentUrl.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPaymentUrl)
async def public_get_payment_url_async(
    body: Optional[PaymentUrlCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentUrl.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetQRCode)
def public_get_qr_code(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetQRCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetQRCode)
async def public_get_qr_code_async(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetQRCode.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUnpaidPaymentOrder)
def public_get_unpaid_payment_order(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUnpaidPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUnpaidPaymentOrder)
async def public_get_unpaid_payment_order_async(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUnpaidPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicNormalizePaymentReturnUrl)
def public_normalize_payment_return_url(
    order_no: str,
    payment_order_no: str,
    payment_provider: Union[str, PublicNormalizePaymentReturnUrlPaymentProviderEnum],
    return_url: str,
    foreinginvoice: Optional[str] = None,
    invoice_id: Optional[str] = None,
    payer_id: Optional[str] = None,
    payload: Optional[str] = None,
    redirect_result: Optional[str] = None,
    result_code: Optional[str] = None,
    session_id: Optional[str] = None,
    status: Optional[str] = None,
    token: Optional[str] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicNormalizePaymentReturnUrl.create(
        order_no=order_no,
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        return_url=return_url,
        foreinginvoice=foreinginvoice,
        invoice_id=invoice_id,
        payer_id=payer_id,
        payload=payload,
        redirect_result=redirect_result,
        result_code=result_code,
        session_id=session_id,
        status=status,
        token=token,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicNormalizePaymentReturnUrl)
async def public_normalize_payment_return_url_async(
    order_no: str,
    payment_order_no: str,
    payment_provider: Union[str, PublicNormalizePaymentReturnUrlPaymentProviderEnum],
    return_url: str,
    foreinginvoice: Optional[str] = None,
    invoice_id: Optional[str] = None,
    payer_id: Optional[str] = None,
    payload: Optional[str] = None,
    redirect_result: Optional[str] = None,
    result_code: Optional[str] = None,
    session_id: Optional[str] = None,
    status: Optional[str] = None,
    token: Optional[str] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicNormalizePaymentReturnUrl.create(
        order_no=order_no,
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        return_url=return_url,
        foreinginvoice=foreinginvoice,
        invoice_id=invoice_id,
        payer_id=payer_id,
        payload=payload,
        redirect_result=redirect_result,
        result_code=result_code,
        session_id=session_id,
        status=status,
        token=token,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
