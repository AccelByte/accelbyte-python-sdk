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

from ..models import ModelsPlayFeatureFlag
from ..models import ResponseError

from ..operations.play_feature_flag import AdminDeletePlayFeatureFlag
from ..operations.play_feature_flag import AdminGetPlayFeatureFlag
from ..operations.play_feature_flag import AdminUpsertPlayFeatureFlag


@same_doc_as(AdminDeletePlayFeatureFlag)
def admin_delete_play_feature_flag(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Delete Play Feature Flag (adminDeletePlayFeatureFlag)


    Delete matchmaking Play Feature Flag.
    Deleting the current namespace's custom config only removes it from the database, the system will then use the environment variable defined in the ConfigMap instead.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: DELETE

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayFeatureFlag.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeletePlayFeatureFlag)
async def admin_delete_play_feature_flag_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Delete Play Feature Flag (adminDeletePlayFeatureFlag)


    Delete matchmaking Play Feature Flag.
    Deleting the current namespace's custom config only removes it from the database, the system will then use the environment variable defined in the ConfigMap instead.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: DELETE

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlayFeatureFlag.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayFeatureFlag)
def admin_get_play_feature_flag(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Play Feature Flag (adminGetPlayFeatureFlag)

    Get matchmaking Play Feature Flag.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: GET

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayFeatureFlag (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayFeatureFlag.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayFeatureFlag)
async def admin_get_play_feature_flag_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Play Feature Flag (adminGetPlayFeatureFlag)

    Get matchmaking Play Feature Flag.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: GET

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayFeatureFlag (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayFeatureFlag.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpsertPlayFeatureFlag)
def admin_upsert_play_feature_flag(
    body: ModelsPlayFeatureFlag,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Upsert Play Feature Flag (adminUpsertPlayFeatureFlag)

    Upsert matchmaking Play Feature Flag.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: POST

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayFeatureFlag in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayFeatureFlag (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpsertPlayFeatureFlag.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpsertPlayFeatureFlag)
async def admin_upsert_play_feature_flag_async(
    body: ModelsPlayFeatureFlag,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin Upsert Play Feature Flag (adminUpsertPlayFeatureFlag)

    Upsert matchmaking Play Feature Flag.

    Properties:
        url: /match2/v1/admin/namespaces/{namespace}/playfeatureflag

        method: POST

        tags: ["PlayFeatureFlag", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayFeatureFlag in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlayFeatureFlag (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpsertPlayFeatureFlag.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
