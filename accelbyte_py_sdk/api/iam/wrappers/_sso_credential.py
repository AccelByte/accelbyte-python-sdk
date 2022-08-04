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

from ..models import ModelSSOPlatformCredentialRequest
from ..models import ModelSSOPlatformCredentialResponse
from ..models import RestErrorResponse

from ..operations.sso_credential import AddSSOLoginPlatformCredential
from ..operations.sso_credential import DeleteSSOLoginPlatformCredentialV3
from ..operations.sso_credential import RetrieveAllSSOLoginPlatformCredentialV3
from ..operations.sso_credential import RetrieveSSOLoginPlatformCredential
from ..operations.sso_credential import UpdateSSOPlatformCredential


@same_doc_as(AddSSOLoginPlatformCredential)
def add_sso_login_platform_credential(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddSSOLoginPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddSSOLoginPlatformCredential)
async def add_sso_login_platform_credential_async(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddSSOLoginPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSSOLoginPlatformCredentialV3)
def delete_sso_login_platform_credential_v3(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSSOLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSSOLoginPlatformCredentialV3)
async def delete_sso_login_platform_credential_v3_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSSOLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllSSOLoginPlatformCredentialV3)
def retrieve_all_sso_login_platform_credential_v3(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllSSOLoginPlatformCredentialV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllSSOLoginPlatformCredentialV3)
async def retrieve_all_sso_login_platform_credential_v3_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllSSOLoginPlatformCredentialV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSSOLoginPlatformCredential)
def retrieve_sso_login_platform_credential(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSSOLoginPlatformCredential.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSSOLoginPlatformCredential)
async def retrieve_sso_login_platform_credential_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveSSOLoginPlatformCredential.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSSOPlatformCredential)
def update_sso_platform_credential(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSSOPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSSOPlatformCredential)
async def update_sso_platform_credential_async(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSSOPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
