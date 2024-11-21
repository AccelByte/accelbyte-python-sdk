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
from ..models import CreateBasePolicyRequestCountryTypeEnum
from ..models import CreateBasePolicyResponseCountryTypeEnum
from ..models import UpdateBasePolicyRequestCountryTypeEnum


@same_doc_as(CreatePolicy)
def create_policy(
    body: Optional[CreateBasePolicyRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Base Legal Policy (createPolicy)

    Create a legal policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/base-policies

        method: POST

        tags: ["Base Legal Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequest in body

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id | 40026: errors.net.accelbyte.platform.legal.not_allow_create_studio_policy)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Create a Base Legal Policy (createPolicy)

    Create a legal policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/base-policies

        method: POST

        tags: ["Base Legal Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequest in body

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id | 40026: errors.net.accelbyte.platform.legal.not_allow_create_studio_policy)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Update Base Legal Policy (partialUpdatePolicy)

    Update an existing base policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)
    """
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
    """Update Base Legal Policy (partialUpdatePolicy)

    Update an existing base policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)
    """
    request = PartialUpdatePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllLegalPolicies)
def retrieve_all_legal_policies(
    visible_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Base Legal Policy (retrieveAllLegalPolicies)

    Retrieve all base policies.

    Properties:
        url: /agreement/admin/base-policies

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
    request = RetrieveAllLegalPolicies.create(
        visible_only=visible_only,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllLegalPolicies)
async def retrieve_all_legal_policies_async(
    visible_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Base Legal Policy (retrieveAllLegalPolicies)

    Retrieve all base policies.

    Properties:
        url: /agreement/admin/base-policies

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
    request = RetrieveAllLegalPolicies.create(
        visible_only=visible_only,
    )
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
    """Retrieve All Policy Type (retrieveAllPolicyTypes)

    Retrieve all supported policy types.

    Properties:
        url: /agreement/admin/policy-types

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
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
    """Retrieve All Policy Type (retrieveAllPolicyTypes)

    Retrieve all supported policy types.

    Properties:
        url: /agreement/admin/policy-types

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
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
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry)

    Retrieve a Base Legal Policy based on a Particular Country.

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
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
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry)

    Retrieve a Base Legal Policy based on a Particular Country.

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
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
    """Retrieve a Base Legal Policy (retrieveSinglePolicy)

    Retrieve a base policy.

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicy)
async def retrieve_single_policy_async(
    base_policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve a Base Legal Policy (retrieveSinglePolicy)

    Retrieve a base policy.

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
