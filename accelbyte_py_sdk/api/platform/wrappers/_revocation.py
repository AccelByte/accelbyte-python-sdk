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
from ..models import RevocationConfigInfo
from ..models import RevocationConfigUpdate
from ..models import RevocationHistoryPagingSlicedResult
from ..models import RevocationRequest
from ..models import RevocationResult

from ..operations.revocation import DeleteRevocationConfig
from ..operations.revocation import DoRevocation
from ..operations.revocation import GetRevocationConfig
from ..operations.revocation import QueryRevocationHistories
from ..operations.revocation import (
    QueryRevocationHistoriesSourceEnum,
    QueryRevocationHistoriesStatusEnum,
)
from ..operations.revocation import UpdateRevocationConfig
from ..models import RevocationRequestSourceEnum
from ..models import RevocationResultStatusEnum


@same_doc_as(DeleteRevocationConfig)
def delete_revocation_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete revocation config (deleteRevocationConfig)

    Delete revocation config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: DELETE

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRevocationConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRevocationConfig)
async def delete_revocation_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete revocation config (deleteRevocationConfig)

    Delete revocation config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: DELETE

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRevocationConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DoRevocation)
def do_revocation(
    body: RevocationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Do revocation. (doRevocation)

    Do revocation.
    Other detail info:

      * Returns : revocation results

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/revocation

        method: PUT

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevocationResult (successful operation)

        409: Conflict - ErrorEntity (41171: Request has different payload on previous call | 41172: Request has different user id on previous call)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DoRevocation.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DoRevocation)
async def do_revocation_async(
    body: RevocationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Do revocation. (doRevocation)

    Do revocation.
    Other detail info:

      * Returns : revocation results

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/revocation

        method: PUT

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevocationResult (successful operation)

        409: Conflict - ErrorEntity (41171: Request has different payload on previous call | 41172: Request has different user id on previous call)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DoRevocation.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRevocationConfig)
def get_revocation_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get revocation configuration (getRevocationConfig)

    Get revocation configuration.
    Other detail info:

      * Returns : Revocation config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: GET

        tags: ["Revocation"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33243: Payment callback config for [{namespace}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRevocationConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRevocationConfig)
async def get_revocation_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get revocation configuration (getRevocationConfig)

    Get revocation configuration.
    Other detail info:

      * Returns : Revocation config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: GET

        tags: ["Revocation"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33243: Payment callback config for [{namespace}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRevocationConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRevocationHistories)
def query_revocation_histories(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryRevocationHistoriesSourceEnum]] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryRevocationHistoriesStatusEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query revocation histories (queryRevocationHistories)

    Query revocation histories in a namespace.
    Other detail info:

      * Returns : query revocation history

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/history

        method: GET

        tags: ["Revocation"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        transaction_id: (transactionId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - RevocationHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryRevocationHistories.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        source=source,
        start_time=start_time,
        status=status,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRevocationHistories)
async def query_revocation_histories_async(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryRevocationHistoriesSourceEnum]] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryRevocationHistoriesStatusEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query revocation histories (queryRevocationHistories)

    Query revocation histories in a namespace.
    Other detail info:

      * Returns : query revocation history

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/history

        method: GET

        tags: ["Revocation"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        transaction_id: (transactionId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - RevocationHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryRevocationHistories.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        source=source,
        start_time=start_time,
        status=status,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRevocationConfig)
def update_revocation_config(
    body: RevocationConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update revocation configuration (updateRevocationConfig)

    Update revocation configuration.
    Other detail info:

      * Returns : Revocation config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: PUT

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRevocationConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRevocationConfig)
async def update_revocation_config_async(
    body: RevocationConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update revocation configuration (updateRevocationConfig)

    Update revocation configuration.
    Other detail info:

      * Returns : Revocation config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/config

        method: PUT

        tags: ["Revocation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRevocationConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
