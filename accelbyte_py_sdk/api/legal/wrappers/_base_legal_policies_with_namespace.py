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

from ..models import CreateBasePolicyRequestV2
from ..models import CreateBasePolicyResponse
from ..models import CreatePolicyRequest
from ..models import CreatePolicyResponse
from ..models import ErrorEntity
from ..models import RetrieveBasePolicyResponse
from ..models import RetrievePoliciesFromBasePolicyResponse
from ..models import RetrievePolicyResponse
from ..models import RetrievePolicyTypeResponse
from ..models import UpdateBasePolicyRequestV2
from ..models import UpdateBasePolicyResponse
from ..models import ValidationErrorEntity

from ..operations.base_legal_policies_with_namespace import CreatePolicy
from ..operations.base_legal_policies_with_namespace import CreatePolicyUnderBasePolicy
from ..operations.base_legal_policies_with_namespace import DeleteBasePolicy
from ..operations.base_legal_policies_with_namespace import PartialUpdatePolicy
from ..operations.base_legal_policies_with_namespace import (
    RetrieveAllLegalPoliciesByNamespace,
)
from ..operations.base_legal_policies_with_namespace import (
    RetrieveAllPoliciesFromBasePolicy,
)
from ..operations.base_legal_policies_with_namespace import RetrieveAllPolicyTypes
from ..operations.base_legal_policies_with_namespace import RetrievePolicyCountry
from ..operations.base_legal_policies_with_namespace import RetrieveSinglePolicy
from ..models import CreateBasePolicyRequestV2CountryTypeEnum
from ..models import CreateBasePolicyResponseCountryTypeEnum
from ..models import CreatePolicyRequestCountryTypeEnum
from ..models import UpdateBasePolicyRequestV2CountryTypeEnum


@same_doc_as(CreatePolicy)
def create_policy(
    body: Optional[CreateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
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
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.base_policy_namespace_not_match | 40026: errors.net.accelbyte.platform.legal.not_allow_create_studio_policy)

        409: Conflict - ErrorEntity (40030: errors.net.accelbyte.platform.legal.invalid_policy_type)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePolicy.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicy)
async def create_policy_async(
    body: Optional[CreateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
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
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.base_policy_namespace_not_match | 40026: errors.net.accelbyte.platform.legal.not_allow_create_studio_policy)

        409: Conflict - ErrorEntity (40030: errors.net.accelbyte.platform.legal.invalid_policy_type)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePolicy.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreatePolicyUnderBasePolicy)
def create_policy_under_base_policy(
    base_policy_id: str,
    body: Optional[CreatePolicyRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create policy under base policy (createPolicyUnderBasePolicy)

    Create policy under base policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP policy requires the countryGroupName and countries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePolicyUnderBasePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicyUnderBasePolicy)
async def create_policy_under_base_policy_async(
    base_policy_id: str,
    body: Optional[CreatePolicyRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create policy under base policy (createPolicyUnderBasePolicy)

    Create policy under base policy.
    Note:


      *  countryType field only accept COUNTRY or COUNTRY_GROUP.
      * COUNTRY_GROUP policy requires the countryGroupName and countries fields to be provided.


    * policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePolicyUnderBasePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteBasePolicy)
def delete_base_policy(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Base Legal Policy (deleteBasePolicy)

    Delete base legal policy.Can only be deleted if match these criteria:


      * Base policy don't have published policy version
      * Policy version under base policy has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: DELETE

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40068: errors.net.accelbyte.platform.legal.base_policy_have_published_policy_version_and_already_accepted_by_user | 40069: errors.net.accelbyte.platform.legal.base_policy_already_have_published_policy_version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBasePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteBasePolicy)
async def delete_base_policy_async(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Base Legal Policy (deleteBasePolicy)

    Delete base legal policy.Can only be deleted if match these criteria:


      * Base policy don't have published policy version
      * Policy version under base policy has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: DELETE

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40068: errors.net.accelbyte.platform.legal.base_policy_have_published_policy_version_and_already_accepted_by_user | 40069: errors.net.accelbyte.platform.legal.base_policy_already_have_published_policy_version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBasePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PartialUpdatePolicy)
def partial_update_policy(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
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
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequestV2 in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PartialUpdatePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PartialUpdatePolicy)
async def partial_update_policy_async(
    base_policy_id: str,
    body: Optional[UpdateBasePolicyRequestV2] = None,
    namespace: Optional[str] = None,
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
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequestV2 in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PartialUpdatePolicy.create(
        base_policy_id=base_policy_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllLegalPoliciesByNamespace)
def retrieve_all_legal_policies_by_namespace(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Base Legal Policy in the namespace (retrieveAllLegalPoliciesByNamespace)

    Retrieve base policies in the namespace. Set `limit = -1` to retrieve all records

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllLegalPoliciesByNamespace.create(
        limit=limit,
        offset=offset,
        visible_only=visible_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllLegalPoliciesByNamespace)
async def retrieve_all_legal_policies_by_namespace_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Base Legal Policy in the namespace (retrieveAllLegalPoliciesByNamespace)

    Retrieve base policies in the namespace. Set `limit = -1` to retrieve all records

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllLegalPoliciesByNamespace.create(
        limit=limit,
        offset=offset,
        visible_only=visible_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllPoliciesFromBasePolicy)
def retrieve_all_policies_from_base_policy(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve all policies from Base Legal Policy (retrieveAllPoliciesFromBasePolicy)

    Retrieve all policies from Base Legal Policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[RetrievePoliciesFromBasePolicyResponse] (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllPoliciesFromBasePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllPoliciesFromBasePolicy)
async def retrieve_all_policies_from_base_policy_async(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve all policies from Base Legal Policy (retrieveAllPoliciesFromBasePolicy)

    Retrieve all policies from Base Legal Policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[RetrievePoliciesFromBasePolicyResponse] (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllPoliciesFromBasePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllPolicyTypes)
def retrieve_all_policy_types(
    limit: int,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Policy Type (retrieveAllPolicyTypes)

    Retrieve all supported policy types.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policy-types

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllPolicyTypes.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllPolicyTypes)
async def retrieve_all_policy_types_async(
    limit: int,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Policy Type (retrieveAllPolicyTypes)

    Retrieve all supported policy types.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policy-types

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllPolicyTypes.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePolicyCountry)
def retrieve_policy_country(
    base_policy_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry)

    Retrieve a Base Legal Policy based on a Particular Country.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrievePolicyCountry.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePolicyCountry)
async def retrieve_policy_country_async(
    base_policy_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry)

    Retrieve a Base Legal Policy based on a Particular Country.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrievePolicyCountry.create(
        base_policy_id=base_policy_id,
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSinglePolicy)
def retrieve_single_policy(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Base Legal Policy (retrieveSinglePolicy)

    Retrieve a base policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicy)
async def retrieve_single_policy_async(
    base_policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Base Legal Policy (retrieveSinglePolicy)

    Retrieve a base policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSinglePolicy.create(
        base_policy_id=base_policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
