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
from ..models import GlobalStatItemInfo
from ..models import GlobalStatItemPagingSlicedResult

from ..operations.global_statistic import GetGlobalStatItemByStatCode
from ..operations.global_statistic import GetGlobalStatItemByStatCode1
from ..operations.global_statistic import GetGlobalStatItems
from ..operations.global_statistic import GetGlobalStatItems1
from ..models import GlobalStatItemInfoGlobalAggregationMethodEnum


@same_doc_as(GetGlobalStatItemByStatCode)
def get_global_stat_item_by_stat_code(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get global statItem by stat code (getGlobalStatItemByStatCode)

    Get global statItem by stat code.
    Other detail info:

      *  Returns : global stat item

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - GlobalStatItemInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12244: Global stat item of [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItemByStatCode.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGlobalStatItemByStatCode)
async def get_global_stat_item_by_stat_code_async(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get global statItem by stat code (getGlobalStatItemByStatCode)

    Get global statItem by stat code.
    Other detail info:

      *  Returns : global stat item

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - GlobalStatItemInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12244: Global stat item of [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItemByStatCode.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGlobalStatItemByStatCode1)
def get_global_stat_item_by_stat_code_1(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get global statItem by stat code (getGlobalStatItemByStatCode_1)

    Get global statItem by stat code.
    Other detail info:

      *  Returns : global stat item

    Properties:
        url: /social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - GlobalStatItemInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12244: Global stat item of [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItemByStatCode1.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGlobalStatItemByStatCode1)
async def get_global_stat_item_by_stat_code_1_async(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get global statItem by stat code (getGlobalStatItemByStatCode_1)

    Get global statItem by stat code.
    Other detail info:

      *  Returns : global stat item

    Properties:
        url: /social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - GlobalStatItemInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12244: Global stat item of [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItemByStatCode1.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGlobalStatItems)
def get_global_stat_items(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List global statItems (getGlobalStatItems)

    List global statItems by pagination.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/globalstatitems

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - GlobalStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItems.create(
        limit=limit,
        offset=offset,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGlobalStatItems)
async def get_global_stat_items_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List global statItems (getGlobalStatItems)

    List global statItems by pagination.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/globalstatitems

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - GlobalStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItems.create(
        limit=limit,
        offset=offset,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGlobalStatItems1)
def get_global_stat_items_1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List global statItems (getGlobalStatItems_1)

    List global statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/globalstatitems

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - GlobalStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItems1.create(
        limit=limit,
        offset=offset,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGlobalStatItems1)
async def get_global_stat_items_1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    stat_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List global statItems (getGlobalStatItems_1)

    List global statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/globalstatitems

        method: GET

        tags: ["GlobalStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        stat_codes: (statCodes) OPTIONAL str in query

    Responses:
        200: OK - GlobalStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGlobalStatItems1.create(
        limit=limit,
        offset=offset,
        stat_codes=stat_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
