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
    """Charge payment order without payment flow (chargePaymentOrder)

    [TEST FACILITY ONLY] Forbidden in live environment. Charge payment order without payment flow for unpaid payment order, usually for test usage to simulate real currency payment process.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
      *  Returns : payment order instance

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderChargeRequest in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
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
    """Charge payment order without payment flow (chargePaymentOrder)

    [TEST FACILITY ONLY] Forbidden in live environment. Charge payment order without payment flow for unpaid payment order, usually for test usage to simulate real currency payment process.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
      *  Returns : payment order instance

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderChargeRequest in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """
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
    """Create payment order (createUserPaymentOrder)

    [SERVICE COMMUNICATION ONLY] This API is used to create payment order from justice service. The result contains the payment station url.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=1 (CREATE)
      * It will be forbidden while the user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created order



    ## Restrictions for custom parameters and meta data


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders

        method: POST

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - PaymentOrderInfo (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Create payment order (createUserPaymentOrder)

    [SERVICE COMMUNICATION ONLY] This API is used to create payment order from justice service. The result contains the payment station url.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=1 (CREATE)
      * It will be forbidden while the user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created order



    ## Restrictions for custom parameters and meta data


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders

        method: POST

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - PaymentOrderInfo (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Get payment order (getPaymentOrder)

    Get payment order by paymentOrderNo.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment order instance

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
    """Get payment order (getPaymentOrder)

    Get payment order by paymentOrderNo.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment order instance

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
    """Get payment order charge status (getPaymentOrderChargeStatus)

    Get payment order charge status.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment order charge status

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderChargeStatus (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
    """Get payment order charge status (getPaymentOrderChargeStatus)

    Get payment order charge status.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment order charge status

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderChargeStatus (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
    """List external order No by external transaction id (listExtOrderNoByExtTxId)

    List external order No by external transaction id.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment orders

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/byExtTxId

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ext_tx_id: (extTxId) REQUIRED str in query

    Responses:
        200: OK - List[str] (successful operation)
    """
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
    """List external order No by external transaction id (listExtOrderNoByExtTxId)

    List external order No by external transaction id.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : payment orders

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/byExtTxId

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ext_tx_id: (extTxId) REQUIRED str in query

    Responses:
        200: OK - List[str] (successful operation)
    """
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
    """Query payment notifications (queryPaymentNotifications)

    Query payment notifications.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION", action=2 (READ)
      *  Returns : Payment notifications

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/notifications

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        notification_source: (notificationSource) OPTIONAL Union[str, NotificationSourceEnum] in query

        notification_type: (notificationType) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        payment_order_no: (paymentOrderNo) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - PaymentNotificationPagingSlicedResult (successful operation)
    """
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
    """Query payment notifications (queryPaymentNotifications)

    Query payment notifications.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION", action=2 (READ)
      *  Returns : Payment notifications

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/notifications

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        notification_source: (notificationSource) OPTIONAL Union[str, NotificationSourceEnum] in query

        notification_type: (notificationType) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        payment_order_no: (paymentOrderNo) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - PaymentNotificationPagingSlicedResult (successful operation)
    """
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
    """Query payment orders (queryPaymentOrders)

    Query payment orders.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : query payment orders

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL Union[str, ChannelEnum] in query

        ext_tx_id: (extTxId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - PaymentOrderPagingSlicedResult (successful operation)
    """
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
    """Query payment orders (queryPaymentOrders)

    Query payment orders.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=2 (READ)
      *  Returns : query payment orders

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL Union[str, ChannelEnum] in query

        ext_tx_id: (extTxId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - PaymentOrderPagingSlicedResult (successful operation)
    """
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
    """Refund payment order (refundUserPaymentOrder)

    [SERVICE COMMUNICATION ONLY] This API is used to refund order by paymentOrderNo from justice service.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderRefund in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Refund payment order (refundUserPaymentOrder)

    [SERVICE COMMUNICATION ONLY] This API is used to refund order by paymentOrderNo from justice service.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderRefund in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderInfo (successful operation)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Simulate payment notification (simulatePaymentOrderNotification)

    [TEST FACILITY ONLY] Forbidden in live environment. Simulate payment notification on sandbox payment order, usually for test usage to simulate real currency payment notification.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
      *  Returns : notification process result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderNotifySimulation in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - NotificationProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
    """Simulate payment notification (simulatePaymentOrderNotification)

    [TEST FACILITY ONLY] Forbidden in live environment. Simulate payment notification on sandbox payment order, usually for test usage to simulate real currency payment notification.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
      *  Returns : notification process result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification

        method: PUT

        tags: ["Payment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentOrderNotifySimulation in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - NotificationProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """
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
