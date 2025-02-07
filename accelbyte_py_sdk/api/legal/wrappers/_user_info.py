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

from ..models import RetrieveUserInfoCacheStatusResponse

from ..operations.user_info import GetUserInfoStatus
from ..operations.user_info import InvalidateUserInfoCache
from ..operations.user_info import SyncUserInfo


@same_doc_as(GetUserInfoStatus)
def get_user_info_status(
    namespaces: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user info cache status (getUserInfoStatus)

    Get user info cache last updated time per namespace.
    The query parameter namespaces can be a list of namespace separated by comma.
    If query parameter namespaces is empty, user info cache status for all available namespaces will be returned.

    Properties:
        url: /agreement/admin/userInfo

        method: GET

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespaces: (namespaces) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)
    """
    request = GetUserInfoStatus.create(
        namespaces=namespaces,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserInfoStatus)
async def get_user_info_status_async(
    namespaces: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user info cache status (getUserInfoStatus)

    Get user info cache last updated time per namespace.
    The query parameter namespaces can be a list of namespace separated by comma.
    If query parameter namespaces is empty, user info cache status for all available namespaces will be returned.

    Properties:
        url: /agreement/admin/userInfo

        method: GET

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespaces: (namespaces) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)
    """
    request = GetUserInfoStatus.create(
        namespaces=namespaces,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(InvalidateUserInfoCache)
def invalidate_user_info_cache(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invalidate user info cache (invalidateUserInfoCache)

    Invalidate user info cache in agreement service.

    Properties:
        url: /agreement/admin/userInfo

        method: DELETE

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

    Responses:
        204: No Content - (Successful operation)
    """
    request = InvalidateUserInfoCache.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(InvalidateUserInfoCache)
async def invalidate_user_info_cache_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invalidate user info cache (invalidateUserInfoCache)

    Invalidate user info cache in agreement service.

    Properties:
        url: /agreement/admin/userInfo

        method: DELETE

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) OPTIONAL str in query

    Responses:
        204: No Content - (Successful operation)
    """
    request = InvalidateUserInfoCache.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SyncUserInfo)
def sync_user_info(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync user info with iam service  (syncUserInfo)

    Sync user info cache in agreement service with iam service.

    Properties:
        url: /agreement/admin/userInfo

        method: PUT

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in query

    Responses:
        200: OK - (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncUserInfo.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SyncUserInfo)
async def sync_user_info_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync user info with iam service  (syncUserInfo)

    Sync user info cache in agreement service with iam service.

    Properties:
        url: /agreement/admin/userInfo

        method: PUT

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in query

    Responses:
        200: OK - (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncUserInfo.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
