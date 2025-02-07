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

from ..models import ModelsGetHiddenUserResponse
from ..models import ModelsGetUserVisibilityResponse
from ..models import ModelsSetUserVisibilityRequest
from ..models import ResponseErrorResponse

from ..operations.user_visibility_v3 import GetHiddenUsersV3
from ..operations.user_visibility_v3 import GetUserVisibilityStatusV3
from ..operations.user_visibility_v3 import SetUserLeaderboardVisibilityV3
from ..operations.user_visibility_v3 import SetUserVisibilityV3


@same_doc_as(GetHiddenUsersV3)
def get_hidden_users_v3(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get hidden users on a leaderboard (GetHiddenUsersV3)

    Return hidden users on a leaderboard

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden

        method: GET

        tags: ["UserVisibilityV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetHiddenUserResponse (Hidden user retrieved)

        400: Bad Request - ResponseErrorResponse (71130: leaderboard config not found)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetHiddenUsersV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetHiddenUsersV3)
async def get_hidden_users_v3_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get hidden users on a leaderboard (GetHiddenUsersV3)

    Return hidden users on a leaderboard

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden

        method: GET

        tags: ["UserVisibilityV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetHiddenUserResponse (Hidden user retrieved)

        400: Bad Request - ResponseErrorResponse (71130: leaderboard config not found)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetHiddenUsersV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserVisibilityStatusV3)
def get_user_visibility_status_v3(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user visibility status (GetUserVisibilityStatusV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility

        method: GET

        tags: ["UserVisibilityV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserVisibilityStatusV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserVisibilityStatusV3)
async def get_user_visibility_status_v3_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user visibility status (GetUserVisibilityStatusV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility

        method: GET

        tags: ["UserVisibilityV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserVisibilityStatusV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetUserLeaderboardVisibilityV3)
def set_user_leaderboard_visibility_v3(
    body: ModelsSetUserVisibilityRequest,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set user visibility status on a specific leaderboard code (SetUserLeaderboardVisibilityV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility

        method: PUT

        tags: ["UserVisibilityV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetUserVisibilityRequest in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71130: leaderboard config not found | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetUserLeaderboardVisibilityV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetUserLeaderboardVisibilityV3)
async def set_user_leaderboard_visibility_v3_async(
    body: ModelsSetUserVisibilityRequest,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set user visibility status on a specific leaderboard code (SetUserLeaderboardVisibilityV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility

        method: PUT

        tags: ["UserVisibilityV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetUserVisibilityRequest in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71130: leaderboard config not found | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetUserLeaderboardVisibilityV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetUserVisibilityV3)
def set_user_visibility_v3(
    body: ModelsSetUserVisibilityRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set user visibility status on a all current leaderboard (SetUserVisibilityV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility

        method: PUT

        tags: ["UserVisibilityV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetUserVisibilityRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71130: leaderboard config not found | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetUserVisibilityV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetUserVisibilityV3)
async def set_user_visibility_v3_async(
    body: ModelsSetUserVisibilityRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set user visibility status on a all current leaderboard (SetUserVisibilityV3)

    User with false visibility status will have hidden attribute set to true on it's leaderboard entry

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility

        method: PUT

        tags: ["UserVisibilityV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetUserVisibilityRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserVisibilityResponse (User visibility status updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71130: leaderboard config not found | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetUserVisibilityV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
