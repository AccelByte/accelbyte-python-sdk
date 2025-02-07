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

from ..models import ApimodelGetAppImageListV2Response
from ..models import GeneratedDeleteAppImagesV1Request
from ..models import ResponseErrorResponse

from ..operations.image_v2 import DeleteAppImagesV2
from ..operations.image_v2 import GetAppImageListV2


@same_doc_as(DeleteAppImagesV2)
def delete_app_images_v2(
    app: str,
    body: GeneratedDeleteAppImagesV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete app images (DeleteAppImagesV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

    Deletes list of provided image tags from the app image repository

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/images

        method: DELETE

        tags: ["Image V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedDeleteAppImagesV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppImagesV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAppImagesV2)
async def delete_app_images_v2_async(
    app: str,
    body: GeneratedDeleteAppImagesV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete app images (DeleteAppImagesV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

    Deletes list of provided image tags from the app image repository

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/images

        method: DELETE

        tags: ["Image V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedDeleteAppImagesV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppImagesV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppImageListV2)
def get_app_image_list_v2(
    app: str,
    cached: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of container images (GetAppImageListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

    Get a list of container images

    Default 'cached' parameter is 'true'

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/images

        method: GET

        tags: ["Image V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        cached: (cached) OPTIONAL str in query

    Responses:
        200: OK - ApimodelGetAppImageListV2Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppImageListV2.create(
        app=app,
        cached=cached,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppImageListV2)
async def get_app_image_list_v2_async(
    app: str,
    cached: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of container images (GetAppImageListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

    Get a list of container images

    Default 'cached' parameter is 'true'

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/images

        method: GET

        tags: ["Image V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        cached: (cached) OPTIONAL str in query

    Responses:
        200: OK - ApimodelGetAppImageListV2Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppImageListV2.create(
        app=app,
        cached=cached,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
