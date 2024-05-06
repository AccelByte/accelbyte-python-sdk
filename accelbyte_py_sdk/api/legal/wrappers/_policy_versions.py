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

from ..models import CreatePolicyVersionRequest
from ..models import CreatePolicyVersionResponse
from ..models import ErrorEntity
from ..models import RetrievePolicyVersionResponse
from ..models import UpdatePolicyVersionRequest
from ..models import UpdatePolicyVersionResponse

from ..operations.policy_versions import CreatePolicyVersion
from ..operations.policy_versions import PublishPolicyVersion
from ..operations.policy_versions import RetrieveSinglePolicyVersion
from ..operations.policy_versions import UpdatePolicyVersion


@same_doc_as(CreatePolicyVersion)
def create_policy_version(
    policy_id: str,
    body: Optional[CreatePolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Version from Country-Specific Policy (createPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/policies/{policyId}/versions

        method: POST

        tags: ["Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyVersionRequest in body

        policy_id: (policyId) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy)
    """
    request = CreatePolicyVersion.create(
        policy_id=policy_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicyVersion)
async def create_policy_version_async(
    policy_id: str,
    body: Optional[CreatePolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Version from Country-Specific Policy (createPolicyVersion)

    Create a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/policies/{policyId}/versions

        method: POST

        tags: ["Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyVersionRequest in body

        policy_id: (policyId) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy)
    """
    request = CreatePolicyVersion.create(
        policy_id=policy_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishPolicyVersion)
def publish_policy_version(
    policy_version_id: str,
    should_notify: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion)

    Manually publish a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)
    """
    request = PublishPolicyVersion.create(
        policy_version_id=policy_version_id,
        should_notify=should_notify,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishPolicyVersion)
async def publish_policy_version_async(
    policy_version_id: str,
    should_notify: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion)

    Manually publish a version of a particular country-specific policy.

    Properties:
        url: /agreement/admin/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)
    """
    request = PublishPolicyVersion.create(
        policy_version_id=policy_version_id,
        should_notify=should_notify,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSinglePolicyVersion)
def retrieve_single_policy_version(
    policy_id: str,
    version_id: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Version from Country-Specific Policy (retrieveSinglePolicyVersion)

    Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.

    Properties:
        url: /agreement/admin/policies/{policyId}/versions

        method: GET

        tags: ["Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_id: (policyId) REQUIRED str in path

        version_id: (versionId) OPTIONAL str in query

    Responses:
        200: OK - List[RetrievePolicyVersionResponse] (successful operation)

        404: Not Found - ErrorEntity (40036: errors.net.accelbyte.platform.legal.policy_version_id_not_found)
    """
    request = RetrieveSinglePolicyVersion.create(
        policy_id=policy_id,
        version_id=version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicyVersion)
async def retrieve_single_policy_version_async(
    policy_id: str,
    version_id: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Version from Country-Specific Policy (retrieveSinglePolicyVersion)

    Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.

    Properties:
        url: /agreement/admin/policies/{policyId}/versions

        method: GET

        tags: ["Policy Versions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        policy_id: (policyId) REQUIRED str in path

        version_id: (versionId) OPTIONAL str in query

    Responses:
        200: OK - List[RetrievePolicyVersionResponse] (successful operation)

        404: Not Found - ErrorEntity (40036: errors.net.accelbyte.platform.legal.policy_version_id_not_found)
    """
    request = RetrieveSinglePolicyVersion.create(
        policy_id=policy_id,
        version_id=version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePolicyVersion)
def update_policy_version(
    policy_version_id: str,
    body: Optional[UpdatePolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Version of Policy (updatePolicyVersion)

    Update a particular policy version.

    Properties:
        url: /agreement/admin/policies/versions/{policyVersionId}

        method: PATCH

        tags: ["Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyVersionRequest in body

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)

        409: Conflict - ErrorEntity (40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    request = UpdatePolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePolicyVersion)
async def update_policy_version_async(
    policy_version_id: str,
    body: Optional[UpdatePolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Version of Policy (updatePolicyVersion)

    Update a particular policy version.

    Properties:
        url: /agreement/admin/policies/versions/{policyVersionId}

        method: PATCH

        tags: ["Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyVersionRequest in body

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)

        409: Conflict - ErrorEntity (40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    request = UpdatePolicyVersion.create(
        policy_version_id=policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
