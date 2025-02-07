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

from ..models import RestapiAdminAllReasonsResponse
from ..models import RestapiAdminReasonListResponse
from ..models import RestapiAdminReasonResponse
from ..models import RestapiCreateReasonGroupRequest
from ..models import RestapiCreateReasonRequest
from ..models import RestapiErrorResponse
from ..models import RestapiReasonGroupListResponse
from ..models import RestapiReasonGroupResponse
from ..models import RestapiUnusedReasonListResponse
from ..models import RestapiUpdateReasonGroupRequest

from ..operations.admin_reasons import AdminGetAllReasons
from ..operations.admin_reasons import AdminGetReason
from ..operations.admin_reasons import AdminGetReasons
from ..operations.admin_reasons import AdminGetUnusedReasons
from ..operations.admin_reasons import AdminListReasonGroups
from ..operations.admin_reasons import CreateReason
from ..operations.admin_reasons import CreateReasonGroup
from ..operations.admin_reasons import DeleteReason
from ..operations.admin_reasons import DeleteReasonGroup
from ..operations.admin_reasons import GetReasonGroup
from ..operations.admin_reasons import UpdateReason
from ..operations.admin_reasons import UpdateReasonGroup


@same_doc_as(AdminGetAllReasons)
def admin_get_all_reasons(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all reasons (adminGetAllReasons)

    This endpoint get all reasons without pagination.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/all

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminAllReasonsResponse (OK)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllReasons.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllReasons)
async def admin_get_all_reasons_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all reasons (adminGetAllReasons)

    This endpoint get all reasons without pagination.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/all

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminAllReasonsResponse (OK)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllReasons.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetReason)
def admin_get_reason(
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a single reason (adminGetReason)

    This endpoint get a single reason.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminReasonResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetReason.create(
        reason_id=reason_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetReason)
async def admin_get_reason_async(
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a single reason (adminGetReason)

    This endpoint get a single reason.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminReasonResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetReason.create(
        reason_id=reason_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetReasons)
def admin_get_reasons(
    group: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    title: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons (adminGetReasons)

    This endpoint get reasons with pagination

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group: (group) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        title: (title) OPTIONAL str in query

    Responses:
        200: OK - RestapiAdminReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetReasons.create(
        group=group,
        limit=limit,
        offset=offset,
        title=title,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetReasons)
async def admin_get_reasons_async(
    group: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    title: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons (adminGetReasons)

    This endpoint get reasons with pagination

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group: (group) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        title: (title) OPTIONAL str in query

    Responses:
        200: OK - RestapiAdminReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetReasons.create(
        group=group,
        limit=limit,
        offset=offset,
        title=title,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUnusedReasons)
def admin_get_unused_reasons(
    category: str,
    extension_category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons that not used by moderation rules (adminGetUnusedReasons)

    This endpoint get reasons not used by moderation rules.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/unused

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        extension_category: (extensionCategory) OPTIONAL str in query

        category: (category) REQUIRED str in query

    Responses:
        200: OK - RestapiUnusedReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUnusedReasons.create(
        category=category,
        extension_category=extension_category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUnusedReasons)
async def admin_get_unused_reasons_async(
    category: str,
    extension_category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of reasons that not used by moderation rules (adminGetUnusedReasons)

    This endpoint get reasons not used by moderation rules.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/unused

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        extension_category: (extensionCategory) OPTIONAL str in query

        category: (category) REQUIRED str in query

    Responses:
        200: OK - RestapiUnusedReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUnusedReasons.create(
        category=category,
        extension_category=extension_category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListReasonGroups)
def admin_list_reason_groups(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reason groups under a namespace (adminListReasonGroups)

    Return list of reason groups ID and title under given namespace.
    To fetch the reasons inside a group, use get reason group endpoint.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReasonGroupListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListReasonGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListReasonGroups)
async def admin_list_reason_groups_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reason groups under a namespace (adminListReasonGroups)

    Return list of reason groups ID and title under given namespace.
    To fetch the reasons inside a group, use get reason group endpoint.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReasonGroupListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListReasonGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateReason)
def create_reason(
    body: RestapiCreateReasonRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a report reason (createReason)

    This endpoint create a reason for a namespace.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons

        method: POST

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiAdminReasonResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReason.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateReason)
async def create_reason_async(
    body: RestapiCreateReasonRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a report reason (createReason)

    This endpoint create a reason for a namespace.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons

        method: POST

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiAdminReasonResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReason.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateReasonGroup)
def create_reason_group(
    body: RestapiCreateReasonGroupRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reason group (createReasonGroup)

    Create a reason group for easier query. You can query reasons by specifying
    the group title in the list reasons query. Reason group title is case insensitive,
    meaning you can't have **reason** if you already create a reason titled **Reason**

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups

        method: POST

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiReasonGroupResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReasonGroup.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateReasonGroup)
async def create_reason_group_async(
    body: RestapiCreateReasonGroupRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reason group (createReasonGroup)

    Create a reason group for easier query. You can query reasons by specifying
    the group title in the list reasons query. Reason group title is case insensitive,
    meaning you can't have **reason** if you already create a reason titled **Reason**

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups

        method: POST

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiReasonGroupResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReasonGroup.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteReason)
def delete_reason(
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a report reason (deleteReason)

    This endpoint delete a reason for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: DELETE

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        204: No Content -

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReason.create(
        reason_id=reason_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteReason)
async def delete_reason_async(
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a report reason (deleteReason)

    This endpoint delete a reason for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: DELETE

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        204: No Content -

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReason.create(
        reason_id=reason_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteReasonGroup)
def delete_reason_group(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reason group (deleteReasonGroup)

    This endpoint delete a reason group for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: DELETE

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReasonGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteReasonGroup)
async def delete_reason_group_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reason group (deleteReasonGroup)

    This endpoint delete a reason group for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: DELETE

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReasonGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetReasonGroup)
def get_reason_group(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get reason group (getReasonGroup)

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiReasonGroupResponse

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReasonGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetReasonGroup)
async def get_reason_group_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get reason group (getReasonGroup)

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiReasonGroupResponse

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReasonGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateReason)
def update_reason(
    body: RestapiCreateReasonRequest,
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a report reason (updateReason)

    This endpoint update a reason for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: PATCH

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonRequest in body

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminReasonResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReason.create(
        body=body,
        reason_id=reason_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateReason)
async def update_reason_async(
    body: RestapiCreateReasonRequest,
    reason_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a report reason (updateReason)

    This endpoint update a reason for a namespace with ID.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}

        method: PATCH

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiCreateReasonRequest in body

        namespace: (namespace) REQUIRED str in path

        reason_id: (reasonId) REQUIRED str in path

    Responses:
        200: OK - RestapiAdminReasonResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReason.create(
        body=body,
        reason_id=reason_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateReasonGroup)
def update_reason_group(
    body: RestapiUpdateReasonGroupRequest,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reason group (updateReasonGroup)

    Reason group title is case insensitive, meaning you can't have **reason** if you already create a reason titled **Reason**
    If no reasonIds passed when updating, the current reasons under the reason group will be kept (reasons will not be removed from the group).

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: PATCH

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiUpdateReasonGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiReasonGroupResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReasonGroup.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateReasonGroup)
async def update_reason_group_async(
    body: RestapiUpdateReasonGroupRequest,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reason group (updateReasonGroup)

    Reason group title is case insensitive, meaning you can't have **reason** if you already create a reason titled **Reason**
    If no reasonIds passed when updating, the current reasons under the reason group will be kept (reasons will not be removed from the group).

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}

        method: PATCH

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiUpdateReasonGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiReasonGroupResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReasonGroup.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
