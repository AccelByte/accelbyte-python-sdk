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

from ..models import ApiImageDetails
from ..models import ApiImageList
from ..models import ApiImageStorage
from ..models import ApiImageUpdate
from ..models import ResponseErrorResponse

from ..operations.images import ImageGet
from ..operations.images import ImageList
from ..operations.images import ImageMarkForDeletion
from ..operations.images import ImagePatch
from ..operations.images import ImageUnmarkForDeletion
from ..operations.images import ImagesStorage


@same_doc_as(ImageGet)
def image_get(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get image details. (ImageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageDetails (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageGet.create(
        image_id=image_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageGet)
async def image_get_async(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get image details. (ImageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageDetails (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageGet.create(
        image_id=image_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImageList)
def image_list(
    count: Optional[int] = None,
    in_use: Optional[str] = None,
    is_protected: Optional[bool] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[str] = None,
    status: Optional[str] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of existing images (ImageList)

    Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        in_use: (inUse) OPTIONAL str in query

        is_protected: (isProtected) OPTIONAL bool in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageList.create(
        count=count,
        in_use=in_use,
        is_protected=is_protected,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sort_direction=sort_direction,
        status=status,
        tag=tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageList)
async def image_list_async(
    count: Optional[int] = None,
    in_use: Optional[str] = None,
    is_protected: Optional[bool] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[str] = None,
    status: Optional[str] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of existing images (ImageList)

    Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        in_use: (inUse) OPTIONAL str in query

        is_protected: (isProtected) OPTIONAL bool in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageList.create(
        count=count,
        in_use=in_use,
        is_protected=is_protected,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sort_direction=sort_direction,
        status=status,
        tag=tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImageMarkForDeletion)
def image_mark_for_deletion(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """mark the image for deletion (ImageMarkForDeletion)

    Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: DELETE

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image is being used by 1 or more fleets)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageMarkForDeletion.create(
        image_id=image_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageMarkForDeletion)
async def image_mark_for_deletion_async(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """mark the image for deletion (ImageMarkForDeletion)

    Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: DELETE

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image is being used by 1 or more fleets)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageMarkForDeletion.create(
        image_id=image_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImagePatch)
def image_patch(
    body: ApiImageUpdate,
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """edit the image (ImagePatch)

    This allows editing of the image name, toggling `IsProtected`, or adding & removal of tags

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: PATCH

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiImageUpdate in body

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageDetails (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImagePatch.create(
        body=body,
        image_id=image_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImagePatch)
async def image_patch_async(
    body: ApiImageUpdate,
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """edit the image (ImagePatch)

    This allows editing of the image name, toggling `IsProtected`, or adding & removal of tags

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: PATCH

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiImageUpdate in body

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageDetails (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImagePatch.create(
        body=body,
        image_id=image_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImageUnmarkForDeletion)
def image_unmark_for_deletion(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """unmarks the image for deletion (ImageUnmarkForDeletion)

    Unmarks an image for deletion. The image will be available for fleets.

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore

        method: POST

        tags: ["Images"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image wasn't marked for deletion)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageUnmarkForDeletion.create(
        image_id=image_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageUnmarkForDeletion)
async def image_unmark_for_deletion_async(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """unmarks the image for deletion (ImageUnmarkForDeletion)

    Unmarks an image for deletion. The image will be available for fleets.

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore

        method: POST

        tags: ["Images"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image wasn't marked for deletion)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImageUnmarkForDeletion.create(
        image_id=image_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImagesStorage)
def images_storage(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get current usage for images storage (ImagesStorage)

    Returns information regarding the account's usage for images storage including the free tier quota

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images-storage

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageStorage (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImagesStorage.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImagesStorage)
async def images_storage_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get current usage for images storage (ImagesStorage)

    Returns information regarding the account's usage for images storage including the free tier quota

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images-storage

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageStorage (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImagesStorage.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
