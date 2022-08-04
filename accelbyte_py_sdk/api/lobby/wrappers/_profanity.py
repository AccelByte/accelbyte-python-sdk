# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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


@same_doc_as(AdminAddProfanityFilterIntoList)
def admin_add_profanity_filter_into_list(
    body: ModelsAdminAddProfanityFilterIntoListRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddProfanityFilterIntoList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddProfanityFilterIntoList)
async def admin_add_profanity_filter_into_list_async(
    body: ModelsAdminAddProfanityFilterIntoListRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminAddProfanityFilters)
def admin_add_profanity_filters(
    body: ModelsAdminAddProfanityFiltersRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddProfanityFilters.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddProfanityFilters)
async def admin_add_profanity_filters_async(
    body: ModelsAdminAddProfanityFiltersRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminCreateProfanityList)
def admin_create_profanity_list(
    body: ModelsAdminCreateProfanityListRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateProfanityList.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateProfanityList)
async def admin_create_profanity_list_async(
    body: ModelsAdminCreateProfanityListRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateProfanityList.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDebugProfanityFilters)
def admin_debug_profanity_filters(
    body: ModelsDebugProfanityFilterRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDebugProfanityFilters.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDebugProfanityFilters)
async def admin_debug_profanity_filters_async(
    body: ModelsDebugProfanityFilterRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDebugProfanityFilters.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteProfanityFilter)
def admin_delete_profanity_filter(
    body: ModelsAdminDeleteProfanityFilterRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteProfanityFilter.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteProfanityFilter)
async def admin_delete_profanity_filter_async(
    body: ModelsAdminDeleteProfanityFilterRequest,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminDeleteProfanityList)
def admin_delete_profanity_list(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteProfanityList.create(
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteProfanityList)
async def admin_delete_profanity_list_async(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteProfanityList.create(
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetProfanityListFiltersV1)
def admin_get_profanity_list_filters_v1(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityListFiltersV1.create(
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetProfanityListFiltersV1)
async def admin_get_profanity_list_filters_v1_async(
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityListFiltersV1.create(
        list_=list_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetProfanityLists)
def admin_get_profanity_lists(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityLists.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetProfanityLists)
async def admin_get_profanity_lists_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityLists.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetProfanityRule)
def admin_get_profanity_rule(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityRule.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetProfanityRule)
async def admin_get_profanity_rule_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetProfanityRule.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminImportProfanityFiltersFromFile)
def admin_import_profanity_filters_from_file(
    body: List[int],
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminImportProfanityFiltersFromFile.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminImportProfanityFiltersFromFile)
async def admin_import_profanity_filters_from_file_async(
    body: List[int],
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminSetProfanityRuleForNamespace)
def admin_set_profanity_rule_for_namespace(
    body: ModelsAdminSetProfanityRuleForNamespaceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSetProfanityRuleForNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSetProfanityRuleForNamespace)
async def admin_set_profanity_rule_for_namespace_async(
    body: ModelsAdminSetProfanityRuleForNamespaceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSetProfanityRuleForNamespace.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateProfanityList)
def admin_update_profanity_list(
    body: ModelsAdminUpdateProfanityList,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateProfanityList.create(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateProfanityList)
async def admin_update_profanity_list_async(
    body: ModelsAdminUpdateProfanityList,
    list_: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminVerifyMessageProfanityResponse)
def admin_verify_message_profanity_response(
    body: ModelsAdminVerifyMessageProfanityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminVerifyMessageProfanityResponse.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminVerifyMessageProfanityResponse)
async def admin_verify_message_profanity_response_async(
    body: ModelsAdminVerifyMessageProfanityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminVerifyMessageProfanityResponse.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
