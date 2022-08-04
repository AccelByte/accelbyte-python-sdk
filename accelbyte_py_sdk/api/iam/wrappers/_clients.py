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
from ....core import same_doc_as

from ..models import AccountcommonClientPermissionsV3
from ..models import ClientmodelClientCreationV3Request
from ..models import ClientmodelClientUpdateV3Request
from ..models import ClientmodelClientV3Response
from ..models import ClientmodelClientsV3Response
from ..models import ClientmodelV3ClientUpdateSecretRequest
from ..models import RestErrorResponse
from ..models import RestapiErrorResponse

from ..operations.clients import AdminAddClientPermissionsV3
from ..operations.clients import AdminCreateClientV3
from ..operations.clients import AdminDeleteClientPermissionV3
from ..operations.clients import AdminDeleteClientV3
from ..operations.clients import AdminGetClientsByNamespaceV3
from ..operations.clients import AdminGetClientsbyNamespacebyIDV3
from ..operations.clients import AdminUpdateClientPermissionV3
from ..operations.clients import AdminUpdateClientSecretV3
from ..operations.clients import AdminUpdateClientV3


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
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetClientsByNamespaceV3)
async def admin_get_clients_by_namespace_v3_async(
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
