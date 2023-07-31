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

from ..models import ModelsGameRecordRequest
from ..models import ModelsGameRecordResponse
from ..models import ModelsListGameRecordKeysResponse
from ..models import ModelsResponseError

from ..operations.admin_game_record import AdminDeleteGameRecordHandlerV1
from ..operations.admin_game_record import AdminGetGameRecordHandlerV1
from ..operations.admin_game_record import AdminPostGameRecordHandlerV1
from ..operations.admin_game_record import AdminPutGameRecordHandlerV1
from ..operations.admin_game_record import ListGameRecordsHandlerV1


@same_doc_as(AdminDeleteGameRecordHandlerV1)
def admin_delete_game_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record (adminDeleteGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    This endpoints delete game record in namespace-level

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: DELETE

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteGameRecordHandlerV1)
async def admin_delete_game_record_handler_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record (adminDeleteGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`

    Required scope: `social`

    This endpoints delete game record in namespace-level

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: DELETE

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record deleted)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetGameRecordHandlerV1)
def admin_get_game_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game record (adminGetGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a record by its key in namespace-level.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetGameRecordHandlerV1)
async def admin_get_game_record_handler_v1_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game record (adminGetGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Get a record by its key in namespace-level.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        404: Not Found - ModelsResponseError (Not Found)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostGameRecordHandlerV1)
def admin_post_game_record_handler_v1(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append game record (adminPostGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
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






    ## Record Metadata



    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name __META.
    When creating record, if __META field is not defined, the metadata value will use the default value.
    When updating record, if __META field is not defined, the existing metadata value will stay as is.

     Metadata List:
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.

     Request Body Example:




            {
                "__META": {
                    "set_by": "SERVER"
                }
                ...
            }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

        - CLIENT []

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: POST

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGameRecordResponse (Record in namespace-level saved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostGameRecordHandlerV1)
async def admin_post_game_record_handler_v1_async(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append game record (adminPostGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
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






    ## Record Metadata



    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name __META.
    When creating record, if __META field is not defined, the metadata value will use the default value.
    When updating record, if __META field is not defined, the existing metadata value will stay as is.

     Metadata List:
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.

     Request Body Example:




            {
                "__META": {
                    "set_by": "SERVER"
                }
                ...
            }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]

        - CLIENT []

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: POST

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGameRecordResponse (Record in namespace-level saved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutGameRecordHandlerV1)
def admin_put_game_record_handler_v1(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (adminPutGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
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






    ## Record Metadata



    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name __META.
    When creating record, if __META field is not defined, the metadata value will use the default value.
    When updating record, if __META field is not defined, the existing metadata value will stay as is.

     Metadata List:
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.

     Request Body Example:




            {
                "__META": {
                    "set_by": "SERVER"
                }
                ...
            }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

        - CLIENT []

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: PUT

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutGameRecordHandlerV1)
async def admin_put_game_record_handler_v1_async(
    body: ModelsGameRecordRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace game record (adminPutGameRecordHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
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






    ## Record Metadata



    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name __META.
    When creating record, if __META field is not defined, the metadata value will use the default value.
    When updating record, if __META field is not defined, the existing metadata value will stay as is.

     Metadata List:
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.

     Request Body Example:




            {
                "__META": {
                    "set_by": "SERVER"
                }
                ...
            }

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

        - CLIENT []

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}

        method: PUT

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGameRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameRecordResponse (Record saved)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListGameRecordsHandlerV1)
def list_game_records_handler_v1(
    limit: int,
    offset: int,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game records (listGameRecordsHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of records key by namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListGameRecordKeysResponse (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListGameRecordsHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListGameRecordsHandlerV1)
async def list_game_records_handler_v1_async(
    limit: int,
    offset: int,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game records (listGameRecordsHandlerV1)

    Required permission: `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`

    Required scope: `social`

    Retrieve list of records key by namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListGameRecordKeysResponse (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListGameRecordsHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
