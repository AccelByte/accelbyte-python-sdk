# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

from ..operations.user_visibility import GetHiddenUsersV2
from ..operations.user_visibility import GetUserVisibilityStatusV2
from ..operations.user_visibility import SetUserLeaderboardVisibilityStatusV2
from ..operations.user_visibility import SetUserVisibilityStatusV2


@same_doc_as(GetHiddenUsersV2)
def get_hidden_users_v2(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetHiddenUsersV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetHiddenUsersV2)
async def get_hidden_users_v2_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetHiddenUsersV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserVisibilityStatusV2)
def get_user_visibility_status_v2(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserVisibilityStatusV2.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserVisibilityStatusV2)
async def get_user_visibility_status_v2_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserVisibilityStatusV2.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetUserLeaderboardVisibilityStatusV2)
def set_user_leaderboard_visibility_status_v2(
    body: ModelsSetUserVisibilityRequest,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SetUserLeaderboardVisibilityStatusV2.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetUserLeaderboardVisibilityStatusV2)
async def set_user_leaderboard_visibility_status_v2_async(
    body: ModelsSetUserVisibilityRequest,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SetUserLeaderboardVisibilityStatusV2.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetUserVisibilityStatusV2)
def set_user_visibility_status_v2(
    body: ModelsSetUserVisibilityRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SetUserVisibilityStatusV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetUserVisibilityStatusV2)
async def set_user_visibility_status_v2_async(
    body: ModelsSetUserVisibilityRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SetUserVisibilityStatusV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
