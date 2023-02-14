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
