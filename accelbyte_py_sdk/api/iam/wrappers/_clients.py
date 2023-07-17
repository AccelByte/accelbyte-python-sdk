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

from ..models import AccountcommonClientPermissions
from ..models import AccountcommonClientPermissionsV3
from ..models import ClientmodelClientCreateRequest
from ..models import ClientmodelClientCreationResponse
from ..models import ClientmodelClientCreationV3Request
from ..models import ClientmodelClientResponse
from ..models import ClientmodelClientUpdateRequest
from ..models import ClientmodelClientUpdateSecretRequest
from ..models import ClientmodelClientUpdateV3Request
from ..models import ClientmodelClientV3Response
from ..models import ClientmodelClientsV3Response
from ..models import ClientmodelV3ClientUpdateSecretRequest
from ..models import RestErrorResponse

from ..operations.clients import AddClientPermission
from ..operations.clients import AdminAddClientPermissionsV3
from ..operations.clients import AdminCreateClientV3
from ..operations.clients import AdminDeleteClientPermissionV3
from ..operations.clients import AdminDeleteClientV3
from ..operations.clients import AdminGetClientsByNamespaceV3
from ..operations.clients import AdminGetClientsbyNamespacebyIDV3
from ..operations.clients import AdminUpdateClientPermissionV3
from ..operations.clients import AdminUpdateClientSecretV3
from ..operations.clients import AdminUpdateClientV3
from ..operations.clients import CreateClient
from ..operations.clients import CreateClientByNamespace
from ..operations.clients import DeleteClient
from ..operations.clients import DeleteClientByNamespace
from ..operations.clients import DeleteClientPermission
from ..operations.clients import GetClient
from ..operations.clients import GetClients
from ..operations.clients import GetClientsbyNamespace
from ..operations.clients import UpdateClient
from ..operations.clients import UpdateClientPermission
from ..operations.clients import UpdateClientSecret


@deprecated
@same_doc_as(AddClientPermission)
def add_client_permission(
    action: int,
    client_id: str,
    resource: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Client Permission (AddClientPermission)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [POST]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions/{resource}/{action}

        method: POST

        tags: ["Clients"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddClientPermission.create(
        action=action,
        client_id=client_id,
        resource=resource,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddClientPermission)
async def add_client_permission_async(
    action: int,
    client_id: str,
    resource: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Client Permission (AddClientPermission)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [POST]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions/{resource}/{action}

        method: POST

        tags: ["Clients"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddClientPermission.create(
        action=action,
        client_id=client_id,
        resource=resource,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddClientPermissionsV3)
def admin_add_client_permissions_v3(
    body: AccountcommonClientPermissionsV3,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Client Permissions (AdminAddClientPermissionsV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT' [UPDATE]'




    action code: 10303

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissionsV3 in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddClientPermissionsV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddClientPermissionsV3)
async def admin_add_client_permissions_v3_async(
    body: AccountcommonClientPermissionsV3,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Client Permissions (AdminAddClientPermissionsV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT' [UPDATE]'




    action code: 10303

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissionsV3 in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddClientPermissionsV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateClientV3)
def admin_create_client_v3(
    body: ClientmodelClientCreationV3Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (AdminCreateClientV3)

    Add a new OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    A new client automatically granted with these scopes: commerce, account, analytics, publishing, social.

    In multi tenant mode, new confidential client will have default client role assigned to it. The role will have all
    permissions to access all APIs that's supported by game server SDK and DS uploader.

    action code: 10301



    Fields Description:




      * clientId : The client ID. e.g f815e5c44f364993961be3b3f26a7bf4


      * clientName : The client name. e.g E-commerce


      * secret : The client's secret. It's empty if the client's type is a public client. Otherwise, the client secret is required


      * namespace : The namespace where the client lives. e.g sample-game


      * redirectUri : Contains the redirect URI used in OAuth callback. e.g https://example.net/platform


      * oauthClientType : The OAuth 2.0 client type. The client type determines whether the authorization needs Proof Of Key Exchange or not.
    A public client type doesn't have a client secret and should use PKCE flow.
    A confidential client type has a client secret and don't use PKCE flow
    Supported oAuthClientType :

        * Public


        * Confidential


      * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


      * baseUri : A base URI of the application. It is used for making sure the token is intended to be used by the client. e.g https://example.net/platform


      * clientPermissions : Contains the client's permissions


      * deletable : The flag to identify whether client is deletable (optional). default value: true


      * clientPlatform : available client platform (optional). default value: ""


        * Playstation


        * Xbox


        * Steam


        * Epic


        * IOS


        * GooglePlay


        * Nintendo


        * Oculus





      * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


      * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


      * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


      * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , default value: SECONDS


      * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , default value: SECONDS

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreationV3Request in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientV3Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10364: client exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateClientV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateClientV3)
async def admin_create_client_v3_async(
    body: ClientmodelClientCreationV3Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (AdminCreateClientV3)

    Add a new OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    A new client automatically granted with these scopes: commerce, account, analytics, publishing, social.

    In multi tenant mode, new confidential client will have default client role assigned to it. The role will have all
    permissions to access all APIs that's supported by game server SDK and DS uploader.

    action code: 10301



    Fields Description:




      * clientId : The client ID. e.g f815e5c44f364993961be3b3f26a7bf4


      * clientName : The client name. e.g E-commerce


      * secret : The client's secret. It's empty if the client's type is a public client. Otherwise, the client secret is required


      * namespace : The namespace where the client lives. e.g sample-game


      * redirectUri : Contains the redirect URI used in OAuth callback. e.g https://example.net/platform


      * oauthClientType : The OAuth 2.0 client type. The client type determines whether the authorization needs Proof Of Key Exchange or not.
    A public client type doesn't have a client secret and should use PKCE flow.
    A confidential client type has a client secret and don't use PKCE flow
    Supported oAuthClientType :

        * Public


        * Confidential


      * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


      * baseUri : A base URI of the application. It is used for making sure the token is intended to be used by the client. e.g https://example.net/platform


      * clientPermissions : Contains the client's permissions


      * deletable : The flag to identify whether client is deletable (optional). default value: true


      * clientPlatform : available client platform (optional). default value: ""


        * Playstation


        * Xbox


        * Steam


        * Epic


        * IOS


        * GooglePlay


        * Nintendo


        * Oculus





      * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


      * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


      * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


      * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , default value: SECONDS


      * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , default value: SECONDS

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreationV3Request in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientV3Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10364: client exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateClientV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteClientPermissionV3)
def admin_delete_client_permission_v3(
    action: int,
    client_id: str,
    resource: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client Permission (AdminDeleteClientPermissionV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
    action code : 10304

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientPermissionV3.create(
        action=action,
        client_id=client_id,
        resource=resource,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteClientPermissionV3)
async def admin_delete_client_permission_v3_async(
    action: int,
    client_id: str,
    resource: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client Permission (AdminDeleteClientPermissionV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'
    action code : 10304

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientPermissionV3.create(
        action=action,
        client_id=client_id,
        resource=resource,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteClientV3)
def admin_delete_client_v3(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client (AdminDeleteClientV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]'
    action code : 10310

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)

        409: Conflict - RestErrorResponse (20009: request_conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteClientV3)
async def admin_delete_client_v3_async(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client (AdminDeleteClientV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]'
    action code : 10310

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)

        409: Conflict - RestErrorResponse (20009: request_conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetClientsByNamespaceV3)
def admin_get_clients_by_namespace_v3(
    client_id: Optional[str] = None,
    client_name: Optional[str] = None,
    client_type: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace (AdminGetClientsByNamespaceV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'




    action code: 10308

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: GET

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) OPTIONAL str in query

        client_name: (clientName) OPTIONAL str in query

        client_type: (clientType) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ClientmodelClientsV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsByNamespaceV3.create(
        client_id=client_id,
        client_name=client_name,
        client_type=client_type,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetClientsByNamespaceV3)
async def admin_get_clients_by_namespace_v3_async(
    client_id: Optional[str] = None,
    client_name: Optional[str] = None,
    client_type: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace (AdminGetClientsByNamespaceV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'




    action code: 10308

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: GET

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) OPTIONAL str in query

        client_name: (clientName) OPTIONAL str in query

        client_type: (clientType) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ClientmodelClientsV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsByNamespaceV3.create(
        client_id=client_id,
        client_name=client_name,
        client_type=client_type,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetClientsbyNamespacebyIDV3)
def admin_get_clientsby_namespaceby_idv3(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace and client id. Multi tenant mode allows admin portal client to be accessible regardless of namespace path. (AdminGetClientsbyNamespacebyIDV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'
    action code: 10309

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: GET

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsbyNamespacebyIDV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetClientsbyNamespacebyIDV3)
async def admin_get_clientsby_namespaceby_idv3_async(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace and client id. Multi tenant mode allows admin portal client to be accessible regardless of namespace path. (AdminGetClientsbyNamespacebyIDV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'
    action code: 10309

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: GET

        tags: ["Clients"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsbyNamespacebyIDV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateClientPermissionV3)
def admin_update_client_permission_v3(
    body: AccountcommonClientPermissionsV3,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Permissions (AdminUpdateClientPermissionV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'




    action code: 10307

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissionsV3 in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientPermissionV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateClientPermissionV3)
async def admin_update_client_permission_v3_async(
    body: AccountcommonClientPermissionsV3,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Permissions (AdminUpdateClientPermissionV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'




    action code: 10307

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissionsV3 in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientPermissionV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateClientSecretV3)
def admin_update_client_secret_v3(
    body: ClientmodelV3ClientUpdateSecretRequest,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Secret (AdminUpdateClientSecretV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelV3ClientUpdateSecretRequest in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientSecretV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateClientSecretV3)
async def admin_update_client_secret_v3_async(
    body: ClientmodelV3ClientUpdateSecretRequest,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Secret (AdminUpdateClientSecretV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelV3ClientUpdateSecretRequest in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientSecretV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateClientV3)
def admin_update_client_v3(
    body: ClientmodelClientUpdateV3Request,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client (AdminUpdateClientV3)

    Updates an OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE].
    Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}

    action code: 10302



    Fields Description:




      * clientName : The client name. It should not be empty if the field exists in the body. e.g E-commerce


      * namespace : The namespace where the client lives. e.g sample-game


      * redirectUri : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform


      * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


      * baseUri : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform


      * clientPermissions : Contains the client's permissions


      * deletable : The flag to identify whether client is deletable (optional). e.g. true


      * clientPlatform : available client platform (optional). default value: "".


        * Playstation


        * Xbox


        * Steam


        * Epic


        * IOS


        * GooglePlay


        * Nintendo


        * Oculus





      * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


      * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


      * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


      * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , will use previous value if not specified


      * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , will use previous value if not specified

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: PATCH

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateV3Request in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateClientV3)
async def admin_update_client_v3_async(
    body: ClientmodelClientUpdateV3Request,
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client (AdminUpdateClientV3)

    Updates an OAuth 2.0 client. Protected by the permission: ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE].
    Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}

    action code: 10302



    Fields Description:




      * clientName : The client name. It should not be empty if the field exists in the body. e.g E-commerce


      * namespace : The namespace where the client lives. e.g sample-game


      * redirectUri : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform


      * audiences : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]


      * baseUri : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform


      * clientPermissions : Contains the client's permissions


      * deletable : The flag to identify whether client is deletable (optional). e.g. true


      * clientPlatform : available client platform (optional). default value: "".


        * Playstation


        * Xbox


        * Steam


        * Epic


        * IOS


        * GooglePlay


        * Nintendo


        * Oculus





      * twoFactorEnabled : The flag to indicate whether 2FA validation is enable for this client. default value: false


      * oauthAccessTokenExpiration : a configurable expiration time for access_token , default value: 0 (mean fetch value from environment variable)


      * oauthRefreshTokenExpiration : a configurable expiration time for refresh_token , default value: 0 (mean fetch value from environment variable)


      * oauthAccessTokenExpirationTimeUnit : a configurable expiration time unit for access_token , will use previous value if not specified


      * oauthRefreshTokenExpirationTimeUnit : a configurable expiration time unit for refresh_token , will use previous value if not specified

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}

        method: PATCH

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateV3Request in body

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateClient)
def create_client(
    body: ClientmodelClientCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (CreateClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [CREATE]'.
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [POST]

    Required Permission(s):
        - CLIENT:ADMIN [CREATE]

    Properties:
        url: /iam/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreateRequest in body

    Responses:
        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Client exists)
    """
    request = CreateClient.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateClient)
async def create_client_async(
    body: ClientmodelClientCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (CreateClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [CREATE]'.
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [POST]

    Required Permission(s):
        - CLIENT:ADMIN [CREATE]

    Properties:
        url: /iam/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreateRequest in body

    Responses:
        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Client exists)
    """
    request = CreateClient.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateClientByNamespace)
def create_client_by_namespace(
    body: ClientmodelClientCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (CreateClientByNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'
    Endpoint migration guide




      * Substitute endpoint: /v3/admin/namespaces/{namespace}/clients [POST]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    Properties:
        url: /iam/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Client exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateClientByNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateClientByNamespace)
async def create_client_by_namespace_async(
    body: ClientmodelClientCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Client (CreateClientByNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'
    Endpoint migration guide




      * Substitute endpoint: /v3/admin/namespaces/{namespace}/clients [POST]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]

    Properties:
        url: /iam/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Client exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateClientByNamespace.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteClient)
def delete_client(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Client (DeleteClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [DELETE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]

    Required Permission(s):
        - CLIENT:ADMIN [DELETE]

    Properties:
        url: /iam/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteClient)
async def delete_client_async(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Client (DeleteClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [DELETE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]

    Required Permission(s):
        - CLIENT:ADMIN [DELETE]

    Properties:
        url: /iam/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteClient.create(
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteClientByNamespace)
def delete_client_by_namespace(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client (DeleteClientByNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]

    Properties:
        url: /iam/namespaces/{namespace}/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteClientByNamespace.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteClientByNamespace)
async def delete_client_by_namespace_async(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client (DeleteClientByNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]

    Properties:
        url: /iam/namespaces/{namespace}/clients/{clientId}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteClientByNamespace.create(
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteClientPermission)
def delete_client_permission(
    action: int,
    client_id: str,
    resource: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client Permission (DeleteClientPermission)

    ## The endpoint is going to be deprecated


    Required permission 'CLIENT:ADMIN [UPDATE]'

    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} [DELETE]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions/{resource}/{action}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteClientPermission.create(
        action=action,
        client_id=client_id,
        resource=resource,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteClientPermission)
async def delete_client_permission_async(
    action: int,
    client_id: str,
    resource: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client Permission (DeleteClientPermission)

    ## The endpoint is going to be deprecated


    Required permission 'CLIENT:ADMIN [UPDATE]'

    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} [DELETE]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions/{resource}/{action}

        method: DELETE

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        client_id: (clientId) REQUIRED str in path

        resource: (resource) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteClientPermission.create(
        action=action,
        client_id=client_id,
        resource=resource,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetClient)
def get_client(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Client (GetClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT [READ]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [GET]

    Required Permission(s):
        - CLIENT [READ]

    Properties:
        url: /iam/clients/{clientId}

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetClient)
async def get_client_async(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Client (GetClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT [READ]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [GET]

    Required Permission(s):
        - CLIENT [READ]

    Properties:
        url: /iam/clients/{clientId}

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetClient.create(
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetClients)
def get_clients(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Get All Clients (GetClients)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT [READ]'.

    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]

    Required Permission(s):
        - CLIENT [READ]

    Properties:
        url: /iam/clients

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[ClientmodelClientResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetClients.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetClients)
async def get_clients_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get All Clients (GetClients)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT [READ]'.

    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]

    Required Permission(s):
        - CLIENT [READ]

    Properties:
        url: /iam/clients

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[ClientmodelClientResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetClients.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetClientsbyNamespace)
def get_clientsby_namespace(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace (GetClientsbyNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'NAMESPACE:{namespace}:CLIENT [READ]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]

    Required Permission(s):
        - NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/namespaces/{namespace}/clients

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ClientmodelClientResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetClientsbyNamespace.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetClientsbyNamespace)
async def get_clientsby_namespace_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get clients by namespace (GetClientsbyNamespace)

    ## The endpoint is going to be deprecated


    Required permission 'NAMESPACE:{namespace}:CLIENT [READ]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients [GET]

    Required Permission(s):
        - NAMESPACE:{namespace}:CLIENT [READ]

    Properties:
        url: /iam/namespaces/{namespace}/clients

        method: GET

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ClientmodelClientResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetClientsbyNamespace.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateClient)
def update_client(
    body: ClientmodelClientUpdateRequest,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client (UpdateClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [PATCH]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateRequest in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClient.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateClient)
async def update_client_async(
    body: ClientmodelClientUpdateRequest,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client (UpdateClient)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/clients/{clientId} [PATCH]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateRequest in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        200: OK - ClientmodelClientResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClient.create(
        body=body,
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateClientPermission)
def update_client_permission(
    body: AccountcommonClientPermissions,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Permissions (UpdateClientPermission)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissions in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClientPermission.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateClientPermission)
async def update_client_permission_async(
    body: AccountcommonClientPermissions,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Permissions (UpdateClientPermission)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissions in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClientPermission.create(
        body=body,
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateClientSecret)
def update_client_secret(
    body: ClientmodelClientUpdateSecretRequest,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Secret (UpdateClientSecret)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret [PUT]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/secret

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateSecretRequest in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClientSecret.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateClientSecret)
async def update_client_secret_async(
    body: ClientmodelClientUpdateSecretRequest,
    client_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Client Secret (UpdateClientSecret)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/{clientId}/secret [PUT]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/secret

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientUpdateSecretRequest in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateClientSecret.create(
        body=body,
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
