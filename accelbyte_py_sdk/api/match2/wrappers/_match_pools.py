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

from ..models import ApiListMatchPoolsResponse
from ..models import ApiMatchPool
from ..models import ApiMatchPoolConfig
from ..models import ApiTicketMetricResultRecord
from ..models import ResponseError

from ..operations.match_pools import CreateMatchPool
from ..operations.match_pools import DeleteMatchPool
from ..operations.match_pools import MatchPoolDetails
from ..operations.match_pools import MatchPoolList
from ..operations.match_pools import MatchPoolMetric
from ..operations.match_pools import UpdateMatchPool


@same_doc_as(CreateMatchPool)
def create_match_pool(
    body: ApiMatchPool,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a match pool (CreateMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [CREATE]

    Required Scope: social

    Creates a new matchmaking pool.

    A pool is isolated from other pools (i.e. tickets may be matched with other tickets in the same pool, but not with tickets in other pools).
    Each pool has its own matchmaking rules and/or logic.

    ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

    Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
    Match Function will be used as reference value for Match Function Overrides if not set.
    In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
    This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
    e.g.
    {
    "match_function": "custom",
    "match_function_overrides": {
    "validation": []{"default","custom"},
    "make_matches": "default",
    }
    }

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools

        method: POST

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchPool in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateMatchPool.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateMatchPool)
async def create_match_pool_async(
    body: ApiMatchPool,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a match pool (CreateMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [CREATE]

    Required Scope: social

    Creates a new matchmaking pool.

    A pool is isolated from other pools (i.e. tickets may be matched with other tickets in the same pool, but not with tickets in other pools).
    Each pool has its own matchmaking rules and/or logic.

    ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

    Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
    Match Function will be used as reference value for Match Function Overrides if not set.
    In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
    This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
    e.g.
    {
    "match_function": "custom",
    "match_function_overrides": {
    "validation": []{"default","custom"},
    "make_matches": "default",
    }
    }

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools

        method: POST

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchPool in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateMatchPool.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteMatchPool)
def delete_match_pool(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a match pool (DeleteMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [DELETE]

    Required Scope: social

    Deletes an existing matchmaking pool.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: DELETE

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteMatchPool.create(
        pool=pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteMatchPool)
async def delete_match_pool_async(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a match pool (DeleteMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [DELETE]

    Required Scope: social

    Deletes an existing matchmaking pool.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: DELETE

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteMatchPool.create(
        pool=pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MatchPoolDetails)
def match_pool_details(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific match pool (MatchPoolDetails)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope: social

    Get details for a specific match pool

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: GET

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiMatchPool (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolDetails.create(
        pool=pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MatchPoolDetails)
async def match_pool_details_async(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific match pool (MatchPoolDetails)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope: social

    Get details for a specific match pool

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: GET

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiMatchPool (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolDetails.create(
        pool=pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MatchPoolList)
def match_pool_list(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List match pools (MatchPoolList)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope: social

    List matchmaking pools.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools

        method: GET

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApiListMatchPoolsResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolList.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MatchPoolList)
async def match_pool_list_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List match pools (MatchPoolList)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope: social

    List matchmaking pools.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools

        method: GET

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApiListMatchPoolsResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolList.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MatchPoolMetric)
def match_pool_metric(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get metrics for a specific match pool (MatchPoolMetric)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL:METRICS [READ]

    Required Scope: social

    Get metric for a specific match pool

    Result: queueTime in seconds

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL:METRICS [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics

        method: GET

        tags: ["Match-Pools", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiTicketMetricResultRecord (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolMetric.create(
        pool=pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MatchPoolMetric)
async def match_pool_metric_async(
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get metrics for a specific match pool (MatchPoolMetric)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL:METRICS [READ]

    Required Scope: social

    Get metric for a specific match pool

    Result: queueTime in seconds

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL:METRICS [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics

        method: GET

        tags: ["Match-Pools", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiTicketMetricResultRecord (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchPoolMetric.create(
        pool=pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMatchPool)
def update_match_pool(
    body: ApiMatchPoolConfig,
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a match pool (UpdateMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope: social

    Updates an existing matchmaking pool.

    ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

    Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
    Match Function will be used as reference value for Match Function Overrides if not set.
    In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
    This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
    e.g.
    {
    "match_function": "custom",
    "match_function_overrides": {
    "validation": []{"default","custom"},
    "make_matches": "default",
    }
    }

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: PUT

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchPoolConfig in body

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiMatchPool (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateMatchPool.create(
        body=body,
        pool=pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMatchPool)
async def update_match_pool_async(
    body: ApiMatchPoolConfig,
    pool: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a match pool (UpdateMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope: social

    Updates an existing matchmaking pool.

    ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

    Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
    Match Function will be used as reference value for Match Function Overrides if not set.
    In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
    This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
    e.g.
    {
    "match_function": "custom",
    "match_function_overrides": {
    "validation": []{"default","custom"},
    "make_matches": "default",
    }
    }

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: PUT

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchPoolConfig in body

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiMatchPool (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateMatchPool.create(
        body=body,
        pool=pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
