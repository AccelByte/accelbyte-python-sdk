# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

from ..models import BinarySchema
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
    """Get payment provider customization (getPaymentCustomization)

    [Not supported yet in AGS Shared Cloud] Get payment provider customization, at current only Adyen provide customization. This api has been deprecated, pls use /public/namespaces/{namespace}/payment/publicconfig to get adyen config
    Other detail info:

      * Returns : customization

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/customization

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        region: (region) REQUIRED str in query

    Responses:
        200: OK - Customization (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment provider customization (getPaymentCustomization)

    [Not supported yet in AGS Shared Cloud] Get payment provider customization, at current only Adyen provide customization. This api has been deprecated, pls use /public/namespaces/{namespace}/payment/publicconfig to get adyen config
    Other detail info:

      * Returns : customization

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/customization

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        region: (region) REQUIRED str in query

    Responses:
        200: OK - Customization (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment provider public config (getPaymentPublicConfig)

    [Not supported yet in AGS Shared Cloud] Get payment provider public config, at current only Strip provide public config.
    Other detail info:

      * Returns : Public config

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/publicconfig

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        region: (region) REQUIRED str in query

    Responses:
        200: OK - Dict[str, Any] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment provider public config (getPaymentPublicConfig)

    [Not supported yet in AGS Shared Cloud] Get payment provider public config, at current only Strip provide public config.
    Other detail info:

      * Returns : Public config

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/publicconfig

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        region: (region) REQUIRED str in query

    Responses:
        200: OK - Dict[str, Any] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get tax result of a payment order (getPaymentTaxValue)

    [Not supported yet in AGS Shared Cloud] Check and get a payment order's should pay tax.
    Other detail info:

      * Returns : tax result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/tax

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        zip_code: (zipCode) OPTIONAL str in query

        payment_order_no: (paymentOrderNo) REQUIRED str in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

    Responses:
        200: OK - TaxResult (successful operation)

        400: Bad Request - ErrorEntity (33123: Invalid zipcode)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get tax result of a payment order (getPaymentTaxValue)

    [Not supported yet in AGS Shared Cloud] Check and get a payment order's should pay tax.
    Other detail info:

      * Returns : tax result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/tax

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        zip_code: (zipCode) OPTIONAL str in query

        payment_order_no: (paymentOrderNo) REQUIRED str in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

    Responses:
        200: OK - TaxResult (successful operation)

        400: Bad Request - ErrorEntity (33123: Invalid zipcode)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: PaymentToken,
    payment_order_no: str,
    payment_provider: Optional[Union[str, PayPaymentProviderEnum]] = None,
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Do payment (pay)

    [Not supported yet in AGS Shared Cloud] Do payment(For now, this only support checkout.com).
    Other detail info:

      * Returns : Payment process result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay

        method: POST

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentToken in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

        payment_provider: (paymentProvider) OPTIONAL Union[str, PaymentProviderEnum] in query

        zip_code: (zipCode) OPTIONAL str in query

    Responses:
        200: OK - PaymentProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Pay.create(
        body=body,
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Pay)
async def pay_async(
    body: PaymentToken,
    payment_order_no: str,
    payment_provider: Optional[Union[str, PayPaymentProviderEnum]] = None,
    zip_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Do payment (pay)

    [Not supported yet in AGS Shared Cloud] Do payment(For now, this only support checkout.com).
    Other detail info:

      * Returns : Payment process result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay

        method: POST

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentToken in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

        payment_provider: (paymentProvider) OPTIONAL Union[str, PaymentProviderEnum] in query

        zip_code: (zipCode) OPTIONAL str in query

    Responses:
        200: OK - PaymentProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Pay.create(
        body=body,
        payment_order_no=payment_order_no,
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
    """Check payment order paid status (publicCheckPaymentOrderPaidStatus)

    [Not supported yet in AGS Shared Cloud] Check payment order paid status.
    Other detail info:

      * Returns : Payment order paid result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderPaidResult (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Check payment order paid status (publicCheckPaymentOrderPaidStatus)

    [Not supported yet in AGS Shared Cloud] Check payment order paid status.
    Other detail info:

      * Returns : Payment order paid result

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderPaidResult (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment methods (publicGetPaymentMethods)

    [Not supported yet in AGS Shared Cloud] Get payment methods.
    Other detail info:

      * Returns : Payment method list

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/methods

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in query

    Responses:
        200: OK - List[PaymentMethod] (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment methods (publicGetPaymentMethods)

    [Not supported yet in AGS Shared Cloud] Get payment methods.
    Other detail info:

      * Returns : Payment method list

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/methods

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in query

    Responses:
        200: OK - List[PaymentMethod] (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: PaymentUrlCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment url (publicGetPaymentUrl)

    [Not supported yet in AGS Shared Cloud] Get payment url.
    Other detail info:

      * For Neon Pay payment provider, the 'neonPayConfig' field can be used to provide success and cancel URL. If 'neonPayConfig' field is not present, the 'returnUrl' will be used for both success and cancel URL.
      *  Returns : Get payment link

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/link

        method: POST

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentUrlCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentUrl (successful operation)

        400: Bad Request - ErrorEntity (33321: Payment provider [{paymentProvider}] not support currency [{currency}] | 33322: Payment provider [{paymentProvider}] not supported | 33332: Amount too small, please contact administrator | 33333: Neon Pay checkout payment order [{paymentOrderNo}] failed with message [{errMsg}])

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist | 20008: user [{userId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPaymentUrl.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPaymentUrl)
async def public_get_payment_url_async(
    body: PaymentUrlCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment url (publicGetPaymentUrl)

    [Not supported yet in AGS Shared Cloud] Get payment url.
    Other detail info:

      * For Neon Pay payment provider, the 'neonPayConfig' field can be used to provide success and cancel URL. If 'neonPayConfig' field is not present, the 'returnUrl' will be used for both success and cancel URL.
      *  Returns : Get payment link

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/link

        method: POST

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentUrlCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentUrl (successful operation)

        400: Bad Request - ErrorEntity (33321: Payment provider [{paymentProvider}] not support currency [{currency}] | 33322: Payment provider [{paymentProvider}] not supported | 33332: Amount too small, please contact administrator | 33333: Neon Pay checkout payment order [{paymentOrderNo}] failed with message [{errMsg}])

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist | 20008: user [{userId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get qrcode (publicGetQRCode)

    [Not supported yet in AGS Shared Cloud] Get qrcode.
    Other detail info:

      * Returns : QRCode image stream

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/qrcode

        method: GET

        tags: ["PaymentStation"]

        consumes: []

        produces: ["image/png"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        code: (code) REQUIRED str in query

    Responses:
        200: OK - BinarySchema (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get qrcode (publicGetQRCode)

    [Not supported yet in AGS Shared Cloud] Get qrcode.
    Other detail info:

      * Returns : QRCode image stream

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/qrcode

        method: GET

        tags: ["PaymentStation"]

        consumes: []

        produces: ["image/png"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        code: (code) REQUIRED str in query

    Responses:
        200: OK - BinarySchema (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment order info (publicGetUnpaidPaymentOrder)

    [Not supported yet in AGS Shared Cloud] Get payment order info.
    Other detail info:

      * Returns : Payment order details

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderDetails (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get payment order info (publicGetUnpaidPaymentOrder)

    [Not supported yet in AGS Shared Cloud] Get payment order info.
    Other detail info:

      * Returns : Payment order details

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info

        method: GET

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderDetails (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Normalize payment return url (publicNormalizePaymentReturnUrl)

    [Not supported yet in AGS Shared Cloud] Normalize payment return url for payment provider
    Field                                                                                                                                                        | Type   | Required | Description
    -------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|----------|-----------------------
    orderNo                                                                                                                                                      | String | Yes      | order no
    paymentStatus                                                                                                                                                | String | Yes      |

      * DONE: The payment was successfully completed.
      * CANCELLED: The payment was cancelled by the shopper before completion, or the shopper returned to the merchant's site before completing the transaction.
      * PENDING: Inform the shopper that you've received their order, and are waiting for the payment to be completed.

    When the shopper has completed the payment you will receive a successful AUTHORISATION.
      * RECEIVED: Inform the shopper that you've received their order, and are waiting for the payment to clear.
      * UNKNOWN: An error occurred during the payment processing.
      * FAILED: Shopper paid failed because of various reasons.


    reason                                                                                                                                                       | String | No       | payment status reason

    Other detail info:

      * xsolla : parameters 'user_id', 'foreinginvoice', 'invoice_id' and 'status' will be automatically added to the link
      *  adyen : https://docs.adyen.com/developers/checkout/web-sdk

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/returnurl

        method: GET

        tags: ["PaymentStation"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payer_id: (PayerID) OPTIONAL str in query

        foreinginvoice: (foreinginvoice) OPTIONAL str in query

        invoice_id: (invoice_id) OPTIONAL str in query

        payload: (payload) OPTIONAL str in query

        redirect_result: (redirectResult) OPTIONAL str in query

        result_code: (resultCode) OPTIONAL str in query

        session_id: (sessionId) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        token: (token) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        order_no: (orderNo) REQUIRED str in query

        payment_order_no: (paymentOrderNo) REQUIRED str in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        return_url: (returnUrl) REQUIRED str in query

    Responses:
        204: No Content - (no content.(if query param 'returnUrl' is empty))

        307: Temporary Redirect - (successful operation.(if query param 'returnUrl' is not empty))
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Normalize payment return url (publicNormalizePaymentReturnUrl)

    [Not supported yet in AGS Shared Cloud] Normalize payment return url for payment provider
    Field                                                                                                                                                        | Type   | Required | Description
    -------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|----------|-----------------------
    orderNo                                                                                                                                                      | String | Yes      | order no
    paymentStatus                                                                                                                                                | String | Yes      |

      * DONE: The payment was successfully completed.
      * CANCELLED: The payment was cancelled by the shopper before completion, or the shopper returned to the merchant's site before completing the transaction.
      * PENDING: Inform the shopper that you've received their order, and are waiting for the payment to be completed.

    When the shopper has completed the payment you will receive a successful AUTHORISATION.
      * RECEIVED: Inform the shopper that you've received their order, and are waiting for the payment to clear.
      * UNKNOWN: An error occurred during the payment processing.
      * FAILED: Shopper paid failed because of various reasons.


    reason                                                                                                                                                       | String | No       | payment status reason

    Other detail info:

      * xsolla : parameters 'user_id', 'foreinginvoice', 'invoice_id' and 'status' will be automatically added to the link
      *  adyen : https://docs.adyen.com/developers/checkout/web-sdk

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/returnurl

        method: GET

        tags: ["PaymentStation"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payer_id: (PayerID) OPTIONAL str in query

        foreinginvoice: (foreinginvoice) OPTIONAL str in query

        invoice_id: (invoice_id) OPTIONAL str in query

        payload: (payload) OPTIONAL str in query

        redirect_result: (redirectResult) OPTIONAL str in query

        result_code: (resultCode) OPTIONAL str in query

        session_id: (sessionId) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        token: (token) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        order_no: (orderNo) REQUIRED str in query

        payment_order_no: (paymentOrderNo) REQUIRED str in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        return_url: (returnUrl) REQUIRED str in query

    Responses:
        204: No Content - (no content.(if query param 'returnUrl' is empty))

        307: Temporary Redirect - (successful operation.(if query param 'returnUrl' is not empty))
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
