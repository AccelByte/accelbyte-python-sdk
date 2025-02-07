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
from ..models import ModelEvaluatePlayerProgressionRequest
from ..models import ModelUserProgressionResponse
from ..models import ResponseError

from ..operations.challenge_progression import AdminEvaluateProgress
from ..operations.challenge_progression import AdminGetUserProgression
from ..operations.challenge_progression import EvaluateMyProgress
from ..operations.challenge_progression import PublicGetPastUserProgression
from ..operations.challenge_progression import PublicGetUserProgression


@same_doc_as(AdminEvaluateProgress)
def admin_evaluate_progress(
    body: ModelEvaluatePlayerProgressionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Evaluate User's Progressions (adminEvaluateProgress)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
    - Limited up to 10 users per request

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/progress/evaluate

        method: POST

        tags: ["Challenge Progression"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEvaluatePlayerProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminEvaluateProgress.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEvaluateProgress)
async def admin_evaluate_progress_async(
    body: ModelEvaluatePlayerProgressionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Evaluate User's Progressions (adminEvaluateProgress)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
    - Limited up to 10 users per request

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/progress/evaluate

        method: POST

        tags: ["Challenge Progression"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEvaluatePlayerProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminEvaluateProgress.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserProgression)
def admin_get_user_progression(
    challenge_code: str,
    user_id: str,
    date_time: Optional[str] = None,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions (adminGetUserProgression)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - ResponseError (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserProgression.create(
        challenge_code=challenge_code,
        user_id=user_id,
        date_time=date_time,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserProgression)
async def admin_get_user_progression_async(
    challenge_code: str,
    user_id: str,
    date_time: Optional[str] = None,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions (adminGetUserProgression)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - ResponseError (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserProgression.create(
        challenge_code=challenge_code,
        user_id=user_id,
        date_time=date_time,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(EvaluateMyProgress)
def evaluate_my_progress(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Evaluate User's Challenge Progressions (EvaluateMyProgress)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate

        method: POST

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EvaluateMyProgress.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(EvaluateMyProgress)
async def evaluate_my_progress_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Evaluate User's Challenge Progressions (EvaluateMyProgress)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate

        method: POST

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EvaluateMyProgress.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPastUserProgression)
def public_get_past_user_progression(
    challenge_code: str,
    index: int,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions in the previous rotation. (publicGetPastUserProgression)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        index: (index) REQUIRED int in path

        namespace: (namespace) REQUIRED str in path

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPastUserProgression.create(
        challenge_code=challenge_code,
        index=index,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPastUserProgression)
async def public_get_past_user_progression_async(
    challenge_code: str,
    index: int,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions in the previous rotation. (publicGetPastUserProgression)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        index: (index) REQUIRED int in path

        namespace: (namespace) REQUIRED str in path

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPastUserProgression.create(
        challenge_code=challenge_code,
        index=index,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserProgression)
def public_get_user_progression(
    challenge_code: str,
    date_time: Optional[str] = None,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions (publicGetUserProgression)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - ResponseError (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProgression.create(
        challenge_code=challenge_code,
        date_time=date_time,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserProgression)
async def public_get_user_progression_async(
    challenge_code: str,
    date_time: Optional[str] = None,
    goal_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Progressions (publicGetUserProgression)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        date_time: (dateTime) OPTIONAL str in query

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - ResponseError (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProgression.create(
        challenge_code=challenge_code,
        date_time=date_time,
        goal_code=goal_code,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
