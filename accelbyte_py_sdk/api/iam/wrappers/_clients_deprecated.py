# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

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

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import AccountcommonClientPermissions
from ..models import ClientmodelClientCreateRequest
from ..models import ClientmodelClientCreationResponse
from ..models import ClientmodelClientResponse
from ..models import ClientmodelClientUpdateRequest
from ..models import ClientmodelClientUpdateSecretRequest

from ..operations.clients_deprecated import AddClientPermission
from ..operations.clients_deprecated import CreateClient
from ..operations.clients_deprecated import CreateClientByNamespace
from ..operations.clients_deprecated import DeleteClient
from ..operations.clients_deprecated import DeleteClientByNamespace
from ..operations.clients_deprecated import DeleteClientPermission
from ..operations.clients_deprecated import GetClient
from ..operations.clients_deprecated import GetClients
from ..operations.clients_deprecated import GetClientsbyNamespace
from ..operations.clients_deprecated import UpdateClient
from ..operations.clients_deprecated import UpdateClientPermission
from ..operations.clients_deprecated import UpdateClientSecret


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
