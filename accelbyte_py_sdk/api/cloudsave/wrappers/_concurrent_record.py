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

from ..models import ModelsConcurrentRecordRequest
from ..models import ModelsPlayerRecordConcurrentUpdateResponse
from ..models import ModelsResponseError

from ..operations.concurrent_record import PutGameRecordConcurrentHandlerV1
from ..operations.concurrent_record import PutPlayerPublicRecordConcurrentHandlerV1
from ..operations.concurrent_record import PutPlayerRecordConcurrentHandlerV1


@same_doc_as(PutGameRecordConcurrentHandlerV1)
def put_game_record_concurrent_handler_v1(
    body: ModelsConcurrentRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (putGameRecordConcurrentHandlerV1)

    ## Description

    This endpoints will create new game record or replace the existing game record.

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 20002: validation error | 18052: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18056: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (18051: unable to marshal request body | 20000: internal server error | 18053: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutGameRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutGameRecordConcurrentHandlerV1)
async def put_game_record_concurrent_handler_v1_async(
    body: ModelsConcurrentRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (putGameRecordConcurrentHandlerV1)

    ## Description

    This endpoints will create new game record or replace the existing game record.

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 20002: validation error | 18052: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18056: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (18051: unable to marshal request body | 20000: internal server error | 18053: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutGameRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerPublicRecordConcurrentHandlerV1)
def put_player_public_record_concurrent_handler_v1(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    response_body: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordConcurrentHandlerV1)

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        response_body: (responseBody) OPTIONAL bool in query

    Responses:
        200: OK - ModelsPlayerRecordConcurrentUpdateResponse (Record saved)

        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18100: invalid request body | 18102: validation error | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18103: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18101: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        response_body=response_body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerPublicRecordConcurrentHandlerV1)
async def put_player_public_record_concurrent_handler_v1_async(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    response_body: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordConcurrentHandlerV1)

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        response_body: (responseBody) OPTIONAL bool in query

    Responses:
        200: OK - ModelsPlayerRecordConcurrentUpdateResponse (Record saved)

        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18100: invalid request body | 18102: validation error | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18103: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18101: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        response_body=response_body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutPlayerRecordConcurrentHandlerV1)
def put_player_record_concurrent_handler_v1(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    response_body: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player private record (putPlayerRecordConcurrentHandlerV1)

    ## Description

    This endpoints will create new player record or replace the existing player record.

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        response_body: (responseBody) OPTIONAL bool in query

    Responses:
        200: OK - ModelsPlayerRecordConcurrentUpdateResponse (Record saved)

        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 18064: validation error | 20002: validation error | 18065: unable to update record)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18066: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        response_body=response_body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerRecordConcurrentHandlerV1)
async def put_player_record_concurrent_handler_v1_async(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    response_body: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player private record (putPlayerRecordConcurrentHandlerV1)

    ## Description

    This endpoints will create new player record or replace the existing player record.

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


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


    ## Optimistic Concurrency Control

    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        response_body: (responseBody) OPTIONAL bool in query

    Responses:
        200: OK - ModelsPlayerRecordConcurrentUpdateResponse (Record saved)

        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s] | 18060: invalid request body | 18064: validation error | 20002: validation error | 18065: unable to update record)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        412: Precondition Failed - ModelsResponseError (18066: precondition failed: record has changed)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PutPlayerRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        response_body=response_body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
