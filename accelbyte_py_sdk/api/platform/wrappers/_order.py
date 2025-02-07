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

from ..models import AdminOrderCreate
from ..models import ErrorEntity
from ..models import OrderCreate
from ..models import OrderDiscountPreviewRequest
from ..models import OrderDiscountPreviewResponse
from ..models import OrderGrantInfo
from ..models import OrderHistoryInfo
from ..models import OrderInfo
from ..models import OrderPagingResult
from ..models import OrderPagingSlicedResult
from ..models import OrderRefundCreate
from ..models import OrderStatistics
from ..models import OrderUpdate
from ..models import PurchasedItemCount
from ..models import TradeNotification
from ..models import ValidationErrorEntity

from ..operations.order import AdminCreateUserOrder
from ..operations.order import CountOfPurchasedItem
from ..operations.order import DownloadUserOrderReceipt
from ..operations.order import FulfillUserOrder
from ..operations.order import GetOrder
from ..operations.order import GetOrderStatistics
from ..operations.order import GetUserOrder
from ..operations.order import GetUserOrderGrant
from ..operations.order import GetUserOrderHistories
from ..operations.order import ProcessUserOrderNotification
from ..operations.order import PublicCancelUserOrder
from ..operations.order import PublicCreateUserOrder
from ..operations.order import PublicDownloadUserOrderReceipt
from ..operations.order import PublicGetUserOrder
from ..operations.order import PublicGetUserOrderHistories
from ..operations.order import PublicPreviewOrderPrice
from ..operations.order import PublicQueryUserOrders
from ..operations.order import PublicQueryUserOrdersStatusEnum
from ..operations.order import QueryOrders
from ..operations.order import QueryOrdersStatusEnum
from ..operations.order import QueryUserOrders
from ..operations.order import QueryUserOrdersStatusEnum
from ..operations.order import RefundOrder
from ..operations.order import UpdateUserOrderStatus
from ..models import (
    AdminOrderCreateEntitlementPlatformEnum,
    AdminOrderCreatePlatformEnum,
)
from ..models import OrderHistoryInfoActionEnum
from ..models import OrderInfoPaymentProviderEnum, OrderInfoStatusEnum
from ..models import OrderUpdateStatusEnum
from ..models import TradeNotificationPaymentProviderEnum, TradeNotificationStatusEnum


@same_doc_as(AdminCreateUserOrder)
def admin_create_user_order(
    body: AdminOrderCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Create an order (adminCreateUserOrder)

    Admin Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
    Other detail info:

      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      * sandbox default value is false
      * platform default value is Other
      *  Returns : created order



    ## Restrictions for ext field


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdminOrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (20018: ecommerce item type not supported | 32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 32126: Section ID is required for placing this order | 38121: Duplicate permanent item exists | 32124: Invalid currency namespace | 32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist | 1100001: record not found: inventory | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20024: insufficient inventory capacity (max. slots) | 32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 32178: User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}] | 31177: Permanent item already owned | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock | 37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}] | 30771: Item [{itemId}] not found in User Section [{sectionId}], UserId [{userId}], Namespace [{namespace}] | 30772: Section [{sectionId}] is not available or expired)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserOrder.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateUserOrder)
async def admin_create_user_order_async(
    body: AdminOrderCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Create an order (adminCreateUserOrder)

    Admin Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
    Other detail info:

      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      * sandbox default value is false
      * platform default value is Other
      *  Returns : created order



    ## Restrictions for ext field


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AdminOrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (20018: ecommerce item type not supported | 32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 32126: Section ID is required for placing this order | 38121: Duplicate permanent item exists | 32124: Invalid currency namespace | 32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist | 1100001: record not found: inventory | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20024: insufficient inventory capacity (max. slots) | 32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 32178: User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}] | 31177: Permanent item already owned | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock | 37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}] | 30771: Item [{itemId}] not found in User Section [{sectionId}], UserId [{userId}], Namespace [{namespace}] | 30772: Section [{sectionId}] is not available or expired)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserOrder.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CountOfPurchasedItem)
def count_of_purchased_item(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the count of purchased item (countOfPurchasedItem)

    This API is used to get the count of purchased item which is the order target.
    Other detail info:

      * Returns : Item purchased count

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - PurchasedItemCount (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CountOfPurchasedItem.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CountOfPurchasedItem)
async def count_of_purchased_item_async(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the count of purchased item (countOfPurchasedItem)

    This API is used to get the count of purchased item which is the order target.
    Other detail info:

      * Returns : Item purchased count

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - PurchasedItemCount (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CountOfPurchasedItem.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DownloadUserOrderReceipt)
def download_user_order_receipt(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user order receipt (downloadUserOrderReceipt)

    Download user order receipt by orderNo.
    Other detail info:

      * Returns : order receipt pdf

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/pdf"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32173: Receipt of order [{orderNo}] is not downloadable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadUserOrderReceipt.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadUserOrderReceipt)
async def download_user_order_receipt_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user order receipt (downloadUserOrderReceipt)

    Download user order receipt by orderNo.
    Other detail info:

      * Returns : order receipt pdf

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/pdf"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32173: Receipt of order [{orderNo}] is not downloadable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadUserOrderReceipt.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillUserOrder)
def fulfill_user_order(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill an order (fulfillUserOrder)

    Fulfill an order if the order is charged but fulfill failed.
    Other detail info:

      * Returns : fulfilled order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32172: Invalid order status [{status}] for order [{orderNo}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillUserOrder)
async def fulfill_user_order_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill an order (fulfillUserOrder)

    Fulfill an order if the order is charged but fulfill failed.
    Other detail info:

      * Returns : fulfilled order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32172: Invalid order status [{status}] for order [{orderNo}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOrder)
def get_order(
    order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get order (getOrder)

    Get order by orderNo.
    Other detail info:

      * Returns : order instance

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOrder.create(
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOrder)
async def get_order_async(
    order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get order (getOrder)

    Get order by orderNo.
    Other detail info:

      * Returns : order instance

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOrder.create(
        order_no=order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOrderStatistics)
def get_order_statistics(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Order Statistics (getOrderStatistics)

    Get Order Statistics.
    Other detail info:

      * Returns : order statistics

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/stats

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OrderStatistics (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOrderStatistics.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOrderStatistics)
async def get_order_statistics_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Order Statistics (getOrderStatistics)

    Get Order Statistics.
    Other detail info:

      * Returns : order statistics

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/stats

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OrderStatistics (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOrderStatistics.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserOrder)
def get_user_order(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an order (getUserOrder)

    Get an order.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserOrder)
async def get_user_order_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an order (getUserOrder)

    Get an order.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserOrderGrant)
def get_user_order_grant(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order grant (getUserOrderGrant)

    Get user order grant that fulfilled by this order.
    Other detail info:

      * Returns : get order grant

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderGrantInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrderGrant.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserOrderGrant)
async def get_user_order_grant_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order grant (getUserOrderGrant)

    Get user order grant that fulfilled by this order.
    Other detail info:

      * Returns : get order grant

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderGrantInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrderGrant.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserOrderHistories)
def get_user_order_histories(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order histories (getUserOrderHistories)

    Get user order history.
    Other detail info:

      * Returns : get order history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OrderHistoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrderHistories.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserOrderHistories)
async def get_user_order_histories_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order histories (getUserOrderHistories)

    Get user order history.
    Other detail info:

      * Returns : get order history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OrderHistoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOrderHistories.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ProcessUserOrderNotification)
def process_user_order_notification(
    body: TradeNotification,
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Web hook for payment notification (processUserOrderNotification)

    [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
    Other detail info:

      * Returns : Process result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeNotification in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (process successfully)

        400: Bad Request - (process failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ProcessUserOrderNotification.create(
        body=body,
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProcessUserOrderNotification)
async def process_user_order_notification_async(
    body: TradeNotification,
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Web hook for payment notification (processUserOrderNotification)

    [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
    Other detail info:

      * Returns : Process result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeNotification in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (process successfully)

        400: Bad Request - (process failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ProcessUserOrderNotification.create(
        body=body,
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelUserOrder)
def public_cancel_user_order(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user order (publicCancelUserOrder)

    Cancel user order.
    Other detail info:

      * Returns : cancelled order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32177: Order [{orderNo}] is not cancelable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelUserOrder)
async def public_cancel_user_order_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user order (publicCancelUserOrder)

    Cancel user order.
    Other detail info:

      * Returns : cancelled order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32177: Order [{orderNo}] is not cancelable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserOrder)
def public_create_user_order(
    body: OrderCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an order (publicCreateUserOrder)

    Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
    Other detail info:

      * Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created order



    ## Restrictions for ext field


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (20018: ecommerce item type not supported | 32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 32125: The user does not meet the purchase conditions | 32126: Section ID is required for placing this order | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists | 32124: Invalid currency namespace | 32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist | 1100001: record not found: inventory | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20024: insufficient inventory capacity (max. slots) | 32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 31177: Permanent item already owned | 32178: User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}] | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock | 37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}] | 30771: Item [{itemId}] not found in User Section [{sectionId}], UserId [{userId}], Namespace [{namespace}] | 30772: Section [{sectionId}] is not available or expired)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserOrder.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserOrder)
async def public_create_user_order_async(
    body: OrderCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an order (publicCreateUserOrder)

    Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
    Other detail info:

      * Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created order



    ## Restrictions for ext field


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (20018: ecommerce item type not supported | 32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 32125: The user does not meet the purchase conditions | 32126: Section ID is required for placing this order | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists | 32124: Invalid currency namespace | 32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist | 1100001: record not found: inventory | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20024: insufficient inventory capacity (max. slots) | 32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 31177: Permanent item already owned | 32178: User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}] | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock | 37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}] | 30771: Item [{itemId}] not found in User Section [{sectionId}], UserId [{userId}], Namespace [{namespace}] | 30772: Section [{sectionId}] is not available or expired)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserOrder.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDownloadUserOrderReceipt)
def public_download_user_order_receipt(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user order receipt (publicDownloadUserOrderReceipt)

    Download user order receipt by orderNo.
    Other detail info:

      * Returns : order receipt pdf

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/pdf"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32173: Receipt of order [{orderNo}] is not downloadable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDownloadUserOrderReceipt.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDownloadUserOrderReceipt)
async def public_download_user_order_receipt_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user order receipt (publicDownloadUserOrderReceipt)

    Download user order receipt by orderNo.
    Other detail info:

      * Returns : order receipt pdf

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/pdf"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32173: Receipt of order [{orderNo}] is not downloadable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDownloadUserOrderReceipt.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserOrder)
def public_get_user_order(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order (publicGetUserOrder)

    Get user order.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserOrder)
async def public_get_user_order_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order (publicGetUserOrder)

    Get user order.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserOrder.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserOrderHistories)
def public_get_user_order_histories(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order histories (publicGetUserOrderHistories)

    Get user order histories.
    Other detail info:

      * Returns : get order history

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OrderHistoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserOrderHistories.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserOrderHistories)
async def public_get_user_order_histories_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user order histories (publicGetUserOrderHistories)

    Get user order histories.
    Other detail info:

      * Returns : get order history

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OrderHistoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserOrderHistories.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPreviewOrderPrice)
def public_preview_order_price(
    body: OrderDiscountPreviewRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Preview order price with discount code. (publicPreviewOrderPrice)

    Preview order price with discount code, this api is used to auto calc order price with discount code.Notes: this api don't do full order validation, only check discount code and calc final order price.Other detail info:

      * Returns : previewed order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderDiscountPreviewRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderDiscountPreviewResponse (successful operation)

        400: Bad Request - ErrorEntity (32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPreviewOrderPrice.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPreviewOrderPrice)
async def public_preview_order_price_async(
    body: OrderDiscountPreviewRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Preview order price with discount code. (publicPreviewOrderPrice)

    Preview order price with discount code, this api is used to auto calc order price with discount code.Notes: this api don't do full order validation, only check discount code and calc final order price.Other detail info:

      * Returns : previewed order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderDiscountPreviewRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderDiscountPreviewResponse (successful operation)

        400: Bad Request - ErrorEntity (32127: Discount code [{code}] can't be used on this item: {tips} | 32128: Discount code [{code}] can not be used with other code together | 32129: Can't use discount code on free order | 32130: The total discount amount cannot exceed the order price)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPreviewOrderPrice.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserOrders)
def public_query_user_orders(
    user_id: str,
    discounted: Optional[bool] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, PublicQueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user orders (publicQueryUserOrders)

    Query user orders.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        discounted: (discounted) OPTIONAL bool in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - OrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserOrders.create(
        user_id=user_id,
        discounted=discounted,
        item_id=item_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserOrders)
async def public_query_user_orders_async(
    user_id: str,
    discounted: Optional[bool] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, PublicQueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user orders (publicQueryUserOrders)

    Query user orders.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        discounted: (discounted) OPTIONAL bool in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - OrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserOrders.create(
        user_id=user_id,
        discounted=discounted,
        item_id=item_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryOrders)
def query_orders(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_nos: Optional[List[str]] = None,
    sort_by: Optional[str] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryOrdersStatusEnum]] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query orders (queryOrders)

    Query orders.
    Other detail info:

      * Returns : query orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_nos: (orderNos) OPTIONAL List[str] in query

        sort_by: (sortBy) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - OrderPagingResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryOrders.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        order_nos=order_nos,
        sort_by=sort_by,
        start_time=start_time,
        status=status,
        with_total=with_total,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryOrders)
async def query_orders_async(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_nos: Optional[List[str]] = None,
    sort_by: Optional[str] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryOrdersStatusEnum]] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query orders (queryOrders)

    Query orders.
    Other detail info:

      * Returns : query orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_nos: (orderNos) OPTIONAL List[str] in query

        sort_by: (sortBy) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - OrderPagingResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryOrders.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        order_nos=order_nos,
        sort_by=sort_by,
        start_time=start_time,
        status=status,
        with_total=with_total,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserOrders)
def query_user_orders(
    user_id: str,
    discounted: Optional[bool] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user orders (queryUserOrders)

    Query user orders.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        discounted: (discounted) OPTIONAL bool in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - OrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserOrders.create(
        user_id=user_id,
        discounted=discounted,
        item_id=item_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserOrders)
async def query_user_orders_async(
    user_id: str,
    discounted: Optional[bool] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user orders (queryUserOrders)

    Query user orders.
    Other detail info:

      * Returns : get order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders

        method: GET

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        discounted: (discounted) OPTIONAL bool in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - OrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserOrders.create(
        user_id=user_id,
        discounted=discounted,
        item_id=item_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RefundOrder)
def refund_order(
    body: OrderRefundCreate,
    order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund order (refundOrder)

    Refund order by orderNo.

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/{orderNo}/refund

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderRefundCreate in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32171: Order [{orderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RefundOrder.create(
        body=body,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RefundOrder)
async def refund_order_async(
    body: OrderRefundCreate,
    order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund order (refundOrder)

    Refund order by orderNo.

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders/{orderNo}/refund

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderRefundCreate in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (32171: Order [{orderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RefundOrder.create(
        body=body,
        order_no=order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserOrderStatus)
def update_user_order_status(
    body: OrderUpdate,
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update order status (updateUserOrderStatus)

    Update order status.
    Other detail info:

      * Returns : updated order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderUpdate in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserOrderStatus.create(
        body=body,
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserOrderStatus)
async def update_user_order_status_async(
    body: OrderUpdate,
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update order status (updateUserOrderStatus)

    Update order status.
    Other detail info:

      * Returns : updated order

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}

        method: PUT

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OrderUpdate in body

        namespace: (namespace) REQUIRED str in path

        order_no: (orderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OrderInfo (successful operation)

        404: Not Found - ErrorEntity (32141: Order [{orderNo}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserOrderStatus.create(
        body=body,
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
