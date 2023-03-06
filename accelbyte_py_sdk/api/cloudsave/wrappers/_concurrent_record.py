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

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|---------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new game record or replace the existing game record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|---------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new game record or replace the existing game record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordConcurrentHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|------------------------------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new player public record or replace the existing player public record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerPublicRecordConcurrentHandlerV1)
async def put_player_public_record_concurrent_handler_v1_async(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (putPlayerPublicRecordConcurrentHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|------------------------------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new player public record or replace the existing player public record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerPublicRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player private record (putPlayerRecordConcurrentHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|-----------------------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new player record or replace the existing player record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutPlayerRecordConcurrentHandlerV1)
async def put_player_record_concurrent_handler_v1_async(
    body: ModelsConcurrentRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player private record (putPlayerRecordConcurrentHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|-----------------------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new player record or replace the existing player record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

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

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerRecordConcurrentHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
