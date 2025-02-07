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

from ..models import ModelRoleOverrideResponse
from ..models import ModelRoleOverrideSourceResponse
from ..models import ModelRoleOverrideStatsUpdateRequest
from ..models import ModelRoleOverrideUpdateRequest
from ..models import ModelRolePermissionResponseV3
from ..models import RestErrorResponse

from ..operations.override_role_config_v3 import AdminChangeRoleOverrideConfigStatusV3
from ..operations.override_role_config_v3 import (
    AdminChangeRoleOverrideConfigStatusV3IdentityEnum,
)
from ..operations.override_role_config_v3 import AdminGetRoleNamespacePermissionV3
from ..operations.override_role_config_v3 import AdminGetRoleOverrideConfigV3
from ..operations.override_role_config_v3 import (
    AdminGetRoleOverrideConfigV3IdentityEnum,
)
from ..operations.override_role_config_v3 import AdminGetRoleSourceV3
from ..operations.override_role_config_v3 import AdminGetRoleSourceV3IdentityEnum
from ..operations.override_role_config_v3 import AdminUpdateRoleOverrideConfigV3
from ..operations.override_role_config_v3 import (
    AdminUpdateRoleOverrideConfigV3IdentityEnum,
)


@same_doc_as(AdminChangeRoleOverrideConfigStatusV3)
def admin_change_role_override_config_status_v3(
    body: ModelRoleOverrideStatsUpdateRequest,
    identity: Union[str, AdminChangeRoleOverrideConfigStatusV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change role override config active status (AdminChangeRoleOverrideConfigStatusV3)

    Enable or disable the target role override feature in path namespace.
    Note:
    This API has upsert behavior, if there is no config yet, it will create a new one first.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/status

        method: PATCH

        tags: ["Override Role Config v3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleOverrideStatsUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChangeRoleOverrideConfigStatusV3.create(
        body=body,
        identity=identity,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChangeRoleOverrideConfigStatusV3)
async def admin_change_role_override_config_status_v3_async(
    body: ModelRoleOverrideStatsUpdateRequest,
    identity: Union[str, AdminChangeRoleOverrideConfigStatusV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change role override config active status (AdminChangeRoleOverrideConfigStatusV3)

    Enable or disable the target role override feature in path namespace.
    Note:
    This API has upsert behavior, if there is no config yet, it will create a new one first.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/status

        method: PATCH

        tags: ["Override Role Config v3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleOverrideStatsUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChangeRoleOverrideConfigStatusV3.create(
        body=body,
        identity=identity,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleNamespacePermissionV3)
def admin_get_role_namespace_permission_v3(
    role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role namespace permission (AdminGetRoleNamespacePermissionV3)

    Get role namespace permission set.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRolePermissionResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleNamespacePermissionV3.create(
        role_id=role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleNamespacePermissionV3)
async def admin_get_role_namespace_permission_v3_async(
    role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role namespace permission (AdminGetRoleNamespacePermissionV3)

    Get role namespace permission set.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRolePermissionResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleNamespacePermissionV3.create(
        role_id=role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleOverrideConfigV3)
def admin_get_role_override_config_v3(
    identity: Union[str, AdminGetRoleOverrideConfigV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role override config (AdminGetRoleOverrideConfigV3)

    Get role override config.
    This API has upsert behavior, if there is no config yet, it will create a new one with inactive status.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleOverrideConfigV3.create(
        identity=identity,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleOverrideConfigV3)
async def admin_get_role_override_config_v3_async(
    identity: Union[str, AdminGetRoleOverrideConfigV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role override config (AdminGetRoleOverrideConfigV3)

    Get role override config.
    This API has upsert behavior, if there is no config yet, it will create a new one with inactive status.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleOverrideConfigV3.create(
        identity=identity,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleSourceV3)
def admin_get_role_source_v3(
    identity: Union[str, AdminGetRoleSourceV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role source permission set (AdminGetRoleSourceV3)

    Get role source permission set.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/source

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideSourceResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleSourceV3.create(
        identity=identity,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleSourceV3)
async def admin_get_role_source_v3_async(
    identity: Union[str, AdminGetRoleSourceV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get role source permission set (AdminGetRoleSourceV3)

    Get role source permission set.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/source

        method: GET

        tags: ["Override Role Config v3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideSourceResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetRoleSourceV3.create(
        identity=identity,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRoleOverrideConfigV3)
def admin_update_role_override_config_v3(
    body: ModelRoleOverrideUpdateRequest,
    identity: Union[str, AdminUpdateRoleOverrideConfigV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update role override config (AdminUpdateRoleOverrideConfigV3)

    This API is for updating role override config.
    Note:
    This API has upsert behavior, if there is no config yet, it will create a new one first.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride

        method: PATCH

        tags: ["Override Role Config v3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleOverrideUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateRoleOverrideConfigV3.create(
        body=body,
        identity=identity,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRoleOverrideConfigV3)
async def admin_update_role_override_config_v3_async(
    body: ModelRoleOverrideUpdateRequest,
    identity: Union[str, AdminUpdateRoleOverrideConfigV3IdentityEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update role override config (AdminUpdateRoleOverrideConfigV3)

    This API is for updating role override config.
    Note:
    This API has upsert behavior, if there is no config yet, it will create a new one first.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride

        method: PATCH

        tags: ["Override Role Config v3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleOverrideUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateRoleOverrideConfigV3.create(
        body=body,
        identity=identity,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
