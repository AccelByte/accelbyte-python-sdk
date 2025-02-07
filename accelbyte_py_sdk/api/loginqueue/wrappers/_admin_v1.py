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

from ..models import ApimodelsConfigurationRequest
from ..models import ApimodelsConfigurationResponse
from ..models import ApimodelsQueueStatusResponse
from ..models import ResponseError

from ..operations.admin_v1 import AdminGetConfiguration
from ..operations.admin_v1 import AdminGetStatus
from ..operations.admin_v1 import AdminUpdateConfiguration


@same_doc_as(AdminGetConfiguration)
def admin_get_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Configuration (adminGetConfiguration)

    This API is used to get log queue configuration of a namespace.
    Calling this endpoint with namespace which has not set up configuration will return a valid configuration with default value

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/config

        method: GET

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfiguration)
async def admin_get_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Configuration (adminGetConfiguration)

    This API is used to get log queue configuration of a namespace.
    Calling this endpoint with namespace which has not set up configuration will return a valid configuration with default value

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/config

        method: GET

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetStatus)
def admin_get_status(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get login queue status (adminGetStatus)

    Get login queue status

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/status

        method: GET

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsQueueStatusResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetStatus.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetStatus)
async def admin_get_status_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get login queue status (adminGetStatus)

    Get login queue status

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/status

        method: GET

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsQueueStatusResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetStatus.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateConfiguration)
def admin_update_configuration(
    body: ApimodelsConfigurationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Configuration (adminUpdateConfiguration)

    This API is used to set/update log queue configuration of a namespace.
    This endpoint has upsert behavior. Calling the endpoint to a namespace with no configuration will make the service to create a new configuration.
    When creating new configuration, empty field will have default value:
    * enabled = false
    * maxConcurrency = 1000000
    * maxLoginRate = 500
    * safetyMarginPercentage = 5
    * minActivationPeriodInSecond = 600
    * playerReconnectGracePeriodInSecond = 300
    * queueReconnectGracePeriodInSecond = 60
    * playerPollingTimeInSecond = 20

    Calling this endpoint with namespace that has configuration will replace the old configuration.

    Input validation:
    * maxConcurrency must be > 0 and <= 10000000 (0 < x <= 10000000)
    * maxLoginRate must be > 0 and <= 100000 (0 < x <= 100000)
    * minActivationPeriodInSecond, playerReconnectGracePeriodInSecond, playerPollingTimeInSecond and queueReconnectGracePeriodInSecond must be > 0 and <= 21600 (0 < x <= 21600)
    * playerPollingTimeInSecond must be smaller than queueReconnectGracePeriodInSecond
    * safetyMarginPercentage must be >= 0 and < 100 (0 <= x < 100)

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/config

        method: PUT

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigurationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateConfiguration)
async def admin_update_configuration_async(
    body: ApimodelsConfigurationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Configuration (adminUpdateConfiguration)

    This API is used to set/update log queue configuration of a namespace.
    This endpoint has upsert behavior. Calling the endpoint to a namespace with no configuration will make the service to create a new configuration.
    When creating new configuration, empty field will have default value:
    * enabled = false
    * maxConcurrency = 1000000
    * maxLoginRate = 500
    * safetyMarginPercentage = 5
    * minActivationPeriodInSecond = 600
    * playerReconnectGracePeriodInSecond = 300
    * queueReconnectGracePeriodInSecond = 60
    * playerPollingTimeInSecond = 20

    Calling this endpoint with namespace that has configuration will replace the old configuration.

    Input validation:
    * maxConcurrency must be > 0 and <= 10000000 (0 < x <= 10000000)
    * maxLoginRate must be > 0 and <= 100000 (0 < x <= 100000)
    * minActivationPeriodInSecond, playerReconnectGracePeriodInSecond, playerPollingTimeInSecond and queueReconnectGracePeriodInSecond must be > 0 and <= 21600 (0 < x <= 21600)
    * playerPollingTimeInSecond must be smaller than queueReconnectGracePeriodInSecond
    * safetyMarginPercentage must be >= 0 and < 100 (0 <= x < 100)

    Properties:
        url: /login-queue/v1/admin/namespaces/{namespace}/config

        method: PUT

        tags: ["Admin V1"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigurationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
