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

from ..models import ApiNamespaceConfigList
from ..models import ApiPatchNamespaceConfigRequest
from ..models import ConfigmodelsNamespaceConfig
from ..models import LogconfigConfiguration
from ..models import ResponseError

from ..operations.config import AdminGetAllConfigV1
from ..operations.config import AdminGetConfigV1
from ..operations.config import AdminGetLogConfig
from ..operations.config import AdminPatchConfigV1
from ..operations.config import AdminPatchUpdateLogConfig
from ..models import LogconfigConfigurationLogLevelEnum


@same_doc_as(AdminGetAllConfigV1)
def admin_get_all_config_v1(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """admin get all namespaces config (adminGetAllConfigV1)

    Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.

    Properties:
        url: /match2/v1/config

        method: GET

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApiNamespaceConfigList (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = AdminGetAllConfigV1.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllConfigV1)
async def admin_get_all_config_v1_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """admin get all namespaces config (adminGetAllConfigV1)

    Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.

    Properties:
        url: /match2/v1/config

        method: GET

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApiNamespaceConfigList (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = AdminGetAllConfigV1.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetConfigV1)
def admin_get_config_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get namespace config (adminGetConfigV1)

    Get matchmaking config of a namespaces.

    Properties:
        url: /match2/v1/config/namespaces/{namespace}

        method: GET

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigmodelsNamespaceConfig (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigV1)
async def admin_get_config_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get namespace config (adminGetConfigV1)

    Get matchmaking config of a namespaces.

    Properties:
        url: /match2/v1/config/namespaces/{namespace}

        method: GET

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigmodelsNamespaceConfig (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetLogConfig)
def admin_get_log_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Log Configuration (adminGetLogConfig)

    Get Log Configuration.

    Properties:
        url: /match2/v1/admin/config/log

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - LogconfigConfiguration
    """
    request = AdminGetLogConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetLogConfig)
async def admin_get_log_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Log Configuration (adminGetLogConfig)

    Get Log Configuration.

    Properties:
        url: /match2/v1/admin/config/log

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - LogconfigConfiguration
    """
    request = AdminGetLogConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPatchConfigV1)
def admin_patch_config_v1(
    body: ApiPatchNamespaceConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin patch update namespace config (adminPatchConfigV1)

    Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.

    Properties:
        url: /match2/v1/config/namespaces/{namespace}

        method: PATCH

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiPatchNamespaceConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigmodelsNamespaceConfig (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPatchConfigV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPatchConfigV1)
async def admin_patch_config_v1_async(
    body: ApiPatchNamespaceConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin patch update namespace config (adminPatchConfigV1)

    Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.

    Properties:
        url: /match2/v1/config/namespaces/{namespace}

        method: PATCH

        tags: ["Config", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiPatchNamespaceConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigmodelsNamespaceConfig (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPatchConfigV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPatchUpdateLogConfig)
def admin_patch_update_log_config(
    body: LogconfigConfiguration,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch Update Log Configuration (adminPatchUpdateLogConfig)

    Update Log Configuration.

    Properties:
        url: /match2/v1/admin/config/log

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LogconfigConfiguration in body

    Responses:
        200: OK - LogconfigConfiguration
    """
    request = AdminPatchUpdateLogConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPatchUpdateLogConfig)
async def admin_patch_update_log_config_async(
    body: LogconfigConfiguration,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch Update Log Configuration (adminPatchUpdateLogConfig)

    Update Log Configuration.

    Properties:
        url: /match2/v1/admin/config/log

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LogconfigConfiguration in body

    Responses:
        200: OK - LogconfigConfiguration
    """
    request = AdminPatchUpdateLogConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
