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

from ..models import ApimodelsCreateIntegrationConfigurationReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsIntegrationConfigurationResp
from ..models import ApimodelsListIntegrationConfigurationsResp
from ..models import ApimodelsUpdateIntegrationConfigurationReq
from ..models import ApimodelsUpdateStatusIntegrationConfigurationReq

from ..operations.admin_integration_configurations import (
    AdminCreateIntegrationConfiguration,
)
from ..operations.admin_integration_configurations import (
    AdminListIntegrationConfigurations,
)
from ..operations.admin_integration_configurations import (
    AdminListIntegrationConfigurationsSortByEnum,
)
from ..operations.admin_integration_configurations import (
    AdminUpdateIntegrationConfiguration,
)
from ..operations.admin_integration_configurations import (
    AdminUpdateStatusIntegrationConfiguration,
)
from ..models import ApimodelsUpdateStatusIntegrationConfigurationReqStatusEnum


@same_doc_as(AdminCreateIntegrationConfiguration)
def admin_create_integration_configuration(
    body: ApimodelsCreateIntegrationConfigurationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create integration configuration (AdminCreateIntegrationConfiguration)


    Creating integration configuration.
    There cannot be one duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations

        method: POST

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateIntegrationConfigurationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsIntegrationConfigurationResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateIntegrationConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateIntegrationConfiguration)
async def admin_create_integration_configuration_async(
    body: ApimodelsCreateIntegrationConfigurationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create integration configuration (AdminCreateIntegrationConfiguration)


    Creating integration configuration.
    There cannot be one duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations

        method: POST

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateIntegrationConfigurationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsIntegrationConfigurationResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateIntegrationConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListIntegrationConfigurations)
def admin_list_integration_configurations(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListIntegrationConfigurationsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list integration configurations (AdminListIntegrationConfigurations)


    Listing all integration configurations in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations

        method: GET

        tags: ["Admin Integration Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListIntegrationConfigurationsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListIntegrationConfigurations.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListIntegrationConfigurations)
async def admin_list_integration_configurations_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListIntegrationConfigurationsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list integration configurations (AdminListIntegrationConfigurations)


    Listing all integration configurations in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations

        method: GET

        tags: ["Admin Integration Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListIntegrationConfigurationsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListIntegrationConfigurations.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateIntegrationConfiguration)
def admin_update_integration_configuration(
    body: ApimodelsUpdateIntegrationConfigurationReq,
    integration_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update integration configuration (AdminUpdateIntegrationConfiguration)


    to update integration configuration
    There cannot be duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}

        method: PUT

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateIntegrationConfigurationReq in body

        integration_configuration_id: (integrationConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsIntegrationConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateIntegrationConfiguration.create(
        body=body,
        integration_configuration_id=integration_configuration_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateIntegrationConfiguration)
async def admin_update_integration_configuration_async(
    body: ApimodelsUpdateIntegrationConfigurationReq,
    integration_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update integration configuration (AdminUpdateIntegrationConfiguration)


    to update integration configuration
    There cannot be duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}

        method: PUT

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateIntegrationConfigurationReq in body

        integration_configuration_id: (integrationConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsIntegrationConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateIntegrationConfiguration.create(
        body=body,
        integration_configuration_id=integration_configuration_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateStatusIntegrationConfiguration)
def admin_update_status_integration_configuration(
    body: ApimodelsUpdateStatusIntegrationConfigurationReq,
    integration_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update status integration configuration to be active / not active  (AdminUpdateStatusIntegrationConfiguration)


    to update status integration configuration to be Active / Not Active.
    There cannot be duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status

        method: PUT

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateStatusIntegrationConfigurationReq in body

        integration_configuration_id: (integrationConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsIntegrationConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateStatusIntegrationConfiguration.create(
        body=body,
        integration_configuration_id=integration_configuration_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateStatusIntegrationConfiguration)
async def admin_update_status_integration_configuration_async(
    body: ApimodelsUpdateStatusIntegrationConfigurationReq,
    integration_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update status integration configuration to be active / not active  (AdminUpdateStatusIntegrationConfiguration)


    to update status integration configuration to be Active / Not Active.
    There cannot be duplicate serviceName per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status

        method: PUT

        tags: ["Admin Integration Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateStatusIntegrationConfigurationReq in body

        integration_configuration_id: (integrationConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsIntegrationConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateStatusIntegrationConfiguration.create(
        body=body,
        integration_configuration_id=integration_configuration_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
