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
    body: TicketAcquireRequest,
    booth_name: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Acquire ticket (acquireUserTicket)

    [SERVICE COMMUNICATION ONLY] Acquire ticket(code/key) based on booth name.
    Other detail info:

      * Returns : acquire result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}

        method: POST

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketAcquireRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - TicketAcquireResult (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37071: Insufficient ticket in booth [{boothName}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcquireUserTicket.create(
        body=body,
        booth_name=booth_name,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcquireUserTicket)
async def acquire_user_ticket_async(
    body: TicketAcquireRequest,
    booth_name: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Acquire ticket (acquireUserTicket)

    [SERVICE COMMUNICATION ONLY] Acquire ticket(code/key) based on booth name.
    Other detail info:

      * Returns : acquire result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}

        method: POST

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketAcquireRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - TicketAcquireResult (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37071: Insufficient ticket in booth [{boothName}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcquireUserTicket.create(
        body=body,
        booth_name=booth_name,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DecreaseTicketSale)
def decrease_ticket_sale(
    body: TicketSaleDecrementRequest,
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Decrease ticket sale (decreaseTicketSale)

    [SERVICE COMMUNICATION ONLY] Decrease ticket(code/key) sale if requested orderNo is already increased.

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement

        method: PUT

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketSaleDecrementRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Return item successfully)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DecreaseTicketSale.create(
        body=body,
        booth_name=booth_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DecreaseTicketSale)
async def decrease_ticket_sale_async(
    body: TicketSaleDecrementRequest,
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Decrease ticket sale (decreaseTicketSale)

    [SERVICE COMMUNICATION ONLY] Decrease ticket(code/key) sale if requested orderNo is already increased.

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement

        method: PUT

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketSaleDecrementRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Return item successfully)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DecreaseTicketSale.create(
        body=body,
        booth_name=booth_name,
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
    """Get ticket booth ID (getTicketBoothID)

    Get ticket(code/key) booth ID.
    Other detail info:

      * Returns : ticket booth id

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/id

        method: GET

        tags: ["Ticket"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketBoothID (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get ticket booth ID (getTicketBoothID)

    Get ticket(code/key) booth ID.
    Other detail info:

      * Returns : ticket booth id

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/id

        method: GET

        tags: ["Ticket"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketBoothID (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get ticket dynamic (getTicketDynamic)

    [SERVICE COMMUNICATION ONLY] Get ticket(code/key) dynamic based on booth name.
    Other detail info:

      * Returns : ticket dynamic

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}

        method: GET

        tags: ["Ticket"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get ticket dynamic (getTicketDynamic)

    [SERVICE COMMUNICATION ONLY] Get ticket(code/key) dynamic based on booth name.
    Other detail info:

      * Returns : ticket dynamic

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}

        method: GET

        tags: ["Ticket"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: TicketSaleIncrementRequest,
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Increase ticket sale (increaseTicketSale)

    [SERVICE COMMUNICATION ONLY] increase ticket(code/key) sale.
    Other detail info:

      * Returns : Ticket sale increment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment

        method: PUT

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketSaleIncrementRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketSaleIncrementResult (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IncreaseTicketSale.create(
        body=body,
        booth_name=booth_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IncreaseTicketSale)
async def increase_ticket_sale_async(
    body: TicketSaleIncrementRequest,
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Increase ticket sale (increaseTicketSale)

    [SERVICE COMMUNICATION ONLY] increase ticket(code/key) sale.
    Other detail info:

      * Returns : Ticket sale increment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment

        method: PUT

        tags: ["Ticket"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TicketSaleIncrementRequest in body

        booth_name: (boothName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TicketSaleIncrementResult (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IncreaseTicketSale.create(
        body=body,
        booth_name=booth_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
