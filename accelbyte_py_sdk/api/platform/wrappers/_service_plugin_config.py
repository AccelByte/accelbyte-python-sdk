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

from ..models import ServicePluginConfigInfo
from ..models import ServicePluginConfigUpdate
from ..models import ValidationErrorEntity

from ..operations.service_plugin_config import DeleteServicePluginConfig
from ..operations.service_plugin_config import GetServicePluginConfig
from ..operations.service_plugin_config import UpdateServicePluginConfig


@same_doc_as(DeleteServicePluginConfig)
def delete_service_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete service plugin config (deleteServicePluginConfig)

    Delete service plugin config.
    Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteServicePluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteServicePluginConfig)
async def delete_service_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete service plugin config (deleteServicePluginConfig)

    Delete service plugin config.
    Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteServicePluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetServicePluginConfig)
def get_service_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get service plugin config (getServicePluginConfig)

    Get service plugin config.
    Other detail info:

      * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServicePluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetServicePluginConfig)
async def get_service_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get service plugin config (getServicePluginConfig)

    Get service plugin config.
    Other detail info:

      * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServicePluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateServicePluginConfig)
def update_service_plugin_config(
    body: Optional[ServicePluginConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update service plugin config service (updateServicePluginConfig)

    Update catalog config. Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
      *  Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ServicePluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateServicePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateServicePluginConfig)
async def update_service_plugin_config_async(
    body: Optional[ServicePluginConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update service plugin config service (updateServicePluginConfig)

    Update catalog config. Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
      *  Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ServicePluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateServicePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
