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

from ..models import CreateLocalizedPolicyVersionRequest
from ..models import CreateLocalizedPolicyVersionResponse
from ..models import ErrorEntity
from ..models import RetrieveLocalizedPolicyVersionPublicResponse
from ..models import RetrieveLocalizedPolicyVersionResponse
from ..models import UpdateLocalizedPolicyVersionRequest
from ..models import UpdateLocalizedPolicyVersionResponse
from ..models import UploadLocalizedPolicyVersionAttachmentResponse
from ..models import UploadPolicyVersionAttachmentRequest

from ..operations.localized_policy_versions import CreateLocalizedPolicyVersion
from ..operations.localized_policy_versions import RequestPresignedURL
from ..operations.localized_policy_versions import RetrieveLocalizedPolicyVersions
from ..operations.localized_policy_versions import RetrieveSingleLocalizedPolicyVersion
from ..operations.localized_policy_versions import RetrieveSingleLocalizedPolicyVersion2
from ..operations.localized_policy_versions import SetDefaultPolicy
from ..operations.localized_policy_versions import UpdateLocalizedPolicyVersion


@same_doc_as(CreateLocalizedPolicyVersion)
def create_localized_policy_version(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (createLocalizedPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/versions/{policyVersionId}

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateLocalizedPolicyVersionRequest in body

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    request = CreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLocalizedPolicyVersion)
async def create_localized_policy_version_async(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (createLocalizedPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/versions/{policyVersionId}

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateLocalizedPolicyVersionRequest in body

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    request = CreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestPresignedURL)
def request_presigned_url(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (requestPresignedURL)

    Request presigned URL for upload attachment for a particular localized version of base policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UploadPolicyVersionAttachmentRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)
    """
    request = RequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestPresignedURL)
async def request_presigned_url_async(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (requestPresignedURL)

    Request presigned URL for upload attachment for a particular localized version of base policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UploadPolicyVersionAttachmentRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)
    """
    request = RequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveLocalizedPolicyVersions)
def retrieve_localized_policy_versions(
    policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (retrieveLocalizedPolicyVersions)

    Retrieve versions of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/versions/{policyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveLocalizedPolicyVersionResponse] (successful operation)
    """
    request = RetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLocalizedPolicyVersions)
async def retrieve_localized_policy_versions_async(
    policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (retrieveLocalizedPolicyVersions)

    Retrieve versions of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/versions/{policyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveLocalizedPolicyVersionResponse] (successful operation)
    """
    request = RetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSingleLocalizedPolicyVersion)
def retrieve_single_localized_policy_version(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (retrieveSingleLocalizedPolicyVersion)

    Retrieve a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionResponse (successful operation)

        404: Not Found - ErrorEntity (2912: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = RetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSingleLocalizedPolicyVersion)
async def retrieve_single_localized_policy_version_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (retrieveSingleLocalizedPolicyVersion)

    Retrieve a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionResponse (successful operation)

        404: Not Found - ErrorEntity (2912: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    request = RetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSingleLocalizedPolicyVersion2)
def retrieve_single_localized_policy_version_2(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (retrieveSingleLocalizedPolicyVersion_2)

    Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
    Other detail info:

    Properties:
        url: /agreement/public/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        403: Forbidden - ErrorEntity (40081: errors.net.accelbyte.platform.legal.policy_not_accessible)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)
    """
    request = RetrieveSingleLocalizedPolicyVersion2.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSingleLocalizedPolicyVersion2)
async def retrieve_single_localized_policy_version_2_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (retrieveSingleLocalizedPolicyVersion_2)

    Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
    Other detail info:

    Properties:
        url: /agreement/public/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        403: Forbidden - ErrorEntity (40081: errors.net.accelbyte.platform.legal.policy_not_accessible)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)
    """
    request = RetrieveSingleLocalizedPolicyVersion2.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetDefaultPolicy)
def set_default_policy(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (setDefaultPolicy)

    Update a localized version policy to be the default.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default

        method: PATCH

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version)
    """
    request = SetDefaultPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetDefaultPolicy)
async def set_default_policy_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (setDefaultPolicy)

    Update a localized version policy to be the default.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default

        method: PATCH

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - (Successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_localize_policy_version)
    """
    request = SetDefaultPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLocalizedPolicyVersion)
def update_localized_policy_version(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (updateLocalizedPolicyVersion)

    Update a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}

        method: PUT

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateLocalizedPolicyVersionRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """
    request = UpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLocalizedPolicyVersion)
async def update_localized_policy_version_async(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (updateLocalizedPolicyVersion)

    Update a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}

        method: PUT

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateLocalizedPolicyVersionRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """
    request = UpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
