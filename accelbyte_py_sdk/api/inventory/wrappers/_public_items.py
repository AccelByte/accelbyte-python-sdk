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

from ..models import ApimodelsConsumeItemReq
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsItemResp
from ..models import ApimodelsListItemResp
from ..models import ApimodelsMoveItemsReq
from ..models import ApimodelsMoveItemsResp
from ..models import ApimodelsRemoveInventoryItemReq
from ..models import ApimodelsUpdateItemReq
from ..models import ApimodelsUpdateItemResp

from ..operations.public_items import PublicBulkRemoveMyItems
from ..operations.public_items import PublicBulkUpdateMyItems
from ..operations.public_items import PublicConsumeMyItem
from ..operations.public_items import PublicGetItem
from ..operations.public_items import PublicListItems
from ..operations.public_items import PublicListItemsSortByEnum
from ..operations.public_items import PublicMoveMyItems


@same_doc_as(PublicBulkRemoveMyItems)
def public_bulk_remove_my_items(
    body: List[ApimodelsRemoveInventoryItemReq],
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (PublicBulkRemoveMyItems)


    Bulk remove user's own items.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsRemoveInventoryItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicBulkRemoveMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkRemoveMyItems)
async def public_bulk_remove_my_items_async(
    body: List[ApimodelsRemoveInventoryItemReq],
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk remove items (PublicBulkRemoveMyItems)


    Bulk remove user's own items.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: DELETE

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsRemoveInventoryItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicBulkRemoveMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkUpdateMyItems)
def public_bulk_update_my_items(
    body: List[ApimodelsUpdateItemReq],
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk update items (PublicBulkUpdateMyItems)


    Bulk Updating user's own items.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: PUT

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsUpdateItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicBulkUpdateMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkUpdateMyItems)
async def public_bulk_update_my_items_async(
    body: List[ApimodelsUpdateItemReq],
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To bulk update items (PublicBulkUpdateMyItems)


    Bulk Updating user's own items.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: PUT

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsUpdateItemReq] in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicBulkUpdateMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicConsumeMyItem)
def public_consume_my_item(
    body: ApimodelsConsumeItemReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (PublicConsumeMyItem)


    Consume user's own item.
    Client should pass item ID in options if item type is OPTIONBOX

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume

        method: POST

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicConsumeMyItem.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicConsumeMyItem)
async def public_consume_my_item_async(
    body: ApimodelsConsumeItemReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To consume item (PublicConsumeMyItem)


    Consume user's own item.
    Client should pass item ID in options if item type is OPTIONBOX

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume

        method: POST

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = PublicConsumeMyItem.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetItem)
def public_get_item(
    inventory_id: str,
    slot_id: str,
    source_item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (PublicGetItem)


    Getting an user's owned item info.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}

        method: GET

        tags: ["Public Items"]

        consumes: ["application/json"]

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
    request = PublicGetItem.create(
        inventory_id=inventory_id,
        slot_id=slot_id,
        source_item_id=source_item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetItem)
async def public_get_item_async(
    inventory_id: str,
    slot_id: str,
    source_item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To get an item (PublicGetItem)


    Getting an user's owned item info.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}

        method: GET

        tags: ["Public Items"]

        consumes: ["application/json"]

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
    request = PublicGetItem.create(
        inventory_id=inventory_id,
        slot_id=slot_id,
        source_item_id=source_item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListItems)
def public_list_items(
    inventory_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListItemsSortByEnum]] = None,
    source_item_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all items (PublicListItems)


    Listing all user's owned items in an inventory.
    The response body will be in the form of standard pagination.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: GET

        tags: ["Public Items"]

        consumes: ["application/json"]

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
    request = PublicListItems.create(
        inventory_id=inventory_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        source_item_id=source_item_id,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListItems)
async def public_list_items_async(
    inventory_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListItemsSortByEnum]] = None,
    source_item_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all items (PublicListItems)


    Listing all user's owned items in an inventory.
    The response body will be in the form of standard pagination.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items

        method: GET

        tags: ["Public Items"]

        consumes: ["application/json"]

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
    request = PublicListItems.create(
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


@same_doc_as(PublicMoveMyItems)
def public_move_my_items(
    body: ApimodelsMoveItemsReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To move items between my inventories (PublicMoveMyItems)

    Move items between inventories that is owned by the same user.

    For Ecommerce items, the *qty* is *useCount*. For example, moving 2 of an item's *qty* will move 2 of the entitlement's *useCount*.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement

        method: POST

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsMoveItemsReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMoveItemsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicMoveMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicMoveMyItems)
async def public_move_my_items_async(
    body: ApimodelsMoveItemsReq,
    inventory_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To move items between my inventories (PublicMoveMyItems)

    Move items between inventories that is owned by the same user.

    For Ecommerce items, the *qty* is *useCount*. For example, moving 2 of an item's *qty* will move 2 of the entitlement's *useCount*.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement

        method: POST

        tags: ["Public Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsMoveItemsReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMoveItemsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicMoveMyItems.create(
        body=body,
        inventory_id=inventory_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
