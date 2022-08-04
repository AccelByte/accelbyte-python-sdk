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
from ..models import TicketAcquireRequest
from ..models import TicketAcquireResult
from ..models import TicketBoothID
from ..models import TicketDynamicInfo
from ..models import TicketSaleDecrementRequest
from ..models import TicketSaleIncrementRequest
from ..models import TicketSaleIncrementResult
from ..models import ValidationErrorEntity

from ..operations.ticket import AcquireUserTicket
from ..operations.ticket import DecreaseTicketSale
from ..operations.ticket import GetTicketBoothID
from ..operations.ticket import GetTicketDynamic
from ..operations.ticket import IncreaseTicketSale
from ..models import TicketBoothIDTypeEnum


@same_doc_as(AcquireUserTicket)
def acquire_user_ticket(
    booth_name: str,
    user_id: str,
    body: Optional[TicketAcquireRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcquireUserTicket.create(
        booth_name=booth_name,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcquireUserTicket)
async def acquire_user_ticket_async(
    booth_name: str,
    user_id: str,
    body: Optional[TicketAcquireRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcquireUserTicket.create(
        booth_name=booth_name,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DecreaseTicketSale)
def decrease_ticket_sale(
    booth_name: str,
    body: Optional[TicketSaleDecrementRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DecreaseTicketSale.create(
        booth_name=booth_name,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DecreaseTicketSale)
async def decrease_ticket_sale_async(
    booth_name: str,
    body: Optional[TicketSaleDecrementRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DecreaseTicketSale.create(
        booth_name=booth_name,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTicketBoothID)
def get_ticket_booth_id(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTicketBoothID.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTicketBoothID)
async def get_ticket_booth_id_async(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTicketBoothID.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTicketDynamic)
def get_ticket_dynamic(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTicketDynamic.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTicketDynamic)
async def get_ticket_dynamic_async(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTicketDynamic.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(IncreaseTicketSale)
def increase_ticket_sale(
    booth_name: str,
    body: Optional[TicketSaleIncrementRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = IncreaseTicketSale.create(
        booth_name=booth_name,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IncreaseTicketSale)
async def increase_ticket_sale_async(
    booth_name: str,
    body: Optional[TicketSaleIncrementRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = IncreaseTicketSale.create(
        booth_name=booth_name,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
