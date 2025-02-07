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

from ..models import ApimodelsCreateInventoryConfigurationReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsInventoryConfigurationReq
from ..models import ApimodelsInventoryConfigurationResp
from ..models import ApimodelsListInventoryConfigurationsResp

from ..operations.admin_inventory_configurations import (
    AdminCreateInventoryConfiguration,
)
from ..operations.admin_inventory_configurations import (
    AdminDeleteInventoryConfiguration,
)
from ..operations.admin_inventory_configurations import AdminGetInventoryConfiguration
from ..operations.admin_inventory_configurations import AdminListInventoryConfigurations
from ..operations.admin_inventory_configurations import (
    AdminListInventoryConfigurationsSortByEnum,
)
from ..operations.admin_inventory_configurations import (
    AdminUpdateInventoryConfiguration,
)
from ..models import ApimodelsInventoryConfigurationRespStatusEnum


@same_doc_as(AdminCreateInventoryConfiguration)
def admin_create_inventory_configuration(
    body: ApimodelsCreateInventoryConfigurationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create inventory configuration (AdminCreateInventoryConfiguration)


    Creating inventory configuration.
    There cannot be one inventory configuration duplicate code per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations

        method: POST

        tags: ["Admin Inventory Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateInventoryConfigurationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsInventoryConfigurationResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateInventoryConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateInventoryConfiguration)
async def admin_create_inventory_configuration_async(
    body: ApimodelsCreateInventoryConfigurationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create inventory configuration (AdminCreateInventoryConfiguration)


    Creating inventory configuration.
    There cannot be one inventory configuration duplicate code per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations

        method: POST

        tags: ["Admin Inventory Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateInventoryConfigurationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsInventoryConfigurationResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateInventoryConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteInventoryConfiguration)
def admin_delete_inventory_configuration(
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete inventory configuration (AdminDeleteInventoryConfiguration)


    Deleting an inventory configuration.
    If an inventory already reference this type (i.e. STATUS is "TIED"), then the type cannot be deleted anymore.

    ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: DELETE

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInventoryConfiguration.create(
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteInventoryConfiguration)
async def admin_delete_inventory_configuration_async(
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete inventory configuration (AdminDeleteInventoryConfiguration)


    Deleting an inventory configuration.
    If an inventory already reference this type (i.e. STATUS is "TIED"), then the type cannot be deleted anymore.

    ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: DELETE

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInventoryConfiguration.create(
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInventoryConfiguration)
def admin_get_inventory_configuration(
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get inventory configuration (AdminGetInventoryConfiguration)


    Getting an inventory configuration info.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: GET

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventoryConfiguration.create(
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInventoryConfiguration)
async def admin_get_inventory_configuration_async(
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get inventory configuration (AdminGetInventoryConfiguration)


    Getting an inventory configuration info.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: GET

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventoryConfiguration.create(
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListInventoryConfigurations)
def admin_list_inventory_configurations(
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListInventoryConfigurationsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list inventory configurations (AdminListInventoryConfigurations)


    Listing all inventory configurations in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations

        method: GET

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListInventoryConfigurationsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListInventoryConfigurations.create(
        code=code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListInventoryConfigurations)
async def admin_list_inventory_configurations_async(
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListInventoryConfigurationsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list inventory configurations (AdminListInventoryConfigurations)


    Listing all inventory configurations in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations

        method: GET

        tags: ["Admin Inventory Configurations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListInventoryConfigurationsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListInventoryConfigurations.create(
        code=code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateInventoryConfiguration)
def admin_update_inventory_configuration(
    body: ApimodelsInventoryConfigurationReq,
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update inventory configuration (AdminUpdateInventoryConfiguration)


    Updating inventory configuration.
    There cannot be duplicate code per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: PUT

        tags: ["Admin Inventory Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsInventoryConfigurationReq in body

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInventoryConfiguration.create(
        body=body,
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateInventoryConfiguration)
async def admin_update_inventory_configuration_async(
    body: ApimodelsInventoryConfigurationReq,
    inventory_configuration_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update inventory configuration (AdminUpdateInventoryConfiguration)


    Updating inventory configuration.
    There cannot be duplicate code per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: PUT

        tags: ["Admin Inventory Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsInventoryConfigurationReq in body

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInventoryConfiguration.create(
        body=body,
        inventory_configuration_id=inventory_configuration_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
