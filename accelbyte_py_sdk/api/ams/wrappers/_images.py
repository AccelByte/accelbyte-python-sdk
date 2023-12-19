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
from ..models import ApiImageUpdate
from ..models import ResponseErrorResponse

from ..operations.images import ImageGet
from ..operations.images import ImageList
from ..operations.images import ImagePatch


@same_doc_as(ImageGet)
def image_get(
    image_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details about an image. (ImageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

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
        namespace, error = get_services_namespace()
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
    """Get details about an image. (ImageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

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
        namespace, error = get_services_namespace()
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of images which exist (uploaded, uploading, or building) in the linked account.  Fails if no account is linked (ImageList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageList.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImageList)
async def image_list_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of images which exist (uploaded, uploading, or building) in the linked account.  Fails if no account is linked (ImageList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImageList.create(
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
    """Edit the image name, toggle IsProtected, or add/remove tags (ImagePatch)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]

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
        namespace, error = get_services_namespace()
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
    """Edit the image name, toggle IsProtected, or add/remove tags (ImagePatch)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]

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
        namespace, error = get_services_namespace()
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
