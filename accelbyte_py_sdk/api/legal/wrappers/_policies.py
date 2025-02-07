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

from ..models import ErrorEntity
from ..models import RetrievePolicyPublicResponse
from ..models import RetrievePolicyResponse
from ..models import UpdatePolicyRequest

from ..operations.policies import RetrieveCountryListWithPolicies
from ..operations.policies import RetrieveLatestPolicies
from ..operations.policies import RetrieveLatestPoliciesPolicyTypeEnum
from ..operations.policies import RetrieveLatestPoliciesByNamespaceAndCountryPublic
from ..operations.policies import (
    RetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeEnum,
)
from ..operations.policies import RetrieveLatestPoliciesPublic
from ..operations.policies import RetrieveLatestPoliciesPublicPolicyTypeEnum
from ..operations.policies import RetrievePolicies
from ..operations.policies import SetDefaultPolicy2
from ..operations.policies import UpdatePolicy


@same_doc_as(RetrieveCountryListWithPolicies)
def retrieve_country_list_with_policies(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve List of Countries that have Active Legal Policies (retrieveCountryListWithPolicies)

    Retrieve List of Countries that have Active and Visible Legal Policies.

    Properties:
        url: /agreement/public/policies/countries/list

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[str] (successful operation)
    """
    request = RetrieveCountryListWithPolicies.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveCountryListWithPolicies)
async def retrieve_country_list_with_policies_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve List of Countries that have Active Legal Policies (retrieveCountryListWithPolicies)

    Retrieve List of Countries that have Active and Visible Legal Policies.

    Properties:
        url: /agreement/public/policies/countries/list

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[str] (successful operation)
    """
    request = RetrieveCountryListWithPolicies.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveLatestPolicies)
def retrieve_latest_policies(
    country_code: str,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[Union[str, RetrieveLatestPoliciesPolicyTypeEnum]] = None,
    tags: Optional[str] = None,
    visible_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Country (retrieveLatestPolicies)

    Retrieve all active latest policies based on a country.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist

    Properties:
        url: /agreement/public/policies/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)
    """
    request = RetrieveLatestPolicies.create(
        country_code=country_code,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLatestPolicies)
async def retrieve_latest_policies_async(
    country_code: str,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[Union[str, RetrieveLatestPoliciesPolicyTypeEnum]] = None,
    tags: Optional[str] = None,
    visible_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Country (retrieveLatestPolicies)

    Retrieve all active latest policies based on a country.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist

    Properties:
        url: /agreement/public/policies/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)
    """
    request = RetrieveLatestPolicies.create(
        country_code=country_code,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
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
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesByNamespaceAndCountryPublic)

    Retrieve all active latest policies based on a namespace and country.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
      *  Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
        * Document 1 (default): Region US (default), UA
        * Document 2 (default): Region US (default)
        * Document 3 (default): Region US (default)
        * User: Region UA
        * Query: alwaysIncludeDefault: true
        * Response: Document 1 (UA), Document 2 (US), Document 3 (US)

    Properties:
        url: /agreement/public/policies/namespaces/{namespace}/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        always_include_default: (alwaysIncludeDefault) OPTIONAL bool in query

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic.create(
        country_code=country_code,
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
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
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesByNamespaceAndCountryPublic)

    Retrieve all active latest policies based on a namespace and country.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
      *  Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
        * Document 1 (default): Region US (default), UA
        * Document 2 (default): Region US (default)
        * Document 3 (default): Region US (default)
        * User: Region UA
        * Query: alwaysIncludeDefault: true
        * Response: Document 1 (UA), Document 2 (US), Document 3 (US)

    Properties:
        url: /agreement/public/policies/namespaces/{namespace}/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        always_include_default: (alwaysIncludeDefault) OPTIONAL bool in query

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic.create(
        country_code=country_code,
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
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
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesPublic)

    Retrieve all active latest policies based on a namespace and country. The country will be read from user token.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
      *  Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
        * Document 1 (default): Region US (default), UA
        * Document 2 (default): Region US (default)
        * Document 3 (default): Region US (default)
        * User: Region UA
        * Query: alwaysIncludeDefault: true
        * Response: Document 1 (UA), Document 2 (US), Document 3 (US)

    Properties:
        url: /agreement/public/policies/namespaces/{namespace}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        always_include_default: (alwaysIncludeDefault) OPTIONAL bool in query

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)

        404: Not Found - ErrorEntity (40040: errors.net.accelbyte.platform.legal.user_has_no_country)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesPublic.create(
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
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
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesPublic)

    Retrieve all active latest policies based on a namespace and country. The country will be read from user token.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
      *  Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
        * Document 1 (default): Region US (default), UA
        * Document 2 (default): Region US (default)
        * Document 3 (default): Region US (default)
        * User: Region UA
        * Query: alwaysIncludeDefault: true
        * Response: Document 1 (UA), Document 2 (US), Document 3 (US)

    Properties:
        url: /agreement/public/policies/namespaces/{namespace}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        always_include_default: (alwaysIncludeDefault) OPTIONAL bool in query

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL Union[str, PolicyTypeEnum] in query

        tags: (tags) OPTIONAL str in query

        visible_only: (visibleOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)

        404: Not Found - ErrorEntity (40040: errors.net.accelbyte.platform.legal.user_has_no_country)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesPublic.create(
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrievePolicies)
def retrieve_policies(
    country_code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve Policies by Country (retrievePolicies)

    Retrieve all active policies based on a country.

    Properties:
        url: /agreement/admin/policies/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

    Responses:
        200: OK - List[RetrievePolicyResponse] (successful operation)
    """
    request = RetrievePolicies.create(
        country_code=country_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrievePolicies)
async def retrieve_policies_async(
    country_code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve Policies by Country (retrievePolicies)

    Retrieve all active policies based on a country.

    Properties:
        url: /agreement/admin/policies/countries/{countryCode}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

    Responses:
        200: OK - List[RetrievePolicyResponse] (successful operation)
    """
    request = RetrievePolicies.create(
        country_code=country_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetDefaultPolicy2)
def set_default_policy_2(
    policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Default Policy (setDefaultPolicy_2)

    Update a policy to be the default.

    Properties:
        url: /agreement/admin/policies/{policyId}/default

        method: PATCH

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    request = SetDefaultPolicy2.create(
        policy_id=policy_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetDefaultPolicy2)
async def set_default_policy_2_async(
    policy_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Default Policy (setDefaultPolicy_2)

    Update a policy to be the default.

    Properties:
        url: /agreement/admin/policies/{policyId}/default

        method: PATCH

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    request = SetDefaultPolicy2.create(
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
    """Update Country-Specific Policy (updatePolicy)

    Update country-specific and country-group policy.

    Properties:
        url: /agreement/admin/policies/{policyId}

        method: PATCH

        tags: ["Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyRequest in body

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
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
    """Update Country-Specific Policy (updatePolicy)

    Update country-specific and country-group policy.

    Properties:
        url: /agreement/admin/policies/{policyId}

        method: PATCH

        tags: ["Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyRequest in body

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    request = UpdatePolicy.create(
        policy_id=policy_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
