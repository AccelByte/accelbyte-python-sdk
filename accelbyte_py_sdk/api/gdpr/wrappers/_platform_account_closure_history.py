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

from ..models import DtoUserPlatformAccountClosureHistoriesResponse
from ..models import ResponseError

from ..operations.platform_account_closure_history import (
    AdminGetUserPlatformAccountClosureHistories,
)


@same_doc_as(AdminGetUserPlatformAccountClosureHistories)
def admin_get_user_platform_account_closure_histories(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Platform Account Closure Histories (AdminGetUserPlatformAccountClosureHistories)

    Get user's platform account closure histories.
    Scope: account

    ------
    Supported platforms:
    * psn

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories

        method: GET

        tags: ["Platform Account Closure History"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - DtoUserPlatformAccountClosureHistoriesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserPlatformAccountClosureHistories.create(
        limit=limit,
        offset=offset,
        platform=platform,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserPlatformAccountClosureHistories)
async def admin_get_user_platform_account_closure_histories_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Platform Account Closure Histories (AdminGetUserPlatformAccountClosureHistories)

    Get user's platform account closure histories.
    Scope: account

    ------
    Supported platforms:
    * psn

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories

        method: GET

        tags: ["Platform Account Closure History"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - DtoUserPlatformAccountClosureHistoriesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserPlatformAccountClosureHistories.create(
        limit=limit,
        offset=offset,
        platform=platform,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
