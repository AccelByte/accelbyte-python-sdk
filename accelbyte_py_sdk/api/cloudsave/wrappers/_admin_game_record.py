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

from ..models import ModelsGameRecordAdminResponse
from ..models import ModelsGameRecordRequest
from ..models import ModelsListGameRecordKeysResponse
from ..models import ModelsResponseError

from ..operations.admin_game_record import AdminDeleteGameRecordHandlerV1
from ..operations.admin_game_record import AdminGetGameRecordHandlerV1
from ..operations.admin_game_record import AdminPostGameRecordHandlerV1
from ..operations.admin_game_record import AdminPutGameRecordHandlerV1
from ..operations.admin_game_record import ListGameRecordsHandlerV1
from ..models import ModelsGameRecordAdminResponseSetByEnum


@same_doc_as(AdminDeleteGameRecordHandlerV1)
def admin_delete_game_record_handler_v1(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record (adminDeleteGameRecordHandlerV1)

    This endpoints delete game record in namespace-level

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

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18040: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This endpoints delete game record in namespace-level

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

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18040: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a record by its key in namespace-level.

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
        200: OK - ModelsGameRecordAdminResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18003: record not found)

        500: Internal Server Error - ModelsResponseError (18001: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Get a record by its key in namespace-level.

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
        200: OK - ModelsGameRecordAdminResponse (Record in namespace-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18003: record not found)

        500: Internal Server Error - ModelsResponseError (18001: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new game record or append the existing game record.

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
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the game record.
    action:
    - DELETE: record will be deleted after TTL is reached
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    "tags": ["tag1", "tag2"]
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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
        201: Created - ModelsGameRecordAdminResponse (Record in namespace-level saved)

        400: Bad Request - ModelsResponseError (18011: invalid request body | 20002: validation error | 18015: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18012: unable to marshal request body | 20000: internal server error | 18013: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    ## Description

    This endpoints will create new game record or append the existing game record.

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
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the game record.
    action:
    - DELETE: record will be deleted after TTL is reached
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    "tags": ["tag1", "tag2"]
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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
        201: Created - ModelsGameRecordAdminResponse (Record in namespace-level saved)

        400: Bad Request - ModelsResponseError (18011: invalid request body | 20002: validation error | 18015: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18012: unable to marshal request body | 20000: internal server error | 18013: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the game record.
    action:
    - DELETE: record will be deleted after TTL is reached
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    "tags": ["tag1", "tag2"]
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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
        200: OK - ModelsGameRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18050: invalid request body | 20002: validation error | 18052: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18051: unable to marshal request body | 20000: internal server error | 18053: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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



    ## Record Metadata

    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name **__META**.
    When creating record, if **__META** field is not defined, the metadata value will use the default value.
    When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

    **Metadata List:**
    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.
    2. ttl_config (default: *empty*, type: object)
    Indicate the TTL configuration for the game record.
    action:
    - DELETE: record will be deleted after TTL is reached
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "ttl_config": {
    "expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
    "action": "DELETE"
    },
    "tags": ["tag1", "tag2"]
    }
    ...
    }
    ```

    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

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
        200: OK - ModelsGameRecordAdminResponse (Record saved)

        400: Bad Request - ModelsResponseError (18050: invalid request body | 20002: validation error | 18052: invalid request body: size of the request body must be less than [%d]MB)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18051: unable to marshal request body | 20000: internal server error | 18053: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game records (listGameRecordsHandlerV1)

    Retrieve list of records key by namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListGameRecordKeysResponse (Retrieve list of records key by namespace)

        400: Bad Request - ModelsResponseError (18004: unable to retrieve list of key records)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18001: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGameRecordsHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListGameRecordsHandlerV1)
async def list_game_records_handler_v1_async(
    limit: int,
    offset: int,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game records (listGameRecordsHandlerV1)

    Retrieve list of records key by namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListGameRecordKeysResponse (Retrieve list of records key by namespace)

        400: Bad Request - ModelsResponseError (18004: unable to retrieve list of key records)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18001: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGameRecordsHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
