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

from ..models import ApimodelsPutPlatformCredentialsRequest
from ..models import ModelsPlatformCredentials
from ..models import ResponseError

from ..operations.platform_credential import AdminDeletePlatformCredentials
from ..operations.platform_credential import AdminGetPlatformCredentials
from ..operations.platform_credential import AdminUpdatePlatformCredentials


@same_doc_as(AdminDeletePlatformCredentials)
def admin_delete_platform_credentials(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete platform credentials. (adminDeletePlatformCredentials)

    Delete platform credentials used for Native Session sync. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [DELETE]

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: DELETE

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = AdminDeletePlatformCredentials.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlatformCredentials)
async def admin_delete_platform_credentials_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete platform credentials. (adminDeletePlatformCredentials)

    Delete platform credentials used for Native Session sync. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [DELETE]

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: DELETE

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = AdminDeletePlatformCredentials.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlatformCredentials)
def admin_get_platform_credentials(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform credentials. These are used to sync PSN sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [READ] (adminGetPlatformCredentials)

    Get platform credentials used for Native Session sync.
    PSN:
    - clientID: Auth Server (Client Credential) ClientID
    - clientSecret: Auth Server (Client Credential) Secret. For security, only the first few characters are shown.
    - scope: should be psn:s2s.service (For Sync non PSN member to PSN Session)

    Required Scope(s):
        - should

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: GET

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

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
    request = AdminGetPlatformCredentials.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlatformCredentials)
async def admin_get_platform_credentials_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform credentials. These are used to sync PSN sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [READ] (adminGetPlatformCredentials)

    Get platform credentials used for Native Session sync.
    PSN:
    - clientID: Auth Server (Client Credential) ClientID
    - clientSecret: Auth Server (Client Credential) Secret. For security, only the first few characters are shown.
    - scope: should be psn:s2s.service (For Sync non PSN member to PSN Session)

    Required Scope(s):
        - should

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: GET

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

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
    request = AdminGetPlatformCredentials.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdatePlatformCredentials)
def admin_update_platform_credentials(
    body: ApimodelsPutPlatformCredentialsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update platform credentials. Currently only used to sync PSN sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [UPDATE] (adminUpdatePlatformCredentials)

    Update platform credentials for Native Session sync. Currently supports PSN platform.
    Send an empty body to clear data.
    PSN:
    - clientID: Auth Server (Client Credential) ClientID
    - clientSecret: Auth Server (Client Credential) Secret
    - scope: psn:s2s.service (For Sync non PSN member to PSN Session)

    Required Scope(s):
        - psn

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: PUT

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPutPlatformCredentialsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

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
    request = AdminUpdatePlatformCredentials.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdatePlatformCredentials)
async def admin_update_platform_credentials_async(
    body: ApimodelsPutPlatformCredentialsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update platform credentials. Currently only used to sync PSN sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PLATFORMCREDENTIAL [UPDATE] (adminUpdatePlatformCredentials)

    Update platform credentials for Native Session sync. Currently supports PSN platform.
    Send an empty body to clear data.
    PSN:
    - clientID: Auth Server (Client Credential) ClientID
    - clientSecret: Auth Server (Client Credential) Secret
    - scope: psn:s2s.service (For Sync non PSN member to PSN Session)

    Required Scope(s):
        - psn

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/platform-credentials

        method: PUT

        tags: ["Platform Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPutPlatformCredentialsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

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
    request = AdminUpdatePlatformCredentials.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
