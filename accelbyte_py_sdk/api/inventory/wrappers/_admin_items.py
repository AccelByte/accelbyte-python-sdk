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
from ..models import ApimodelsBulkRemoveItemsReq
from ..models import ApimodelsConsumeItemReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsItemResp
from ..models import ApimodelsListItemResp
from ..models import ApimodelsSaveItemReq
from ..models import ApimodelsSaveItemToInventoryReq
from ..models import ApimodelsUpdateItemResp

from ..operations.admin_items import AdminBulkRemoveItems
from ..operations.admin_items import AdminBulkUpdateMyItems
from ..operations.admin_items import AdminConsumeUserItem
from ..operations.admin_items import AdminGetInventoryItem
from ..operations.admin_items import AdminListItems
from ..operations.admin_items import AdminListItemsSortByEnum
from ..operations.admin_items import AdminSaveItem
from ..operations.admin_items import AdminSaveItemToInventory


@same_doc_as(AdminBulkRemoveItems)
def admin_bulk_remove_items(
    body: ApimodelsBulkRemoveItemsReq,
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (AdminBulkRemoveItems)


    Bulk remove user's own items'.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsBulkRemoveItemsReq in body

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
        namespace, error = get_services_namespace()
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
    body: ApimodelsBulkRemoveItemsReq,
    inventory_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (AdminBulkRemoveItems)


    Bulk remove user's own items'.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsBulkRemoveItemsReq in body

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
        namespace, error = get_services_namespace()
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: PUT

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

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
        namespace, error = get_services_namespace()
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: PUT

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

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
        namespace, error = get_services_namespace()
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
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (AdminConsumeUserItem)


    Consume user's own item

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/{itemId}/consume

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminConsumeUserItem.create(
        body=body,
        inventory_id=inventory_id,
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminConsumeUserItem)
async def admin_consume_user_item_async(
    body: ApimodelsConsumeItemReq,
    inventory_id: str,
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (AdminConsumeUserItem)


    Consume user's own item

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/{itemId}/consume

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminConsumeUserItem.create(
        body=body,
        inventory_id=inventory_id,
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInventoryItem)
def admin_get_inventory_item(
    inventory_id: str,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (AdminGetInventoryItem)


    Getting an item info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}

        method: GET

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetInventoryItem.create(
        inventory_id=inventory_id,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInventoryItem)
async def admin_get_inventory_item_async(
    inventory_id: str,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (AdminGetInventoryItem)


    Getting an item info.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}

        method: GET

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetInventoryItem.create(
        inventory_id=inventory_id,
        item_id=item_id,
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
    qty_gte: Optional[int] = None,
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items

        method: GET

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        qty_gte: (qtyGte) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        source_item_id: (sourceItemId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListItems.create(
        inventory_id=inventory_id,
        limit=limit,
        offset=offset,
        qty_gte=qty_gte,
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
    qty_gte: Optional[int] = None,
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items

        method: GET

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        qty_gte: (qtyGte) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        source_item_id: (sourceItemId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListItems.create(
        inventory_id=inventory_id,
        limit=limit,
        offset=offset,
        qty_gte=qty_gte,
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


    Saving an item.
    The item will be saved in user's inventory,
    If it doesn't exist it'll be created.

    If the item already exists, its qty will be increased,
    so no new item with same sourceItemId will be created

    Tags will be auto-created.
    ItemType will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


    Saving an item.
    The item will be saved in user's inventory,
    If it doesn't exist it'll be created.

    If the item already exists, its qty will be increased,
    so no new item with same sourceItemId will be created

    Tags will be auto-created.
    ItemType will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


    Saving an item to specific inventory.
    The item will be saved in specific user's inventory,

    If the item already exists, its qty will be increased,
    so no new item with same sourceItemId will be created

    Tags will be auto-created.
    ItemType will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemToInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


    Saving an item to specific inventory.
    The item will be saved in specific user's inventory,

    If the item already exists, its qty will be increased,
    so no new item with same sourceItemId will be created

    Tags will be auto-created.
    ItemType will be auto-created.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSaveItemToInventoryReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
