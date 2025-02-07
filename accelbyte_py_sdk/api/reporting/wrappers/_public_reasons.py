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

from ..models import RestapiErrorResponse
from ..models import RestapiPublicReasonListResponse
from ..models import RestapiReasonGroupListResponse

from ..operations.public_reasons import PublicGetReasons
from ..operations.public_reasons import PublicListReasonGroups


@same_doc_as(PublicGetReasons)
def public_get_reasons(
    group: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    title: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons (publicGetReasons)

    Properties:
        url: /reporting/v1/public/namespaces/{namespace}/reasons

        method: GET

        tags: ["Public Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group: (group) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        title: (title) OPTIONAL str in query

    Responses:
        200: OK - RestapiPublicReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetReasons.create(
        group=group,
        limit=limit,
        offset=offset,
        title=title,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetReasons)
async def public_get_reasons_async(
    group: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    title: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons (publicGetReasons)

    Properties:
        url: /reporting/v1/public/namespaces/{namespace}/reasons

        method: GET

        tags: ["Public Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group: (group) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        title: (title) OPTIONAL str in query

    Responses:
        200: OK - RestapiPublicReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetReasons.create(
        group=group,
        limit=limit,
        offset=offset,
        title=title,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListReasonGroups)
def public_list_reason_groups(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reason groups under a namespace (publicListReasonGroups)

    Return list of reason groups ID and title under given namespace.

    Properties:
        url: /reporting/v1/public/namespaces/{namespace}/reasonGroups

        method: GET

        tags: ["Public Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReasonGroupListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListReasonGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListReasonGroups)
async def public_list_reason_groups_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reason groups under a namespace (publicListReasonGroups)

    Return list of reason groups ID and title under given namespace.

    Properties:
        url: /reporting/v1/public/namespaces/{namespace}/reasonGroups

        method: GET

        tags: ["Public Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReasonGroupListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListReasonGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
