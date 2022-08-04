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

from ..models import CreateBasePolicyRequest
from ..models import CreateBasePolicyResponse
from ..models import ErrorEntity
from ..models import RetrieveBasePolicyResponse
from ..models import RetrievePolicyResponse
from ..models import RetrievePolicyTypeResponse
from ..models import UpdateBasePolicyRequest
from ..models import UpdateBasePolicyResponse
from ..models import ValidationErrorEntity

from ..operations.base_legal_policies import CreatePolicy
from ..operations.base_legal_policies import PartialUpdatePolicy
from ..operations.base_legal_policies import RetrieveAllLegalPolicies
from ..operations.base_legal_policies import RetrieveAllPolicyTypes
from ..operations.base_legal_policies import RetrievePolicyCountry
from ..operations.base_legal_policies import RetrieveSinglePolicy


@same_doc_as(CreatePolicy)
def create_policy(
    body: Optional[CreateBasePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreatePolicy.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicy)
async def create_policy_async(
    body: Optional[CreateBasePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreatePolicy.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PartialUpdatePolicy)
def partial_update_policy(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PartialUpdatePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PartialUpdatePolicy)
async def partial_update_policy_async(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PartialUpdatePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllLegalPolicies)
def retrieve_all_legal_policies(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrieveAllLegalPolicies.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllLegalPolicies)
async def retrieve_all_legal_policies_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrieveAllLegalPolicies.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllPolicyTypes)
def retrieve_all_policy_types(
    limit: int,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveAllPolicyTypes.create(
        limit=limit,
        offset=offset,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllPolicyTypes)
async def retrieve_all_policy_types_async(
    limit: int,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveAllPolicyTypes.create(
        limit=limit,
        offset=offset,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePolicyCountry)
def retrieve_policy_country(
    base_policy_id: str,
    country_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrievePolicyCountry.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePolicyCountry)
async def retrieve_policy_country_async(
    base_policy_id: str,
    country_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrievePolicyCountry.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSinglePolicy)
def retrieve_single_policy(
    base_policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicy)
async def retrieve_single_policy_async(
    base_policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
