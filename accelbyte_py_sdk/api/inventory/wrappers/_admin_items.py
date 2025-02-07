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

from ..models import ApimodelsAdminUpdateItemReq
from ..models import ApimodelsBulkSaveItemResp
from ..models import ApimodelsConsumeItemReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsItemResp
from ..models import ApimodelsListItemResp
from ..models import ApimodelsRemoveInventoryItemReq
from ..models import ApimodelsSaveItemReq
from ..models import ApimodelsSaveItemToInventoryReq
from ..models import ApimodelsUpdateItemResp

from ..operations.admin_items import AdminBulkRemoveItems
from ..operations.admin_items import AdminBulkSaveItem
from ..operations.admin_items import AdminBulkSaveItemToInventory
from ..operations.admin_items import AdminBulkUpdateMyItems
from ..operations.admin_items import AdminConsumeUserItem
from ..operations.admin_items import AdminGetInventoryItem
from ..operations.admin_items import AdminListItems
from ..operations.admin_items import AdminListItemsSortByEnum
from ..operations.admin_items import AdminSaveItem
from ..operations.admin_items import AdminSaveItemToInventory
from ..operations.admin_items import AdminSyncUserEntitlements
from ..models import ApimodelsSaveItemReqSourceEnum
from ..models import ApimodelsSaveItemToInventoryReqSourceEnum


@same_doc_as(AdminBulkRemoveItems)
def admin_bulk_remove_items(
    body: List[ApimodelsRemoveInventoryItemReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (AdminBulkRemoveItems)


    Bulk remove user's own items'.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsRemoveInventoryItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsUpdateItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkRemoveItems.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkRemoveItems)
async def admin_bulk_remove_items_async(
    body: List[ApimodelsRemoveInventoryItemReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (AdminBulkRemoveItems)


    Bulk remove user's own items'.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsRemoveInventoryItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsUpdateItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkRemoveItems.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkSaveItem)
def admin_bulk_save_item(
    body: List[ApimodelsSaveItemReq],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk save items to inventory (AdminBulkSaveItem)

    **This endpoint is used used for bulk saving purchased items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
    - If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created for the player.
    - If the player already has one, it will be added to the existing inventory.
    >- If the same item exists within the inventory, the quantity (qty) will be increased.
    >- If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
    >- If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).

    - For E-commerce items:
    >- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    >- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    >- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    - A maximum of 10 items can be saved in a single bulk call.

    You must have this permission to access this endpoint:
    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsSaveItemReq] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkSaveItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkSaveItem)
async def admin_bulk_save_item_async(
    body: List[ApimodelsSaveItemReq],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk save items to inventory (AdminBulkSaveItem)

    **This endpoint is used used for bulk saving purchased items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
    - If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created for the player.
    - If the player already has one, it will be added to the existing inventory.
    >- If the same item exists within the inventory, the quantity (qty) will be increased.
    >- If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
    >- If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).

    - For E-commerce items:
    >- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    >- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    >- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    - A maximum of 10 items can be saved in a single bulk call.

    You must have this permission to access this endpoint:
    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsSaveItemReq] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkSaveItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkSaveItemToInventory)
def admin_bulk_save_item_to_inventory(
    body: List[ApimodelsSaveItemToInventoryReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk save items to specific inventory (AdminBulkSaveItemToInventory)

    **This endpoint is used for bulk saving purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
    - Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    - Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    - The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    - A maximum of 10 items can be saved in a single bulk call.

    You must have this permission to access this endpoint:
    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM[CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsSaveItemToInventoryReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkSaveItemToInventory.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkSaveItemToInventory)
async def admin_bulk_save_item_to_inventory_async(
    body: List[ApimodelsSaveItemToInventoryReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk save items to specific inventory (AdminBulkSaveItemToInventory)

    **This endpoint is used for bulk saving purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
    - Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    - Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    - The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    - A maximum of 10 items can be saved in a single bulk call.

    You must have this permission to access this endpoint:
    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM[CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsSaveItemToInventoryReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkSaveItemToInventory.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkUpdateMyItems)
def admin_bulk_update_my_items(
    body: List[ApimodelsAdminUpdateItemReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk update items (AdminBulkUpdateMyItems)


    Bulk Updating user's own items.
    Tags will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: PUT

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsAdminUpdateItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsUpdateItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateMyItems.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkUpdateMyItems)
async def admin_bulk_update_my_items_async(
    body: List[ApimodelsAdminUpdateItemReq],
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk update items (AdminBulkUpdateMyItems)


    Bulk Updating user's own items.
    Tags will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: PUT

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsAdminUpdateItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsUpdateItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateMyItems.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminConsumeUserItem)
def admin_consume_user_item(
    body: ApimodelsConsumeItemReq,
    inventory_id: str,
    user_id: str,
    date_range_validation: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (AdminConsumeUserItem)


    Consume user's own item
    Client should pass item ID in options if item type is OPTIONBOX
    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        date_range_validation: (dateRangeValidation) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminConsumeUserItem.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        date_range_validation=date_range_validation,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminConsumeUserItem)
async def admin_consume_user_item_async(
    body: ApimodelsConsumeItemReq,
    inventory_id: str,
    user_id: str,
    date_range_validation: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (AdminConsumeUserItem)


    Consume user's own item
    Client should pass item ID in options if item type is OPTIONBOX
    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        date_range_validation: (dateRangeValidation) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminConsumeUserItem.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        date_range_validation=date_range_validation,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInventoryItem)
def admin_get_inventory_item(
    inventory_id: str,
    slot_id: str,
    source_item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (AdminGetInventoryItem)


    Getting an item info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}

        method: GET

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        source_item_id: (sourceItemId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventoryItem.create(
        inventory_id=inventory_id,
        slot_id=slot_id,
        source_item_id=source_item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInventoryItem)
async def admin_get_inventory_item_async(
    inventory_id: str,
    slot_id: str,
    source_item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (AdminGetInventoryItem)


    Getting an item info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}

        method: GET

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        source_item_id: (sourceItemId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInventoryItem.create(
        inventory_id=inventory_id,
        slot_id=slot_id,
        source_item_id=source_item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListItems)
def admin_list_items(
    inventory_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListItemsSortByEnum]] = None,
    source_item_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all items (AdminListItems)


    Listing all items in an inventory.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items

        method: GET

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        source_item_id: (sourceItemId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListItems.create(
        inventory_id=inventory_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        source_item_id=source_item_id,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListItems)
async def admin_list_items_async(
    inventory_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListItemsSortByEnum]] = None,
    source_item_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all items (AdminListItems)


    Listing all items in an inventory.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items

        method: GET

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        source_item_id: (sourceItemId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListItems.create(
        inventory_id=inventory_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        source_item_id=source_item_id,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSaveItem)
def admin_save_item(
    body: ApimodelsSaveItemReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To save item (AdminSaveItem)

    **This endpoint is used to save items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
    - If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created.
    - If the user already has one, it will be added to the existing inventory.
    - If the same item exists within the inventory, the quantity (qty) will be increased.
    - If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
    - If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).
    - For Ecommerce items:
    >- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    >- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    >- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    You must have this permission to access this endpoint:
    **Permission:ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSaveItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSaveItem)
async def admin_save_item_async(
    body: ApimodelsSaveItemReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To save item (AdminSaveItem)

    **This endpoint is used to save items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
    - If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created.
    - If the user already has one, it will be added to the existing inventory.
    - If the same item exists within the inventory, the quantity (qty) will be increased.
    - If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
    - If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).
    - For Ecommerce items:
    >- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    >- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    >- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    You must have this permission to access this endpoint:
    **Permission:ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSaveItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSaveItemToInventory)
def admin_save_item_to_inventory(
    body: ApimodelsSaveItemToInventoryReq,
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To save item to specific inventory (AdminSaveItemToInventory)

    **This endpoint is used to save purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
    - Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    - Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    - The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    You must have this permission to access this endpoint:

    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemToInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

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
    request = AdminSaveItemToInventory.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSaveItemToInventory)
async def admin_save_item_to_inventory_async(
    body: ApimodelsSaveItemToInventoryReq,
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To save item to specific inventory (AdminSaveItemToInventory)

    **This endpoint is used to save purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
    - Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    - Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    - The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    You must have this permission to access this endpoint:

    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemToInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

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
    request = AdminSaveItemToInventory.create(
        body=body,
        inventory_id=inventory_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSyncUserEntitlements)
def admin_sync_user_entitlements(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To sync user's entitlements to e-commerce (AdminSyncUserEntitlements)


    Sync user's entitlement from e-commerce service to inventory for non exist item at user inventory.
    will skip the item if already exist at user inventory.
    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync

        method: PUT

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminSyncUserEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSyncUserEntitlements)
async def admin_sync_user_entitlements_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To sync user's entitlements to e-commerce (AdminSyncUserEntitlements)


    Sync user's entitlement from e-commerce service to inventory for non exist item at user inventory.
    will skip the item if already exist at user inventory.
    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync

        method: PUT

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminSyncUserEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
