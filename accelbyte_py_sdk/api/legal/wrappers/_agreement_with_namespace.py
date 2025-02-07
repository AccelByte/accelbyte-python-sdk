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

from ..models import DownloadExportedAgreementsInCSVResponse
from ..models import ErrorEntity
from ..models import InitiateExportAgreementsToCSVResponse
from ..models import PagedRetrieveUserAcceptedAgreementResponse
from ..models import RetrieveAcceptedAgreementResponse
from ..models import UserAgreementsResponse
from ..models import UsersAgreementsRequest

from ..operations.agreement_with_namespace import DownloadExportedAgreementsInCSV
from ..operations.agreement_with_namespace import InitiateExportAgreementsToCSV
from ..operations.agreement_with_namespace import RetrieveAcceptedAgreements1
from ..operations.agreement_with_namespace import (
    RetrieveAcceptedAgreementsForMultiUsers,
)
from ..operations.agreement_with_namespace import RetrieveAllUsersByPolicyVersion1


@same_doc_as(DownloadExportedAgreementsInCSV)
def download_exported_agreements_in_csv(
    export_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download Exported Users Accepted Agreements in CSV (downloadExportedAgreementsInCSV)

    This API will check the status of export process.
    If the export process has been completed, the response body will include the download url.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        export_id: (exportId) REQUIRED str in query

    Responses:
        200: OK - DownloadExportedAgreementsInCSVResponse (successful operation)

        404: Not Found - ErrorEntity (40047: Exported agreements for exportId [{exportId}] not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadExportedAgreementsInCSV.create(
        export_id=export_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadExportedAgreementsInCSV)
async def download_exported_agreements_in_csv_async(
    export_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download Exported Users Accepted Agreements in CSV (downloadExportedAgreementsInCSV)

    This API will check the status of export process.
    If the export process has been completed, the response body will include the download url.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        export_id: (exportId) REQUIRED str in query

    Responses:
        200: OK - DownloadExportedAgreementsInCSVResponse (successful operation)

        404: Not Found - ErrorEntity (40047: Exported agreements for exportId [{exportId}] not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadExportedAgreementsInCSV.create(
        export_id=export_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(InitiateExportAgreementsToCSV)
def initiate_export_agreements_to_csv(
    policy_version_id: str,
    start: str,
    end: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Initiate Export Users Accepted Agreements to CSV (initiateExportAgreementsToCSV)

    This API will initiate a worker to export list of users who has accepted a specific policy version into a CSV file.
    To check the export state after initialize it, use `GET /admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download` API.

    This Initiate API is not allow multiple export worker running for the same namespace, it will return 409 http error if so.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate

        method: POST

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) OPTIONAL str in query

        policy_version_id: (policyVersionId) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - InitiateExportAgreementsToCSVResponse (successful operation)

        400: Bad Request - ErrorEntity (40027: Too many export running currently)

        404: Not Found - ErrorEntity (40045: Policy version with id: [{policyVersionId}] not found on namespace [{namespace}])

        409: Conflict - ErrorEntity (40071: Previous export still running for namespace [{namespace}] with exportId [{exportId}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InitiateExportAgreementsToCSV.create(
        policy_version_id=policy_version_id,
        start=start,
        end=end,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InitiateExportAgreementsToCSV)
async def initiate_export_agreements_to_csv_async(
    policy_version_id: str,
    start: str,
    end: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Initiate Export Users Accepted Agreements to CSV (initiateExportAgreementsToCSV)

    This API will initiate a worker to export list of users who has accepted a specific policy version into a CSV file.
    To check the export state after initialize it, use `GET /admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download` API.

    This Initiate API is not allow multiple export worker running for the same namespace, it will return 409 http error if so.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate

        method: POST

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) OPTIONAL str in query

        policy_version_id: (policyVersionId) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - InitiateExportAgreementsToCSVResponse (successful operation)

        400: Bad Request - ErrorEntity (40027: Too many export running currently)

        404: Not Found - ErrorEntity (40045: Policy version with id: [{policyVersionId}] not found on namespace [{namespace}])

        409: Conflict - ErrorEntity (40071: Previous export still running for namespace [{namespace}] with exportId [{exportId}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InitiateExportAgreementsToCSV.create(
        policy_version_id=policy_version_id,
        start=start,
        end=end,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAcceptedAgreements1)
def retrieve_accepted_agreements_1(
    user_id: str,
    exclude_other_namespaces_policies: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Accepted Legal Agreements (retrieveAcceptedAgreements_1)

    This API will return all accepted Legal Agreements for specified user.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_other_namespaces_policies: (excludeOtherNamespacesPolicies) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAcceptedAgreements1.create(
        user_id=user_id,
        exclude_other_namespaces_policies=exclude_other_namespaces_policies,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAcceptedAgreements1)
async def retrieve_accepted_agreements_1_async(
    user_id: str,
    exclude_other_namespaces_policies: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Accepted Legal Agreements (retrieveAcceptedAgreements_1)

    This API will return all accepted Legal Agreements for specified user.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_other_namespaces_policies: (excludeOtherNamespacesPolicies) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAcceptedAgreements1.create(
        user_id=user_id,
        exclude_other_namespaces_policies=exclude_other_namespaces_policies,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAcceptedAgreementsForMultiUsers)
def retrieve_accepted_agreements_for_multi_users(
    body: Optional[UsersAgreementsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Accepted Legal Agreements For Multi Users (retrieveAcceptedAgreementsForMultiUsers)

    This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game account.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements

        method: POST

        tags: ["Agreement With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UsersAgreementsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserAgreementsResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAcceptedAgreementsForMultiUsers.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAcceptedAgreementsForMultiUsers)
async def retrieve_accepted_agreements_for_multi_users_async(
    body: Optional[UsersAgreementsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Accepted Legal Agreements For Multi Users (retrieveAcceptedAgreementsForMultiUsers)

    This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game account.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements

        method: POST

        tags: ["Agreement With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UsersAgreementsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserAgreementsResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAcceptedAgreementsForMultiUsers.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllUsersByPolicyVersion1)
def retrieve_all_users_by_policy_version_1(
    policy_version_id: str,
    convert_game_user_id: Optional[bool] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion_1)

    This API will return all users who has accepted a specific policy version.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        convert_game_user_id: (convertGameUserId) OPTIONAL bool in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllUsersByPolicyVersion1.create(
        policy_version_id=policy_version_id,
        convert_game_user_id=convert_game_user_id,
        keyword=keyword,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllUsersByPolicyVersion1)
async def retrieve_all_users_by_policy_version_1_async(
    policy_version_id: str,
    convert_game_user_id: Optional[bool] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion_1)

    This API will return all users who has accepted a specific policy version.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        convert_game_user_id: (convertGameUserId) OPTIONAL bool in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllUsersByPolicyVersion1.create(
        policy_version_id=policy_version_id,
        convert_game_user_id=convert_game_user_id,
        keyword=keyword,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
