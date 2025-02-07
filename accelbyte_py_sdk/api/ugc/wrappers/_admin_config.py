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

from ..models import ModelsPaginatedGetConfigsResponse
from ..models import ModelsUpdateConfigRequest
from ..models import ResponseError

from ..operations.admin_config import AdminGetConfigs
from ..operations.admin_config import AdminUpdateConfig


@same_doc_as(AdminGetConfigs)
def admin_get_configs(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configs (AdminGetConfigs)

    Get config paginated

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/configs

        method: GET

        tags: ["Admin Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetConfigsResponse (Get configs)

        400: Bad Request - ResponseError (774204: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774205: Unable to get configs)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigs.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigs)
async def admin_get_configs_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configs (AdminGetConfigs)

    Get config paginated

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/configs

        method: GET

        tags: ["Admin Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetConfigsResponse (Get configs)

        400: Bad Request - ResponseError (774204: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774205: Unable to get configs)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigs.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateConfig)
def admin_update_config(
    body: ModelsUpdateConfigRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update config (AdminUpdateConfig)

    This endpoint will create a new config if the *key* doesn't exist.

    Allowed key value:
    - *contentReview*: *enabled*,*disabled*

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/configs/{key}

        method: PATCH

        tags: ["Admin Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateConfigRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Config updated)

        400: Bad Request - ResponseError (774201: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774202: Unable to save config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateConfig.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateConfig)
async def admin_update_config_async(
    body: ModelsUpdateConfigRequest,
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update config (AdminUpdateConfig)

    This endpoint will create a new config if the *key* doesn't exist.

    Allowed key value:
    - *contentReview*: *enabled*,*disabled*

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/configs/{key}

        method: PATCH

        tags: ["Admin Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateConfigRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Config updated)

        400: Bad Request - ResponseError (774201: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774202: Unable to save config)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateConfig.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
