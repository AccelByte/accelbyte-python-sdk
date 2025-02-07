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

from ..models import ModelsBinaryRecordRequest
from ..models import ModelsListPlayerBinaryRecordsResponse
from ..models import ModelsPlayerBinaryRecordCreate
from ..models import ModelsPlayerBinaryRecordMetadataRequest
from ..models import ModelsPlayerBinaryRecordResponse
from ..models import ModelsResponseError
from ..models import ModelsUploadBinaryRecordRequest
from ..models import ModelsUploadBinaryRecordResponse

from ..operations.admin_player_binary_record import AdminDeletePlayerBinaryRecordV1
from ..operations.admin_player_binary_record import AdminGetPlayerBinaryRecordV1
from ..operations.admin_player_binary_record import AdminListPlayerBinaryRecordsV1
from ..operations.admin_player_binary_record import AdminPostPlayerBinaryPresignedURLV1
from ..operations.admin_player_binary_record import AdminPostPlayerBinaryRecordV1
from ..operations.admin_player_binary_record import AdminPutPlayerBinaryRecorMetadataV1
from ..operations.admin_player_binary_record import AdminPutPlayerBinaryRecordV1
from ..models import ModelsPlayerBinaryRecordCreateSetByEnum
from ..models import ModelsPlayerBinaryRecordMetadataRequestSetByEnum
from ..models import ModelsPlayerBinaryRecordResponseSetByEnum


@same_doc_as(AdminDeletePlayerBinaryRecordV1)
def admin_delete_player_binary_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player binary record (adminDeletePlayerBinaryRecordV1)

    Delete a player binary record.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: DELETE

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18338: record not found)

        500: Internal Server Error - ModelsResponseError (18336: unable to delete record | 18338: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlayerBinaryRecordV1)
async def admin_delete_player_binary_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player binary record (adminDeletePlayerBinaryRecordV1)

    Delete a player binary record.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: DELETE

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18338: record not found)

        500: Internal Server Error - ModelsResponseError (18336: unable to delete record | 18338: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerBinaryRecordV1)
def admin_get_player_binary_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player binary record (adminGetPlayerBinaryRecordV1)

    Get a player binary record by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: GET

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18325: record not found)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerBinaryRecordV1)
async def admin_get_player_binary_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player binary record (adminGetPlayerBinaryRecordV1)

    Get a player binary record by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: GET

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18325: record not found)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListPlayerBinaryRecordsV1)
def admin_list_player_binary_records_v1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player binary records (adminListPlayerBinaryRecordsV1)

    Retrieve list of player binary records by namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries

        method: GET

        tags: ["AdminPlayerBinaryRecord"]

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
        200: OK - ModelsListPlayerBinaryRecordsResponse (Retrieve list of player records by namespace)

        400: Bad Request - ModelsResponseError (18326: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListPlayerBinaryRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListPlayerBinaryRecordsV1)
async def admin_list_player_binary_records_v1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player binary records (adminListPlayerBinaryRecordsV1)

    Retrieve list of player binary records by namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries

        method: GET

        tags: ["AdminPlayerBinaryRecord"]

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
        200: OK - ModelsListPlayerBinaryRecordsResponse (Retrieve list of player records by namespace)

        400: Bad Request - ModelsResponseError (18326: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListPlayerBinaryRecordsV1.create(
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


@same_doc_as(AdminPostPlayerBinaryPresignedURLV1)
def admin_post_player_binary_presigned_urlv1(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload player binary records (adminPostPlayerBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned

        method: POST

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Successful Operation)

        400: Bad Request - ModelsResponseError (18311: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18313: record not found)

        500: Internal Server Error - ModelsResponseError (18312: unable to get record | 18314: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerBinaryPresignedURLV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostPlayerBinaryPresignedURLV1)
async def admin_post_player_binary_presigned_urlv1_async(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload player binary records (adminPostPlayerBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned

        method: POST

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Successful Operation)

        400: Bad Request - ModelsResponseError (18311: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18313: record not found)

        500: Internal Server Error - ModelsResponseError (18312: unable to get record | 18314: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerBinaryPresignedURLV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostPlayerBinaryRecordV1)
def admin_post_player_binary_record_v1(
    body: ModelsPlayerBinaryRecordCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create player binary record (adminPostPlayerBinaryRecordV1)

    Create a player binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries

        method: POST

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Record in user-level created)

        400: Bad Request - ModelsResponseError (18327: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18330: key already exists)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record | 18328: unable to save record | 18331: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerBinaryRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostPlayerBinaryRecordV1)
async def admin_post_player_binary_record_v1_async(
    body: ModelsPlayerBinaryRecordCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create player binary record (adminPostPlayerBinaryRecordV1)

    Create a player binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries

        method: POST

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Record in user-level created)

        400: Bad Request - ModelsResponseError (18327: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18330: key already exists)

        500: Internal Server Error - ModelsResponseError (18323: unable to get record | 18328: unable to save record | 18331: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerBinaryRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutPlayerBinaryRecorMetadataV1)
def admin_put_player_binary_recor_metadata_v1(
    body: ModelsPlayerBinaryRecordMetadataRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record metadata (adminPutPlayerBinaryRecorMetadataV1)

    Update a player binary record metadata by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata

        method: PUT

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordMetadataRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutPlayerBinaryRecorMetadataV1)
async def admin_put_player_binary_recor_metadata_v1_async(
    body: ModelsPlayerBinaryRecordMetadataRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record metadata (adminPutPlayerBinaryRecorMetadataV1)

    Update a player binary record metadata by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata

        method: PUT

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordMetadataRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutPlayerBinaryRecordV1)
def admin_put_player_binary_record_v1(
    body: ModelsBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record file (adminPutPlayerBinaryRecordV1)

    Update a player binary record file by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: PUT

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerBinaryRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutPlayerBinaryRecordV1)
async def admin_put_player_binary_record_v1_async(
    body: ModelsBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record file (adminPutPlayerBinaryRecordV1)

    Update a player binary record file by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: PUT

        tags: ["AdminPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerBinaryRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
