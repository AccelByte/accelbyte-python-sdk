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

from ..models import ErrorEntity
from ..models import RetrievePolicyPublicResponse
from ..models import RetrievePolicyResponse
from ..models import UpdatePolicyRequest

from ..operations.policies import RetrieveLatestPolicies
from ..operations.policies import RetrieveLatestPoliciesPolicyTypeEnum
from ..operations.policies import RetrieveLatestPoliciesByNamespaceAndCountryPublic
from ..operations.policies import (
    RetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeEnum,
)
from ..operations.policies import RetrieveLatestPoliciesPublic
from ..operations.policies import RetrieveLatestPoliciesPublicPolicyTypeEnum
from ..operations.policies import RetrievePolicies
from ..operations.policies import SetDefaultPolicy1
from ..operations.policies import UpdatePolicy


@same_doc_as(RetrieveLatestPolicies)
def retrieve_latest_policies(
    country_code: str,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[Union[str, RetrieveLatestPoliciesPolicyTypeEnum]] = None,
    tags: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveLatestPolicies.create(
        country_code=country_code,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLatestPolicies)
async def retrieve_latest_policies_async(
    country_code: str,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[Union[str, RetrieveLatestPoliciesPolicyTypeEnum]] = None,
    tags: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveLatestPolicies.create(
        country_code=country_code,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveLatestPoliciesByNamespaceAndCountryPublic)
def retrieve_latest_policies_by_namespace_and_country_public(
    country_code: str,
    always_include_default: Optional[bool] = None,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[
        Union[str, RetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeEnum]
    ] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic.create(
        country_code=country_code,
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLatestPoliciesByNamespaceAndCountryPublic)
async def retrieve_latest_policies_by_namespace_and_country_public_async(
    country_code: str,
    always_include_default: Optional[bool] = None,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[
        Union[str, RetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeEnum]
    ] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic.create(
        country_code=country_code,
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveLatestPoliciesPublic)
def retrieve_latest_policies_public(
    always_include_default: Optional[bool] = None,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[
        Union[str, RetrieveLatestPoliciesPublicPolicyTypeEnum]
    ] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveLatestPoliciesPublic.create(
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLatestPoliciesPublic)
async def retrieve_latest_policies_public_async(
    always_include_default: Optional[bool] = None,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[
        Union[str, RetrieveLatestPoliciesPublicPolicyTypeEnum]
    ] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveLatestPoliciesPublic.create(
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePolicies)
def retrieve_policies(
    country_code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrievePolicies.create(
        country_code=country_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePolicies)
async def retrieve_policies_async(
    country_code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrievePolicies.create(
        country_code=country_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetDefaultPolicy1)
def set_default_policy_1(
    policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = SetDefaultPolicy1.create(
        policy_id=policy_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetDefaultPolicy1)
async def set_default_policy_1_async(
    policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = SetDefaultPolicy1.create(
        policy_id=policy_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePolicy)
def update_policy(
    policy_id: str,
    body: Optional[UpdatePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePolicy.create(
        policy_id=policy_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePolicy)
async def update_policy_async(
    policy_id: str,
    body: Optional[UpdatePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdatePolicy.create(
        policy_id=policy_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
