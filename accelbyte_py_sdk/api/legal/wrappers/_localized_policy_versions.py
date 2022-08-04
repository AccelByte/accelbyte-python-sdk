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
from ..operations.localized_policy_versions import RetrieveSingleLocalizedPolicyVersion1
from ..operations.localized_policy_versions import SetDefaultPolicy
from ..operations.localized_policy_versions import UpdateLocalizedPolicyVersion


@same_doc_as(CreateLocalizedPolicyVersion)
def create_localized_policy_version(
    policy_version_id: str,
    body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
    request = RetrieveSingleLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSingleLocalizedPolicyVersion1)
def retrieve_single_localized_policy_version_1(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveSingleLocalizedPolicyVersion1.create(
        localized_policy_version_id=localized_policy_version_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSingleLocalizedPolicyVersion1)
async def retrieve_single_localized_policy_version_1_async(
    localized_policy_version_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RetrieveSingleLocalizedPolicyVersion1.create(
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
    request = UpdateLocalizedPolicyVersion.create(
        localized_policy_version_id=localized_policy_version_id,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
