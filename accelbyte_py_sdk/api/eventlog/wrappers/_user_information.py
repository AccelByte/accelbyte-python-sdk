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

from ..models import ModelsEventResponse
from ..models import ModelsUserLastActivity

from ..operations.user_information import DeleteUserActivitiesHandler
from ..operations.user_information import GetUserActivitiesHandler
from ..operations.user_information import LastUserActivityTimeHandler


@deprecated
@same_doc_as(DeleteUserActivitiesHandler)
def delete_user_activities_handler(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user's activities (DeleteUserActivitiesHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/activities

        method: DELETE

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserActivitiesHandler.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserActivitiesHandler)
async def delete_user_activities_handler_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete all user's activities (DeleteUserActivitiesHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/activities

        method: DELETE

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserActivitiesHandler.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserActivitiesHandler)
def get_user_activities_handler(
    page_size: int,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user's activities (GetUserActivitiesHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/activities

        method: GET

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) REQUIRED int in query

    Responses:
        200: OK - ModelsEventResponse (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserActivitiesHandler.create(
        page_size=page_size,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserActivitiesHandler)
async def get_user_activities_handler_async(
    page_size: int,
    user_id: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user's activities (GetUserActivitiesHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/activities

        method: GET

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) REQUIRED int in query

    Responses:
        200: OK - ModelsEventResponse (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserActivitiesHandler.create(
        page_size=page_size,
        user_id=user_id,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(LastUserActivityTimeHandler)
def last_user_activity_time_handler(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get last activity time of a user in a namespace (LastUserActivityTimeHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/lastActivityTime

        method: GET

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserLastActivity (OK)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = LastUserActivityTimeHandler.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(LastUserActivityTimeHandler)
async def last_user_activity_time_handler_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get last activity time of a user in a namespace (LastUserActivityTimeHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/lastActivityTime

        method: GET

        tags: ["User Information"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserLastActivity (OK)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = LastUserActivityTimeHandler.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
