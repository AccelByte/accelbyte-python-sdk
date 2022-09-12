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

from ..models import ModelsCreateImagePatchRequest
from ..models import ModelsCreateImageRequest
from ..models import ModelsGetImageDetailResponse
from ..models import ModelsGetImageLimitResponse
from ..models import ModelsGetImagePatchDetailResponse
from ..models import ModelsImageRecord
from ..models import ModelsImageRecordUpdate
from ..models import ModelsImportResponse
from ..models import ModelsListImagePatchesResponse
from ..models import ModelsListImageResponse
from ..models import ResponseError

from ..operations.image_config import CreateImage
from ..operations.image_config import CreateImagePatch
from ..operations.image_config import DeleteImage
from ..operations.image_config import DeleteImagePatch
from ..operations.image_config import ExportImages
from ..operations.image_config import GetImageDetail
from ..operations.image_config import GetImageLimit
from ..operations.image_config import GetImagePatchDetail
from ..operations.image_config import GetImagePatches
from ..operations.image_config import ImageDetailClient
from ..operations.image_config import ImageLimitClient
from ..operations.image_config import ImportImages
from ..operations.image_config import ListImages
from ..operations.image_config import ListImagesSortByEnum, ListImagesSortDirectionEnum
from ..operations.image_config import UpdateImage


@same_doc_as(CreateImage)
def create_image(
    body: ModelsCreateImageRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateImage.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateImage)
async def create_image_async(
    body: ModelsCreateImageRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateImage.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateImagePatch)
def create_image_patch(
    body: ModelsCreateImagePatchRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateImagePatch.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateImagePatch)
async def create_image_patch_async(
    body: ModelsCreateImagePatchRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateImagePatch.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteImage)
def delete_image(
    image_uri: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImage.create(
        image_uri=image_uri,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteImage)
async def delete_image_async(
    image_uri: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImage.create(
        image_uri=image_uri,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteImagePatch)
def delete_image_patch(
    image_uri: str,
    version: str,
    version_patch: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImagePatch.create(
        image_uri=image_uri,
        version=version,
        version_patch=version_patch,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteImagePatch)
async def delete_image_patch_async(
    image_uri: str,
    version: str,
    version_patch: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImagePatch.create(
        image_uri=image_uri,
        version=version,
        version_patch=version_patch,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportImages)
def export_images(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportImages.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportImages)
async def export_images_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportImages.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetImageDetail)
def get_image_detail(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageDetail.create(
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetImageDetail)
async def get_image_detail_async(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageDetail.create(
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetImageLimit)
def get_image_limit(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageLimit.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetImageLimit)
async def get_image_limit_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageLimit.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetImagePatchDetail)
def get_image_patch_detail(
    version: str,
    version_patch: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImagePatchDetail.create(
        version=version,
        version_patch=version_patch,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetImagePatchDetail)
async def get_image_patch_detail_async(
    version: str,
    version_patch: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImagePatchDetail.create(
        version=version,
        version_patch=version_patch,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetImagePatches)
def get_image_patches(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImagePatches.create(
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetImagePatches)
async def get_image_patches_async(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImagePatches.create(
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImageDetailClient)
def image_detail_client(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageDetailClient.create(
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageDetailClient)
async def image_detail_client_async(
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageDetailClient.create(
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImageLimitClient)
def image_limit_client(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageLimitClient.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageLimitClient)
async def image_limit_client_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageLimitClient.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportImages)
def import_images(
    file: Any, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ImportImages.create(
        file=file,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportImages)
async def import_images_async(
    file: Any, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ImportImages.create(
        file=file,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListImages)
def list_images(
    count: int,
    offset: int,
    q: Optional[str] = None,
    sort_by: Optional[Union[str, ListImagesSortByEnum]] = None,
    sort_direction: Optional[Union[str, ListImagesSortDirectionEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListImages.create(
        count=count,
        offset=offset,
        q=q,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListImages)
async def list_images_async(
    count: int,
    offset: int,
    q: Optional[str] = None,
    sort_by: Optional[Union[str, ListImagesSortByEnum]] = None,
    sort_direction: Optional[Union[str, ListImagesSortDirectionEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListImages.create(
        count=count,
        offset=offset,
        q=q,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateImage)
def update_image(
    body: ModelsImageRecordUpdate,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateImage.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateImage)
async def update_image_async(
    body: ModelsImageRecordUpdate,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateImage.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
