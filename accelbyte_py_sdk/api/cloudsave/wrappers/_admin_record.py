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

from ..models import ModelsAdminGameRecordRequest
from ..models import ModelsAdminGameRecordResponse
from ..models import ModelsAdminPlayerRecordRequest
from ..models import ModelsAdminPlayerRecordResponse
from ..models import ModelsBulkGetAdminGameRecordRequest
from ..models import ModelsBulkGetAdminGameRecordResponse
from ..models import ModelsBulkGetAdminPlayerRecordRequest
from ..models import ModelsBulkGetAdminPlayerRecordResponse
from ..models import ModelsBulkUserIDsRequest
from ..models import ModelsListAdminGameRecordKeysResponse
from ..models import ModelsListAdminPlayerRecordKeysResponse
from ..models import ModelsResponseError

from ..operations.admin_record import AdminBulkGetAdminGameRecordV1
from ..operations.admin_record import AdminBulkGetAdminPlayerRecordV1
from ..operations.admin_record import AdminDeleteAdminGameRecordV1
from ..operations.admin_record import AdminDeleteAdminPlayerRecordV1
from ..operations.admin_record import AdminGetAdminGameRecordV1
from ..operations.admin_record import AdminGetAdminPlayerRecordV1
from ..operations.admin_record import AdminListAdminGameRecordV1
from ..operations.admin_record import AdminListAdminUserRecordsV1
from ..operations.admin_record import AdminPostAdminGameRecordV1
from ..operations.admin_record import AdminPostPlayerAdminRecordV1
from ..operations.admin_record import AdminPutAdminGameRecordV1
from ..operations.admin_record import AdminPutAdminPlayerRecordV1
from ..operations.admin_record import BulkGetAdminPlayerRecordByUserIdsV1


@same_doc_as(AdminBulkGetAdminGameRecordV1)
def admin_bulk_get_admin_game_record_v1(
    body: ModelsBulkGetAdminGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin game records (adminBulkGetAdminGameRecordV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin game records. Maximum key per request 20.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetAdminGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminGameRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkGetAdminGameRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkGetAdminGameRecordV1)
async def admin_bulk_get_admin_game_record_v1_async(
    body: ModelsBulkGetAdminGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin game records (adminBulkGetAdminGameRecordV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin game records. Maximum key per request 20.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetAdminGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminGameRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkGetAdminGameRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkGetAdminPlayerRecordV1)
def admin_bulk_get_admin_player_record_v1(
    body: ModelsBulkGetAdminPlayerRecordRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin player records (adminBulkGetAdminPlayerRecordV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
    --------------------|---------------------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin player records. Maximum key per request 20.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetAdminPlayerRecordRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkGetAdminPlayerRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkGetAdminPlayerRecordV1)
async def admin_bulk_get_admin_player_record_v1_async(
    body: ModelsBulkGetAdminPlayerRecordRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin player records (adminBulkGetAdminPlayerRecordV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
    --------------------|---------------------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin player records. Maximum key per request 20.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetAdminPlayerRecordRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkGetAdminPlayerRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAdminGameRecordV1)
def admin_delete_admin_game_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin game record (adminDeleteAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    This endpoints delete game record in namespace-level

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: DELETE

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteAdminGameRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAdminGameRecordV1)
async def admin_delete_admin_game_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin game record (adminDeleteAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    This endpoints delete game record in namespace-level

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: DELETE

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteAdminGameRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAdminPlayerRecordV1)
def admin_delete_admin_player_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin player record (adminDeleteAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    Delete a record (arbitrary JSON data) in user-level with given key.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: DELETE

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteAdminPlayerRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAdminPlayerRecordV1)
async def admin_delete_admin_player_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin player record (adminDeleteAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    Delete a record (arbitrary JSON data) in user-level with given key.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: DELETE

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteAdminPlayerRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAdminGameRecordV1)
def admin_get_admin_game_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin game record (adminGetAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a record by its key in namespace-level.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGameRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAdminGameRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAdminGameRecordV1)
async def admin_get_admin_game_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin game record (adminGetAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a record by its key in namespace-level.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGameRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAdminGameRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAdminPlayerRecordV1)
def admin_get_admin_player_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin player record (adminGetAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a admin record in user-level (arbitrary JSON data) by its key.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminPlayerRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAdminPlayerRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAdminPlayerRecordV1)
async def admin_get_admin_player_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin player record (adminGetAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a admin record in user-level (arbitrary JSON data) by its key.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminPlayerRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAdminPlayerRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAdminGameRecordV1)
def admin_list_admin_game_record_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin game record (adminListAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of records key by namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAdminGameRecordKeysResponse (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAdminGameRecordV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAdminGameRecordV1)
async def admin_list_admin_game_record_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin game record (adminListAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of records key by namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAdminGameRecordKeysResponse (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAdminGameRecordV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAdminUserRecordsV1)
def admin_list_admin_user_records_v1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin player record (adminListAdminUserRecordsV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of admin player records key and userID under given namespace.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListAdminPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAdminUserRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAdminUserRecordsV1)
async def admin_list_admin_user_records_v1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin player record (adminListAdminUserRecordsV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of admin player records key and userID under given namespace.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords

        method: GET

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListAdminPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAdminUserRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostAdminGameRecordV1)
def admin_post_admin_game_record_v1(
    body: ModelsAdminGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append admin game record (adminPostAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin game record or append the existing admin game record.

     Append example:

    Example 1
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data1": "value", "data2": "new value" }



    Example 2
    - Existing JSON:



        { "data1": { "data2": "value" }


    - New JSON:



        { "data1": { "data3": "new value" }


    - Result:



        { "data1": { "data2": "value", "data3": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsAdminGameRecordResponse (Record in namespace-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostAdminGameRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostAdminGameRecordV1)
async def admin_post_admin_game_record_v1_async(
    body: ModelsAdminGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append admin game record (adminPostAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin game record or append the existing admin game record.

     Append example:

    Example 1
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data1": "value", "data2": "new value" }



    Example 2
    - Existing JSON:



        { "data1": { "data2": "value" }


    - New JSON:



        { "data1": { "data3": "new value" }


    - Result:



        { "data1": { "data2": "value", "data3": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsAdminGameRecordResponse (Record in namespace-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostAdminGameRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostPlayerAdminRecordV1)
def admin_post_player_admin_record_v1(
    body: ModelsAdminPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append admin player record (adminPostPlayerAdminRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin player record or append the existing admin game record.

     Append example:

    Example 1
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data1": "value", "data2": "new value" }



    Example 2
    - Existing JSON:



        { "data1": { "data2": "value" }


    - New JSON:



        { "data1": { "data3": "new value" }


    - Result:



        { "data1": { "data2": "value", "data3": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsAdminPlayerRecordResponse (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostPlayerAdminRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostPlayerAdminRecordV1)
async def admin_post_player_admin_record_v1_async(
    body: ModelsAdminPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append admin player record (adminPostPlayerAdminRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin player record or append the existing admin game record.

     Append example:

    Example 1
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data1": "value", "data2": "new value" }



    Example 2
    - Existing JSON:



        { "data1": { "data2": "value" }


    - New JSON:



        { "data1": { "data3": "new value" }


    - Result:



        { "data1": { "data2": "value", "data3": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsAdminPlayerRecordResponse (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostPlayerAdminRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutAdminGameRecordV1)
def admin_put_admin_game_record_v1(
    body: ModelsAdminGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace admin game record (adminPutAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin game record or replace the existing admin game record.

     Append example:

    Example
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data2": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: PUT

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGameRecordResponse (Record saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutAdminGameRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutAdminGameRecordV1)
async def admin_put_admin_game_record_v1_async(
    body: ModelsAdminGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace admin game record (adminPutAdminGameRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin game record or replace the existing admin game record.

     Append example:

    Example
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data2": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}

        method: PUT

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGameRecordResponse (Record saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutAdminGameRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutAdminPlayerRecordV1)
def admin_put_admin_player_record_v1(
    body: ModelsAdminPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace admin player record (adminPutAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin player record or replace the existing admin player record.

     Replace behaviour:
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data2": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: PUT

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminPlayerRecordResponse (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutAdminPlayerRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutAdminPlayerRecordV1)
async def admin_put_admin_player_record_v1_async(
    body: ModelsAdminPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace admin player record (adminPutAdminPlayerRecordV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new admin player record or replace the existing admin player record.

     Replace behaviour:
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data2": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}

        method: PUT

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminPlayerRecordResponse (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutAdminPlayerRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetAdminPlayerRecordByUserIdsV1)
def bulk_get_admin_player_record_by_user_ids_v1(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin player record by multiple user ID (bulkGetAdminPlayerRecordByUserIdsV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin player record by userIds, max allowed 20 at a time.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetAdminPlayerRecordByUserIdsV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetAdminPlayerRecordByUserIdsV1)
async def bulk_get_admin_player_record_by_user_ids_v1_async(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get admin player record by multiple user ID (bulkGetAdminPlayerRecordByUserIdsV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------------
    Required Scope      | `social`





    Bulk get admin player record by userIds, max allowed 20 at a time.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk

        method: POST

        tags: ["AdminRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetAdminPlayerRecordByUserIdsV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
