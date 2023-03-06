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
    """Create a Base Legal Policy (createPolicy_1)

    Create a legal policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [CREATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.base_policy_namespace_not_match)

        409: Conflict - ErrorEntity (40030: errors.net.accelbyte.platform.legal.invalid_policy_type)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Create a Base Legal Policy (createPolicy_1)

    Create a legal policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [CREATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: POST

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL CreateBasePolicyRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CreateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.base_policy_namespace_not_match)

        409: Conflict - ErrorEntity (40030: errors.net.accelbyte.platform.legal.invalid_policy_type)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Update Base Legal Policy (partialUpdatePolicy_1)

    Update an existing base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequestV2 in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
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
    """Update Base Legal Policy (partialUpdatePolicy_1)

    Update an existing base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequestV2 in body

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """
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
    """Retrieve All Base Legal Policy in the namespace (retrieveAllLegalPoliciesByNamespace)

    Retrieve all base policies in the namespace.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
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
    """Retrieve All Base Legal Policy in the namespace (retrieveAllLegalPoliciesByNamespace)

    Retrieve all base policies in the namespace.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveBasePolicyResponse] (successful operation)
    """
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
    """Retrieve All Policy Type (retrieveAllPolicyTypes_1)

    Retrieve all supported policy types.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policy-types

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
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
    """Retrieve All Policy Type (retrieveAllPolicyTypes_1)

    Retrieve all supported policy types.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policy-types

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """
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
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry_1)

    Retrieve a Base Legal Policy based on a Particular Country.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
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
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry_1)

    Retrieve a Base Legal Policy based on a Particular Country.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40031: errors.net.accelbyte.platform.legal.base_policy_not_found)
    """
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
    """Retrieve a Base Legal Policy (retrieveSinglePolicy_1)

    Retrieve a base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
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
    """Retrieve a Base Legal Policy (retrieveSinglePolicy_1)

    Retrieve a base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}

        method: GET

        tags: ["Base Legal Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveBasePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """
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
