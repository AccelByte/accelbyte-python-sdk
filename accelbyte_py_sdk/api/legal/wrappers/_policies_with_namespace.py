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
from ..models import UpdatePolicyRequest

from ..operations.policies_with_namespace import DeletePolicy
from ..operations.policies_with_namespace import SetDefaultPolicy3
from ..operations.policies_with_namespace import UpdatePolicy1


@same_doc_as(DeletePolicy)
def delete_policy(
    policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Policy (deletePolicy)

    Delete policy.Can only be deleted if match these criteria:


      * Policy is not default policy
      * Policy version under policy has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}

        method: DELETE

        tags: ["Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id | 40072: errors.net.accelbyte.platform.legal.policy_have_published_policy_version | 40073: errors.net.accelbyte.platform.legal.policy_have_published_policy_version_and_already_accepted_by_user | 40074: errors.net.accelbyte.platform.legal.policy_is_default_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePolicy.create(
        policy_id=policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePolicy)
async def delete_policy_async(
    policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Policy (deletePolicy)

    Delete policy.Can only be deleted if match these criteria:


      * Policy is not default policy
      * Policy version under policy has never been accepted by any user

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}

        method: DELETE

        tags: ["Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id | 40072: errors.net.accelbyte.platform.legal.policy_have_published_policy_version | 40073: errors.net.accelbyte.platform.legal.policy_have_published_policy_version_and_already_accepted_by_user | 40074: errors.net.accelbyte.platform.legal.policy_is_default_policy)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePolicy.create(
        policy_id=policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetDefaultPolicy3)
def set_default_policy_3(
    policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Policy (setDefaultPolicy_3)

    Update a policy to be the default.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/default

        method: PATCH

        tags: ["Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetDefaultPolicy3.create(
        policy_id=policy_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetDefaultPolicy3)
async def set_default_policy_3_async(
    policy_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Default Policy (setDefaultPolicy_3)

    Update a policy to be the default.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}/default

        method: PATCH

        tags: ["Policies With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SetDefaultPolicy3.create(
        policy_id=policy_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePolicy1)
def update_policy_1(
    policy_id: str,
    body: Optional[UpdatePolicyRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Country-Specific Policy (updatePolicy_1)

    Update country-specific and country-group policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}

        method: PATCH

        tags: ["Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePolicy1.create(
        policy_id=policy_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePolicy1)
async def update_policy_1_async(
    policy_id: str,
    body: Optional[UpdatePolicyRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Country-Specific Policy (updatePolicy_1)

    Update country-specific and country-group policy.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/{policyId}

        method: PATCH

        tags: ["Policies With Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UpdatePolicyRequest in body

        namespace: (namespace) REQUIRED str in path

        policy_id: (policyId) REQUIRED str in path

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_id)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePolicy1.create(
        policy_id=policy_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
