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

from ..models import AccountcommonBanReasons
from ..models import AccountcommonBanReasonsV3
from ..models import AccountcommonBans
from ..models import AccountcommonBansV3
from ..models import ModelBulkBanCreateRequestV3
from ..models import ModelBulkUnbanCreateRequestV3
from ..models import ModelGetUserBanV3Response
from ..models import ModelListBulkUserBanResponseV3
from ..models import RestErrorResponse

from ..operations.bans import AdminBanUserBulkV3
from ..operations.bans import AdminGetBannedUsersV3
from ..operations.bans import AdminGetBansTypeV3
from ..operations.bans import AdminGetBansTypeWithNamespaceV3
from ..operations.bans import AdminGetListBanReasonV3
from ..operations.bans import AdminUnbanUserBulkV3
from ..operations.bans import GetBansType
from ..operations.bans import GetListBanReason


@same_doc_as(AdminBanUserBulkV3)
def admin_ban_user_bulk_v3(
    body: ModelBulkBanCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk ban user (AdminBanUserBulkV3)

    Bulk ban user with specific type of ban. Ban types and reason can be queried. The maximum limit value is 100 userIDs
    action code : 10141

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users

        method: POST

        tags: ["Bans"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkBanCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelListBulkUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserBulkV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBanUserBulkV3)
async def admin_ban_user_bulk_v3_async(
    body: ModelBulkBanCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk ban user (AdminBanUserBulkV3)

    Bulk ban user with specific type of ban. Ban types and reason can be queried. The maximum limit value is 100 userIDs
    action code : 10141

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users

        method: POST

        tags: ["Bans"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkBanCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelListBulkUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserBulkV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBannedUsersV3)
def admin_get_banned_users_v3(
    active_only: Optional[bool] = None,
    ban_type: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of user filtered by ban types (AdminGetBannedUsersV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        ban_type: (banType) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBannedUsersV3.create(
        active_only=active_only,
        ban_type=ban_type,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBannedUsersV3)
async def admin_get_banned_users_v3_async(
    active_only: Optional[bool] = None,
    ban_type: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of user filtered by ban types (AdminGetBannedUsersV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        ban_type: (banType) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBannedUsersV3.create(
        active_only=active_only,
        ban_type=ban_type,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBansTypeV3)
def admin_get_bans_type_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban types (AdminGetBansTypeV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/bans

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBansV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetBansTypeV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBansTypeV3)
async def admin_get_bans_type_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban types (AdminGetBansTypeV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/bans

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBansV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetBansTypeV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBansTypeWithNamespaceV3)
def admin_get_bans_type_with_namespace_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of ban types (AdminGetBansTypeWithNamespaceV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bantypes

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountcommonBansV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBansTypeWithNamespaceV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBansTypeWithNamespaceV3)
async def admin_get_bans_type_with_namespace_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of ban types (AdminGetBansTypeWithNamespaceV3)

    Ban type is the code
    available for ban assignment. It is applicable globally for any namespace.
    action code : 10201

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bantypes

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountcommonBansV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBansTypeWithNamespaceV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetListBanReasonV3)
def admin_get_list_ban_reason_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban reasons (AdminGetListBanReasonV3)

    Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
    action code : 10202

    Properties:
        url: /iam/v3/admin/bans/reasons

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBanReasonsV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetListBanReasonV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListBanReasonV3)
async def admin_get_list_ban_reason_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban reasons (AdminGetListBanReasonV3)

    Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
    action code : 10202

    Properties:
        url: /iam/v3/admin/bans/reasons

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBanReasonsV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetListBanReasonV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUnbanUserBulkV3)
def admin_unban_user_bulk_v3(
    body: ModelBulkUnbanCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk unban user (AdminUnbanUserBulkV3)

    disable bulk ban user. The maximum limit value is 100
    action code : 10142

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users/disabled

        method: PATCH

        tags: ["Bans"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkUnbanCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelListBulkUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanUserBulkV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUnbanUserBulkV3)
async def admin_unban_user_bulk_v3_async(
    body: ModelBulkUnbanCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk unban user (AdminUnbanUserBulkV3)

    disable bulk ban user. The maximum limit value is 100
    action code : 10142

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/bans/users/disabled

        method: PATCH

        tags: ["Bans"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkUnbanCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelListBulkUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanUserBulkV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetBansType)
def get_bans_type(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Get list of ban types (GetBansType)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/bans [GET]_**

    Properties:
        url: /iam/bans

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBans (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetBansType.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetBansType)
async def get_bans_type_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban types (GetBansType)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/bans [GET]_**

    Properties:
        url: /iam/bans

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBans (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetBansType.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListBanReason)
def get_list_ban_reason(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban reasons (GetListBanReason)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/bans/reasons [GET]_**

    Properties:
        url: /iam/bans/reasons

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBanReasons (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetListBanReason.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListBanReason)
async def get_list_ban_reason_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ban reasons (GetListBanReason)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/bans/reasons [GET]_**

    Properties:
        url: /iam/bans/reasons

        method: GET

        tags: ["Bans"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - AccountcommonBanReasons (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = GetListBanReason.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
