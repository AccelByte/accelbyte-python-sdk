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
    """Create image (CreateImage)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint will create image.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images

        method: POST

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateImageRequest in body

    Responses:
        204: No Content - (image created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (conflict. duplicate image version record)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Create image (CreateImage)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint will create image.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images

        method: POST

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateImageRequest in body

    Responses:
        204: No Content - (image created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (conflict. duplicate image version record)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Create image patch (CreateImagePatch)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint will create image patch.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "patchVersion":"1.0.0-patch",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0-patch",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images/patches

        method: POST

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateImagePatchRequest in body

    Responses:
        201: Created - (image patch created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (conflict. duplicate image patch version record)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Create image patch (CreateImagePatch)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint will create image patch.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "patchVersion":"1.0.0-patch",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0-patch",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images/patches

        method: POST

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateImagePatchRequest in body

    Responses:
        201: Created - (image patch created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (conflict. duplicate image patch version record)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Delete an image (DeleteImage)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social.

    This endpoint will delete an image that specified in the request parameter.

    Default image is cannot be deleted and will throw error 422 (Unprocessable entity).

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images

        method: DELETE

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        image_uri: (imageURI) REQUIRED str in query

        version: (version) REQUIRED str in query

    Responses:
        204: No Content - (image deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (malformed request)

        422: Unprocessable Entity - ResponseError (unprocessable entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Delete an image (DeleteImage)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social.

    This endpoint will delete an image that specified in the request parameter.

    Default image is cannot be deleted and will throw error 422 (Unprocessable entity).

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images

        method: DELETE

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        image_uri: (imageURI) REQUIRED str in query

        version: (version) REQUIRED str in query

    Responses:
        204: No Content - (image deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (malformed request)

        422: Unprocessable Entity - ResponseError (unprocessable entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Delete an image patch (DeleteImagePatch)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint will delete an image patch that specified in the request parameter

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/patches

        method: DELETE

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        image_uri: (imageURI) REQUIRED str in query

        version: (version) REQUIRED str in query

        version_patch: (versionPatch) REQUIRED str in query

    Responses:
        204: No Content - (image deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (malformed request)

        422: Unprocessable Entity - ResponseError (unprocessable entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Delete an image patch (DeleteImagePatch)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint will delete an image patch that specified in the request parameter

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/patches

        method: DELETE

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        image_uri: (imageURI) REQUIRED str in query

        version: (version) REQUIRED str in query

        version_patch: (versionPatch) REQUIRED str in query

    Responses:
        204: No Content - (image deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (malformed request)

        422: Unprocessable Entity - ResponseError (unprocessable entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """export DSM Controller images for a namespace (ExportImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint export a dedicated servers images in a namespace.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/export

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsImageRecord] (images exported)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (images not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """export DSM Controller images for a namespace (ExportImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint export a dedicated servers images in a namespace.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/export

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsImageRecord] (images exported)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (images not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Detail (GetImageDetail)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific version of dedicated servers images.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Detail (GetImageDetail)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific version of dedicated servers images.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Limit (GetImageLimit)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get ds image limit for specific namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/limit

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageLimitResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Limit (GetImageLimit)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get ds image limit for specific namespace

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/limit

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageLimitResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image patch Detail (GetImagePatchDetail)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific image patch version of dedicated servers version.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

        version_patch: (versionPatch) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImagePatchDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image patch Detail (GetImagePatchDetail)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific image patch version of dedicated servers version.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

        version_patch: (versionPatch) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImagePatchDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Get All Image Patches by Version (GetImagePatches)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get image patches by version.

    Image Size unit is byte.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsListImagePatchesResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Get All Image Patches by Version (GetImagePatches)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get image patches by version.

    Image Size unit is byte.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsListImagePatchesResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Detail Client (ImageDetailClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific version of dedicated servers images.

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/images/versions/{version}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Detail Client (ImageDetailClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific version of dedicated servers images.

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/images/versions/{version}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Limit for Client (ImageLimitClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get DS image limit for specific namespace.This endpoint also give the non-persistent image which is used by any deployments

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/images/limit

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageLimitResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """DS Image Limit for Client (ImageLimitClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get DS image limit for specific namespace.This endpoint also give the non-persistent image which is used by any deployments

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/images/limit

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImageLimitResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """import images for a namespace (ImportImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint import a dedicated servers images in a namespace.

    The image will be upsert. Existing version will be replaced with imported image, will create new one if not found.

    Example data inside imported file
    [
    {
    "namespace": "dewa",
    "image": "123456789.dkr.ecr.us-west-2.amazonaws.com/ds-dewa:0.0.1-alpha",
    "version": "0.0.1",
    "persistent": true
    }
    ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images/import

        method: POST

        tags: ["Image Config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

    Responses:
        200: OK - ModelsImportResponse (images imported)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ImportImages.create(
        file=file,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportImages)
async def import_images_async(
    file: Any, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """import images for a namespace (ImportImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint import a dedicated servers images in a namespace.

    The image will be upsert. Existing version will be replaced with imported image, will create new one if not found.

    Example data inside imported file
    [
    {
    "namespace": "dewa",
    "image": "123456789.dkr.ecr.us-west-2.amazonaws.com/ds-dewa:0.0.1-alpha",
    "version": "0.0.1",
    "persistent": true
    }
    ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images/import

        method: POST

        tags: ["Image Config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

    Responses:
        200: OK - ModelsImportResponse (images imported)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """List all DS images (ListImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint lists all of dedicated servers images.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        q: (q) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListImageResponse (configs listed)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """List all DS images (ListImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint lists all of dedicated servers images.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        q: (q) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListImageResponse (configs listed)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Update image (UpdateImage)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
    Required scope: social

    This endpoint will update an image name and/or image persistent flag.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images

        method: PUT

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsImageRecordUpdate in body

    Responses:
        204: No Content - (image updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
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
    """Update image (UpdateImage)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
    Required scope: social

    This endpoint will update an image name and/or image persistent flag.

    Sample image:
    {
    "namespace":"dewa",
    "version":"1.0.0",
    "image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
    "persistent":false
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/images

        method: PUT

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsImageRecordUpdate in body

    Responses:
        204: No Content - (image updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = UpdateImage.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
