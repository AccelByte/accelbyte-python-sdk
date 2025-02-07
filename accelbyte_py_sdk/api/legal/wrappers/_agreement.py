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

from ..models import AcceptAgreementRequest
from ..models import AcceptAgreementResponse
from ..models import ErrorEntity
from ..models import PagedRetrieveUserAcceptedAgreementResponse
from ..models import RetrieveAcceptedAgreementResponse

from ..operations.agreement import AcceptVersionedPolicy
from ..operations.agreement import BulkAcceptVersionedPolicy
from ..operations.agreement import ChangePreferenceConsent
from ..operations.agreement import ChangePreferenceConsent1
from ..operations.agreement import IndirectBulkAcceptVersionedPolicy1
from ..operations.agreement import IndirectBulkAcceptVersionedPolicyV2
from ..operations.agreement import RetrieveAcceptedAgreements
from ..operations.agreement import RetrieveAgreementsPublic
from ..operations.agreement import RetrieveAllUsersByPolicyVersion


@same_doc_as(AcceptVersionedPolicy)
def accept_versioned_policy(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept a Policy Version (acceptVersionedPolicy)

    Accepts a legal policy version. Supply with localized version policy id to accept an agreement

    Properties:
        url: /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}

        method: POST

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        201: Created - (successful anonymize)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed | 40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id)
    """
    request = AcceptVersionedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptVersionedPolicy)
async def accept_versioned_policy_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept a Policy Version (acceptVersionedPolicy)

    Accepts a legal policy version. Supply with localized version policy id to accept an agreement

    Properties:
        url: /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}

        method: POST

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        201: Created - (successful anonymize)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed | 40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id)
    """
    request = AcceptVersionedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkAcceptVersionedPolicy)
def bulk_accept_versioned_policy(
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (bulkAcceptVersionedPolicy)

    Accepts many legal policy versions all at once. Supply with localized version policy id to accept an agreement.

    Properties:
        url: /agreement/public/agreements/policies

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed | 40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id)
    """
    request = BulkAcceptVersionedPolicy.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkAcceptVersionedPolicy)
async def bulk_accept_versioned_policy_async(
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (bulkAcceptVersionedPolicy)

    Accepts many legal policy versions all at once. Supply with localized version policy id to accept an agreement.

    Properties:
        url: /agreement/public/agreements/policies

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed | 40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id)
    """
    request = BulkAcceptVersionedPolicy.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ChangePreferenceConsent)
def change_preference_consent(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change Preference Consent (changePreferenceConsent)

    This API will Update Preference Consent

    Properties:
        url: /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}

        method: PATCH

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        404: Not Found - ErrorEntity (40047: errors.net.accelbyte.platform.legal.user_agreement_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ChangePreferenceConsent.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ChangePreferenceConsent)
async def change_preference_consent_async(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change Preference Consent (changePreferenceConsent)

    This API will Update Preference Consent

    Properties:
        url: /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}

        method: PATCH

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        404: Not Found - ErrorEntity (40047: errors.net.accelbyte.platform.legal.user_agreement_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ChangePreferenceConsent.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ChangePreferenceConsent1)
def change_preference_consent_1(
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept/Revoke Marketing Preference Consent (changePreferenceConsent_1)

    Change marketing preference consent.

    Properties:
        url: /agreement/public/agreements/localized-policy-versions/preferences

        method: PATCH

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ErrorEntity (40017: Policy with id : [{policyId}] is not marketing preference | 40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    request = ChangePreferenceConsent1.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ChangePreferenceConsent1)
async def change_preference_consent_1_async(
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept/Revoke Marketing Preference Consent (changePreferenceConsent_1)

    Change marketing preference consent.

    Properties:
        url: /agreement/public/agreements/localized-policy-versions/preferences

        method: PATCH

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ErrorEntity (40017: Policy with id : [{policyId}] is not marketing preference | 40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    request = ChangePreferenceConsent1.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(IndirectBulkAcceptVersionedPolicy1)
def indirect_bulk_accept_versioned_policy_1(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (Indirect) (indirectBulkAcceptVersionedPolicy_1)

    Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.

    Properties:
        url: /agreement/public/agreements/policies/users/{userId}

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = IndirectBulkAcceptVersionedPolicy1.create(
        user_id=user_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(IndirectBulkAcceptVersionedPolicy1)
async def indirect_bulk_accept_versioned_policy_1_async(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (Indirect) (indirectBulkAcceptVersionedPolicy_1)

    Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.

    Properties:
        url: /agreement/public/agreements/policies/users/{userId}

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = IndirectBulkAcceptVersionedPolicy1.create(
        user_id=user_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(IndirectBulkAcceptVersionedPolicyV2)
def indirect_bulk_accept_versioned_policy_v2(
    client_id: str,
    country_code: str,
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (Indirect) (indirectBulkAcceptVersionedPolicyV2)

    Accepts many legal policy versions all at once. Supply with localized version policy id, version policy id, policy id, userId, namespace, country code and client id to accept an agreement. This endpoint used by APIGateway during new user registration.

    Properties:
        url: /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        client_id: (clientId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IndirectBulkAcceptVersionedPolicyV2.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(IndirectBulkAcceptVersionedPolicyV2)
async def indirect_bulk_accept_versioned_policy_v2_async(
    client_id: str,
    country_code: str,
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk Accept Policy Versions (Indirect) (indirectBulkAcceptVersionedPolicyV2)

    Accepts many legal policy versions all at once. Supply with localized version policy id, version policy id, policy id, userId, namespace, country code and client id to accept an agreement. This endpoint used by APIGateway during new user registration.

    Properties:
        url: /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}

        method: POST

        tags: ["Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        client_id: (clientId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IndirectBulkAcceptVersionedPolicyV2.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAcceptedAgreements)
def retrieve_accepted_agreements(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve Accepted Legal Agreements (retrieveAcceptedAgreements)

    This API will return all accepted Legal Agreements for specified user

    Properties:
        url: /agreement/admin/agreements/policies/users/{userId}

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)
    """
    request = RetrieveAcceptedAgreements.create(
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAcceptedAgreements)
async def retrieve_accepted_agreements_async(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve Accepted Legal Agreements (retrieveAcceptedAgreements)

    This API will return all accepted Legal Agreements for specified user

    Properties:
        url: /agreement/admin/agreements/policies/users/{userId}

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)
    """
    request = RetrieveAcceptedAgreements.create(
        user_id=user_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAgreementsPublic)
def retrieve_agreements_public(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve the accepted Legal Agreements (retrieveAgreementsPublic)

    Retrieve accepted Legal Agreements.

    Properties:
        url: /agreement/public/agreements/policies

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    request = RetrieveAgreementsPublic.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAgreementsPublic)
async def retrieve_agreements_public_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve the accepted Legal Agreements (retrieveAgreementsPublic)

    Retrieve accepted Legal Agreements.

    Properties:
        url: /agreement/public/agreements/policies

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    request = RetrieveAgreementsPublic.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllUsersByPolicyVersion)
def retrieve_all_users_by_policy_version(
    policy_version_id: str,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion)

    This API will return users who has accepted a specific policy version.

    Properties:
        url: /agreement/admin/agreements/policy-versions/users

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = RetrieveAllUsersByPolicyVersion.create(
        policy_version_id=policy_version_id,
        keyword=keyword,
        limit=limit,
        offset=offset,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllUsersByPolicyVersion)
async def retrieve_all_users_by_policy_version_async(
    policy_version_id: str,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion)

    This API will return users who has accepted a specific policy version.

    Properties:
        url: /agreement/admin/agreements/policy-versions/users

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = RetrieveAllUsersByPolicyVersion.create(
        policy_version_id=policy_version_id,
        keyword=keyword,
        limit=limit,
        offset=offset,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
