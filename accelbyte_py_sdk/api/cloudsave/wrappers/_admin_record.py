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

    Bulk get admin game records. Maximum key per request 20.

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

        400: Bad Request - ModelsResponseError (18168: invalid request body | 18169: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18171: record not found)

        500: Internal Server Error - ModelsResponseError (18170: unable to get record | 18172: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Bulk get admin game records. Maximum key per request 20.

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

        400: Bad Request - ModelsResponseError (18168: invalid request body | 18169: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18171: record not found)

        500: Internal Server Error - ModelsResponseError (18170: unable to get record | 18172: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Bulk get admin player records. Maximum key per request 20.

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

        400: Bad Request - ModelsResponseError (18174: invalid request body | 18175: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18177: record not found)

        500: Internal Server Error - ModelsResponseError (18176: unable to get record | 18178: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Bulk get admin player records. Maximum key per request 20.

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

        400: Bad Request - ModelsResponseError (18174: invalid request body | 18175: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18177: record not found)

        500: Internal Server Error - ModelsResponseError (18176: unable to get record | 18178: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This endpoints delete game record in namespace-level

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18167: record not found)

        500: Internal Server Error - ModelsResponseError (18142: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This endpoints delete game record in namespace-level

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18167: record not found)

        500: Internal Server Error - ModelsResponseError (18142: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Delete a record (arbitrary JSON data) in user-level with given key.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18167: record not found)

        500: Internal Server Error - ModelsResponseError (18154: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Delete a record (arbitrary JSON data) in user-level with given key.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18167: record not found)

        500: Internal Server Error - ModelsResponseError (18154: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a record by its key in namespace-level.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18140: record not found)

        500: Internal Server Error - ModelsResponseError (18139: unable to get record | 18138: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a record by its key in namespace-level.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18140: record not found)

        500: Internal Server Error - ModelsResponseError (18139: unable to get record | 18138: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a admin record in user-level (arbitrary JSON data) by its key.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18152: record not found)

        500: Internal Server Error - ModelsResponseError (18151: unable to get record | 18157: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a admin record in user-level (arbitrary JSON data) by its key.

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

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18152: record not found)

        500: Internal Server Error - ModelsResponseError (18151: unable to get record | 18157: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin game record (adminListAdminGameRecordV1)

    Retrieve list of records key by namespace

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

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListAdminGameRecordKeysResponse (Retrieve list of records key by namespace)

        400: Bad Request - ModelsResponseError (18149: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18139: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAdminGameRecordV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAdminGameRecordV1)
async def admin_list_admin_game_record_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin game record (adminListAdminGameRecordV1)

    Retrieve list of records key by namespace

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

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListAdminGameRecordKeysResponse (Retrieve list of records key by namespace)

        400: Bad Request - ModelsResponseError (18149: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18139: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAdminGameRecordV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
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
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin player record (adminListAdminUserRecordsV1)

    Retrieve list of admin player records key and userID under given namespace.

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

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListAdminPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18159: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18160: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAdminUserRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAdminUserRecordsV1)
async def admin_list_admin_user_records_v1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List key of admin player record (adminListAdminUserRecordsV1)

    Retrieve list of admin player records key and userID under given namespace.

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

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListAdminPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18159: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18160: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAdminUserRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
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

    ## Description

    This endpoints will create new admin game record or append the existing admin game record.

    **Append example:**

    Example 1
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data1": "value", "data2": "new value" }`


    Example 2
    - Existing JSON:

    `{ "data1": { "data2": "value" }`

    - New JSON:

    `{ "data1": { "data3": "new value" }`

    - Result:

    `{ "data1": { "data2": "value", "data3": "new value" }`


    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18134: invalid request body | 20002: validation error | 18136: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18135: unable to marshal request body | 20000: internal server error | 18013: unable to save record | 18165: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin game record or append the existing admin game record.

    **Append example:**

    Example 1
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data1": "value", "data2": "new value" }`


    Example 2
    - Existing JSON:

    `{ "data1": { "data2": "value" }`

    - New JSON:

    `{ "data1": { "data3": "new value" }`

    - Result:

    `{ "data1": { "data2": "value", "data3": "new value" }`


    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18134: invalid request body | 20002: validation error | 18136: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18135: unable to marshal request body | 20000: internal server error | 18013: unable to save record | 18165: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin player record or append the existing admin game record.

    **Append example:**

    Example 1
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data1": "value", "data2": "new value" }`


    Example 2
    - Existing JSON:

    `{ "data1": { "data2": "value" }`

    - New JSON:

    `{ "data1": { "data3": "new value" }`

    - Result:

    `{ "data1": { "data2": "value", "data3": "new value" }`


    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18150: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18163: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin player record or append the existing admin game record.

    **Append example:**

    Example 1
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data1": "value", "data2": "new value" }`


    Example 2
    - Existing JSON:

    `{ "data1": { "data2": "value" }`

    - New JSON:

    `{ "data1": { "data3": "new value" }`

    - Result:

    `{ "data1": { "data2": "value", "data3": "new value" }`


    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18150: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18163: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin game record or replace the existing admin game record.

    **Append example:**

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18144: invalid request body | 20002: validation error | 18146: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18145: unable to marshal request body | 20000: internal server error | 18164: unable to decode record | 18147: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin game record or replace the existing admin game record.

    **Append example:**

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18144: invalid request body | 20002: validation error | 18146: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18145: unable to marshal request body | 20000: internal server error | 18164: unable to decode record | 18147: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin player record or replace the existing admin player record.

    **Replace behaviour:**
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18156: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18162: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new admin player record or replace the existing admin player record.

    **Replace behaviour:**
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the admin record.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the admin record.
    action:
    - DELETE: record will be deleted after TTL is reached

    **Request Body Example:**
    ```
    {
    "__META": {
    "tags": ["tag1", "tag2"],
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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

        400: Bad Request - ModelsResponseError (18156: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18162: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Bulk get admin player record by userIds, max allowed 20 at a time.

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

        400: Bad Request - ModelsResponseError (18184: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18186: record not found)

        500: Internal Server Error - ModelsResponseError (18185: unable to get record | 18187: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Bulk get admin player record by userIds, max allowed 20 at a time.

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

        400: Bad Request - ModelsResponseError (18184: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18186: record not found)

        500: Internal Server Error - ModelsResponseError (18185: unable to get record | 18187: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
