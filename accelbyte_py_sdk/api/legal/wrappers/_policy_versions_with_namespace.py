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

from ..operations.policy_versions_with_namespace import CreatePolicyVersion1
from ..operations.policy_versions_with_namespace import PublishPolicyVersion1
from ..operations.policy_versions_with_namespace import RetrieveSinglePolicyVersion1
from ..operations.policy_versions_with_namespace import UpdatePolicyVersion1


@same_doc_as(CreatePolicyVersion1)
def create_policy_version_1(
    policy_id: str,
    body: Optional[CreatePolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Version from Country-Specific Policy (createPolicyVersion_1)

    Create a version of a particular country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [CREATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions

        method: POST

        tags: ["Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePolicyVersion1.create(
        policy_id=policy_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePolicyVersion1)
async def create_policy_version_1_async(
    policy_id: str,
    body: Optional[CreatePolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a Version from Country-Specific Policy (createPolicyVersion_1)

    Create a version of a particular country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [CREATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions

        method: POST

        tags: ["Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL CreatePolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        201: Created - CreatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePolicyVersion1.create(
        policy_id=policy_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishPolicyVersion1)
def publish_policy_version_1(
    policy_version_id: str,
    should_notify: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion_1)

    Manually publish a version of a particular country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishPolicyVersion1.create(
        policy_version_id=policy_version_id,
        should_notify=should_notify,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishPolicyVersion1)
async def publish_policy_version_1_async(
    policy_version_id: str,
    should_notify: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion_1)

    Manually publish a version of a particular country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishPolicyVersion1.create(
        policy_version_id=policy_version_id,
        should_notify=should_notify,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSinglePolicyVersion1)
def retrieve_single_policy_version_1(
    policy_id: str,
    version_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Version from Country-Specific Policy (retrieveSinglePolicyVersion_1)

    Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions

        method: GET

        tags: ["Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

        version_id: (versionId) OPTIONAL str in query

    Responses:
        200: OK - List[RetrievePolicyVersionResponse] (successful operation)

        404: Not Found - ErrorEntity (40036: errors.net.accelbyte.platform.legal.policy_version_id_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSinglePolicyVersion1.create(
        policy_id=policy_id,
        version_id=version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSinglePolicyVersion1)
async def retrieve_single_policy_version_1_async(
    policy_id: str,
    version_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve a Version from Country-Specific Policy (retrieveSinglePolicyVersion_1)

    Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions

        method: GET

        tags: ["Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

        version_id: (versionId) OPTIONAL str in query

    Responses:
        200: OK - List[RetrievePolicyVersionResponse] (successful operation)

        404: Not Found - ErrorEntity (40036: errors.net.accelbyte.platform.legal.policy_version_id_not_found)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSinglePolicyVersion1.create(
        policy_id=policy_id,
        version_id=version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePolicyVersion1)
def update_policy_version_1(
    policy_version_id: str,
    body: Optional[UpdatePolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Version of Policy (updatePolicyVersion_1)

    Update a particular policy version.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}

        method: PATCH

        tags: ["Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)

        409: Conflict - ErrorEntity (40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePolicyVersion1.create(
        policy_version_id=policy_version_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePolicyVersion1)
async def update_policy_version_1_async(
    policy_version_id: str,
    body: Optional[UpdatePolicyVersionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Version of Policy (updatePolicyVersion_1)

    Update a particular policy version.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}

        method: PATCH

        tags: ["Policy Versions With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyVersionRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdatePolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)

        409: Conflict - ErrorEntity (40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePolicyVersion1.create(
        policy_version_id=policy_version_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
