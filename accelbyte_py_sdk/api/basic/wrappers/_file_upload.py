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

from ..models import ErrorEntity
from ..models import FileUploadUrlInfo
from ..models import ValidationErrorEntity

from ..operations.file_upload import GeneratedUploadUrl
from ..operations.file_upload import GeneratedUserUploadContentUrl
from ..operations.file_upload import PublicGeneratedUploadUrl
from ..operations.file_upload import PublicGeneratedUserUploadContentUrl


@same_doc_as(GeneratedUploadUrl)
def generated_upload_url(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GeneratedUploadUrl)
async def generated_upload_url_async(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GeneratedUserUploadContentUrl)
def generated_user_upload_content_url(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GeneratedUserUploadContentUrl)
async def generated_user_upload_content_url_async(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratedUploadUrl)
def public_generated_upload_url(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratedUploadUrl)
async def public_generated_upload_url_async(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratedUserUploadContentUrl)
def public_generated_user_upload_content_url(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratedUserUploadContentUrl)
async def public_generated_user_upload_content_url_async(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
