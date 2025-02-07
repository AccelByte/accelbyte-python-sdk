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

from ..models import ErrorEntity
from ..models import ExternalPaymentOrderCreate
from ..models import PaymentOrderCreateResult
from ..models import PaymentOrderRefund
from ..models import PaymentOrderRefundResult
from ..models import PaymentOrderSyncResult
from ..models import ValidationErrorEntity

from ..operations.payment_dedicated import CreatePaymentOrderByDedicated
from ..operations.payment_dedicated import RefundPaymentOrderByDedicated
from ..operations.payment_dedicated import SyncPaymentOrders
from ..models import ExternalPaymentOrderCreateItemTypeEnum
from ..models import PaymentOrderCreateResultStatusEnum
from ..models import PaymentOrderRefundResultStatusEnum


@same_doc_as(CreatePaymentOrderByDedicated)
def create_payment_order_by_dedicated(
    body: ExternalPaymentOrderCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create payment order by dedicated server (createPaymentOrderByDedicated)

    [Not supported yet in AGS Shared Cloud]

    This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

     Path Parameter:


         Parameter                                                         | Type   | Required | Description
        -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
        namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
        payment config cross namespaces, otherwise it's the game namespace



         Request Body Parameters:


         Parameter        | Type    | Required | Description
        ------------------|---------|----------|--------------------------------------------------------------------------------------------------
        extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
        sku               | String  | No       | Item identity
        targetNamespace   | String  | Yes      | The game namespace
        targetUserId      | String  | Yes      | User id for the order owner in game namespace
        extUserId         | String  | No       | External user id, can be user character id
        price             | int     | Yes      | price which should be greater than 0
        title             | String  | Yes      | Item title
        description       | String  | Yes      | Item description
        currencyCode      | String  | No       | Currency code, default is USD
        currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
        region            | String  | No       | Country of the user, will get from user info if not present
        language          | String  | No       | Language of the user
        sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
        price for wxpay.
        returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
        namespace
        notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
        customParameters  | String  | No       | Custom parameters



     Request Body Example:


        {

                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extUserId": "678",
                   "title": "Frostmourne",
                   "description": "Here was power. Here was despair",
                   "price": 100,
                   "region": "CN",
                   "language": "zh-CN",
                   "currencyCode": "USD",
                   "currencyNamespace": "accelbyte"

        }

    `

    #### Payment Notification:

    After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Payment notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Payment notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Payment notification parameter Example:


        {

               "payload": "{
                   "type": "payment",
                   "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
                   "paymentOrderNo": "18081239088",
                   "namespace": "accelbyte",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "extUserId": "678",
                   "price": 100,
                   "paymentProvider": "XSOLLA",
                   "vat": 0,
                   "salesTax": 0,
                   "paymentProviderFee": 0,
                   "paymentMethodFee": 0,
                   "currency": {
                           "currencyCode": "USD",
                           "currencySymbol": "$",
                           "currencyType": "REAL",
                           "namespace": "accelbyte",
                           "decimals": 2
                       },
                   "status": "CHARGED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Payment notification payload parameter list:


         Parameter         | Type     | Required | Description
        -------------------|----------|----------|--------------------------------------------------------------------------------------
        type               | String   | Yes      | Notification type: 'payment'
        paymentOrderNo     | String   | Yes      | Payment system generated order number
        extOrderNo         | String   | No       | External order number that passed by invoker
        namespace          | String   | Yes      | Namespace that related payment order resides in
        targetNamespace    | String   | Yes      | The game namespace
        targetUserId       | String   | Yes      | The user id in game namespace
        sku                | String   | No       | Item identify, it will return if pass it when create payment
        extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
        price              | int      | Yes      | Price of item
        paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



     Currency info parameter list:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------
        currencyCode   | String | Yes      | Currency Code
        currencySymbol | String | Yes      | Currency Symbol
        currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
        namespace      | String | Yes      | Currency namespace
        decimals       | int    | Yes      | Currency decimals



    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    #### Other detail info:

      * Token type : client token
      *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
      *  cross namespace allowed
      *  Returns : created payment order info

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: POST

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ExternalPaymentOrderCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - PaymentOrderCreateResult (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 33173: ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePaymentOrderByDedicated.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePaymentOrderByDedicated)
async def create_payment_order_by_dedicated_async(
    body: ExternalPaymentOrderCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create payment order by dedicated server (createPaymentOrderByDedicated)

    [Not supported yet in AGS Shared Cloud]

    This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

     Path Parameter:


         Parameter                                                         | Type   | Required | Description
        -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
        namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
        payment config cross namespaces, otherwise it's the game namespace



         Request Body Parameters:


         Parameter        | Type    | Required | Description
        ------------------|---------|----------|--------------------------------------------------------------------------------------------------
        extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
        sku               | String  | No       | Item identity
        targetNamespace   | String  | Yes      | The game namespace
        targetUserId      | String  | Yes      | User id for the order owner in game namespace
        extUserId         | String  | No       | External user id, can be user character id
        price             | int     | Yes      | price which should be greater than 0
        title             | String  | Yes      | Item title
        description       | String  | Yes      | Item description
        currencyCode      | String  | No       | Currency code, default is USD
        currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
        region            | String  | No       | Country of the user, will get from user info if not present
        language          | String  | No       | Language of the user
        sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
        price for wxpay.
        returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
        namespace
        notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
        customParameters  | String  | No       | Custom parameters



     Request Body Example:


        {

                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extUserId": "678",
                   "title": "Frostmourne",
                   "description": "Here was power. Here was despair",
                   "price": 100,
                   "region": "CN",
                   "language": "zh-CN",
                   "currencyCode": "USD",
                   "currencyNamespace": "accelbyte"

        }

    `

    #### Payment Notification:

    After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Payment notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Payment notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Payment notification parameter Example:


        {

               "payload": "{
                   "type": "payment",
                   "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
                   "paymentOrderNo": "18081239088",
                   "namespace": "accelbyte",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "extUserId": "678",
                   "price": 100,
                   "paymentProvider": "XSOLLA",
                   "vat": 0,
                   "salesTax": 0,
                   "paymentProviderFee": 0,
                   "paymentMethodFee": 0,
                   "currency": {
                           "currencyCode": "USD",
                           "currencySymbol": "$",
                           "currencyType": "REAL",
                           "namespace": "accelbyte",
                           "decimals": 2
                       },
                   "status": "CHARGED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Payment notification payload parameter list:


         Parameter         | Type     | Required | Description
        -------------------|----------|----------|--------------------------------------------------------------------------------------
        type               | String   | Yes      | Notification type: 'payment'
        paymentOrderNo     | String   | Yes      | Payment system generated order number
        extOrderNo         | String   | No       | External order number that passed by invoker
        namespace          | String   | Yes      | Namespace that related payment order resides in
        targetNamespace    | String   | Yes      | The game namespace
        targetUserId       | String   | Yes      | The user id in game namespace
        sku                | String   | No       | Item identify, it will return if pass it when create payment
        extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
        price              | int      | Yes      | Price of item
        paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



     Currency info parameter list:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------
        currencyCode   | String | Yes      | Currency Code
        currencySymbol | String | Yes      | Currency Symbol
        currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
        namespace      | String | Yes      | Currency namespace
        decimals       | int    | Yes      | Currency decimals



    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    #### Other detail info:

      * Token type : client token
      *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
      *  cross namespace allowed
      *  Returns : created payment order info

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: POST

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ExternalPaymentOrderCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - PaymentOrderCreateResult (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 33173: ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePaymentOrderByDedicated.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RefundPaymentOrderByDedicated)
def refund_payment_order_by_dedicated(
    body: PaymentOrderRefund,
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund payment order by dedicated server (refundPaymentOrderByDedicated)

    [Not supported yet in AGS Shared Cloud]

    This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

      * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
      * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



    Path Parameter:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------------------
        namespace      | String | Yes      | Namespace that payment order resides in
        paymentOrderNo | String | Yes      | Payment order number



     Request Body Parameters:


         Parameter  | Type   | Required | Description
        ------------|--------|----------|--------------------
        description | String | Yes      | Refund description



     Request Body Example:


        {

                   "description": "Repeated item."

        }

    `

    #### Refund Notification:

    It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Refund notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Refund notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Refund notification Example:


        {

               "payload": "{
                   "type": "payment",
                   "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
                   "paymentOrderNo": "18081239088",
                   "namespace": "accelbyte",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "extUserId": "678",
                   "price": 100,
                   "paymentProvider": "XSOLLA",
                   "vat": 0,
                   "salesTax": 0,
                   "paymentProviderFee": 0,
                   "paymentMethodFee": 0,
                   "currency": {
                           "currencyCode": "USD",
                           "currencySymbol": "$",
                           "currencyType": "REAL",
                           "namespace": "accelbyte",
                           "decimals": 2
                       },
                   "status": "REFUNDED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z",
                   "refundedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Refund notification payload parameter list:


         Parameter         | Type     | Required | Description
        -------------------|----------|----------|--------------------------------------------------------------------------------------
        type               | String   | Yes      | Notification type: 'payment'
        paymentOrderNo     | String   | Yes      | Payment system generated order number
        extOrderNo         | String   | No       | External order number that passed by invoker
        namespace          | String   | Yes      | Namespace that related payment order resides in
        targetNamespace    | String   | Yes      | The game namespace
        targetUserId       | String   | Yes      | The user id in game namespace
        sku                | String   | No       | Item identify, it will return if pass it when create payment
        extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
        price              | int      | Yes      | Price of item
        paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order refund status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        refundedTime       | Datetime | No       | The time of the order refunded
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32,



    Currency info parameter list:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------
        currencyCode   | String | Yes      | Currency Code
        currencySymbol | String | Yes      | Currency Symbol
        currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
        namespace      | String | Yes      | Currency namespace
        decimals       | int    | Yes      | Currency decimals



    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    #### Other detail info:

      * Token type : client token
      *  cross namespace allowed

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentOrderRefund in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderRefundResult (successful operation)

        204: No Content - (Refund successfully)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RefundPaymentOrderByDedicated.create(
        body=body,
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RefundPaymentOrderByDedicated)
async def refund_payment_order_by_dedicated_async(
    body: PaymentOrderRefund,
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund payment order by dedicated server (refundPaymentOrderByDedicated)

    [Not supported yet in AGS Shared Cloud]

    This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

      * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
      * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



    Path Parameter:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------------------
        namespace      | String | Yes      | Namespace that payment order resides in
        paymentOrderNo | String | Yes      | Payment order number



     Request Body Parameters:


         Parameter  | Type   | Required | Description
        ------------|--------|----------|--------------------
        description | String | Yes      | Refund description



     Request Body Example:


        {

                   "description": "Repeated item."

        }

    `

    #### Refund Notification:

    It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Refund notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Refund notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Refund notification Example:


        {

               "payload": "{
                   "type": "payment",
                   "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
                   "paymentOrderNo": "18081239088",
                   "namespace": "accelbyte",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "extUserId": "678",
                   "price": 100,
                   "paymentProvider": "XSOLLA",
                   "vat": 0,
                   "salesTax": 0,
                   "paymentProviderFee": 0,
                   "paymentMethodFee": 0,
                   "currency": {
                           "currencyCode": "USD",
                           "currencySymbol": "$",
                           "currencyType": "REAL",
                           "namespace": "accelbyte",
                           "decimals": 2
                       },
                   "status": "REFUNDED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z",
                   "refundedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Refund notification payload parameter list:


         Parameter         | Type     | Required | Description
        -------------------|----------|----------|--------------------------------------------------------------------------------------
        type               | String   | Yes      | Notification type: 'payment'
        paymentOrderNo     | String   | Yes      | Payment system generated order number
        extOrderNo         | String   | No       | External order number that passed by invoker
        namespace          | String   | Yes      | Namespace that related payment order resides in
        targetNamespace    | String   | Yes      | The game namespace
        targetUserId       | String   | Yes      | The user id in game namespace
        sku                | String   | No       | Item identify, it will return if pass it when create payment
        extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
        price              | int      | Yes      | Price of item
        paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order refund status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        refundedTime       | Datetime | No       | The time of the order refunded
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32,



    Currency info parameter list:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------
        currencyCode   | String | Yes      | Currency Code
        currencySymbol | String | Yes      | Currency Symbol
        currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
        namespace      | String | Yes      | Currency namespace
        decimals       | int    | Yes      | Currency decimals



    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    #### Other detail info:

      * Token type : client token
      *  cross namespace allowed

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentOrderRefund in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderRefundResult (successful operation)

        204: No Content - (Refund successfully)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RefundPaymentOrderByDedicated.create(
        body=body,
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncPaymentOrders)
def sync_payment_orders(
    end: str,
    start: str,
    next_evaluated_key: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync payment orders (syncPaymentOrders)

    [Not supported yet in AGS Shared Cloud] Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
    Other detail info:

      * Returns : sync payment orders

    Properties:
        url: /platform/admin/payment/orders

        method: GET

        tags: ["Payment(Dedicated)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - PaymentOrderSyncResult (successful operation)
    """
    request = SyncPaymentOrders.create(
        end=end,
        start=start,
        next_evaluated_key=next_evaluated_key,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncPaymentOrders)
async def sync_payment_orders_async(
    end: str,
    start: str,
    next_evaluated_key: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync payment orders (syncPaymentOrders)

    [Not supported yet in AGS Shared Cloud] Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
    Other detail info:

      * Returns : sync payment orders

    Properties:
        url: /platform/admin/payment/orders

        method: GET

        tags: ["Payment(Dedicated)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - PaymentOrderSyncResult (successful operation)
    """
    request = SyncPaymentOrders.create(
        end=end,
        start=start,
        next_evaluated_key=next_evaluated_key,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
