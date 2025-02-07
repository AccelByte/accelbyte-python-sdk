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

from ..models import ApimodelsCreateInventoryReq
from ..models import ApimodelsDeleteInventoryReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsInventoryResp
from ..models import ApimodelsListInventoryResp
from ..models import ApimodelsPurchaseValidationReq
from ..models import ApimodelsUpdateInventoryReq

from ..operations.admin_inventories import AdminCreateInventory
from ..operations.admin_inventories import AdminGetInventory
from ..operations.admin_inventories import AdminListInventories
from ..operations.admin_inventories import AdminListInventoriesSortByEnum
from ..operations.admin_inventories import AdminPurchasable
from ..operations.admin_inventories import AdminUpdateInventory
from ..operations.admin_inventories import AdminUpdateUserInventoriesByInventoryCode
from ..operations.admin_inventories import DeleteInventory


@same_doc_as(AdminCreateInventory)
def admin_create_inventory(
    body: ApimodelsCreateInventoryReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create inventory (AdminCreateInventory)


    Creating an inventory.
    The inventory configuration must exists otherwise it will fail.
    The max slots and max upgrade slots of an inventory will be initialized according to the inventory configuration it used,
    but it can be changed later when using AdminUpdateInventory endpoint.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories

        method: POST

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateInventoryReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsInventoryResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateInventory.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateInventory)
async def admin_create_inventory_async(
    body: ApimodelsCreateInventoryReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create inventory (AdminCreateInventory)


    Creating an inventory.
    The inventory configuration must exists otherwise it will fail.
    The max slots and max upgrade slots of an inventory will be initialized according to the inventory configuration it used,
    but it can be changed later when using AdminUpdateInventory endpoint.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories

        method: POST

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateInventoryReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsInventoryResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateInventory.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInventory)
def admin_get_inventory(
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an inventory (AdminGetInventory)


    Getting an inventory info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: GET

        tags: ["Admin Inventories"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventory.create(
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInventory)
async def admin_get_inventory_async(
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an inventory (AdminGetInventory)


    Getting an inventory info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: GET

        tags: ["Admin Inventories"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventory.create(
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListInventories)
def admin_list_inventories(
    inventory_configuration_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListInventoriesSortByEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all inventories (AdminListInventories)


    Listing all inventories in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories

        method: GET

        tags: ["Admin Inventories"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        inventory_configuration_code: (inventoryConfigurationCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListInventories.create(
        inventory_configuration_code=inventory_configuration_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListInventories)
async def admin_list_inventories_async(
    inventory_configuration_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListInventoriesSortByEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all inventories (AdminListInventories)


    Listing all inventories in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories

        method: GET

        tags: ["Admin Inventories"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        inventory_configuration_code: (inventoryConfigurationCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListInventories.create(
        inventory_configuration_code=inventory_configuration_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPurchasable)
def admin_purchasable(
    body: ApimodelsPurchaseValidationReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To validate user inventory capacity when purchase ecommerce item (AdminPurchasable)


    Validate purchase ecommerce item.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable

        method: POST

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPurchaseValidationReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPurchasable.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPurchasable)
async def admin_purchasable_async(
    body: ApimodelsPurchaseValidationReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To validate user inventory capacity when purchase ecommerce item (AdminPurchasable)


    Validate purchase ecommerce item.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable

        method: POST

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPurchaseValidationReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPurchasable.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateInventory)
def admin_update_inventory(
    body: ApimodelsUpdateInventoryReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update inventory (AdminUpdateInventory)


    Updating an inventory.
    Positive value will increase MaxSlots from existing value
    Negative value will decrease MaxSlots from existing value
    Limited slots can not be changed to unlimited, vice versa

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: PUT

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInventory.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateInventory)
async def admin_update_inventory_async(
    body: ApimodelsUpdateInventoryReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update inventory (AdminUpdateInventory)


    Updating an inventory.
    Positive value will increase MaxSlots from existing value
    Negative value will decrease MaxSlots from existing value
    Limited slots can not be changed to unlimited, vice versa

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: PUT

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInventory.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserInventoriesByInventoryCode)
def admin_update_user_inventories_by_inventory_code(
    body: ApimodelsUpdateInventoryReq,
    inventory_configuration_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update user inventories by inventory code (AdminUpdateUserInventoriesByInventoryCode)


    Updating user inventories.
    Positive value will increase MaxSlots from existing value
    Negative value will decrease MaxSlots from existing value
    Limited slots can not be changed to unlimited, vice versa

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories

        method: PUT

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateInventoryReq in body

        inventory_configuration_code: (inventoryConfigurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsInventoryResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserInventoriesByInventoryCode.create(
        body=body,
        inventory_configuration_code=inventory_configuration_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserInventoriesByInventoryCode)
async def admin_update_user_inventories_by_inventory_code_async(
    body: ApimodelsUpdateInventoryReq,
    inventory_configuration_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To update user inventories by inventory code (AdminUpdateUserInventoriesByInventoryCode)


    Updating user inventories.
    Positive value will increase MaxSlots from existing value
    Negative value will decrease MaxSlots from existing value
    Limited slots can not be changed to unlimited, vice versa

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories

        method: PUT

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateInventoryReq in body

        inventory_configuration_code: (inventoryConfigurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsInventoryResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserInventoriesByInventoryCode.create(
        body=body,
        inventory_configuration_code=inventory_configuration_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteInventory)
def delete_inventory(
    body: ApimodelsDeleteInventoryReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete inventory (deleteInventory)


    Deleting an inventory.
    If an inventory still has items, it cannot be deleted.

    ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: DELETE

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

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
    request = DeleteInventory.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteInventory)
async def delete_inventory_async(
    body: ApimodelsDeleteInventoryReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete inventory (deleteInventory)


    Deleting an inventory.
    If an inventory still has items, it cannot be deleted.

    ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}

        method: DELETE

        tags: ["Admin Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

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
    request = DeleteInventory.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
