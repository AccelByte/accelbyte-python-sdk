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
from ..operations.order import QueryOrders
from ..operations.order import QueryUserOrders
from ..operations.order import RefundOrder
from ..operations.order import UpdateUserOrderStatus


@same_doc_as(CountOfPurchasedItem)
def count_of_purchased_item(user_id: str, item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountOfPurchasedItem.create(
        user_id=user_id,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DownloadUserOrderReceipt)
def download_user_order_receipt(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DownloadUserOrderReceipt.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(FulfillUserOrder)
def fulfill_user_order(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillUserOrder.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetOrder)
def get_order(order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetOrder.create(
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetOrderStatistics)
def get_order_statistics(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetOrderStatistics.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserOrder)
def get_user_order(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserOrder.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserOrderGrant)
def get_user_order_grant(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserOrderGrant.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserOrderHistories)
def get_user_order_histories(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserOrderHistories.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ProcessUserOrderNotification)
def process_user_order_notification(user_id: str, order_no: str, body: Optional[TradeNotification] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserOrderNotification.create(
        user_id=user_id,
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCancelUserOrder)
def public_cancel_user_order(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCancelUserOrder.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateUserOrder)
def public_create_user_order(user_id: str, body: Optional[OrderCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDownloadUserOrderReceipt)
def public_download_user_order_receipt(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadUserOrderReceipt.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserOrder)
def public_get_user_order(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserOrder.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserOrderHistories)
def public_get_user_order_histories(user_id: str, order_no: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserOrderHistories.create(
        user_id=user_id,
        order_no=order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryUserOrders)
def public_query_user_orders(user_id: str, item_id: Optional[str] = None, status: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserOrders.create(
        user_id=user_id,
        item_id=item_id,
        status=status,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryOrders)
def query_orders(status: Optional[str] = None, order_nos: Optional[List[str]] = None, start_time: Optional[str] = None, end_time: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, sort_by: Optional[str] = None, with_total: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryOrders.create(
        status=status,
        order_nos=order_nos,
        start_time=start_time,
        end_time=end_time,
        offset=offset,
        limit=limit,
        sort_by=sort_by,
        with_total=with_total,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUserOrders)
def query_user_orders(user_id: str, status: Optional[str] = None, item_id: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserOrders.create(
        user_id=user_id,
        status=status,
        item_id=item_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RefundOrder)
def refund_order(order_no: str, body: Optional[OrderRefundCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundOrder.create(
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserOrderStatus)
def update_user_order_status(user_id: str, order_no: str, body: Optional[OrderUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserOrderStatus.create(
        user_id=user_id,
        order_no=order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
