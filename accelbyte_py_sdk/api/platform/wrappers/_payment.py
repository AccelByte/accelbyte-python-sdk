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

from ..models import ErrorEntity
from ..models import NotificationProcessResult
from ..models import PaymentNotificationPagingSlicedResult
from ..models import PaymentOrderChargeRequest
from ..models import PaymentOrderChargeStatus
from ..models import PaymentOrderCreate
from ..models import PaymentOrderInfo
from ..models import PaymentOrderNotifySimulation
from ..models import PaymentOrderPagingSlicedResult
from ..models import PaymentOrderRefund
from ..models import ValidationErrorEntity

from ..operations.payment import ChargePaymentOrder
from ..operations.payment import CreateUserPaymentOrder
from ..operations.payment import GetPaymentOrder
from ..operations.payment import GetPaymentOrderChargeStatus
from ..operations.payment import ListExtOrderNoByExtTxId
from ..operations.payment import QueryPaymentNotifications
from ..operations.payment import (
    QueryPaymentNotificationsNotificationSourceEnum,
    QueryPaymentNotificationsStatusEnum,
)
from ..operations.payment import QueryPaymentOrders
from ..operations.payment import (
    QueryPaymentOrdersChannelEnum,
    QueryPaymentOrdersStatusEnum,
)
from ..operations.payment import RefundUserPaymentOrder
from ..operations.payment import SimulatePaymentOrderNotification
from ..models import NotificationProcessResultStatusEnum
from ..models import PaymentOrderChargeRequestPaymentProviderEnum
from ..models import PaymentOrderChargeStatusStatusEnum
from ..models import PaymentOrderCreateItemTypeEnum
from ..models import (
    PaymentOrderInfoChannelEnum,
    PaymentOrderInfoItemTypeEnum,
    PaymentOrderInfoPaymentProviderEnum,
    PaymentOrderInfoStatusEnum,
)
from ..models import (
    PaymentOrderNotifySimulationNotifyTypeEnum,
    PaymentOrderNotifySimulationPaymentProviderEnum,
)


@same_doc_as(ChargePaymentOrder)
def charge_payment_order(
    payment_order_no: str,
    body: Optional[PaymentOrderChargeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ChargePaymentOrder.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ChargePaymentOrder)
async def charge_payment_order_async(
    payment_order_no: str,
    body: Optional[PaymentOrderChargeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ChargePaymentOrder.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateUserPaymentOrder)
def create_user_payment_order(
    user_id: str,
    body: Optional[PaymentOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserPaymentOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateUserPaymentOrder)
async def create_user_payment_order_async(
    user_id: str,
    body: Optional[PaymentOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserPaymentOrder.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentOrder)
def get_payment_order(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentOrder)
async def get_payment_order_async(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrder.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentOrderChargeStatus)
def get_payment_order_charge_status(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrderChargeStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentOrderChargeStatus)
async def get_payment_order_charge_status_async(
    payment_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentOrderChargeStatus.create(
        payment_order_no=payment_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListExtOrderNoByExtTxId)
def list_ext_order_no_by_ext_tx_id(
    ext_tx_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListExtOrderNoByExtTxId.create(
        ext_tx_id=ext_tx_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListExtOrderNoByExtTxId)
async def list_ext_order_no_by_ext_tx_id_async(
    ext_tx_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListExtOrderNoByExtTxId.create(
        ext_tx_id=ext_tx_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryPaymentNotifications)
def query_payment_notifications(
    end_date: Optional[str] = None,
    external_id: Optional[str] = None,
    limit: Optional[int] = None,
    notification_source: Optional[
        Union[str, QueryPaymentNotificationsNotificationSourceEnum]
    ] = None,
    notification_type: Optional[str] = None,
    offset: Optional[int] = None,
    payment_order_no: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[Union[str, QueryPaymentNotificationsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentNotifications.create(
        end_date=end_date,
        external_id=external_id,
        limit=limit,
        notification_source=notification_source,
        notification_type=notification_type,
        offset=offset,
        payment_order_no=payment_order_no,
        start_date=start_date,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryPaymentNotifications)
async def query_payment_notifications_async(
    end_date: Optional[str] = None,
    external_id: Optional[str] = None,
    limit: Optional[int] = None,
    notification_source: Optional[
        Union[str, QueryPaymentNotificationsNotificationSourceEnum]
    ] = None,
    notification_type: Optional[str] = None,
    offset: Optional[int] = None,
    payment_order_no: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[Union[str, QueryPaymentNotificationsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentNotifications.create(
        end_date=end_date,
        external_id=external_id,
        limit=limit,
        notification_source=notification_source,
        notification_type=notification_type,
        offset=offset,
        payment_order_no=payment_order_no,
        start_date=start_date,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryPaymentOrders)
def query_payment_orders(
    channel: Optional[Union[str, QueryPaymentOrdersChannelEnum]] = None,
    ext_tx_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryPaymentOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentOrders.create(
        channel=channel,
        ext_tx_id=ext_tx_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryPaymentOrders)
async def query_payment_orders_async(
    channel: Optional[Union[str, QueryPaymentOrdersChannelEnum]] = None,
    ext_tx_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryPaymentOrdersStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryPaymentOrders.create(
        channel=channel,
        ext_tx_id=ext_tx_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RefundUserPaymentOrder)
def refund_user_payment_order(
    payment_order_no: str,
    user_id: str,
    body: Optional[PaymentOrderRefund] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RefundUserPaymentOrder)
async def refund_user_payment_order_async(
    payment_order_no: str,
    user_id: str,
    body: Optional[PaymentOrderRefund] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SimulatePaymentOrderNotification)
def simulate_payment_order_notification(
    payment_order_no: str,
    body: Optional[PaymentOrderNotifySimulation] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SimulatePaymentOrderNotification.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SimulatePaymentOrderNotification)
async def simulate_payment_order_notification_async(
    payment_order_no: str,
    body: Optional[PaymentOrderNotifySimulation] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SimulatePaymentOrderNotification.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
