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
    request = DeleteClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteClient)
async def delete_client_async(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = GetClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetClient)
async def get_client_async(
    client_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetClient.create(
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetClients)
def get_clients(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = GetClients.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetClients)
async def get_clients_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = UpdateClientSecret.create(
        body=body,
        client_id=client_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
