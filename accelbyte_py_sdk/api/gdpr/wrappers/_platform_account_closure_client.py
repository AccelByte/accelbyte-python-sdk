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

from ..models import DtoPlatformAccountClosureClientRequest
from ..models import DtoPlatformAccountClosureClientResponse
from ..models import ResponseError

from ..operations.platform_account_closure_client import (
    AdminDeletePlatformAccountClosureClient,
)
from ..operations.platform_account_closure_client import (
    AdminGetPlatformAccountClosureClient,
)
from ..operations.platform_account_closure_client import (
    AdminUpdatePlatformAccountClosureClient,
)


@same_doc_as(AdminDeletePlatformAccountClosureClient)
def admin_delete_platform_account_closure_client(
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Platform Account Closure Client (AdminDeletePlatformAccountClosureClient)

    Delete platform account closure client.

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: DELETE

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeletePlatformAccountClosureClient.create(
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlatformAccountClosureClient)
async def admin_delete_platform_account_closure_client_async(
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Platform Account Closure Client (AdminDeletePlatformAccountClosureClient)

    Delete platform account closure client.

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: DELETE

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeletePlatformAccountClosureClient.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlatformAccountClosureClient)
def admin_get_platform_account_closure_client(
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform Account Closure Config (AdminGetPlatformAccountClosureClient)

    Get platform account closure config.
    Scope: account

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: GET

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        200: OK - DtoPlatformAccountClosureClientResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureClient.create(
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlatformAccountClosureClient)
async def admin_get_platform_account_closure_client_async(
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform Account Closure Config (AdminGetPlatformAccountClosureClient)

    Get platform account closure config.
    Scope: account

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: GET

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        200: OK - DtoPlatformAccountClosureClientResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureClient.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdatePlatformAccountClosureClient)
def admin_update_platform_account_closure_client(
    body: DtoPlatformAccountClosureClientRequest,
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Platform Account Closure Client (AdminUpdatePlatformAccountClosureClient)

    Update platform account closure client.
    Scope: account

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoPlatformAccountClosureClientRequest in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdatePlatformAccountClosureClient.create(
        body=body,
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdatePlatformAccountClosureClient)
async def admin_update_platform_account_closure_client_async(
    body: DtoPlatformAccountClosureClientRequest,
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Platform Account Closure Client (AdminUpdatePlatformAccountClosureClient)

    Update platform account closure client.
    Scope: account

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoPlatformAccountClosureClientRequest in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdatePlatformAccountClosureClient.create(
        body=body,
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
