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

from ..models import ModelsAdminAddProfanityFilterIntoListRequest
from ..models import ModelsAdminAddProfanityFiltersRequest
from ..models import ModelsAdminCreateProfanityListRequest
from ..models import ModelsAdminDeleteProfanityFilterRequest
from ..models import ModelsAdminGetProfanityListFiltersV1Response
from ..models import ModelsAdminGetProfanityListsListResponse
from ..models import ModelsAdminSetProfanityRuleForNamespaceRequest
from ..models import ModelsAdminUpdateProfanityList
from ..models import ModelsAdminVerifyMessageProfanityRequest
from ..models import ModelsAdminVerifyMessageProfanityResponse
from ..models import ModelsDebugProfanityFilterRequest
from ..models import ModelsProfanityFilter
from ..models import ModelsProfanityRule
from ..models import RestapiErrorResponseBody

from ..operations.profanity import AdminAddProfanityFilterIntoList
from ..operations.profanity import AdminAddProfanityFilters
from ..operations.profanity import AdminCreateProfanityList
from ..operations.profanity import AdminDebugProfanityFilters
from ..operations.profanity import AdminDeleteProfanityFilter
from ..operations.profanity import AdminDeleteProfanityList
from ..operations.profanity import AdminGetProfanityListFiltersV1
from ..operations.profanity import AdminGetProfanityLists
from ..operations.profanity import AdminGetProfanityRule
from ..operations.profanity import AdminImportProfanityFiltersFromFile
from ..operations.profanity import AdminSetProfanityRuleForNamespace
from ..operations.profanity import AdminUpdateProfanityList
from ..operations.profanity import AdminVerifyMessageProfanityResponse


@deprecated
@same_doc_as(AdminAddProfanityFilterIntoList)
def admin_add_profanity_filter_into_list(
    body: ModelsAdminAddProfanityFilterIntoListRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add a single filter into the list (adminAddProfanityFilterIntoList)

    Add a single filter into the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminAddProfanityFilterIntoListRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminAddProfanityFilterIntoList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminAddProfanityFilterIntoList)
async def admin_add_profanity_filter_into_list_async(
    body: ModelsAdminAddProfanityFilterIntoListRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add a single filter into the list (adminAddProfanityFilterIntoList)

    Add a single filter into the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminAddProfanityFilterIntoListRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminAddProfanityFilterIntoList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminAddProfanityFilters)
def admin_add_profanity_filters(
    body: ModelsAdminAddProfanityFiltersRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add multiple filters into the list (adminAddProfanityFilters)

    Add multiple filters into the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminAddProfanityFiltersRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminAddProfanityFilters.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminAddProfanityFilters)
async def admin_add_profanity_filters_async(
    body: ModelsAdminAddProfanityFiltersRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add multiple filters into the list (adminAddProfanityFilters)

    Add multiple filters into the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminAddProfanityFiltersRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminAddProfanityFilters.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminCreateProfanityList)
def admin_create_profanity_list(
    body: ModelsAdminCreateProfanityListRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new list (adminCreateProfanityList)

    Create a new list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminCreateProfanityListRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminCreateProfanityList.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminCreateProfanityList)
async def admin_create_profanity_list_async(
    body: ModelsAdminCreateProfanityListRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new list (adminCreateProfanityList)

    Create a new list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminCreateProfanityListRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminCreateProfanityList.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDebugProfanityFilters)
def admin_debug_profanity_filters(
    body: ModelsDebugProfanityFilterRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the list of filters that would modify the phrase (adminDebugProfanityFilters)

    Get the list of filters that would modify the phrase

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDebugProfanityFilterRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsProfanityFilter] (OK)

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
    request = AdminDebugProfanityFilters.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDebugProfanityFilters)
async def admin_debug_profanity_filters_async(
    body: ModelsDebugProfanityFilterRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the list of filters that would modify the phrase (adminDebugProfanityFilters)

    Get the list of filters that would modify the phrase

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDebugProfanityFilterRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsProfanityFilter] (OK)

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
    request = AdminDebugProfanityFilters.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeleteProfanityFilter)
def admin_delete_profanity_filter(
    body: ModelsAdminDeleteProfanityFilterRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete the filter from the list (adminDeleteProfanityFilter)

    Delete the filter from the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminDeleteProfanityFilterRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsProfanityFilter] (OK)

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
    request = AdminDeleteProfanityFilter.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteProfanityFilter)
async def admin_delete_profanity_filter_async(
    body: ModelsAdminDeleteProfanityFilterRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete the filter from the list (adminDeleteProfanityFilter)

    Delete the filter from the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminDeleteProfanityFilterRequest in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsProfanityFilter] (OK)

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
    request = AdminDeleteProfanityFilter.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeleteProfanityList)
def admin_delete_profanity_list(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a list include all filters inside of it (adminDeleteProfanityList)

    Delete a list include all filters inside of it

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}

        method: DELETE

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminDeleteProfanityList.create(
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteProfanityList)
async def admin_delete_profanity_list_async(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a list include all filters inside of it (adminDeleteProfanityList)

    Delete a list include all filters inside of it

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}

        method: DELETE

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminDeleteProfanityList.create(
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetProfanityListFiltersV1)
def admin_get_profanity_list_filters_v1(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the list of filters inside the list (adminGetProfanityListFiltersV1)

    Get the list of filters inside the list.

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGetProfanityListFiltersV1Response (OK)

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
    request = AdminGetProfanityListFiltersV1.create(
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetProfanityListFiltersV1)
async def admin_get_profanity_list_filters_v1_async(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the list of filters inside the list (adminGetProfanityListFiltersV1)

    Get the list of filters inside the list.

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminGetProfanityListFiltersV1Response (OK)

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
    request = AdminGetProfanityListFiltersV1.create(
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetProfanityLists)
def admin_get_profanity_lists(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get lists (adminGetProfanityLists)

    Get lists

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsAdminGetProfanityListsListResponse] (OK)

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
    request = AdminGetProfanityLists.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetProfanityLists)
async def admin_get_profanity_lists_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get lists (adminGetProfanityLists)

    Get lists

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsAdminGetProfanityListsListResponse] (OK)

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
    request = AdminGetProfanityLists.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetProfanityRule)
def admin_get_profanity_rule(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get current profanity rule (adminGetProfanityRule)

    Get current profanity rule

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/rule

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsProfanityRule (OK)

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
    request = AdminGetProfanityRule.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetProfanityRule)
async def admin_get_profanity_rule_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get current profanity rule (adminGetProfanityRule)

    Get current profanity rule

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/rule

        method: GET

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsProfanityRule (OK)

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
    request = AdminGetProfanityRule.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminImportProfanityFiltersFromFile)
def admin_import_profanity_filters_from_file(
    body: List[int],
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """import a file with filters (adminImportProfanityFiltersFromFile)

    Import a file with filters

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[int] in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminImportProfanityFiltersFromFile.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminImportProfanityFiltersFromFile)
async def admin_import_profanity_filters_from_file_async(
    body: List[int],
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """import a file with filters (adminImportProfanityFiltersFromFile)

    Import a file with filters

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[int] in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminImportProfanityFiltersFromFile.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminSetProfanityRuleForNamespace)
def admin_set_profanity_rule_for_namespace(
    body: ModelsAdminSetProfanityRuleForNamespaceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set current profanity rule (adminSetProfanityRuleForNamespace)

    Set current profanity rule

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/rule

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminSetProfanityRuleForNamespaceRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminSetProfanityRuleForNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminSetProfanityRuleForNamespace)
async def admin_set_profanity_rule_for_namespace_async(
    body: ModelsAdminSetProfanityRuleForNamespaceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set current profanity rule (adminSetProfanityRuleForNamespace)

    Set current profanity rule

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/rule

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminSetProfanityRuleForNamespaceRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminSetProfanityRuleForNamespace.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateProfanityList)
def admin_update_profanity_list(
    body: ModelsAdminUpdateProfanityList,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update the list (adminUpdateProfanityList)

    Update the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateProfanityList in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminUpdateProfanityList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateProfanityList)
async def admin_update_profanity_list_async(
    body: ModelsAdminUpdateProfanityList,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update the list (adminUpdateProfanityList)

    Update the list

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateProfanityList in body

        list_: (list) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = AdminUpdateProfanityList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminVerifyMessageProfanityResponse)
def admin_verify_message_profanity_response(
    body: ModelsAdminVerifyMessageProfanityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """verify a message directly from the UI or other services (adminVerifyMessageProfanityResponse)

    Verify a message directly from the UI or other services

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/verify

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminVerifyMessageProfanityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminVerifyMessageProfanityResponse (OK)

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
    request = AdminVerifyMessageProfanityResponse.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminVerifyMessageProfanityResponse)
async def admin_verify_message_profanity_response_async(
    body: ModelsAdminVerifyMessageProfanityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """verify a message directly from the UI or other services (adminVerifyMessageProfanityResponse)

    Verify a message directly from the UI or other services

    Properties:
        url: /lobby/v1/admin/profanity/namespaces/{namespace}/verify

        method: POST

        tags: ["profanity"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminVerifyMessageProfanityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminVerifyMessageProfanityResponse (OK)

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
    request = AdminVerifyMessageProfanityResponse.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
