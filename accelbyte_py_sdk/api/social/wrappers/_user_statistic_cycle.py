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
from ..models import UserStatCycleItemPagingSlicedResult
from ..models import ValidationErrorEntity

from ..operations.user_statistic_cycle import GetUserStatCycleItems
from ..operations.user_statistic_cycle import GetUserStatCycleItems1
from ..operations.user_statistic_cycle import PublicListMyStatCycleItems


@same_doc_as(GetUserStatCycleItems)
def get_user_stat_cycle_items(
    cycle_id: str,
    user_id: str,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (getUserStatCycleItems)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatCycleItems.create(
        cycle_id=cycle_id,
        user_id=user_id,
        is_public=is_public,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserStatCycleItems)
async def get_user_stat_cycle_items_async(
    cycle_id: str,
    user_id: str,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (getUserStatCycleItems)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatCycleItems.create(
        cycle_id=cycle_id,
        user_id=user_id,
        is_public=is_public,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserStatCycleItems1)
def get_user_stat_cycle_items_1(
    cycle_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (getUserStatCycleItems_1)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatCycleItems1.create(
        cycle_id=cycle_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserStatCycleItems1)
async def get_user_stat_cycle_items_1_async(
    cycle_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (getUserStatCycleItems_1)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatCycleItems1.create(
        cycle_id=cycle_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListMyStatCycleItems)
def public_list_my_stat_cycle_items(
    cycle_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (publicListMyStatCycleItems)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListMyStatCycleItems.create(
        cycle_id=cycle_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListMyStatCycleItems)
async def public_list_my_stat_cycle_items_async(
    cycle_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statCycleItems by statCycle (publicListMyStatCycleItems)

    List user's statCycleItems by statCycle.
    Other detail info:

      *  Returns : stat cycle items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems

        method: GET

        tags: ["UserStatisticCycle"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

    Responses:
        200: OK - UserStatCycleItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListMyStatCycleItems.create(
        cycle_id=cycle_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
