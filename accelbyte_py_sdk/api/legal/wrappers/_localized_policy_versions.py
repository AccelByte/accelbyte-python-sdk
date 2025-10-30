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

from ..operations.localized_policy_versions import OldCreateLocalizedPolicyVersion
from ..operations.localized_policy_versions import (
    OldPublicRetrieveSingleLocalizedPolicyVersion,
)
from ..operations.localized_policy_versions import OldRequestPresignedURL
from ..operations.localized_policy_versions import OldRetrieveLocalizedPolicyVersions
from ..operations.localized_policy_versions import (
    OldRetrieveSingleLocalizedPolicyVersion,
)
from ..operations.localized_policy_versions import OldSetDefaultLocalizedPolicy
from ..operations.localized_policy_versions import OldUpdateLocalizedPolicyVersion


@same_doc_as(OldCreateLocalizedPolicyVersion)
def old_create_localized_policy_version(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (oldCreateLocalizedPolicyVersion)

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
    request = OldCreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldCreateLocalizedPolicyVersion)
async def old_create_localized_policy_version_async(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (oldCreateLocalizedPolicyVersion)

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
    request = OldCreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldPublicRetrieveSingleLocalizedPolicyVersion)
def old_public_retrieve_single_localized_policy_version(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (oldPublicRetrieveSingleLocalizedPolicyVersion)

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
    request = OldPublicRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldPublicRetrieveSingleLocalizedPolicyVersion)
async def old_public_retrieve_single_localized_policy_version_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (oldPublicRetrieveSingleLocalizedPolicyVersion)

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
    request = OldPublicRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldRequestPresignedURL)
def old_request_presigned_url(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (oldRequestPresignedURL)

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
    request = OldRequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldRequestPresignedURL)
async def old_request_presigned_url_async(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (oldRequestPresignedURL)

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
    request = OldRequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldRetrieveLocalizedPolicyVersions)
def old_retrieve_localized_policy_versions(
    policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (oldRetrieveLocalizedPolicyVersions)

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
    request = OldRetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldRetrieveLocalizedPolicyVersions)
async def old_retrieve_localized_policy_versions_async(
    policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (oldRetrieveLocalizedPolicyVersions)

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
    request = OldRetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldRetrieveSingleLocalizedPolicyVersion)
def old_retrieve_single_localized_policy_version(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (oldRetrieveSingleLocalizedPolicyVersion)

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
    request = OldRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldRetrieveSingleLocalizedPolicyVersion)
async def old_retrieve_single_localized_policy_version_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (oldRetrieveSingleLocalizedPolicyVersion)

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
    request = OldRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldSetDefaultLocalizedPolicy)
def old_set_default_localized_policy(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (oldSetDefaultLocalizedPolicy)

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
    request = OldSetDefaultLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldSetDefaultLocalizedPolicy)
async def old_set_default_localized_policy_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (oldSetDefaultLocalizedPolicy)

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
    request = OldSetDefaultLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(OldUpdateLocalizedPolicyVersion)
def old_update_localized_policy_version(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (oldUpdateLocalizedPolicyVersion)

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
    request = OldUpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(OldUpdateLocalizedPolicyVersion)
async def old_update_localized_policy_version_async(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (oldUpdateLocalizedPolicyVersion)

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
    request = OldUpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
