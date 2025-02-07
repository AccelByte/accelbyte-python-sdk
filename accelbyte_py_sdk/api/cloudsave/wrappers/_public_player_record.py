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

from ..models import ModelsBulkGetPlayerRecordResponse
from ..models import ModelsBulkGetPlayerRecordsRequest
from ..models import ModelsBulkUserIDsRequest
from ..models import ModelsListPlayerRecordKeysResponse
from ..models import ModelsPlayerRecordRequest
from ..models import ModelsPlayerRecordResponse
from ..models import ModelsResponseError

from ..operations.public_player_record import BulkGetPlayerPublicRecordHandlerV1
from ..operations.public_player_record import DeletePlayerRecordHandlerV1
from ..operations.public_player_record import GetOtherPlayerPublicRecordHandlerV1
from ..operations.public_player_record import GetOtherPlayerPublicRecordKeyHandlerV1
from ..operations.public_player_record import GetPlayerPublicRecordHandlerV1
from ..operations.public_player_record import GetPlayerRecordHandlerV1
from ..operations.public_player_record import GetPlayerRecordsBulkHandlerV1
from ..operations.public_player_record import PostPlayerPublicRecordHandlerV1
from ..operations.public_player_record import PostPlayerRecordHandlerV1
from ..operations.public_player_record import PublicDeletePlayerPublicRecordHandlerV1
from ..operations.public_player_record import PutPlayerPublicRecordHandlerV1
from ..operations.public_player_record import PutPlayerRecordHandlerV1
from ..operations.public_player_record import RetrievePlayerRecords
from ..models import ModelsPlayerRecordResponseSetByEnum


@same_doc_as(BulkGetPlayerPublicRecordHandlerV1)
def bulk_get_player_public_record_handler_v1(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player public records (bulkGetPlayerPublicRecordHandlerV1)

    Bulk get other player's record that is public by userIds, max allowed 20 at a time. Only record with `isPublic=true` that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18083: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18084: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetPlayerPublicRecordHandlerV1)
async def bulk_get_player_public_record_handler_v1_async(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player public records (bulkGetPlayerPublicRecordHandlerV1)

    Bulk get other player's record that is public by userIds, max allowed 20 at a time. Only record with `isPublic=true` that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18083: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18084: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePlayerRecordHandlerV1)
def delete_player_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player record (deletePlayerRecordHandlerV1)

    Delete player record by its key.
    Only user that own the player record could delete it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: DELETE

        tags: ["PublicPlayerRecord"]

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

        403: Forbidden - ModelsResponseError (18072: delete action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18070: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePlayerRecordHandlerV1)
async def delete_player_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player record (deletePlayerRecordHandlerV1)

    Delete player record by its key.
    Only user that own the player record could delete it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: DELETE

        tags: ["PublicPlayerRecord"]

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

        403: Forbidden - ModelsResponseError (18072: delete action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18070: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOtherPlayerPublicRecordHandlerV1)
def get_other_player_public_record_handler_v1(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get other player public record bulk (getOtherPlayerPublicRecordHandlerV1)

    Retrieve other player public record key and payload in bulk under given namespace.

    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOtherPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOtherPlayerPublicRecordHandlerV1)
async def get_other_player_public_record_handler_v1_async(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get other player public record bulk (getOtherPlayerPublicRecordHandlerV1)

    Retrieve other player public record key and payload in bulk under given namespace.

    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOtherPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOtherPlayerPublicRecordKeyHandlerV1)
def get_other_player_public_record_key_handler_v1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query other player public record key (getOtherPlayerPublicRecordKeyHandlerV1)

    Retrieve list of other public player records key under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18113: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18114: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOtherPlayerPublicRecordKeyHandlerV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOtherPlayerPublicRecordKeyHandlerV1)
async def get_other_player_public_record_key_handler_v1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query other player public record key (getOtherPlayerPublicRecordKeyHandlerV1)

    Retrieve list of other public player records key under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18113: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18114: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOtherPlayerPublicRecordKeyHandlerV1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayerPublicRecordHandlerV1)
def get_player_public_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public record (getPlayerPublicRecordHandlerV1)

    Get other player's record that is public. Only record with `isPublic=true` that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18081: record not found)

        500: Internal Server Error - ModelsResponseError (18080: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayerPublicRecordHandlerV1)
async def get_player_public_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public record (getPlayerPublicRecordHandlerV1)

    Get other player's record that is public. Only record with `isPublic=true` that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18081: record not found)

        500: Internal Server Error - ModelsResponseError (18080: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayerRecordHandlerV1)
def get_player_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record (getPlayerRecordHandlerV1)

    Get player record by its key.
    **Private Record**: Only user that own the player record could retrieve it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18023: get action is forbidden on other user's record | 20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayerRecordHandlerV1)
async def get_player_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record (getPlayerRecordHandlerV1)

    Get player record by its key.
    **Private Record**: Only user that own the player record could retrieve it.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18023: get action is forbidden on other user's record | 20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayerRecordsBulkHandlerV1)
def get_player_records_bulk_handler_v1(
    body: ModelsBulkGetPlayerRecordsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player records bulk (getPlayerRecordsBulkHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.

    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerRecordsBulkHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayerRecordsBulkHandlerV1)
async def get_player_records_bulk_handler_v1_async(
    body: ModelsBulkGetPlayerRecordsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player records bulk (getPlayerRecordsBulkHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.

    Maximum bulk key limit per request 20

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record | 20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayerRecordsBulkHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostPlayerPublicRecordHandlerV1)
def post_player_public_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player public record (postPlayerPublicRecordHandlerV1)

    ## Description

    This endpoints will create new player public record or append the existing player public record.

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


    ## Reserved Word

    Reserved Word List: **__META**

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18090: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18091: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PostPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostPlayerPublicRecordHandlerV1)
async def post_player_public_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player public record (postPlayerPublicRecordHandlerV1)

    ## Description

    This endpoints will create new player public record or append the existing player public record.

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


    ## Reserved Word

    Reserved Word List: **__META**

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18090: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18091: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PostPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostPlayerRecordHandlerV1)
def post_player_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player record (postPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or append the existing player record.
    Only user that own the existing player record could modify.

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
    1. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.

    **Request Body Example:**
    ```
    {
    "__META": {
    "is_public": true
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18030: invalid request body | 20002: validation error | 18060: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18035: post action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PostPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostPlayerRecordHandlerV1)
async def post_player_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player record (postPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or append the existing player record.
    Only user that own the existing player record could modify.

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
    1. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.

    **Request Body Example:**
    ```
    {
    "__META": {
    "is_public": true
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18030: invalid request body | 20002: validation error | 18060: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18035: post action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PostPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeletePlayerPublicRecordHandlerV1)
def public_delete_player_public_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player public record (publicDeletePlayerPublicRecordHandlerV1)

    Delete player public record.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public

        method: DELETE

        tags: ["PublicPlayerRecord"]

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

        404: Not Found - ModelsResponseError (18122: record not found)

        500: Internal Server Error - ModelsResponseError (18120: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlayerPublicRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeletePlayerPublicRecordHandlerV1)
async def public_delete_player_public_record_handler_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player public record (publicDeletePlayerPublicRecordHandlerV1)

    Delete player public record.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public

        method: DELETE

        tags: ["PublicPlayerRecord"]

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

        404: Not Found - ModelsResponseError (18122: record not found)

        500: Internal Server Error - ModelsResponseError (18120: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlayerPublicRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerPublicRecordHandlerV1)
def put_player_public_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordHandlerV1)

    ## Description

    This endpoints will create new player public record or replace the existing player public record.

    **Replace behaviour:**
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Reserved Word

    Reserved Word List: **__META**

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: PUT

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18100: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18101: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerPublicRecordHandlerV1)
async def put_player_public_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordHandlerV1)

    ## Description

    This endpoints will create new player public record or replace the existing player public record.

    **Replace behaviour:**
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:

    `{ "data1": "value" }`

    - New JSON:

    `{ "data2": "new value" }`

    - Result:

    `{ "data2": "new value" }`



    ## Reserved Word

    Reserved Word List: **__META**

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: PUT

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18100: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18101: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerRecordHandlerV1)
def put_player_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player record (putPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or replace the existing player record.
    Only user that own the existing player record could modify it.

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
    1. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.

    **Request Body Example:**
    ```
    {
    "__META": {
    "is_public": true
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: PUT

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18063: put action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerRecordHandlerV1)
async def put_player_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player record (putPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or replace the existing player record.
    Only user that own the existing player record could modify it.

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
    1. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.

    **Request Body Example:**
    ```
    {
    "__META": {
    "is_public": true
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: PUT

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (18063: put action is forbidden on other user's record | 20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePlayerRecords)
def retrieve_player_records(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player records key (RetrievePlayerRecords)

    Retrieve list of player records key under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18113: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18114: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrievePlayerRecords.create(
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePlayerRecords)
async def retrieve_player_records_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player records key (RetrievePlayerRecords)

    Retrieve list of player records key under given namespace.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/me/records

        method: GET

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsListPlayerRecordKeysResponse (Successful operation)

        400: Bad Request - ModelsResponseError (18113: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18114: unable to retrieve list of key records)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrievePlayerRecords.create(
        limit=limit,
        offset=offset,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
