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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    request = ChangePreferenceConsent1.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(IndirectBulkAcceptVersionedPolicy1)
def indirect_bulk_accept_versioned_policy_1(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = IndirectBulkAcceptVersionedPolicy1.create(
        user_id=user_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IndirectBulkAcceptVersionedPolicy1)
async def indirect_bulk_accept_versioned_policy_1_async(
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = IndirectBulkAcceptVersionedPolicy1.create(
        user_id=user_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    request = RetrieveAcceptedAgreements.create(
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAcceptedAgreements)
async def retrieve_accepted_agreements_async(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = RetrieveAgreementsPublic.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAgreementsPublic)
async def retrieve_agreements_public_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = RetrieveAllUsersByPolicyVersion.create(
        policy_version_id=policy_version_id,
        keyword=keyword,
        limit=limit,
        offset=offset,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
