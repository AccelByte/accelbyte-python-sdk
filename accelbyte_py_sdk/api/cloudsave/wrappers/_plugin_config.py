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

from ..models import ModelsPluginRequest
from ..models import ModelsPluginResponse
from ..models import ModelsResponseError

from ..operations.plugin_config import CreatePluginConfig
from ..operations.plugin_config import DeletePluginConfig
from ..operations.plugin_config import GetPluginConfig
from ..operations.plugin_config import UpdatePluginConfig
from ..models import ModelsPluginRequestExtendTypeEnum
from ..models import ModelsPluginResponseExtendTypeEnum


@same_doc_as(CreatePluginConfig)
def create_plugin_config(
    body: ModelsPluginRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create plugin configuration (createPluginConfig)

    ## Description

    This endpoints will create new grpc plugins configuration per namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: POST

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPluginRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPluginResponse (Created)

        400: Bad Request - ModelsResponseError (18401: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18402: plugins already configured)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePluginConfig)
async def create_plugin_config_async(
    body: ModelsPluginRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create plugin configuration (createPluginConfig)

    ## Description

    This endpoints will create new grpc plugins configuration per namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: POST

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPluginRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPluginResponse (Created)

        400: Bad Request - ModelsResponseError (18401: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18402: plugins already configured)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePluginConfig)
def delete_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete plugin configuration (deletePluginConfig)

    ## Description

    This endpoints will delete grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: DELETE

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18406: plugins config not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePluginConfig)
async def delete_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete plugin configuration (deletePluginConfig)

    ## Description

    This endpoints will delete grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: DELETE

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18406: plugins config not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPluginConfig)
def get_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get plugin configuration (getPluginConfig)

    ## Description

    This endpoints will get grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: GET

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPluginResponse (OK)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18404: plugins not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPluginConfig)
async def get_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get plugin configuration (getPluginConfig)

    ## Description

    This endpoints will get grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: GET

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPluginResponse (OK)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18404: plugins not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePluginConfig)
def update_plugin_config(
    body: ModelsPluginRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update plugin configuration (updatePluginConfig)

    ## Description

    This endpoints will update grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: PATCH

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPluginRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPluginResponse (OK)

        400: Bad Request - ModelsResponseError (18408: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18409: plugins config not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePluginConfig)
async def update_plugin_config_async(
    body: ModelsPluginRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update plugin configuration (updatePluginConfig)

    ## Description

    This endpoints will update grpc plugins configuration

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/plugins

        method: PATCH

        tags: ["PluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPluginRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPluginResponse (OK)

        400: Bad Request - ModelsResponseError (18408: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18409: plugins config not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
