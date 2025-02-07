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
from ..models import ModelsBulkGetPlayerBinaryRecordResponse
from ..models import ModelsBulkGetPlayerRecordsRequest
from ..models import ModelsBulkUserIDsRequest
from ..models import ModelsListPlayerBinaryRecordsResponse
from ..models import ModelsPlayerBinaryRecordMetadataPublicRequest
from ..models import ModelsPlayerBinaryRecordResponse
from ..models import ModelsPublicPlayerBinaryRecordCreate
from ..models import ModelsResponseError
from ..models import ModelsUploadBinaryRecordRequest
from ..models import ModelsUploadBinaryRecordResponse

from ..operations.public_player_binary_record import BulkGetMyBinaryRecordV1
from ..operations.public_player_binary_record import (
    BulkGetOtherPlayerPublicBinaryRecordsV1,
)
from ..operations.public_player_binary_record import BulkGetPlayerPublicBinaryRecordsV1
from ..operations.public_player_binary_record import DeletePlayerBinaryRecordV1
from ..operations.public_player_binary_record import GetPlayerBinaryRecordV1
from ..operations.public_player_binary_record import GetPlayerPublicBinaryRecordsV1
from ..operations.public_player_binary_record import ListMyBinaryRecordsV1
from ..operations.public_player_binary_record import (
    ListOtherPlayerPublicBinaryRecordsV1,
)
from ..operations.public_player_binary_record import PostPlayerBinaryPresignedURLV1
from ..operations.public_player_binary_record import PostPlayerBinaryRecordV1
from ..operations.public_player_binary_record import PutPlayerBinaryRecorMetadataV1
from ..operations.public_player_binary_record import PutPlayerBinaryRecordV1
from ..models import ModelsPlayerBinaryRecordResponseSetByEnum


@same_doc_as(BulkGetMyBinaryRecordV1)
def bulk_get_my_binary_record_v1(
    body: ModelsBulkGetPlayerRecordsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player records bulk (bulkGetMyBinaryRecordV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/binaries/bulk

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetMyBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetMyBinaryRecordV1)
async def bulk_get_my_binary_record_v1_async(
    body: ModelsBulkGetPlayerRecordsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player records bulk (bulkGetMyBinaryRecordV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/binaries/bulk

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetMyBinaryRecordV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetOtherPlayerPublicBinaryRecordsV1)
def bulk_get_other_player_public_binary_records_v1(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get other player public binary record (bulkGetOtherPlayerPublicBinaryRecordsV1)

    Retrieve other player public binary record in bulk under given namespace.
    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18342: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetOtherPlayerPublicBinaryRecordsV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetOtherPlayerPublicBinaryRecordsV1)
async def bulk_get_other_player_public_binary_records_v1_async(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get other player public binary record (bulkGetOtherPlayerPublicBinaryRecordsV1)

    Retrieve other player public binary record in bulk under given namespace.
    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18342: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetOtherPlayerPublicBinaryRecordsV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetPlayerPublicBinaryRecordsV1)
def bulk_get_player_public_binary_records_v1(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player public records (bulkGetPlayerPublicBinaryRecordsV1)

    Bulk get other player's public binary record by userIds, max allowed 20 at a time. Only record with `isPublic=true` can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18342: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerPublicBinaryRecordsV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetPlayerPublicBinaryRecordsV1)
async def bulk_get_player_public_binary_records_v1_async(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player public records (bulkGetPlayerPublicBinaryRecordsV1)

    Bulk get other player's public binary record by userIds, max allowed 20 at a time. Only record with `isPublic=true` can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerBinaryRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18342: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerPublicBinaryRecordsV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePlayerBinaryRecordV1)
def delete_player_binary_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player binary record (deletePlayerBinaryRecordV1)

    Delete a player binary record. Only player who own the record can delete it

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: DELETE

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18338: record not found)

        500: Internal Server Error - ModelsResponseError (18336: unable to delete record | 18338: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePlayerBinaryRecordV1)
async def delete_player_binary_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player binary record (deletePlayerBinaryRecordV1)

    Delete a player binary record. Only player who own the record can delete it

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: DELETE

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18338: record not found)

        500: Internal Server Error - ModelsResponseError (18336: unable to delete record | 18338: record not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayerBinaryRecordV1)
def get_player_binary_record_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player binary record (getPlayerBinaryRecordV1)

    Get a player binary record by its key.
    **Private Record**: Only user who own the record could retrieve it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

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
    request = GetPlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayerBinaryRecordV1)
async def get_player_binary_record_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player binary record (getPlayerBinaryRecordV1)

    Get a player binary record by its key.
    **Private Record**: Only user who own the record could retrieve it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

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
    request = GetPlayerBinaryRecordV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayerPublicBinaryRecordsV1)
def get_player_public_binary_records_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public binary record (getPlayerPublicBinaryRecordsV1)

    Get other player's public binary record. Only record with `isPublic=true` can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18340: record not found)

        500: Internal Server Error - ModelsResponseError (18339: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerPublicBinaryRecordsV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayerPublicBinaryRecordsV1)
async def get_player_public_binary_records_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public binary record (getPlayerPublicBinaryRecordsV1)

    Get other player's public binary record. Only record with `isPublic=true` can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18340: record not found)

        500: Internal Server Error - ModelsResponseError (18339: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerPublicBinaryRecordsV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListMyBinaryRecordsV1)
def list_my_binary_records_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query my binary records (listMyBinaryRecordsV1)

    Retrieve list of my binary records by namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/binaries

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerBinaryRecordsResponse (Retrieve list of player records by namespace)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListMyBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListMyBinaryRecordsV1)
async def list_my_binary_records_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query my binary records (listMyBinaryRecordsV1)

    Retrieve list of my binary records by namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/binaries

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerBinaryRecordsResponse (Retrieve list of player records by namespace)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18343: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListMyBinaryRecordsV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListOtherPlayerPublicBinaryRecordsV1)
def list_other_player_public_binary_records_v1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query other player public binary record (listOtherPlayerPublicBinaryRecordsV1)

    Retrieve list of other player public binary records under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerBinaryRecordsResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18347: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18345: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListOtherPlayerPublicBinaryRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListOtherPlayerPublicBinaryRecordsV1)
async def list_other_player_public_binary_records_v1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query other player public binary record (listOtherPlayerPublicBinaryRecordsV1)

    Retrieve list of other player public binary records under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public

        method: GET

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerBinaryRecordsResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18347: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18345: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListOtherPlayerPublicBinaryRecordsV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostPlayerBinaryPresignedURLV1)
def post_player_binary_presigned_urlv1(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload player binary records (postPlayerBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

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
    request = PostPlayerBinaryPresignedURLV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostPlayerBinaryPresignedURLV1)
async def post_player_binary_presigned_urlv1_async(
    body: ModelsUploadBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request presigned URL for upload player binary records (postPlayerBinaryPresignedURLV1)

    Request presigned URL to upload the binary record to s3.

    Other detail info:

    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUploadBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

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
    request = PostPlayerBinaryPresignedURLV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostPlayerBinaryRecordV1)
def post_player_binary_record_v1(
    body: ModelsPublicPlayerBinaryRecordCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create player binary record (postPlayerBinaryRecordV1)

    Create a player binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicPlayerBinaryRecordCreate in body

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
    request = PostPlayerBinaryRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostPlayerBinaryRecordV1)
async def post_player_binary_record_v1_async(
    body: ModelsPublicPlayerBinaryRecordCreate,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create player binary record (postPlayerBinaryRecordV1)

    Create a player binary record.

    Other detail info:

    `key` should follow these rules:
    1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
    2. begin and end with letters or numbers
    3. spaces are not allowed
    4. separators must not appears twice in a row


    Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries

        method: POST

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicPlayerBinaryRecordCreate in body

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
    request = PostPlayerBinaryRecordV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerBinaryRecorMetadataV1)
def put_player_binary_recor_metadata_v1(
    body: ModelsPlayerBinaryRecordMetadataPublicRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record metadata (putPlayerBinaryRecorMetadataV1)

    Update a player binary record metadata by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata

        method: PUT

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordMetadataPublicRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerBinaryRecorMetadataV1)
async def put_player_binary_recor_metadata_v1_async(
    body: ModelsPlayerBinaryRecordMetadataPublicRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record metadata (putPlayerBinaryRecorMetadataV1)

    Update a player binary record metadata by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata

        method: PUT

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerBinaryRecordMetadataPublicRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerBinaryRecorMetadataV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerBinaryRecordV1)
def put_player_binary_record_v1(
    body: ModelsBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record file (putPlayerBinaryRecordV1)

    Update a player binary record file by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: PUT

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerBinaryRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerBinaryRecordV1)
async def put_player_binary_record_v1_async(
    body: ModelsBinaryRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player binary record file (putPlayerBinaryRecordV1)

    Update a player binary record file by its key

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}

        method: PUT

        tags: ["PublicPlayerBinaryRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBinaryRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerBinaryRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18332: invalid request body | 18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18333: record not found)

        500: Internal Server Error - ModelsResponseError (18334: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerBinaryRecordV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
