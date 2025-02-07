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

from ..models import ConfigCreate
from ..models import ConfigInfo
from ..models import ConfigUpdate
from ..models import ErrorEntity
from ..models import ValidationErrorEntity

from ..operations.config import CreateConfig
from ..operations.config import DeleteConfig
from ..operations.config import GetConfig
from ..operations.config import GetPublisherConfig
from ..operations.config import UpdateConfig


@same_doc_as(CreateConfig)
def create_config(
    body: Optional[ConfigCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a config (createConfig)

    Create a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ConfigCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11771: Unable to {action}: Config already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateConfig)
async def create_config_async(
    body: Optional[ConfigCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a config (createConfig)

    Create a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ConfigCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11771: Unable to {action}: Config already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteConfig)
def delete_config(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a config (deleteConfig)

    Delete a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteConfig)
async def delete_config_async(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a config (deleteConfig)

    Delete a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetConfig)
def get_config(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a config (getConfig)

    Get a config.
    Other detail info:

      * Returns : config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetConfig)
async def get_config_async(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a config (getConfig)

    Get a config.
    Other detail info:

      * Returns : config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublisherConfig)
def get_publisher_config(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a publisher config (getPublisherConfig)

    Get a publisher config.
    It will return a publisher namespace config of the given namespace and key.
    Other detail info:

      * Returns : config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublisherConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublisherConfig)
async def get_publisher_config_async(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a publisher config (getPublisherConfig)

    Get a publisher config.
    It will return a publisher namespace config of the given namespace and key.
    Other detail info:

      * Returns : config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublisherConfig.create(
        config_key=config_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateConfig)
def update_config(
    config_key: str,
    body: Optional[ConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a config (updateConfig)

    Update a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ConfigUpdate in body

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateConfig.create(
        config_key=config_key,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateConfig)
async def update_config_async(
    config_key: str,
    body: Optional[ConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a config (updateConfig)

    Update a config.
    Other detail info:

      * Returns : created config

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/configs/{configKey}

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ConfigUpdate in body

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ConfigInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11741: Unable to {action}: Config not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateConfig.create(
        config_key=config_key,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
