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
    body: Optional[ExternalPaymentOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePaymentOrderByDedicated.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePaymentOrderByDedicated)
async def create_payment_order_by_dedicated_async(
    body: Optional[ExternalPaymentOrderCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    payment_order_no: str,
    body: Optional[PaymentOrderRefund] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundPaymentOrderByDedicated.create(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RefundPaymentOrderByDedicated)
async def refund_payment_order_by_dedicated_async(
    payment_order_no: str,
    body: Optional[PaymentOrderRefund] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RefundPaymentOrderByDedicated.create(
        payment_order_no=payment_order_no,
        body=body,
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
    request = SyncPaymentOrders.create(
        end=end,
        start=start,
        next_evaluated_key=next_evaluated_key,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
