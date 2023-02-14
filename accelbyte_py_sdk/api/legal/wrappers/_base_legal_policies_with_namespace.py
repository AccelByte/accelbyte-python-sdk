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

from ..models import CreateBasePolicyRequestV2
from ..models import CreateBasePolicyResponse
from ..models import ErrorEntity
from ..models import RetrieveBasePolicyResponse
from ..models import RetrievePolicyResponse
from ..models import RetrievePolicyTypeResponse
from ..models import UpdateBasePolicyRequestV2
from ..models import UpdateBasePolicyResponse
from ..models import ValidationErrorEntity

from ..operations.base_legal_policies_with_namespace import CreatePolicy1
from ..operations.base_legal_policies_with_namespace import PartialUpdatePolicy1
from ..operations.base_legal_policies_with_namespace import (
    RetrieveAllLegalPoliciesByNamespace,
)
from ..operations.base_legal_policies_with_namespace import RetrieveAllPolicyTypes1
from ..operations.base_legal_policies_with_namespace import RetrievePolicyCountry1
from ..operations.base_legal_policies_with_namespace import RetrieveSinglePolicy1


@same_doc_as(CreatePolicy1)
def create_policy_1(
    body: Optional[CreateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePolicy1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicy1)
async def create_policy_1_async(
    body: Optional[CreateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePolicy1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PartialUpdatePolicy1)
def partial_update_policy_1(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PartialUpdatePolicy1.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PartialUpdatePolicy1)
async def partial_update_policy_1_async(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PartialUpdatePolicy1.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllLegalPoliciesByNamespace)
def retrieve_all_legal_policies_by_namespace(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllLegalPoliciesByNamespace.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllLegalPoliciesByNamespace)
async def retrieve_all_legal_policies_by_namespace_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllLegalPoliciesByNamespace.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllPolicyTypes1)
def retrieve_all_policy_types_1(
    limit: int,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllPolicyTypes1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllPolicyTypes1)
async def retrieve_all_policy_types_1_async(
    limit: int,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllPolicyTypes1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePolicyCountry1)
def retrieve_policy_country_1(
    base_policy_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrievePolicyCountry1.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePolicyCountry1)
async def retrieve_policy_country_1_async(
    base_policy_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrievePolicyCountry1.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSinglePolicy1)
def retrieve_single_policy_1(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSinglePolicy1.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicy1)
async def retrieve_single_policy_1_async(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSinglePolicy1.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
