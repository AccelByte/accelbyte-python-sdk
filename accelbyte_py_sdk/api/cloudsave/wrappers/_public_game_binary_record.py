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
from ..models import ModelsBulkGetGameBinaryRecordResponse
from ..models import ModelsBulkGetGameRecordRequest
from ..models import ModelsGameBinaryRecordResponse
from ..models import ModelsListGameBinaryRecordsResponse
from ..models import ModelsPublicGameBinaryRecordCreate
from ..models import ModelsResponseError
from ..models import ModelsUploadBinaryRecordRequest
from ..models import ModelsUploadBinaryRecordResponse

from ..operations.public_game_binary_record import BulkGetGameBinaryRecordV1
from ..operations.public_game_binary_record import DeleteGameBinaryRecordV1
from ..operations.public_game_binary_record import GetGameBinaryRecordV1
from ..operations.public_game_binary_record import ListGameBinaryRecordsV1
from ..operations.public_game_binary_record import PostGameBinaryPresignedURLV1
from ..operations.public_game_binary_record import PostGameBinaryRecordV1
from ..operations.public_game_binary_record import PutGameBinaryRecordV1
from ..models import ModelsGameBinaryRecordResponseSetByEnum


@same_doc_as(BulkGetGameBinaryRecordV1)
def bulk_get_game_binary_record_v1(
    body: ModelsBulkGetGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get game binary records (bulkGetGameBinaryRecordV1)

    Bulk get game binary records. Maximum key per request 20.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/bulk

        method: POST

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetGameBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18350: invalid request body | 18351: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18349: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetGameBinaryRecordV1)
async def bulk_get_game_binary_record_v1_async(
    body: ModelsBulkGetGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get game binary records (bulkGetGameBinaryRecordV1)

    Bulk get game binary records. Maximum key per request 20.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/bulk

        method: POST

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetGameBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18350: invalid request body | 18351: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18349: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGameBinaryRecordV1)
def delete_game_binary_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record (deleteGameBinaryRecordV1)

    Delete a game binary record.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: DELETE

        tags: ["PublicGameBinaryRecord"]

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

        500: Internal Server Error - ModelsResponseError (18320: unable to delete record | 18322: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGameBinaryRecordV1)
async def delete_game_binary_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record (deleteGameBinaryRecordV1)

    Delete a game binary record.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: DELETE

        tags: ["PublicGameBinaryRecord"]

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

        500: Internal Server Error - ModelsResponseError (18320: unable to delete record | 18322: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameBinaryRecordV1)
def get_game_binary_record_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game binary record (getGameBinaryRecordV1)

    Get a game binary record by its key.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: GET

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18303: record not found)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameBinaryRecordV1)
async def get_game_binary_record_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game binary record (getGameBinaryRecordV1)

    Get a game binary record by its key.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: GET

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18303: record not found)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGameBinaryRecordV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListGameBinaryRecordsV1)
def list_game_binary_records_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game binary records (listGameBinaryRecordsV1)

    Retrieve list of binary records by namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries

        method: GET

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListGameBinaryRecordsResponse (Retrieve list of records by namespace)

        400: Bad Request - ModelsResponseError (18304: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGameBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListGameBinaryRecordsV1)
async def list_game_binary_records_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game binary records (listGameBinaryRecordsV1)

    Retrieve list of binary records by namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries

        method: GET

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListGameBinaryRecordsResponse (Retrieve list of records by namespace)

        400: Bad Request - ModelsResponseError (18304: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18301: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGameBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostGameBinaryPresignedURLV1)
def post_game_binary_presigned_urlv1(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload game binary records (postGameBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned

        method: POST

        tags: ["PublicGameBinaryRecord"]

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
    request = PostGameBinaryPresignedURLV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostGameBinaryPresignedURLV1)
async def post_game_binary_presigned_urlv1_async(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload game binary records (postGameBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned

        method: POST

        tags: ["PublicGameBinaryRecord"]

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
    request = PostGameBinaryPresignedURLV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostGameBinaryRecordV1)
def post_game_binary_record_v1(
    body: ModelsPublicGameBinaryRecordCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create game binary record (postGameBinaryRecordV1)

    Create a game binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries

        method: POST

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGameBinaryRecordCreate in body

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
    request = PostGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostGameBinaryRecordV1)
async def post_game_binary_record_v1_async(
    body: ModelsPublicGameBinaryRecordCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create game binary record (postGameBinaryRecordV1)

    Create a game binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries

        method: POST

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGameBinaryRecordCreate in body

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
    request = PostGameBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutGameBinaryRecordV1)
def put_game_binary_record_v1(
    body: ModelsBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record file (putGameBinaryRecordV1)

    Update a game binary record file by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: PUT

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordResponse (Record saved)

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
    request = PutGameBinaryRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutGameBinaryRecordV1)
async def put_game_binary_record_v1_async(
    body: ModelsBinaryRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game binary record file (putGameBinaryRecordV1)

    Update a game binary record file by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/binaries/{key}

        method: PUT

        tags: ["PublicGameBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameBinaryRecordResponse (Record saved)

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
    request = PutGameBinaryRecordV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
