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

from ..models import ModelsDictionary
from ..models import ModelsDictionaryExport
from ..models import ModelsDictionaryGroup
from ..models import ModelsDictionaryImportResult
from ..models import ModelsDictionaryInsertBulkRequest
from ..models import ModelsDictionaryInsertRequest
from ..models import ModelsDictionaryQueryResult
from ..models import ModelsDictionaryUpdateRequest
from ..models import RestapiErrorResponseBody

from ..operations.profanity import AdminProfanityCreate
from ..operations.profanity import AdminProfanityCreateBulk
from ..operations.profanity import AdminProfanityDelete
from ..operations.profanity import AdminProfanityExport
from ..operations.profanity import AdminProfanityGroup
from ..operations.profanity import AdminProfanityImport
from ..operations.profanity import AdminProfanityImportActionEnum
from ..operations.profanity import AdminProfanityQuery
from ..operations.profanity import AdminProfanityUpdate


@same_doc_as(AdminProfanityCreate)
def admin_profanity_create(
    body: ModelsDictionaryInsertRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin insert new profanity words (adminProfanityCreate)

    Insert new word for profanity censor

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryInsertRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionary (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityCreate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityCreate)
async def admin_profanity_create_async(
    body: ModelsDictionaryInsertRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin insert new profanity words (adminProfanityCreate)

    Insert new word for profanity censor

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryInsertRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionary (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityCreate.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityCreateBulk)
def admin_profanity_create_bulk(
    body: ModelsDictionaryInsertBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin bulk insert new profanity words (adminProfanityCreateBulk)

    Bulk insert new word for profanity censor

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryInsertBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityCreateBulk.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityCreateBulk)
async def admin_profanity_create_bulk_async(
    body: ModelsDictionaryInsertBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin bulk insert new profanity words (adminProfanityCreateBulk)

    Bulk insert new word for profanity censor

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryInsertBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityCreateBulk.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityDelete)
def admin_profanity_delete(
    id_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete profanity words (adminProfanityDelete)

    Delete profanity words.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}

        method: DELETE

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityDelete.create(
        id_=id_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityDelete)
async def admin_profanity_delete_async(
    id_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete profanity words (adminProfanityDelete)

    Delete profanity words.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}

        method: DELETE

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityDelete.create(
        id_=id_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityExport)
def admin_profanity_export(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin export profanity words (adminProfanityExport)

    Export profanity words

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionaryExport (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityExport.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityExport)
async def admin_profanity_export_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin export profanity words (adminProfanityExport)

    Export profanity words

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionaryExport (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityExport.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityGroup)
def admin_profanity_group(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get profanity words group (adminProfanityGroup)

    Get profanity words group.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelsDictionaryGroup] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityGroup.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityGroup)
async def admin_profanity_group_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get profanity words group (adminProfanityGroup)

    Get profanity words group.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelsDictionaryGroup] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityGroup.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityImport)
def admin_profanity_import(
    file: Any,
    action: Optional[Union[str, AdminProfanityImportActionEnum]] = None,
    show_result: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin import profanity words (adminProfanityImport)

    Import profanity words

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import

        method: POST

        tags: ["profanity"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        namespace: (namespace) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        show_result: (showResult) OPTIONAL bool in query

    Responses:
        200: OK - ModelsDictionaryImportResult (returned when showResult=true)

        204: No Content - (No Content returned when showResult=false or not defined)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityImport.create(
        file=file,
        action=action,
        show_result=show_result,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityImport)
async def admin_profanity_import_async(
    file: Any,
    action: Optional[Union[str, AdminProfanityImportActionEnum]] = None,
    show_result: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin import profanity words (adminProfanityImport)

    Import profanity words

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import

        method: POST

        tags: ["profanity"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        namespace: (namespace) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        show_result: (showResult) OPTIONAL bool in query

    Responses:
        200: OK - ModelsDictionaryImportResult (returned when showResult=true)

        204: No Content - (No Content returned when showResult=false or not defined)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityImport.create(
        file=file,
        action=action,
        show_result=show_result,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityQuery)
def admin_profanity_query(
    filter_mask: Optional[str] = None,
    include_children: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    parent_id: Optional[str] = None,
    start_with: Optional[str] = None,
    word_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query profanity words (adminProfanityQuery)

    Query all profanity words.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        filter_mask: (filterMask) OPTIONAL str in query

        include_children: (includeChildren) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        parent_id: (parentId) OPTIONAL str in query

        start_with: (startWith) OPTIONAL str in query

        word_type: (wordType) OPTIONAL str in query

    Responses:
        200: OK - ModelsDictionaryQueryResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityQuery.create(
        filter_mask=filter_mask,
        include_children=include_children,
        limit=limit,
        offset=offset,
        parent_id=parent_id,
        start_with=start_with,
        word_type=word_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityQuery)
async def admin_profanity_query_async(
    filter_mask: Optional[str] = None,
    include_children: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    parent_id: Optional[str] = None,
    start_with: Optional[str] = None,
    word_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query profanity words (adminProfanityQuery)

    Query all profanity words.

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        filter_mask: (filterMask) OPTIONAL str in query

        include_children: (includeChildren) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        parent_id: (parentId) OPTIONAL str in query

        start_with: (startWith) OPTIONAL str in query

        word_type: (wordType) OPTIONAL str in query

    Responses:
        200: OK - ModelsDictionaryQueryResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityQuery.create(
        filter_mask=filter_mask,
        include_children=include_children,
        limit=limit,
        offset=offset,
        parent_id=parent_id,
        start_with=start_with,
        word_type=word_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminProfanityUpdate)
def admin_profanity_update(
    body: ModelsDictionaryUpdateRequest,
    id_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update profanity word (adminProfanityUpdate)

    Update profanity word

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}

        method: PUT

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryUpdateRequest in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionary (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityUpdate.create(
        body=body,
        id_=id_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminProfanityUpdate)
async def admin_profanity_update_async(
    body: ModelsDictionaryUpdateRequest,
    id_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update profanity word (adminProfanityUpdate)

    Update profanity word

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}

        method: PUT

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDictionaryUpdateRequest in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDictionary (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminProfanityUpdate.create(
        body=body,
        id_=id_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
