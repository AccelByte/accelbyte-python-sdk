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
from ..models import ModelsGameBinaryRecordAdminResponse
from ..models import ModelsGameBinaryRecordCreate
from ..models import ModelsGameBinaryRecordMetadataRequest
from ..models import ModelsListGameBinaryRecordsAdminResponse
from ..models import ModelsResponseError
from ..models import ModelsUploadBinaryRecordRequest
from ..models import ModelsUploadBinaryRecordResponse

from ..operations.admin_game_binary_record import AdminDeleteGameBinaryRecordV1
from ..operations.admin_game_binary_record import AdminGetGameBinaryRecordV1
from ..operations.admin_game_binary_record import AdminListGameBinaryRecordsV1
from ..operations.admin_game_binary_record import AdminPostGameBinaryPresignedURLV1
from ..operations.admin_game_binary_record import AdminPostGameBinaryRecordV1
from ..operations.admin_game_binary_record import AdminPutGameBinaryRecorMetadataV1
from ..operations.admin_game_binary_record import AdminPutGameBinaryRecordV1
from ..models import ModelsGameBinaryRecordAdminResponseSetByEnum
from ..models import ModelsGameBinaryRecordCreateSetByEnum
from ..models import ModelsGameBinaryRecordMetadataRequestSetByEnum


@same_doc_as(AdminDeleteGameBinaryRecordV1)
def admin_delete_game_binary_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record (adminDeleteGameBinaryRecordV1)

    Delete a game binary record.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: DELETE

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18322: record not found)

        500: Internal Server Error - ModelsResponseError (18320: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteGameBinaryRecordV1)
async def admin_delete_game_binary_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record (adminDeleteGameBinaryRecordV1)

    Delete a game binary record.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: DELETE

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18322: record not found)

        500: Internal Server Error - ModelsResponseError (18320: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetGameBinaryRecordV1)
def admin_get_game_binary_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game binary record (adminGetGameBinaryRecordV1)

    Get a game binary record by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: GET

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18303: record not found)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetGameBinaryRecordV1)
async def admin_get_game_binary_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game binary record (adminGetGameBinaryRecordV1)

    Get a game binary record by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: GET

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18303: record not found)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListGameBinaryRecordsV1)
def admin_list_game_binary_records_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game binary records (adminListGameBinaryRecordsV1)

    Retrieve list of binary records by namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries

        method: GET

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListGameBinaryRecordsAdminResponse (Retrieve list of records by namespace)

        400: Bad Request - ModelsResponseError (18304: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGameBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListGameBinaryRecordsV1)
async def admin_list_game_binary_records_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game binary records (adminListGameBinaryRecordsV1)

    Retrieve list of binary records by namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries

        method: GET

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListGameBinaryRecordsAdminResponse (Retrieve list of records by namespace)

        400: Bad Request - ModelsResponseError (18304: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGameBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostGameBinaryPresignedURLV1)
def admin_post_game_binary_presigned_urlv1(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload game binary records (adminPostGameBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned

        method: POST

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Successful Operation)

        400: Bad Request - ModelsResponseError (18311: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18313: record not found)

        500: Internal Server Error - ModelsResponseError (18312: unable to get record | 18314: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostGameBinaryPresignedURLV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostGameBinaryPresignedURLV1)
async def admin_post_game_binary_presigned_urlv1_async(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload game binary records (adminPostGameBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned

        method: POST

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Successful Operation)

        400: Bad Request - ModelsResponseError (18311: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18313: record not found)

        500: Internal Server Error - ModelsResponseError (18312: unable to get record | 18314: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostGameBinaryPresignedURLV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostGameBinaryRecordV1)
def admin_post_game_binary_record_v1(
    body: ModelsGameBinaryRecordCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create game binary record (adminPostGameBinaryRecordV1)

    Create a game binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries

        method: POST

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameBinaryRecordCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Record in namespace-level created)

        400: Bad Request - ModelsResponseError (18305: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18309: key already exists)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record | 18307: unable to save record | 18310: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostGameBinaryRecordV1)
async def admin_post_game_binary_record_v1_async(
    body: ModelsGameBinaryRecordCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create game binary record (adminPostGameBinaryRecordV1)

    Create a game binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries

        method: POST

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameBinaryRecordCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsUploadBinaryRecordResponse (Record in namespace-level created)

        400: Bad Request - ModelsResponseError (18305: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18309: key already exists)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record | 18307: unable to save record | 18310: unable to get presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutGameBinaryRecorMetadataV1)
def admin_put_game_binary_recor_metadata_v1(
    body: ModelsGameBinaryRecordMetadataRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record metadata (adminPutGameBinaryRecorMetadataV1)

    Update a game binary record metadata by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata

        method: PUT

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameBinaryRecordMetadataRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18316: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutGameBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutGameBinaryRecorMetadataV1)
async def admin_put_game_binary_recor_metadata_v1_async(
    body: ModelsGameBinaryRecordMetadataRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record metadata (adminPutGameBinaryRecorMetadataV1)

    Update a game binary record metadata by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata

        method: PUT

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameBinaryRecordMetadataRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18316: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutGameBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutGameBinaryRecordV1)
def admin_put_game_binary_record_v1(
    body: ModelsBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record file (adminPutGameBinaryRecordV1)

    Update a game binary record file by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: PUT

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18316: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutGameBinaryRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutGameBinaryRecordV1)
async def admin_put_game_binary_record_v1_async(
    body: ModelsBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record file (adminPutGameBinaryRecordV1)

    Update a game binary record file by its key

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}

        method: PUT

        tags: ["AdminGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18316: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutGameBinaryRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
