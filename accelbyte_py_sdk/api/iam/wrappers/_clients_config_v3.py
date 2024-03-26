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

from ..models import ClientmodelListClientPermissionSet
from ..models import ClientmodelListTemplatesResponse
from ..models import ClientmodelListUpsertModulesRequest
from ..models import ClientmodelPermissionSetDeleteGroupRequest
from ..models import RestErrorResponse

from ..operations.clients_config_v3 import AdminDeleteConfigPermissionsByGroup
from ..operations.clients_config_v3 import AdminListClientAvailablePermissions
from ..operations.clients_config_v3 import AdminListClientTemplates
from ..operations.clients_config_v3 import AdminUpdateAvailablePermissionsByModule


@same_doc_as(AdminDeleteConfigPermissionsByGroup)
def admin_delete_config_permissions_by_group(
    body: ClientmodelPermissionSetDeleteGroupRequest,
    force_delete: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client config permissions by module and group (AdminDeleteConfigPermissionsByGroup)

    Delete Client config permissions by module and group.

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: DELETE

        tags: ["Clients Config V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelPermissionSetDeleteGroupRequest in body

        force_delete: (forceDelete) OPTIONAL bool in query

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminDeleteConfigPermissionsByGroup.create(
        body=body,
        force_delete=force_delete,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteConfigPermissionsByGroup)
async def admin_delete_config_permissions_by_group_async(
    body: ClientmodelPermissionSetDeleteGroupRequest,
    force_delete: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Client config permissions by module and group (AdminDeleteConfigPermissionsByGroup)

    Delete Client config permissions by module and group.

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: DELETE

        tags: ["Clients Config V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelPermissionSetDeleteGroupRequest in body

        force_delete: (forceDelete) OPTIONAL bool in query

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminDeleteConfigPermissionsByGroup.create(
        body=body,
        force_delete=force_delete,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListClientAvailablePermissions)
def admin_list_client_available_permissions(
    exclude_permissions: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Client available permissions (AdminListClientAvailablePermissions)

    List Client available permissions

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: GET

        tags: ["Clients Config V3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        exclude_permissions: (excludePermissions) OPTIONAL bool in query

    Responses:
        200: OK - ClientmodelListClientPermissionSet (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminListClientAvailablePermissions.create(
        exclude_permissions=exclude_permissions,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListClientAvailablePermissions)
async def admin_list_client_available_permissions_async(
    exclude_permissions: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Client available permissions (AdminListClientAvailablePermissions)

    List Client available permissions

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: GET

        tags: ["Clients Config V3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        exclude_permissions: (excludePermissions) OPTIONAL bool in query

    Responses:
        200: OK - ClientmodelListClientPermissionSet (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminListClientAvailablePermissions.create(
        exclude_permissions=exclude_permissions,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListClientTemplates)
def admin_list_client_templates(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List Client templates (AdminListClientTemplates)

    List client templates

    Properties:
        url: /iam/v3/admin/clientConfig/templates

        method: GET

        tags: ["Clients Config V3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ClientmodelListTemplatesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminListClientTemplates.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListClientTemplates)
async def admin_list_client_templates_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List Client templates (AdminListClientTemplates)

    List client templates

    Properties:
        url: /iam/v3/admin/clientConfig/templates

        method: GET

        tags: ["Clients Config V3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ClientmodelListTemplatesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminListClientTemplates.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAvailablePermissionsByModule)
def admin_update_available_permissions_by_module(
    body: ClientmodelListUpsertModulesRequest,
    force_delete: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update or create Client permissions module (AdminUpdateAvailablePermissionsByModule)

    Update Client available permissions, if module or group not exists, it will auto create.

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: PUT

        tags: ["Clients Config V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelListUpsertModulesRequest in body

        force_delete: (forceDelete) OPTIONAL bool in query

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminUpdateAvailablePermissionsByModule.create(
        body=body,
        force_delete=force_delete,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAvailablePermissionsByModule)
async def admin_update_available_permissions_by_module_async(
    body: ClientmodelListUpsertModulesRequest,
    force_delete: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update or create Client permissions module (AdminUpdateAvailablePermissionsByModule)

    Update Client available permissions, if module or group not exists, it will auto create.

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: PUT

        tags: ["Clients Config V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelListUpsertModulesRequest in body

        force_delete: (forceDelete) OPTIONAL bool in query

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminUpdateAvailablePermissionsByModule.create(
        body=body,
        force_delete=force_delete,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
