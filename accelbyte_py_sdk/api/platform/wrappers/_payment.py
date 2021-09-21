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
from ..models import PaymentNotificationPagingSlicedResult
from ..models import PaymentOrderChargeRequest
from ..models import PaymentOrderChargeStatus
from ..models import PaymentOrderCreate
from ..models import PaymentOrderInfo
from ..models import PaymentOrderPagingSlicedResult
from ..models import PaymentOrderRefund
from ..models import ValidationErrorEntity

from ..operations.payment import ChargePaymentOrder
from ..operations.payment import CreateUserPaymentOrder
from ..operations.payment import GetPaymentOrder
from ..operations.payment import GetPaymentOrderChargeStatus
from ..operations.payment import ListExtOrderNoByExtTxId
from ..operations.payment import QueryPaymentNotifications
from ..operations.payment import QueryPaymentOrders
from ..operations.payment import RefundUserPaymentOrder


@same_doc_as(ChargePaymentOrder)
def charge_payment_order(payment_order_no: str, body: Optional[PaymentOrderChargeRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ChargePaymentOrder.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreateUserPaymentOrder)
def create_user_payment_order(user_id: str, body: Optional[PaymentOrderCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserPaymentOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPaymentOrder)
def get_payment_order(payment_order_no: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPaymentOrderChargeStatus)
def get_payment_order_charge_status(payment_order_no: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrderChargeStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListExtOrderNoByExtTxId)
def list_ext_order_no_by_ext_tx_id(ext_tx_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListExtOrderNoByExtTxId.create(
        ext_tx_id=ext_tx_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryPaymentNotifications)
def query_payment_notifications(payment_order_no: Optional[str] = None, external_id: Optional[str] = None, status: Optional[str] = None, notification_type: Optional[str] = None, notification_source: Optional[str] = None, start_date: Optional[str] = None, end_date: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentNotifications.create(
        payment_order_no=payment_order_no,
        external_id=external_id,
        status=status,
        notification_type=notification_type,
        notification_source=notification_source,
        start_date=start_date,
        end_date=end_date,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryPaymentOrders)
def query_payment_orders(status: Optional[str] = None, channel: Optional[str] = None, ext_tx_id: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentOrders.create(
        status=status,
        channel=channel,
        ext_tx_id=ext_tx_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(RefundUserPaymentOrder)
def refund_user_payment_order(payment_order_no: str, user_id: str, body: Optional[PaymentOrderRefund] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundUserPaymentOrder.create(
        payment_order_no=payment_order_no,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)
