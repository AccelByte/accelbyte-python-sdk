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

from ..models import AdminOrderCreate
from ..models import ErrorEntity
from ..models import OrderCreate
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
from ..operations.order import PublicQueryUserOrders
from ..operations.order import PublicQueryUserOrdersStatusEnum
from ..operations.order import QueryOrders
from ..operations.order import QueryOrdersStatusEnum
from ..operations.order import QueryUserOrders
from ..operations.order import QueryUserOrdersStatusEnum
from ..operations.order import RefundOrder
from ..operations.order import UpdateUserOrderStatus
from ..models import AdminOrderCreatePlatformEnum
from ..models import OrderHistoryInfoActionEnum
from ..models import OrderInfoPaymentProviderEnum, OrderInfoStatusEnum
from ..models import OrderUpdateStatusEnum
from ..models import TradeNotificationPaymentProviderEnum, TradeNotificationStatusEnum


@same_doc_as(AdminCreateUserOrder)
def admin_create_user_order(
    user_id: str,
    body: Optional[AdminOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateUserOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateUserOrder)
async def admin_create_user_order_async(
    user_id: str,
    body: Optional[AdminOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateUserOrder.create(
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(GetUserOrderGrant)
def get_user_order_grant(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserOrderGrant.create(
        order_no=order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserOrderGrant)
async def get_user_order_grant_async(
    order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    order_no: str,
    user_id: str,
    body: Optional[TradeNotification] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserOrderNotification.create(
        order_no=order_no,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProcessUserOrderNotification)
async def process_user_order_notification_async(
    order_no: str,
    user_id: str,
    body: Optional[TradeNotification] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserOrderNotification.create(
        order_no=order_no,
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    user_id: str,
    body: Optional[OrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserOrder)
async def public_create_user_order_async(
    user_id: str,
    body: Optional[OrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserOrder.create(
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(PublicQueryUserOrders)
def public_query_user_orders(
    user_id: str,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, PublicQueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserOrders.create(
        user_id=user_id,
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
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, PublicQueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserOrders.create(
        user_id=user_id,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserOrders.create(
        user_id=user_id,
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
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryUserOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserOrders.create(
        user_id=user_id,
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
    order_no: str,
    body: Optional[OrderRefundCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundOrder.create(
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RefundOrder)
async def refund_order_async(
    order_no: str,
    body: Optional[OrderRefundCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundOrder.create(
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserOrderStatus)
def update_user_order_status(
    order_no: str,
    user_id: str,
    body: Optional[OrderUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserOrderStatus.create(
        order_no=order_no,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserOrderStatus)
async def update_user_order_status_async(
    order_no: str,
    user_id: str,
    body: Optional[OrderUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserOrderStatus.create(
        order_no=order_no,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
