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

from ..models import ModelsBulkGetGameRecordRequest
from ..models import ModelsBulkGetGameRecordResponse
from ..models import ModelsGameRecordRequest
from ..models import ModelsGameRecordResponse
from ..models import ModelsResponseError

from ..operations.public_game_record import DeleteGameRecordHandlerV1
from ..operations.public_game_record import GetGameRecordHandlerV1
from ..operations.public_game_record import GetGameRecordsBulk
from ..operations.public_game_record import PostGameRecordHandlerV1
from ..operations.public_game_record import PutGameRecordHandlerV1


@same_doc_as(DeleteGameRecordHandlerV1)
def delete_game_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record (deleteGameRecordHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
    --------------------|---------------------------------------------------
    Required Scope      | `social`





    Delete records by its key

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: DELETE

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGameRecordHandlerV1)
async def delete_game_record_handler_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record (deleteGameRecordHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
    --------------------|---------------------------------------------------
    Required Scope      | `social`





    Delete records by its key

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: DELETE

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameRecordHandlerV1)
def get_game_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game record (getGameRecordHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------
    Required Scope      | `social`




    Get game record by its key.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: GET

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameRecordHandlerV1)
async def get_game_record_handler_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game record (getGameRecordHandlerV1)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------
    Required Scope      | `social`




    Get game record by its key.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: GET

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameRecordsBulk)
def get_game_records_bulk(
    body: ModelsBulkGetGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get game records (getGameRecordsBulk)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------
    Required Scope      | `social`





    Bulk get game records. Maximum key per request 20.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/bulk

        method: POST

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetGameRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameRecordsBulk.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameRecordsBulk)
async def get_game_records_bulk_async(
    body: ModelsBulkGetGameRecordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get game records (getGameRecordsBulk)

    Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------
    Required Scope      | `social`





    Bulk get game records. Maximum key per request 20.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/bulk

        method: POST

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetGameRecordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetGameRecordResponse (OK)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameRecordsBulk.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PostGameRecordHandlerV1)
def post_game_record_handler_v1(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append game record (postGameRecordHandlerV1)

    Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new game record or append the existing game record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: POST

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGameRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PostGameRecordHandlerV1)
async def post_game_record_handler_v1_async(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append game record (postGameRecordHandlerV1)

    Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new game record or append the existing game record.

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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: POST

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGameRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PutGameRecordHandlerV1)
def put_game_record_handler_v1(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (putGameRecordHandlerV1)

    Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



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

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: PUT

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PutGameRecordHandlerV1)
async def put_game_record_handler_v1_async(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (putGameRecordHandlerV1)

    Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    Required scope: `social`



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

    Required Permission(s):
        - NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/records/{key}

        method: PUT

        tags: ["PublicGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
