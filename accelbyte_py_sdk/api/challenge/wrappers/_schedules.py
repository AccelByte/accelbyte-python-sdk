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

from ..models import IamErrorResponse
from ..models import ModelListScheduleByGoalResponse
from ..models import ModelListSchedulesResponse
from ..models import ResponseError

from ..operations.schedules import AdminListSchedules
from ..operations.schedules import AdminListSchedulesByGoal
from ..operations.schedules import PublicListSchedules
from ..operations.schedules import PublicListSchedulesByGoal


@same_doc_as(AdminListSchedules)
def admin_list_schedules(
    challenge_code: str,
    date_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's schedules (adminListSchedules)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelListSchedulesResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListSchedules.create(
        challenge_code=challenge_code,
        date_time=date_time,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListSchedules)
async def admin_list_schedules_async(
    challenge_code: str,
    date_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's schedules (adminListSchedules)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelListSchedulesResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListSchedules.create(
        challenge_code=challenge_code,
        date_time=date_time,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListSchedulesByGoal)
def admin_list_schedules_by_goal(
    challenge_code: str,
    code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get goal's schedules (adminListSchedulesByGoal)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given goal in a challenge for specific user.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelListScheduleByGoalResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListSchedulesByGoal.create(
        challenge_code=challenge_code,
        code=code,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListSchedulesByGoal)
async def admin_list_schedules_by_goal_async(
    challenge_code: str,
    code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get goal's schedules (adminListSchedulesByGoal)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given goal in a challenge for specific user.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelListScheduleByGoalResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListSchedulesByGoal.create(
        challenge_code=challenge_code,
        code=code,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListSchedules)
def public_list_schedules(
    challenge_code: str,
    date_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's schedules (publicListSchedules)

      * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListSchedulesResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListSchedules.create(
        challenge_code=challenge_code,
        date_time=date_time,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListSchedules)
async def public_list_schedules_async(
    challenge_code: str,
    date_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's schedules (publicListSchedules)

      * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListSchedulesResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListSchedules.create(
        challenge_code=challenge_code,
        date_time=date_time,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListSchedulesByGoal)
def public_list_schedules_by_goal(
    challenge_code: str,
    code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get goal's schedules (publicListSchedulesByGoal)

      * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given goal in a challenge for specific user.

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListScheduleByGoalResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListSchedulesByGoal.create(
        challenge_code=challenge_code,
        code=code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListSchedulesByGoal)
async def public_list_schedules_by_goal_async(
    challenge_code: str,
    code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get goal's schedules (publicListSchedulesByGoal)

      * Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    List schedules of given goal in a challenge for specific user.

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules

        method: GET

        tags: ["Schedules"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListScheduleByGoalResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListSchedulesByGoal.create(
        challenge_code=challenge_code,
        code=code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
