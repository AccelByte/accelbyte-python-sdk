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
from ....core import same_doc_as

from ..models import AdyenConfig
from ..models import AliPayConfig
from ..models import CheckoutConfig
from ..models import ErrorEntity
from ..models import NeonPayConfig
from ..models import PayPalConfig
from ..models import PaymentDomainWhitelistConfigEdit
from ..models import PaymentDomainWhitelistConfigInfo
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
from ..operations.payment_config import GetPaymentMerchantConfig1
from ..operations.payment_config import GetPaymentTaxConfig
from ..operations.payment_config import GetSpecialPaymentProviders
from ..operations.payment_config import QueryPaymentProviderConfig
from ..operations.payment_config import TestAdyenConfig
from ..operations.payment_config import TestAdyenConfigById
from ..operations.payment_config import TestAliPayConfig
from ..operations.payment_config import TestAliPayConfigById
from ..operations.payment_config import TestCheckoutConfig
from ..operations.payment_config import TestCheckoutConfigById
from ..operations.payment_config import TestNeonPayConfig
from ..operations.payment_config import TestNeonPayConfigById
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
from ..operations.payment_config import UpdateNeonPayConfig
from ..operations.payment_config import UpdatePayPalConfig
from ..operations.payment_config import UpdatePaymentDomainWhitelistConfig
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
    body: PaymentProviderConfigEdit,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create payment provider config (createPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Create payment provider config.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|-----------------------------------------------------------
        namespace  | String | Yes      | namespace, * indicates all namespace
        region     | String | Yes      | region, * indicates all regions
        aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
        specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



    payment provider applied has priority:

      1. namespace and region match
      2. namespace matches and region is *
      3. region matches and namespace is *
      4. namespace and region are *

    Other detail info:
      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentProviderConfigEdit in body

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = CreatePaymentProviderConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePaymentProviderConfig)
async def create_payment_provider_config_async(
    body: PaymentProviderConfigEdit,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create payment provider config (createPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Create payment provider config.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|-----------------------------------------------------------
        namespace  | String | Yes      | namespace, * indicates all namespace
        region     | String | Yes      | region, * indicates all regions
        aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
        specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



    payment provider applied has priority:

      1. namespace and region match
      2. namespace matches and region is *
      3. region matches and namespace is *
      4. namespace and region are *

    Other detail info:
      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentProviderConfigEdit in body

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Debug matched payment merchant config(internal) (debugMatchedPaymentMerchantConfig)

    [Not supported yet in AGS Shared Cloud] Debug matched payment merchant config.
    Other detail info:

      * Returns : payment merchant config info

    Properties:
        url: /platform/admin/payment/config/merchant/matched

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Debug matched payment merchant config(internal) (debugMatchedPaymentMerchantConfig)

    [Not supported yet in AGS Shared Cloud] Debug matched payment merchant config.
    Other detail info:

      * Returns : payment merchant config info

    Properties:
        url: /platform/admin/payment/config/merchant/matched

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Debug matched payment provider config(internal) (debugMatchedPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Debug matched payment provider config.
    Other detail info:

      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/matched

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)
    """
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
    """Debug matched payment provider config(internal) (debugMatchedPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Debug matched payment provider config.
    Other detail info:

      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/matched

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)
    """
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
    """Delete payment provider config (deletePaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Delete payment provider config.
    Other detail info:

      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/{id}

        method: DELETE

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)
    """
    request = DeletePaymentProviderConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePaymentProviderConfig)
async def delete_payment_provider_config_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete payment provider config (deletePaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Delete payment provider config.
    Other detail info:

      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/{id}

        method: DELETE

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)
    """
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
    """Get aggregate payment providers (getAggregatePaymentProviders)

    [Not supported yet in AGS Shared Cloud] Get aggregate payment providers, such as XSOLLA, ADYEN.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/provider/aggregate

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[Union[str, ResponseEnum]] (successful operation)
    """
    request = GetAggregatePaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAggregatePaymentProviders)
async def get_aggregate_payment_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get aggregate payment providers (getAggregatePaymentProviders)

    [Not supported yet in AGS Shared Cloud] Get aggregate payment providers, such as XSOLLA, ADYEN.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/provider/aggregate

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[Union[str, ResponseEnum]] (successful operation)
    """
    request = GetAggregatePaymentProviders.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentMerchantConfig)
def get_payment_merchant_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment domain whitelist config (getPaymentMerchantConfig)

    [Not supported yet in AGS Shared Cloud] Get payment domain whitelist config by namespace.
    Other detail info:

      * Returns : payment domain whitelist config info

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/domains

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentDomainWhitelistConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPaymentMerchantConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentMerchantConfig)
async def get_payment_merchant_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment domain whitelist config (getPaymentMerchantConfig)

    [Not supported yet in AGS Shared Cloud] Get payment domain whitelist config by namespace.
    Other detail info:

      * Returns : payment domain whitelist config info

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/domains

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentDomainWhitelistConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPaymentMerchantConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentMerchantConfig1)
def get_payment_merchant_config_1(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get payment merchant config (getPaymentMerchantConfig_1)

    [Not supported yet in AGS Shared Cloud] Get payment merchant config by id.
    Other detail info:

      * Returns : payment merchant config info

    Properties:
        url: /platform/admin/payment/config/merchant/{id}

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = GetPaymentMerchantConfig1.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentMerchantConfig1)
async def get_payment_merchant_config_1_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get payment merchant config (getPaymentMerchantConfig_1)

    [Not supported yet in AGS Shared Cloud] Get payment merchant config by id.
    Other detail info:

      * Returns : payment merchant config info

    Properties:
        url: /platform/admin/payment/config/merchant/{id}

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = GetPaymentMerchantConfig1.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentTaxConfig)
def get_payment_tax_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get payment global tax config (getPaymentTaxConfig)

    [Not supported yet in AGS Shared Cloud] Get payment global tax config.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/tax

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - PaymentTaxConfigInfo (successful operation)
    """
    request = GetPaymentTaxConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentTaxConfig)
async def get_payment_tax_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get payment global tax config (getPaymentTaxConfig)

    [Not supported yet in AGS Shared Cloud] Get payment global tax config.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/tax

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - PaymentTaxConfigInfo (successful operation)
    """
    request = GetPaymentTaxConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSpecialPaymentProviders)
def get_special_payment_providers(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get special payment providers (getSpecialPaymentProviders)

    [Not supported yet in AGS Shared Cloud] Get special payment providers, such as ALIPAY, WXPAY.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/provider/special

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[Union[str, ResponseEnum]] (successful operation)
    """
    request = GetSpecialPaymentProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSpecialPaymentProviders)
async def get_special_payment_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get special payment providers (getSpecialPaymentProviders)

    [Not supported yet in AGS Shared Cloud] Get special payment providers, such as ALIPAY, WXPAY.
    Other detail info:

      * Returns : payment provider list

    Properties:
        url: /platform/admin/payment/config/provider/special

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[Union[str, ResponseEnum]] (successful operation)
    """
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
    """Query payment provider config (queryPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Query payment provider config.
    Other detail info:

      * Returns : payment provider config list

    Properties:
        url: /platform/admin/payment/config/provider

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentProviderConfigPagingSlicedResult (successful operation)
    """
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
    """Query payment provider config (queryPaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Query payment provider config.
    Other detail info:

      * Returns : payment provider config list

    Properties:
        url: /platform/admin/payment/config/provider

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - PaymentProviderConfigPagingSlicedResult (successful operation)
    """
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
    body: AdyenConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test adyen configuration (testAdyenConfig)

    [Not supported yet in AGS Shared Cloud] Test adyen configuration.

    #### Check List:

      * apiKey
      * merchantAccount



    #### Non-check list:

      * notificationHmacKey
      * notificationUsername
      * notificationPassword
      * liveEndpointUrlPrefix
      * allowedPaymentMethods
      * blockedPaymentMethods
      * settings

    Other detail info:
      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/adyenconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdyenConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestAdyenConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAdyenConfig)
async def test_adyen_config_async(
    body: AdyenConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test adyen configuration (testAdyenConfig)

    [Not supported yet in AGS Shared Cloud] Test adyen configuration.

    #### Check List:

      * apiKey
      * merchantAccount



    #### Non-check list:

      * notificationHmacKey
      * notificationUsername
      * notificationPassword
      * liveEndpointUrlPrefix
      * allowedPaymentMethods
      * blockedPaymentMethods
      * settings

    Other detail info:
      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/adyenconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdyenConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test adyen configuration by id (testAdyenConfigById)

    [Not supported yet in AGS Shared Cloud] Test adyen configuration in payment merchant config. Other detail info:

      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/adyenconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Test adyen configuration by id (testAdyenConfigById)

    [Not supported yet in AGS Shared Cloud] Test adyen configuration in payment merchant config. Other detail info:

      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/adyenconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestAdyenConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestAliPayConfig)
def test_ali_pay_config(
    body: AliPayConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Alipay configuration (testAliPayConfig)

    [Not supported yet in AGS Shared Cloud] Test AliPay configuration.Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
    Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/alipayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AliPayConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestAliPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestAliPayConfig)
async def test_ali_pay_config_async(
    body: AliPayConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Alipay configuration (testAliPayConfig)

    [Not supported yet in AGS Shared Cloud] Test AliPay configuration.Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
    Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/alipayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AliPayConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test Alipay configuration by id (testAliPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test AliPay configuration in payment merchant config. Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
    Other detail info:

      * Returns : test alipay config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/alipayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Test Alipay configuration by id (testAliPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test AliPay configuration in payment merchant config. Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
    Other detail info:

      * Returns : test alipay config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/alipayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestAliPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestCheckoutConfig)
def test_checkout_config(
    body: CheckoutConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test checkout.com configuration (testCheckoutConfig)

    [Not supported yet in AGS Shared Cloud] Test checkout.com configuration.

    #### Check List:

      * publicKey
      * secretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/checkoutconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CheckoutConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestCheckoutConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestCheckoutConfig)
async def test_checkout_config_async(
    body: CheckoutConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test checkout.com configuration (testCheckoutConfig)

    [Not supported yet in AGS Shared Cloud] Test checkout.com configuration.

    #### Check List:

      * publicKey
      * secretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/checkoutconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CheckoutConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test checkout.com configuration by id (testCheckoutConfigById)

    [Not supported yet in AGS Shared Cloud] Test checkout.com configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/checkoutconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Test checkout.com configuration by id (testCheckoutConfigById)

    [Not supported yet in AGS Shared Cloud] Test checkout.com configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/checkoutconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestCheckoutConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestNeonPayConfig)
def test_neon_pay_config(
    body: NeonPayConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Neon Pay configuration (testNeonPayConfig)

    [Not supported yet in AGS Shared Cloud] Check Neon Pay configuration, Reference: [Neon Pay Document](https://docs.neonpay.com/docs/checkout).

    #### Check List:

      * apiKey
      * webhookSecretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/neonpayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NeonPayConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestNeonPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestNeonPayConfig)
async def test_neon_pay_config_async(
    body: NeonPayConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Neon Pay configuration (testNeonPayConfig)

    [Not supported yet in AGS Shared Cloud] Check Neon Pay configuration, Reference: [Neon Pay Document](https://docs.neonpay.com/docs/checkout).

    #### Check List:

      * apiKey
      * webhookSecretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/neonpayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NeonPayConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestNeonPayConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestNeonPayConfigById)
def test_neon_pay_config_by_id(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Neon Pay configuration by id (testNeonPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test Neon Pay configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/neonpayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestNeonPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestNeonPayConfigById)
async def test_neon_pay_config_by_id_async(
    id_: str,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test Neon Pay configuration by id (testNeonPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test Neon Pay configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/neonpayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestNeonPayConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestPayPalConfig)
def test_pay_pal_config(
    body: PayPalConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test PayPal configuration (testPayPalConfig)

    [Not supported yet in AGS Shared Cloud] Test PayPal configuration.

    #### Check List:

      * clientID
      * clientSecret



    #### Non-check list:

      * webHookId

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/paypalconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PayPalConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestPayPalConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestPayPalConfig)
async def test_pay_pal_config_async(
    body: PayPalConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test PayPal configuration (testPayPalConfig)

    [Not supported yet in AGS Shared Cloud] Test PayPal configuration.

    #### Check List:

      * clientID
      * clientSecret



    #### Non-check list:

      * webHookId

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/paypalconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PayPalConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test PayPal configuration by id (testPayPalConfigById)

    [Not supported yet in AGS Shared Cloud] Test PayPal configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/paypalconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33045: errors.net.accelbyte.platform.payment.payment_merchant_config_not_found)
    """
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
    """Test PayPal configuration by id (testPayPalConfigById)

    [Not supported yet in AGS Shared Cloud] Test PayPal configuration in payment merchant config. Other detail info:

      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/paypalconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33045: errors.net.accelbyte.platform.payment.payment_merchant_config_not_found)
    """
    request = TestPayPalConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestStripeConfig)
def test_stripe_config(
    body: StripeConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test stripe configuration (testStripeConfig)

    [Not supported yet in AGS Shared Cloud] Test stripe configuration.

    #### Check List:

      * secretKey
      * allowedPaymentMethodTypes



    #### Non-check list:

      * publishableKey
      * webhookSecret

    Other detail info:
      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/stripeconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StripeConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestStripeConfig.create(
        body=body,
        sandbox=sandbox,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestStripeConfig)
async def test_stripe_config_async(
    body: StripeConfig,
    sandbox: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test stripe configuration (testStripeConfig)

    [Not supported yet in AGS Shared Cloud] Test stripe configuration.

    #### Check List:

      * secretKey
      * allowedPaymentMethodTypes



    #### Non-check list:

      * publishableKey
      * webhookSecret

    Other detail info:
      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/stripeconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StripeConfig in body

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test stripe configuration by id (testStripeConfigById)

    [Not supported yet in AGS Shared Cloud] Test stripe configuration in payment merchant config. Other detail info:

      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/stripeconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Test stripe configuration by id (testStripeConfigById)

    [Not supported yet in AGS Shared Cloud] Test stripe configuration in payment merchant config. Other detail info:

      * Returns : test adyen config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/stripeconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestStripeConfigById.create(
        id_=id_,
        sandbox=sandbox,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestWxPayConfig)
def test_wx_pay_config(
    body: WxPayConfigRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test wxPay configuration (testWxPayConfig)

    [Not supported yet in AGS Shared Cloud] Test WxPay configuration. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
    Other detail info:

      * Returns : test WxPay config

    Properties:
        url: /platform/admin/payment/config/merchant/wxpayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WxPayConfigRequest in body

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestWxPayConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestWxPayConfig)
async def test_wx_pay_config_async(
    body: WxPayConfigRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Test wxPay configuration (testWxPayConfig)

    [Not supported yet in AGS Shared Cloud] Test WxPay configuration. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
    Other detail info:

      * Returns : test WxPay config

    Properties:
        url: /platform/admin/payment/config/merchant/wxpayconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WxPayConfigRequest in body

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test wxPay configuration by id (testWxPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test WxPay configuration in payment merchant config. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
    Other detail info:

      * Returns : test WxPay config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestWxPayConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestWxPayConfigById)
async def test_wx_pay_config_by_id_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Test wxPay configuration by id (testWxPayConfigById)

    [Not supported yet in AGS Shared Cloud] Test WxPay configuration in payment merchant config. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
    Other detail info:

      * Returns : test WxPay config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestWxPayConfigById.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestXsollaConfig)
def test_xsolla_config(
    body: XsollaConfig, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Test xsolla configuration (testXsollaConfig)

    [Not supported yet in AGS Shared Cloud] Check xsolla configuration, Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).

    #### Check List:

      * merchantId
      * projectId
      * apiKey



    #### Non-check list:

      * projectSecretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/xsollaconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaConfig in body

    Responses:
        200: OK - TestResult (successful operation)
    """
    request = TestXsollaConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestXsollaConfig)
async def test_xsolla_config_async(
    body: XsollaConfig, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Test xsolla configuration (testXsollaConfig)

    [Not supported yet in AGS Shared Cloud] Check xsolla configuration, Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).

    #### Check List:

      * merchantId
      * projectId
      * apiKey



    #### Non-check list:

      * projectSecretKey

    Other detail info:
      * Returns : test result

    Properties:
        url: /platform/admin/payment/config/merchant/xsollaconfig/test

        method: POST

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaConfig in body

    Responses:
        200: OK - TestResult (successful operation)
    """
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
    """Test xsolla configuration by id (testXsollaConfigById)

    [Not supported yet in AGS Shared Cloud] Test xsolla configuration in payment merchant config. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
    Other detail info:

      * Returns : test xsolla config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollaconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestXsollaConfigById.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestXsollaConfigById)
async def test_xsolla_config_by_id_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Test xsolla configuration by id (testXsollaConfigById)

    [Not supported yet in AGS Shared Cloud] Test xsolla configuration in payment merchant config. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
    Other detail info:

      * Returns : test xsolla config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollaconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = TestXsollaConfigById.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAdyenConfig)
def update_adyen_config(
    body: AdyenConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update adyen config (updateAdyenConfig)

    [Not supported yet in AGS Shared Cloud] Update adyen config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/adyenconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdyenConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateAdyenConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAdyenConfig)
async def update_adyen_config_async(
    body: AdyenConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update adyen config (updateAdyenConfig)

    [Not supported yet in AGS Shared Cloud] Update adyen config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/adyenconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdyenConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateAdyenConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAliPayConfig)
def update_ali_pay_config(
    body: AliPayConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update alipay configuration (updateAliPayConfig)

    [Not supported yet in AGS Shared Cloud] Update alipay configuration.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/alipayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AliPayConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateAliPayConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAliPayConfig)
async def update_ali_pay_config_async(
    body: AliPayConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update alipay configuration (updateAliPayConfig)

    [Not supported yet in AGS Shared Cloud] Update alipay configuration.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/alipayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AliPayConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateAliPayConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCheckoutConfig)
def update_checkout_config(
    body: CheckoutConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update checkout.com config (updateCheckoutConfig)

    [Not supported yet in AGS Shared Cloud] Update checkout.com config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/checkoutconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CheckoutConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateCheckoutConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCheckoutConfig)
async def update_checkout_config_async(
    body: CheckoutConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update checkout.com config (updateCheckoutConfig)

    [Not supported yet in AGS Shared Cloud] Update checkout.com config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/checkoutconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CheckoutConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateCheckoutConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateNeonPayConfig)
def update_neon_pay_config(
    body: NeonPayConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Neon Pay config (updateNeonPayConfig)

    [Not supported yet in AGS Shared Cloud] Update Neon Pay config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/neonpayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NeonPayConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateNeonPayConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateNeonPayConfig)
async def update_neon_pay_config_async(
    body: NeonPayConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Neon Pay config (updateNeonPayConfig)

    [Not supported yet in AGS Shared Cloud] Update Neon Pay config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/neonpayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NeonPayConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateNeonPayConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePayPalConfig)
def update_pay_pal_config(
    body: PayPalConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update PayPal config (updatePayPalConfig)

    [Not supported yet in AGS Shared Cloud] Update PayPal config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/paypalconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PayPalConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdatePayPalConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePayPalConfig)
async def update_pay_pal_config_async(
    body: PayPalConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update PayPal config (updatePayPalConfig)

    [Not supported yet in AGS Shared Cloud] Update PayPal config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/paypalconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PayPalConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdatePayPalConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePaymentDomainWhitelistConfig)
def update_payment_domain_whitelist_config(
    body: PaymentDomainWhitelistConfigEdit,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment domain whitelist config (updatePaymentDomainWhitelistConfig)

    [Not supported yet in AGS Shared Cloud] Update payment provider config by namespace.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|--------------------------------------------------
        domains    | String | Yes      | list of domains to whitelist for the return URL.



    Other detail info:

      * Validation : the domain should include the protocol (http/https), but the whitelist check will only compare the host part (www.example.com)
      *  Returns : payment domain whitelist config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/domains

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentDomainWhitelistConfigEdit in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentDomainWhitelistConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePaymentDomainWhitelistConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePaymentDomainWhitelistConfig)
async def update_payment_domain_whitelist_config_async(
    body: PaymentDomainWhitelistConfigEdit,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment domain whitelist config (updatePaymentDomainWhitelistConfig)

    [Not supported yet in AGS Shared Cloud] Update payment provider config by namespace.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|--------------------------------------------------
        domains    | String | Yes      | list of domains to whitelist for the return URL.



    Other detail info:

      * Validation : the domain should include the protocol (http/https), but the whitelist check will only compare the host part (www.example.com)
      *  Returns : payment domain whitelist config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/domains

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentDomainWhitelistConfigEdit in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentDomainWhitelistConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePaymentDomainWhitelistConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePaymentProviderConfig)
def update_payment_provider_config(
    body: PaymentProviderConfigEdit,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment provider config (updatePaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Update payment provider config.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|-----------------------------------------------------------
        namespace  | String | Yes      | namespace, * indicates all namespace
        region     | String | Yes      | region, * indicates all regions
        aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
        specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



    payment provider applied has priority:

      1. namespace and region match
      2. namespace matches and region is *
      3. region matches and namespace is *
      4. namespace and region are *

    Other detail info:
      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/{id}

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentProviderConfigEdit in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdatePaymentProviderConfig.create(
        body=body,
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePaymentProviderConfig)
async def update_payment_provider_config_async(
    body: PaymentProviderConfigEdit,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment provider config (updatePaymentProviderConfig)

    [Not supported yet in AGS Shared Cloud] Update payment provider config.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|-----------------------------------------------------------
        namespace  | String | Yes      | namespace, * indicates all namespace
        region     | String | Yes      | region, * indicates all regions
        aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
        specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



    payment provider applied has priority:

      1. namespace and region match
      2. namespace matches and region is *
      3. region matches and namespace is *
      4. namespace and region are *

    Other detail info:
      * Returns : payment provider config

    Properties:
        url: /platform/admin/payment/config/provider/{id}

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentProviderConfigEdit in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdatePaymentProviderConfig.create(
        body=body,
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePaymentTaxConfig)
def update_payment_tax_config(
    body: PaymentTaxConfigEdit,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment global tax config (updatePaymentTaxConfig)

    [Not supported yet in AGS Shared Cloud] Update payment tax config.



         Request Body Parameters:


         Parameter                | Type    | Required | Description
        --------------------------|---------|----------|---------------------------------------------------------------------
        taxJarEnabled             | Boolean | false
        taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
        sandboxTaxJarApiToken     | String  | false    | optional
        taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



    Other detail info:
      * Returns : payment global tax config

    Properties:
        url: /platform/admin/payment/config/tax

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentTaxConfigEdit in body

    Responses:
        200: OK - PaymentTaxConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdatePaymentTaxConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePaymentTaxConfig)
async def update_payment_tax_config_async(
    body: PaymentTaxConfigEdit,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment global tax config (updatePaymentTaxConfig)

    [Not supported yet in AGS Shared Cloud] Update payment tax config.



         Request Body Parameters:


         Parameter                | Type    | Required | Description
        --------------------------|---------|----------|---------------------------------------------------------------------
        taxJarEnabled             | Boolean | false
        taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
        sandboxTaxJarApiToken     | String  | false    | optional
        taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



    Other detail info:
      * Returns : payment global tax config

    Properties:
        url: /platform/admin/payment/config/tax

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentTaxConfigEdit in body

    Responses:
        200: OK - PaymentTaxConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdatePaymentTaxConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStripeConfig)
def update_stripe_config(
    body: StripeConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stripe config (updateStripeConfig)

    [Not supported yet in AGS Shared Cloud] Update stripe config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/stripeconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StripeConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateStripeConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStripeConfig)
async def update_stripe_config_async(
    body: StripeConfig,
    id_: str,
    sandbox: Optional[bool] = None,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stripe config (updateStripeConfig)

    [Not supported yet in AGS Shared Cloud] Update stripe config.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/stripeconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StripeConfig in body

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateStripeConfig.create(
        body=body,
        id_=id_,
        sandbox=sandbox,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateWxPayConfig)
def update_wx_pay_config(
    body: WxPayConfigRequest,
    id_: str,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update wxpay configuration (updateWxPayConfig)

    [Not supported yet in AGS Shared Cloud] Update wxpay configuration.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WxPayConfigRequest in body

        id_: (id) REQUIRED str in path

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateWxPayConfig.create(
        body=body,
        id_=id_,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateWxPayConfig)
async def update_wx_pay_config_async(
    body: WxPayConfigRequest,
    id_: str,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update wxpay configuration (updateWxPayConfig)

    [Not supported yet in AGS Shared Cloud] Update wxpay configuration.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WxPayConfigRequest in body

        id_: (id) REQUIRED str in path

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateWxPayConfig.create(
        body=body,
        id_=id_,
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
    """Upload wxpay cert file (updateWxPayConfigCert)

    [Not supported yet in AGS Shared Cloud] Upload wxpay cert file.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
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
    """Upload wxpay cert file (updateWxPayConfigCert)

    [Not supported yet in AGS Shared Cloud] Upload wxpay cert file.
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = UpdateWxPayConfigCert.create(
        id_=id_,
        file=file,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXsollaConfig)
def update_xsolla_config(
    body: XsollaConfig,
    id_: str,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xsolla configuration (updateXsollaConfig)

    [Not supported yet in AGS Shared Cloud] Update xsolla configuration. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollaconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaConfig in body

        id_: (id) REQUIRED str in path

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateXsollaConfig.create(
        body=body,
        id_=id_,
        validate=validate,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXsollaConfig)
async def update_xsolla_config_async(
    body: XsollaConfig,
    id_: str,
    validate: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xsolla configuration (updateXsollaConfig)

    [Not supported yet in AGS Shared Cloud] Update xsolla configuration. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollaconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaConfig in body

        id_: (id) REQUIRED str in path

        validate: (validate) OPTIONAL bool in query

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist | 33221: Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}])
    """
    request = UpdateXsollaConfig.create(
        body=body,
        id_=id_,
        validate=validate,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXsollaUIConfig)
def update_xsolla_ui_config(
    body: XsollaPaywallConfigRequest,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xsolla UI configuration (updateXsollaUIConfig)

    [Not supported yet in AGS Shared Cloud] Update xsolla UI configuration.Reference: [Xsolla Document](https://developers.xsolla.com/api.html#ui-integrations).
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollauiconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaPaywallConfigRequest in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = UpdateXsollaUIConfig.create(
        body=body,
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXsollaUIConfig)
async def update_xsolla_ui_config_async(
    body: XsollaPaywallConfigRequest,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xsolla UI configuration (updateXsollaUIConfig)

    [Not supported yet in AGS Shared Cloud] Update xsolla UI configuration.Reference: [Xsolla Document](https://developers.xsolla.com/api.html#ui-integrations).
    Other detail info:

      * Returns : updated payment merchant config

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/xsollauiconfig

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XsollaPaywallConfigRequest in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentMerchantConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """
    request = UpdateXsollaUIConfig.create(
        body=body,
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
