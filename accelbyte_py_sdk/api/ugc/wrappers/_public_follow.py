# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsPaginatedCreatorOverviewResponse
from ..models import ModelsUserFollowRequest
from ..models import ModelsUserFollowResponse
from ..models import ResponseError

from ..operations.public_follow import GetFollowedContent
from ..operations.public_follow import GetFollowedUsers
from ..operations.public_follow import UpdateUserFollowStatus


@same_doc_as(GetFollowedContent)
def get_followed_content(limit: Optional[int] = None, offset: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetFollowedContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetFollowedContent)
async def get_followed_content_async(limit: Optional[int] = None, offset: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetFollowedContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetFollowedUsers)
def get_followed_users(limit: Optional[int] = None, offset: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetFollowedUsers.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetFollowedUsers)
async def get_followed_users_async(limit: Optional[int] = None, offset: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetFollowedUsers.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserFollowStatus)
def update_user_follow_status(body: ModelsUserFollowRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserFollowStatus.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserFollowStatus)
async def update_user_follow_status_async(body: ModelsUserFollowRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserFollowStatus.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
