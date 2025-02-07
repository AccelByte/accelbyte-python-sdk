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

from ..models import ModelsCreateMockTicket
from ..models import ModelsGetMockMatchesResponse
from ..models import ModelsGetMockTicketsResponse
from ..models import ModelsMatchingParty
from ..models import ModelsMockTicket
from ..models import ModelsQueryMockBy
from ..models import ResponseErrorV1

from ..operations.mock_matchmaking import BulkCreateMockTickets
from ..operations.mock_matchmaking import CleanAllMocks
from ..operations.mock_matchmaking import CreateMockTickets
from ..operations.mock_matchmaking import GetAllMockMatches
from ..operations.mock_matchmaking import GetAllMockTickets
from ..operations.mock_matchmaking import GetMockMatchesByTimestamp
from ..operations.mock_matchmaking import GetMockTicketsByTimestamp


@deprecated
@same_doc_as(BulkCreateMockTickets)
def bulk_create_mock_tickets(
    body: List[ModelsMatchingParty],
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create mock tickets (BulkCreateMockTickets)

    Create and queue mock tickets into specified game mode's pool.
    The tickets input will be used as is.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelsMatchingParty] in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Mock tickets created)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreateMockTickets.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(BulkCreateMockTickets)
async def bulk_create_mock_tickets_async(
    body: List[ModelsMatchingParty],
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create mock tickets (BulkCreateMockTickets)

    Create and queue mock tickets into specified game mode's pool.
    The tickets input will be used as is.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelsMatchingParty] in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Mock tickets created)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreateMockTickets.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CleanAllMocks)
def clean_all_mocks(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all mock tickets and matches (CleanAllMocks)

    Delete all mock tickets and matches in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks

        method: DELETE

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Mocks cleaned up)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CleanAllMocks.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CleanAllMocks)
async def clean_all_mocks_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all mock tickets and matches (CleanAllMocks)

    Delete all mock tickets and matches in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks

        method: DELETE

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Mocks cleaned up)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CleanAllMocks.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateMockTickets)
def create_mock_tickets(
    body: ModelsCreateMockTicket,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create mock tickets (CreateMockTickets)

    Create and queue mock tickets into specified game mode's pool.
    Ticket's MMRs will be randomized using Normal distribution according to the input mean and standard deviation.
    All mock tickets and matches will be cleaned up automatically after 1 day.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateMockTicket in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - List[ModelsMockTicket] (Mock tickets created)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMockTickets.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateMockTickets)
async def create_mock_tickets_async(
    body: ModelsCreateMockTicket,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create mock tickets (CreateMockTickets)

    Create and queue mock tickets into specified game mode's pool.
    Ticket's MMRs will be randomized using Normal distribution according to the input mean and standard deviation.
    All mock tickets and matches will be cleaned up automatically after 1 day.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateMockTicket in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - List[ModelsMockTicket] (Mock tickets created)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMockTickets.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllMockMatches)
def get_all_mock_matches(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all mock matches (GetAllMockMatches)

    Read all mock matches in a channel resulted from matching mock tickets.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches

        method: GET

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockMatchesResponse (Mock matches queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllMockMatches.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllMockMatches)
async def get_all_mock_matches_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all mock matches (GetAllMockMatches)

    Read all mock matches in a channel resulted from matching mock tickets.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches

        method: GET

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockMatchesResponse (Mock matches queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllMockMatches.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllMockTickets)
def get_all_mock_tickets(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all mock tickets (GetAllMockTickets)

    Read all mock tickets in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets

        method: GET

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockTicketsResponse (Mock tickets queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllMockTickets.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllMockTickets)
async def get_all_mock_tickets_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all mock tickets (GetAllMockTickets)

    Read all mock tickets in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets

        method: GET

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockTicketsResponse (Mock tickets queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllMockTickets.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetMockMatchesByTimestamp)
def get_mock_matches_by_timestamp(
    body: ModelsQueryMockBy,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get mock matches after timestamp (GetMockMatchesByTimestamp)

    Read mock matches that has timestamp older than specified timestamp in a channel resulted from matching mock tickets.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsQueryMockBy in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockMatchesResponse (Mock matches queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMockMatchesByTimestamp.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetMockMatchesByTimestamp)
async def get_mock_matches_by_timestamp_async(
    body: ModelsQueryMockBy,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get mock matches after timestamp (GetMockMatchesByTimestamp)

    Read mock matches that has timestamp older than specified timestamp in a channel resulted from matching mock tickets.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsQueryMockBy in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockMatchesResponse (Mock matches queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMockMatchesByTimestamp.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetMockTicketsByTimestamp)
def get_mock_tickets_by_timestamp(
    body: ModelsQueryMockBy,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get mock tickets after timestamp (GetMockTicketsByTimestamp)

    Read mock tickets after the specified timestamp in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsQueryMockBy in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockTicketsResponse (Mock tickets queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMockTicketsByTimestamp.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetMockTicketsByTimestamp)
async def get_mock_tickets_by_timestamp_async(
    body: ModelsQueryMockBy,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get mock tickets after timestamp (GetMockTicketsByTimestamp)

    Read mock tickets after the specified timestamp in a channel.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query

        method: POST

        tags: ["Mock Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsQueryMockBy in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetMockTicketsResponse (Mock tickets queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMockTicketsByTimestamp.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
