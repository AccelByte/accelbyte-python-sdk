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
from ..models import RestErrorResponse
from ..models import RestapiErrorResponse

from ..operations.clients import AddClientPermission
from ..operations.clients import AdminAddClientPermissionsV3
from ..operations.clients import AdminCreateClientV3
from ..operations.clients import AdminDeleteClientPermissionV3
from ..operations.clients import AdminDeleteClientV3
from ..operations.clients import AdminGetClientsByNamespaceV3
from ..operations.clients import AdminGetClientsbyNamespacebyIDV3
from ..operations.clients import AdminUpdateClientPermissionV3
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


@same_doc_as(AddClientPermission)
def add_client_permission(client_id: str, resource: str, action: int, x_additional_headers: Optional[Dict[str, str]] = None):
    request = AddClientPermission.create(
        client_id=client_id,
        resource=resource,
        action=action,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminAddClientPermissionsV3)
def admin_add_client_permissions_v3(body: AccountcommonClientPermissionsV3, client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddClientPermissionsV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminCreateClientV3)
def admin_create_client_v3(body: ClientmodelClientCreationV3Request, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateClientV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteClientPermissionV3)
def admin_delete_client_permission_v3(client_id: str, resource: str, action: int, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientPermissionV3.create(
        client_id=client_id,
        resource=resource,
        action=action,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteClientV3)
def admin_delete_client_v3(client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteClientV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetClientsByNamespaceV3)
def admin_get_clients_by_namespace_v3(limit: Optional[int] = None, after: Optional[str] = None, before: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsByNamespaceV3.create(
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetClientsbyNamespacebyIDV3)
def admin_get_clientsby_namespaceby_idv3(client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetClientsbyNamespacebyIDV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateClientPermissionV3)
def admin_update_client_permission_v3(body: AccountcommonClientPermissionsV3, client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientPermissionV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateClientV3)
def admin_update_client_v3(body: ClientmodelClientUpdateV3Request, client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateClientV3.create(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(CreateClient)
def create_client(body: ClientmodelClientCreateRequest, x_additional_headers: Optional[Dict[str, str]] = None):
    request = CreateClient.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateClientByNamespace)
def create_client_by_namespace(body: ClientmodelClientCreateRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateClientByNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(DeleteClient)
def delete_client(client_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DeleteClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteClientByNamespace)
def delete_client_by_namespace(client_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteClientByNamespace.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteClientPermission)
def delete_client_permission(client_id: str, resource: str, action: int, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DeleteClientPermission.create(
        client_id=client_id,
        resource=resource,
        action=action,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetClient)
def get_client(client_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetClient.create(
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(GetClients)
def get_clients(x_additional_headers: Optional[Dict[str, str]] = None):
    request = GetClients.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetClientsbyNamespace)
def get_clientsby_namespace(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetClientsbyNamespace.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateClient)
def update_client(body: ClientmodelClientUpdateRequest, client_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateClient.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateClientPermission)
def update_client_permission(body: AccountcommonClientPermissions, client_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateClientPermission.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateClientSecret)
def update_client_secret(body: ClientmodelClientUpdateSecretRequest, client_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateClientSecret.create(
        body=body,
        client_id=client_id,
    )
    return run_request(request, additional_headers=x_additional_headers)
