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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsBulkGetAdminPlayerRecordResponse
from ..models import ModelsBulkGetPlayerRecordResponse
from ..models import ModelsBulkGetPlayerRecordSizeResponse
from ..models import ModelsBulkGetPlayerRecordsRequest
from ..models import ModelsBulkUpdatePlayerRecordByKeyResponse
from ..models import ModelsBulkUpdatePlayerRecordResponse
from ..models import ModelsBulkUpdatePlayerRecordsByKeyRequest
from ..models import ModelsBulkUpdatePlayerRecordsRequest
from ..models import ModelsBulkUserIDsRequest
from ..models import ModelsBulkUserKeyRequest
from ..models import ModelsListPlayerRecordKeysResponse
from ..models import ModelsPlayerRecordRequest
from ..models import ModelsPlayerRecordResponse
from ..models import ModelsPlayerRecordSizeResponse
from ..models import ModelsResponseError

from ..operations.admin_player_record import AdminBulkGetPlayerRecordsByUserIDsHandlerV1
from ..operations.admin_player_record import AdminBulkPutPlayerRecordsByKeyHandlerV1
from ..operations.admin_player_record import AdminDeletePlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminDeletePlayerRecordHandlerV1
from ..operations.admin_player_record import AdminGetPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminGetPlayerRecordHandlerV1
from ..operations.admin_player_record import AdminGetPlayerRecordSizeHandlerV1
from ..operations.admin_player_record import AdminGetPlayerRecordsHandlerV1
from ..operations.admin_player_record import AdminPostPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminPostPlayerRecordHandlerV1
from ..operations.admin_player_record import AdminPutPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminPutPlayerRecordHandlerV1
from ..operations.admin_player_record import AdminPutPlayerRecordsHandlerV1
from ..operations.admin_player_record import AdminRetrievePlayerRecords
from ..operations.admin_player_record import BulkGetPlayerRecordSizeHandlerV1
from ..operations.admin_player_record import ListPlayerRecordHandlerV1
from ..models import ModelsPlayerRecordResponseSetByEnum


@same_doc_as(AdminBulkGetPlayerRecordsByUserIDsHandlerV1)
def admin_bulk_get_player_records_by_user_i_ds_handler_v1(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records by multiple user ids (adminBulkGetPlayerRecordsByUserIDsHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum number of user ids per request is 20.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (OK)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetPlayerRecordsByUserIDsHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkGetPlayerRecordsByUserIDsHandlerV1)
async def admin_bulk_get_player_records_by_user_i_ds_handler_v1_async(
    body: ModelsBulkUserIDsRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records by multiple user ids (adminBulkGetPlayerRecordsByUserIDsHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum number of user ids per request is 20.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordResponse (OK)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetPlayerRecordsByUserIDsHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkPutPlayerRecordsByKeyHandlerV1)
def admin_bulk_put_player_records_by_key_handler_v1(
    body: ModelsBulkUpdatePlayerRecordsByKeyRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update player records by key (adminBulkPutPlayerRecordsByKeyHandlerV1)

    This endpoints will create new player record or replace the existing player record in bulk.
    Maximum number of user ids per request is 10.
    Maximum total size of the request payload is 5 MB.


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUpdatePlayerRecordsByKeyRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsBulkUpdatePlayerRecordByKeyResponse] (OK)

        400: Bad Request - ModelsResponseError (18353: invalid request body | 18356: invalid request body: size of the request body must be less than [%d]MB | 18354: records amount exceeded max limit | 18355: unable to marshal request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkPutPlayerRecordsByKeyHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkPutPlayerRecordsByKeyHandlerV1)
async def admin_bulk_put_player_records_by_key_handler_v1_async(
    body: ModelsBulkUpdatePlayerRecordsByKeyRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update player records by key (adminBulkPutPlayerRecordsByKeyHandlerV1)

    This endpoints will create new player record or replace the existing player record in bulk.
    Maximum number of user ids per request is 10.
    Maximum total size of the request payload is 5 MB.


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUpdatePlayerRecordsByKeyRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsBulkUpdatePlayerRecordByKeyResponse] (OK)

        400: Bad Request - ModelsResponseError (18353: invalid request body | 18356: invalid request body: size of the request body must be less than [%d]MB | 18354: records amount exceeded max limit | 18355: unable to marshal request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkPutPlayerRecordsByKeyHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeletePlayerPublicRecordHandlerV1)
def admin_delete_player_public_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player public record (adminDeletePlayerPublicRecordHandlerV1)

    Delete player public record.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: DELETE

        tags: ["AdminPlayerRecord"]

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

        404: Not Found - ModelsResponseError (18122: record not found)

        500: Internal Server Error - ModelsResponseError (18120: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlayerPublicRecordHandlerV1)
async def admin_delete_player_public_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player public record (adminDeletePlayerPublicRecordHandlerV1)

    Delete player public record.


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: DELETE

        tags: ["AdminPlayerRecord"]

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

        404: Not Found - ModelsResponseError (18122: record not found)

        500: Internal Server Error - ModelsResponseError (18120: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeletePlayerRecordHandlerV1)
def admin_delete_player_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player record (adminDeletePlayerRecordHandlerV1)

    Delete a record (arbitrary JSON data) in user-level with given key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: DELETE

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18070: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlayerRecordHandlerV1)
async def admin_delete_player_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete player record (adminDeletePlayerRecordHandlerV1)

    Delete a record (arbitrary JSON data) in user-level with given key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: DELETE

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Record in user-level saved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18070: unable to delete record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerPublicRecordHandlerV1)
def admin_get_player_public_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public record (adminGetPlayerPublicRecordHandlerV1)

    Get a record in user-level (arbitrary JSON data) by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Successful operation)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18081: record not found)

        500: Internal Server Error - ModelsResponseError (18080: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerPublicRecordHandlerV1)
async def admin_get_player_public_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player public record (adminGetPlayerPublicRecordHandlerV1)

    Get a record in user-level (arbitrary JSON data) by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Successful operation)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18081: record not found)

        500: Internal Server Error - ModelsResponseError (18080: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerPublicRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerRecordHandlerV1)
def admin_get_player_record_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record (adminGetPlayerRecordHandlerV1)

    Get a record in user-level (arbitrary JSON data) by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerRecordHandlerV1)
async def admin_get_player_record_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record (adminGetPlayerRecordHandlerV1)

    Get a record in user-level (arbitrary JSON data) by its key.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerRecordSizeHandlerV1)
def admin_get_player_record_size_handler_v1(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record size (adminGetPlayerRecordSizeHandlerV1)

    Get a size of the player record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordSizeResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordSizeHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerRecordSizeHandlerV1)
async def admin_get_player_record_size_handler_v1_async(
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player record size (adminGetPlayerRecordSizeHandlerV1)

    Get a size of the player record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordSizeResponse (Record in user-level retrieved)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18022: record not found)

        500: Internal Server Error - ModelsResponseError (18020: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordSizeHandlerV1.create(
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerRecordsHandlerV1)
def admin_get_player_records_handler_v1(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records by multiple record keys (adminGetPlayerRecordsHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum bulk key limit per request 20.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18186: record not found)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordsHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerRecordsHandlerV1)
async def admin_get_player_records_handler_v1_async(
    body: ModelsBulkGetPlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records by multiple record keys (adminGetPlayerRecordsHandlerV1)

    Retrieve player record key and payload in bulk under given namespace.
    Maximum bulk key limit per request 20.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkGetPlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetAdminPlayerRecordResponse (OK)

        400: Bad Request - ModelsResponseError (18125: invalid request body | 18126: request record keys list exceed max size [%d])

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18186: record not found)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record | 18006: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerRecordsHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostPlayerPublicRecordHandlerV1)
def admin_post_player_public_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player public record (adminPostPlayerPublicRecordHandlerV1)

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


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved )

        400: Bad Request - ModelsResponseError (18030: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostPlayerPublicRecordHandlerV1)
async def admin_post_player_public_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player public record (adminPostPlayerPublicRecordHandlerV1)

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


    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved )

        400: Bad Request - ModelsResponseError (18030: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostPlayerRecordHandlerV1)
def admin_post_player_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player record (adminPostPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or append the existing player record.

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
    2. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "is_public": true,
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
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18030: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostPlayerRecordHandlerV1)
async def admin_post_player_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or append player record (adminPostPlayerRecordHandlerV1)

    ## Description

    This endpoints will create new player record or append the existing player record.

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
    2. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "is_public": true,
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
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18030: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18033: unable to save record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutPlayerPublicRecordHandlerV1)
def admin_put_player_public_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (adminPutPlayerPublicRecordHandlerV1)

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



    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutPlayerPublicRecordHandlerV1)
async def admin_put_player_public_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player public record (adminPutPlayerPublicRecordHandlerV1)

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



    ## Warning: This endpoint is going to deprecate

    This endpoint is going to deprecate in the future please don't use it.

    For alternative, please use these endpoints:
    - **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
    - **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerPublicRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutPlayerRecordHandlerV1)
def admin_put_player_record_handler_v1(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player record (adminPutPlayerRecordHandlerV1)

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
    2. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "is_public": true,
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
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutPlayerRecordHandlerV1)
async def admin_put_player_record_handler_v1_async(
    body: ModelsPlayerRecordRequest,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or replace player record (adminPutPlayerRecordHandlerV1)

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
    2. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.
    3. tags (default: *empty array*, type: array of string)
    Indicate the tagging for the game record.

    **Request Body Example:**
    ```
    {
    "__META": {
    "set_by": "SERVER",
    "is_public": true,
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
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayerRecordResponse (Record in user-level saved)

        400: Bad Request - ModelsResponseError (18060: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18061: unable to update record | 18005: unable to decode record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerRecordHandlerV1.create(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPutPlayerRecordsHandlerV1)
def admin_put_player_records_handler_v1(
    body: ModelsBulkUpdatePlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update player records (adminPutPlayerRecordsHandlerV1)

    This endpoints will create new player record or replace the existing player record in bulk.
    Maximum bulk key limit per request 10.
    Maximum total size of the request payload is 5 MB.


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUpdatePlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelsBulkUpdatePlayerRecordResponse] (OK)

        400: Bad Request - ModelsResponseError (18353: invalid request body | 18356: invalid request body: size of the request body must be less than [%d]MB | 18354: records amount exceeded max limit | 18355: unable to marshal request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerRecordsHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPutPlayerRecordsHandlerV1)
async def admin_put_player_records_handler_v1_async(
    body: ModelsBulkUpdatePlayerRecordsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update player records (adminPutPlayerRecordsHandlerV1)

    This endpoints will create new player record or replace the existing player record in bulk.
    Maximum bulk key limit per request 10.
    Maximum total size of the request payload is 5 MB.


    ## Recommended Request Body Size

    To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

    ## Exceeding the recommended limit

    While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk

        method: PUT

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUpdatePlayerRecordsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelsBulkUpdatePlayerRecordResponse] (OK)

        400: Bad Request - ModelsResponseError (18353: invalid request body | 18356: invalid request body: size of the request body must be less than [%d]MB | 18354: records amount exceeded max limit | 18355: unable to marshal request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutPlayerRecordsHandlerV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRetrievePlayerRecords)
def admin_retrieve_player_records(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player records (AdminRetrievePlayerRecords)

    Retrieve list of player records key and userID under given namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records

        method: GET

        tags: ["AdminPlayerRecord"]

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
    request = AdminRetrievePlayerRecords.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        query=query,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRetrievePlayerRecords)
async def admin_retrieve_player_records_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player records (AdminRetrievePlayerRecords)

    Retrieve list of player records key and userID under given namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records

        method: GET

        tags: ["AdminPlayerRecord"]

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
    request = AdminRetrievePlayerRecords.create(
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


@same_doc_as(BulkGetPlayerRecordSizeHandlerV1)
def bulk_get_player_record_size_handler_v1(
    body: ModelsBulkUserKeyRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records size (bulkGetPlayerRecordSizeHandlerV1)

    Bulk get player's record size, max allowed 20 at a time, that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserKeyRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordSizeResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18125: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerRecordSizeHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetPlayerRecordSizeHandlerV1)
async def bulk_get_player_record_size_handler_v1_async(
    body: ModelsBulkUserKeyRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get player records size (bulkGetPlayerRecordSizeHandlerV1)

    Bulk get player's record size, max allowed 20 at a time, that can be
    retrieved using this endpoint.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserKeyRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordSizeResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (18125: invalid request body)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18124: unable to get record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetPlayerRecordSizeHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ListPlayerRecordHandlerV1)
def list_player_record_handler_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve list of public player records (listPlayerRecordHandlerV1)

    Retrieve list of player records key and userID under given namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

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
    request = ListPlayerRecordHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ListPlayerRecordHandlerV1)
async def list_player_record_handler_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve list of public player records (listPlayerRecordHandlerV1)

    Retrieve list of player records key and userID under given namespace.

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/records

        method: GET

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        query: (query) OPTIONAL str in query

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
    request = ListPlayerRecordHandlerV1.create(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
