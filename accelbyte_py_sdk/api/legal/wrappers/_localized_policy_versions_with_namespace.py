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

from ..operations.localized_policy_versions_with_namespace import (
    CreateLocalizedPolicyVersion,
)
from ..operations.localized_policy_versions_with_namespace import DeleteLocalizedPolicy
from ..operations.localized_policy_versions_with_namespace import (
    PublicRetrieveSingleLocalizedPolicyVersion,
)
from ..operations.localized_policy_versions_with_namespace import RequestPresignedURL
from ..operations.localized_policy_versions_with_namespace import (
    RetrieveLocalizedPolicyVersions,
)
from ..operations.localized_policy_versions_with_namespace import (
    RetrieveSingleLocalizedPolicyVersion,
)
from ..operations.localized_policy_versions_with_namespace import (
    SetDefaultLocalizedPolicy,
)
from ..operations.localized_policy_versions_with_namespace import (
    UpdateLocalizedPolicyVersion,
)


@same_doc_as(CreateLocalizedPolicyVersion)
def create_localized_policy_version(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (createLocalizedPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}

        method: POST

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateLocalizedPolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLocalizedPolicyVersion)
async def create_localized_policy_version_async(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Localized Version from Country-Specific Policy (createLocalizedPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}

        method: POST

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreateLocalizedPolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLocalizedPolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteLocalizedPolicy)
def delete_localized_policy(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Localized Policy (deleteLocalizedPolicy)

    Delete localized version policy.
    Can only be deleted if match these criteria:


      * Policy Version that this localized policy version belongs to is not active
      * Has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}

        method: DELETE

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successful operation)

        400: Bad Request - ErrorEntity (40075: errors.net.accelbyte.platform.legal.localized_policy_version_is_published_and_already_accepted_by_user | 40076: errors.net.accelbyte.platform.legal.localized_policy_version_is_active)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLocalizedPolicy)
async def delete_localized_policy_async(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Localized Policy (deleteLocalizedPolicy)

    Delete localized version policy.
    Can only be deleted if match these criteria:


      * Policy Version that this localized policy version belongs to is not active
      * Has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}

        method: DELETE

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successful operation)

        400: Bad Request - ErrorEntity (40075: errors.net.accelbyte.platform.legal.localized_policy_version_is_published_and_already_accepted_by_user | 40076: errors.net.accelbyte.platform.legal.localized_policy_version_is_active)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRetrieveSingleLocalizedPolicyVersion)
def public_retrieve_single_localized_policy_version(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (publicRetrieveSingleLocalizedPolicyVersion)

    Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
    Other detail info:

    Properties:
        url: /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        403: Forbidden - ErrorEntity (40081: errors.net.accelbyte.platform.legal.policy_not_accessible)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRetrieveSingleLocalizedPolicyVersion)
async def public_retrieve_single_localized_policy_version_async(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version (publicRetrieveSingleLocalizedPolicyVersion)

    Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
    Other detail info:

    Properties:
        url: /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        403: Forbidden - ErrorEntity (40081: errors.net.accelbyte.platform.legal.policy_not_accessible)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestPresignedURL)
def request_presigned_url(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (requestPresignedURL)

    Request presigned URL for upload attachment for a particular localized version of base policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments

        method: POST

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UploadPolicyVersionAttachmentRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestPresignedURL)
async def request_presigned_url_async(
    localized_policy_version_id: str,
    body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Presigned URL for Upload Document (requestPresignedURL)

    Request presigned URL for upload attachment for a particular localized version of base policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments

        method: POST

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UploadPolicyVersionAttachmentRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RequestPresignedURL.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveLocalizedPolicyVersions)
def retrieve_localized_policy_versions(
    policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (retrieveLocalizedPolicyVersions)

    Retrieve versions of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveLocalizedPolicyVersionResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLocalizedPolicyVersions)
async def retrieve_localized_policy_versions_async(
    policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Versions from Country-Specific Policy (retrieveLocalizedPolicyVersions)

    Retrieve versions of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - List[RetrieveLocalizedPolicyVersionResponse] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLocalizedPolicyVersions.create(
        policy_version_id=policy_version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSingleLocalizedPolicyVersion)
def retrieve_single_localized_policy_version(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (retrieveSingleLocalizedPolicyVersion)

    Retrieve a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionResponse (successful operation)

        404: Not Found - ErrorEntity (2912: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSingleLocalizedPolicyVersion)
async def retrieve_single_localized_policy_version_async(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Localized Version from Country-Specific Policy (retrieveSingleLocalizedPolicyVersion)

    Retrieve a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionResponse (successful operation)

        404: Not Found - ErrorEntity (2912: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetDefaultLocalizedPolicy)
def set_default_localized_policy(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (setDefaultLocalizedPolicy)

    Update a localized version policy to be the default.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default

        method: PATCH

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetDefaultLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetDefaultLocalizedPolicy)
async def set_default_localized_policy_async(
    localized_policy_version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Localized Policy (setDefaultLocalizedPolicy)

    Update a localized version policy to be the default.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default

        method: PATCH

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetDefaultLocalizedPolicy.create(
        localized_policy_version_id=localized_policy_version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLocalizedPolicyVersion)
def update_localized_policy_version(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (updateLocalizedPolicyVersion)

    Update a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: PUT

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateLocalizedPolicyVersionRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLocalizedPolicyVersion)
async def update_localized_policy_version_async(
    localized_policy_version_id: str,
    body: Optional[UpdateLocalizedPolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Localized Version from Country-Specific Policy (updateLocalizedPolicyVersion)

    Update a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: PUT

        tags: ["Localized Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdateLocalizedPolicyVersionRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
