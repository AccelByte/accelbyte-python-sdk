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
from ..models import DtoPlatformAccountClosureClientsResponse
from ..models import DtoPlatformAccountClosureMockRequest
from ..models import DtoXboxBPCertValidationRequest
from ..models import DtoXboxBPCertValidationResponse
from ..models import ResponseError

from ..operations.platform_account_closure_client import (
    AdminDeletePlatformAccountClosureClient,
)
from ..operations.platform_account_closure_client import (
    AdminGetPlatformAccountClosureClient,
)
from ..operations.platform_account_closure_client import (
    AdminGetPlatformAccountClosureClients,
)
from ..operations.platform_account_closure_client import (
    AdminMockPlatformAccountClosureData,
)
from ..operations.platform_account_closure_client import (
    AdminUpdatePlatformAccountClosureClient,
)
from ..operations.platform_account_closure_client import AdminValidateXboxBPCertFile


@same_doc_as(AdminDeletePlatformAccountClosureClient)
def admin_delete_platform_account_closure_client(
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Platform Account Closure Client (AdminDeletePlatformAccountClosureClient)

    Delete platform account closure client.
    The namespace should be **publisher or studio namespace**
    -------
    Platform:
    - steamnetwork
    - xbox
    - psn

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    The namespace should be **publisher or studio namespace**
    -------
    Platform:
    - steamnetwork
    - xbox
    - psn

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    The namespace should be **publisher or studio namespace**
    ----------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    The namespace should be **publisher or studio namespace**
    ----------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureClient.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlatformAccountClosureClients)
def admin_get_platform_account_closure_clients(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform Account Closure Configs (AdminGetPlatformAccountClosureClients)

    Get platform account closure configs.
    ------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/closure/clients

        method: GET

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoPlatformAccountClosureClientsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureClients.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlatformAccountClosureClients)
async def admin_get_platform_account_closure_clients_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform Account Closure Configs (AdminGetPlatformAccountClosureClients)

    Get platform account closure configs.
    ------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/closure/clients

        method: GET

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoPlatformAccountClosureClientsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureClients.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminMockPlatformAccountClosureData)
def admin_mock_platform_account_closure_data(
    body: DtoPlatformAccountClosureMockRequest,
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Platform Account Closure Data (AdminMockPlatformAccountClosureData)

    Mock platform account closure data.
    -----
    **This is only for testing**
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoPlatformAccountClosureMockRequest in body

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminMockPlatformAccountClosureData.create(
        body=body,
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminMockPlatformAccountClosureData)
async def admin_mock_platform_account_closure_data_async(
    body: DtoPlatformAccountClosureMockRequest,
    platform: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Platform Account Closure Data (AdminMockPlatformAccountClosureData)

    Mock platform account closure data.
    -----
    **This is only for testing**
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoPlatformAccountClosureMockRequest in body

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminMockPlatformAccountClosureData.create(
        body=body,
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
    The namespace should be the **publisher or studio namespace**.
    ------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    The namespace should be the **publisher or studio namespace**.
    ------
    Platform:
    - steamnetwork
    - xbox
    - psn
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(AdminValidateXboxBPCertFile)
def admin_validate_xbox_bp_cert_file(
    body: DtoXboxBPCertValidationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate Xbox BP cert file (AdminValidateXboxBPCertFile)

    Check xbox BP cert file whether it's expired and return expiration date

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoXboxBPCertValidationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoXboxBPCertValidationResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminValidateXboxBPCertFile.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminValidateXboxBPCertFile)
async def admin_validate_xbox_bp_cert_file_async(
    body: DtoXboxBPCertValidationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate Xbox BP cert file (AdminValidateXboxBPCertFile)

    Check xbox BP cert file whether it's expired and return expiration date

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation

        method: POST

        tags: ["Platform Account Closure Client"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoXboxBPCertValidationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoXboxBPCertValidationResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminValidateXboxBPCertFile.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
