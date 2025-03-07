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

from ..models import AppInfo
from ..models import AppUpdate
from ..models import AvailablePredicate
from ..models import BasicItem
from ..models import BulkRegionDataChangeRequest
from ..models import ChangeStatusItemRequest
from ..models import ErrorEntity
from ..models import EstimatedPriceInfo
from ..models import FullAppInfo
from ..models import FullItemInfo
from ..models import FullItemPagingResult
from ..models import FullItemPagingSlicedResult
from ..models import InGameItemSync
from ..models import ItemAcquireRequest
from ..models import ItemAcquireResult
from ..models import ItemCreate
from ..models import ItemDependency
from ..models import ItemDynamicDataInfo
from ..models import ItemId
from ..models import ItemInfo
from ..models import ItemPagingSlicedResult
from ..models import ItemPurchaseConditionValidateRequest
from ..models import ItemPurchaseConditionValidateResult
from ..models import ItemReturnRequest
from ..models import ItemTypeConfigCreate
from ..models import ItemTypeConfigInfo
from ..models import ItemTypeConfigUpdate
from ..models import ItemUpdate
from ..models import PopulatedItemInfo
from ..models import PurchaseConditionUpdate
from ..models import ValidationErrorEntity

from ..operations.item import AcquireItem
from ..operations.item import BulkGetLocaleItems
from ..operations.item import BulkUpdateRegionData
from ..operations.item import CreateItem
from ..operations.item import CreateItemTypeConfig
from ..operations.item import DefeatureItem
from ..operations.item import DeleteItem
from ..operations.item import DeleteItemFeaturesToCheckEnum
from ..operations.item import DeleteItemTypeConfig
from ..operations.item import DisableItem
from ..operations.item import EnableItem
from ..operations.item import FeatureItem
from ..operations.item import GetApp
from ..operations.item import GetAvailablePredicateTypes
from ..operations.item import GetBulkItemIdBySkus
from ..operations.item import GetEstimatedPrice
from ..operations.item import GetItem
from ..operations.item import GetItemByAppId
from ..operations.item import GetItemBySku
from ..operations.item import GetItemDynamicData
from ..operations.item import GetItemIdBySku
from ..operations.item import GetItemTypeConfig
from ..operations.item import GetItems
from ..operations.item import GetLocaleItem
from ..operations.item import GetLocaleItemBySku
from ..operations.item import ListBasicItemsByFeatures
from ..operations.item import ListItemTypeConfigs
from ..operations.item import PublicBulkGetItems
from ..operations.item import PublicGetApp
from ..operations.item import PublicGetEstimatedPrice
from ..operations.item import PublicGetItem
from ..operations.item import PublicGetItemByAppId
from ..operations.item import PublicGetItemBySku
from ..operations.item import PublicGetItemDynamicData
from ..operations.item import PublicQueryItems
from ..operations.item import (
    PublicQueryItemsAppTypeEnum,
    PublicQueryItemsItemTypeEnum,
    PublicQueryItemsSortByEnum,
)
from ..operations.item import PublicSearchItems
from ..operations.item import PublicSearchItemsItemTypeEnum
from ..operations.item import PublicValidateItemPurchaseCondition
from ..operations.item import QueryItemReferences
from ..operations.item import QueryItemReferencesFeaturesToCheckEnum
from ..operations.item import QueryItems
from ..operations.item import (
    QueryItemsAppTypeEnum,
    QueryItemsItemTypeEnum,
    QueryItemsSortByEnum,
)
from ..operations.item import QueryItemsV2
from ..operations.item import (
    QueryItemsV2AppTypeEnum,
    QueryItemsV2ItemStatusEnum,
    QueryItemsV2ItemTypeEnum,
    QueryItemsV2SortByEnum,
)
from ..operations.item import QueryUncategorizedItems
from ..operations.item import QueryUncategorizedItemsSortByEnum
from ..operations.item import ReturnItem
from ..operations.item import SearchItemTypeConfig
from ..operations.item import SearchItemTypeConfigItemTypeEnum
from ..operations.item import SearchItems
from ..operations.item import SearchItemsItemTypeEnum
from ..operations.item import SyncInGameItem
from ..operations.item import UpdateApp
from ..operations.item import UpdateItem
from ..operations.item import UpdateItemPurchaseCondition
from ..operations.item import UpdateItemTypeConfig
from ..operations.item import ValidateItemPurchaseCondition
from ..models import (
    AppInfoGenresEnum,
    AppInfoPlatformsEnum,
    AppInfoPlayersEnum,
    AppInfoPrimaryGenreEnum,
)
from ..models import (
    AppUpdateGenresEnum,
    AppUpdatePlatformsEnum,
    AppUpdatePlayersEnum,
    AppUpdatePrimaryGenreEnum,
)
from ..models import (
    AvailablePredicatePredicateTypeEnum,
    AvailablePredicateValueTypeEnum,
)
from ..models import (
    BasicItemAppTypeEnum,
    BasicItemEntitlementTypeEnum,
    BasicItemItemTypeEnum,
    BasicItemSeasonTypeEnum,
    BasicItemStatusEnum,
)
from ..models import ChangeStatusItemRequestFeaturesToCheckEnum
from ..models import (
    FullAppInfoGenresEnum,
    FullAppInfoPlatformsEnum,
    FullAppInfoPlayersEnum,
    FullAppInfoPrimaryGenreEnum,
)
from ..models import (
    FullItemInfoAppTypeEnum,
    FullItemInfoEntitlementTypeEnum,
    FullItemInfoItemTypeEnum,
    FullItemInfoSeasonTypeEnum,
    FullItemInfoStatusEnum,
)
from ..models import (
    ItemCreateAppTypeEnum,
    ItemCreateEntitlementTypeEnum,
    ItemCreateItemTypeEnum,
    ItemCreateSeasonTypeEnum,
    ItemCreateStatusEnum,
)
from ..models import ItemIdStatusEnum
from ..models import (
    ItemInfoAppTypeEnum,
    ItemInfoEntitlementTypeEnum,
    ItemInfoItemTypeEnum,
    ItemInfoSeasonTypeEnum,
    ItemInfoStatusEnum,
)
from ..models import ItemTypeConfigCreateItemTypeEnum
from ..models import ItemTypeConfigInfoItemTypeEnum
from ..models import (
    ItemUpdateAppTypeEnum,
    ItemUpdateEntitlementTypeEnum,
    ItemUpdateItemTypeEnum,
    ItemUpdateSeasonTypeEnum,
    ItemUpdateStatusEnum,
)
from ..models import (
    PopulatedItemInfoAppTypeEnum,
    PopulatedItemInfoEntitlementTypeEnum,
    PopulatedItemInfoItemTypeEnum,
    PopulatedItemInfoSeasonTypeEnum,
    PopulatedItemInfoStatusEnum,
)


@same_doc_as(AcquireItem)
def acquire_item(
    body: ItemAcquireRequest,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Acquire item (acquireItem)

    [SERVICE COMMUNICATION ONLY] This api is used for acquiring a published item while the item is maxCount limited, it will decrease the sale available count.
    Other detail info:

      * Returns : acquire result

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/acquire

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemAcquireRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemAcquireResult (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcquireItem.create(
        body=body,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcquireItem)
async def acquire_item_async(
    body: ItemAcquireRequest,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Acquire item (acquireItem)

    [SERVICE COMMUNICATION ONLY] This api is used for acquiring a published item while the item is maxCount limited, it will decrease the sale available count.
    Other detail info:

      * Returns : acquire result

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/acquire

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemAcquireRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemAcquireResult (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcquireItem.create(
        body=body,
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetLocaleItems)
def bulk_get_locale_items(
    item_ids: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get locale items (bulkGetLocaleItems)

    This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : the list of items info

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/locale/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[ItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetLocaleItems.create(
        item_ids=item_ids,
        active_only=active_only,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetLocaleItems)
async def bulk_get_locale_items_async(
    item_ids: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get locale items (bulkGetLocaleItems)

    This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : the list of items info

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/locale/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[ItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetLocaleItems.create(
        item_ids=item_ids,
        active_only=active_only,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkUpdateRegionData)
def bulk_update_region_data(
    store_id: str,
    body: Optional[BulkRegionDataChangeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update item's region data in bulk (bulkUpdateRegionData)

    This API is used to update region data of items in bulk

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/regiondata

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL BulkRegionDataChangeRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ErrorEntity (30022: Default region [{region}] is required | 30321: Invalid item discount amount | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateRegionData.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkUpdateRegionData)
async def bulk_update_region_data_async(
    store_id: str,
    body: Optional[BulkRegionDataChangeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update item's region data in bulk (bulkUpdateRegionData)

    This API is used to update region data of items in bulk

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/regiondata

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL BulkRegionDataChangeRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ErrorEntity (30022: Default region [{region}] is required | 30321: Invalid item discount amount | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateRegionData.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateItem)
def create_item(
    body: ItemCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an Item (createItem)

    This API is used to create an item. APP item only can created in publisher namespace.

    An item create example:


        {

           "categoryPath": "/games",

           "localizations": {

               "en": {

                   "title":"required",

                   "description":"optional",

                   "longDescription":"optional",

                   "localExt": {

                          "properties":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                          ],

                          "functions":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                         ]

                   }

                }

           },

           "images": [

             {

                   "as":"optional, image for",

                   "caption":"optional",

                   "height":10,

                   "width":10,

                   "imageUrl":"http://img-url-required",

                   "smallImageUrl":"http://small-img-url-required"

             }

           ],

           "thumbnailUrl": "optional, thumbnail url",

           "status": "ACTIVE",

           "listable": true,

           "purchasable": true,

           "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

           "name": "required, also will be used as entitlement name",

           "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

           "useCount": 1(optional, required if the entitlement type is consumable),

           "stackable": false,

           "appId": "optional, required if itemType is APP",

           "appType": "GAME(optional, required if itemType is APP)",

           "seasonType": "PASS(optional, required if itemType is SEASON)",

           "baseAppId": "optional, set value of game app id if you want to link to a game",

           "targetCurrencyCode": "optional, required if itemType is COINS",

           "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

           created belongs to the publisher namespace",

           "sku": "optional, commonly unique item code",

           "regionData": {

               "US(store's default region is required)": [

                 {

                    "price":10,

                    "discountPercentage": 0(integer, optional, range[0,100], discountedPrice = price  * ((100 - discountPercentage) * 0.01),

                      will use it to calculate discounted price if it is not 0),

                    "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                    "currencyCode":"code(required, example: USD)",

                    "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                    "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                    "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

                 }

               ]

           },

           "itemIds": [

               "itemId"

           ],

           "itemQty": {

               "itemId":1

           },

           "recurring": {

               "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

               "fixedFreeDays":0(integer, fixed free days, 0 means not set),

               "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

               "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

           },

           "tags": [

               "exampleTag24"

           ],

           "features": [

               "feature"

           ],

           "clazz": "weapon",

           "boothName": "C_campaign1",

           "displayOrder": 1000,

           "ext": {

               "properties":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ],

               "functions":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ]

           },

           "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

           "maxCount": 1(integer, optional, -1 means UNLIMITED, unset when itemType is CODE)

        }

    Other detail info:

      * Returns : created item data



    ## Restrictions for item extension and localization extension and inventory config custom attributes


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/items

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (20024: unsupported operation | 30301: Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration | 30322: Bundle item [{itemId}] can't be bundled | 30325: Code item [{itemId}] can't be bundled | 30326: Subscription item [{itemId}] can't be bundled | 30329: Invalid bundled item [{itemId}] quantity | 30021: Default language [{language}] required | 30321: Invalid item discount amount | 30022: Default region [{region}] is required | 30323: Target namespace is required | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}] | 30332: Invalid option box item [{itemId}] quantity | 30333: Item [{itemId}] item type [{itemType}] can't be bundled into option box | 30334: Option box item [{itemId}] can't be bundled | 30337: Invalid loot box item [{itemId}] quantity | 30338: Item [{itemId}] item type [{itemType}] can't be bundled into loot box | 30339: Loot box item [{itemId}] can't be bundled)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30175: Duplicated currencyCode [{currencyCode}] in Region [{region}] | 30373: ItemType [{itemType}] is not allowed in namespace [{namespace}] | 30376: Publisher namespace don’t allow sellback item | 30377: This item type [{itemType}] don’t allow sellback | 30378: Sale price don’t allow real currency [{currencyCode}] | 30380: Box item [{itemId}] duration and end date can’t be set at the same time | 30381: Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}] | 30383: Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateItem.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateItem)
async def create_item_async(
    body: ItemCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an Item (createItem)

    This API is used to create an item. APP item only can created in publisher namespace.

    An item create example:


        {

           "categoryPath": "/games",

           "localizations": {

               "en": {

                   "title":"required",

                   "description":"optional",

                   "longDescription":"optional",

                   "localExt": {

                          "properties":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                          ],

                          "functions":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                         ]

                   }

                }

           },

           "images": [

             {

                   "as":"optional, image for",

                   "caption":"optional",

                   "height":10,

                   "width":10,

                   "imageUrl":"http://img-url-required",

                   "smallImageUrl":"http://small-img-url-required"

             }

           ],

           "thumbnailUrl": "optional, thumbnail url",

           "status": "ACTIVE",

           "listable": true,

           "purchasable": true,

           "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

           "name": "required, also will be used as entitlement name",

           "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

           "useCount": 1(optional, required if the entitlement type is consumable),

           "stackable": false,

           "appId": "optional, required if itemType is APP",

           "appType": "GAME(optional, required if itemType is APP)",

           "seasonType": "PASS(optional, required if itemType is SEASON)",

           "baseAppId": "optional, set value of game app id if you want to link to a game",

           "targetCurrencyCode": "optional, required if itemType is COINS",

           "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

           created belongs to the publisher namespace",

           "sku": "optional, commonly unique item code",

           "regionData": {

               "US(store's default region is required)": [

                 {

                    "price":10,

                    "discountPercentage": 0(integer, optional, range[0,100], discountedPrice = price  * ((100 - discountPercentage) * 0.01),

                      will use it to calculate discounted price if it is not 0),

                    "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                    "currencyCode":"code(required, example: USD)",

                    "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                    "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                    "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

                 }

               ]

           },

           "itemIds": [

               "itemId"

           ],

           "itemQty": {

               "itemId":1

           },

           "recurring": {

               "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

               "fixedFreeDays":0(integer, fixed free days, 0 means not set),

               "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

               "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

           },

           "tags": [

               "exampleTag24"

           ],

           "features": [

               "feature"

           ],

           "clazz": "weapon",

           "boothName": "C_campaign1",

           "displayOrder": 1000,

           "ext": {

               "properties":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ],

               "functions":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ]

           },

           "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

           "maxCount": 1(integer, optional, -1 means UNLIMITED, unset when itemType is CODE)

        }

    Other detail info:

      * Returns : created item data



    ## Restrictions for item extension and localization extension and inventory config custom attributes


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/items

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (20024: unsupported operation | 30301: Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration | 30322: Bundle item [{itemId}] can't be bundled | 30325: Code item [{itemId}] can't be bundled | 30326: Subscription item [{itemId}] can't be bundled | 30329: Invalid bundled item [{itemId}] quantity | 30021: Default language [{language}] required | 30321: Invalid item discount amount | 30022: Default region [{region}] is required | 30323: Target namespace is required | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}] | 30332: Invalid option box item [{itemId}] quantity | 30333: Item [{itemId}] item type [{itemType}] can't be bundled into option box | 30334: Option box item [{itemId}] can't be bundled | 30337: Invalid loot box item [{itemId}] quantity | 30338: Item [{itemId}] item type [{itemType}] can't be bundled into loot box | 30339: Loot box item [{itemId}] can't be bundled)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30175: Duplicated currencyCode [{currencyCode}] in Region [{region}] | 30373: ItemType [{itemType}] is not allowed in namespace [{namespace}] | 30376: Publisher namespace don’t allow sellback item | 30377: This item type [{itemType}] don’t allow sellback | 30378: Sale price don’t allow real currency [{currencyCode}] | 30380: Box item [{itemId}] duration and end date can’t be set at the same time | 30381: Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}] | 30383: Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateItem.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateItemTypeConfig)
def create_item_type_config(
    body: ItemTypeConfigCreate,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an Item Type Config (createItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to create an item type config.

    *  Returns : item type config data

    Properties:
        url: /platform/admin/items/configs

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemTypeConfigCreate in body

    Responses:
        201: Created - (item type config created)

        400: Bad Request - ErrorEntity (30336: Item type [{itemType}] does not support)

        409: Conflict - ErrorEntity (30371: Item type config for type [{itemType}] and clazz [{clazz}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = CreateItemTypeConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateItemTypeConfig)
async def create_item_type_config_async(
    body: ItemTypeConfigCreate,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create an Item Type Config (createItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to create an item type config.

    *  Returns : item type config data

    Properties:
        url: /platform/admin/items/configs

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemTypeConfigCreate in body

    Responses:
        201: Created - (item type config created)

        400: Bad Request - ErrorEntity (30336: Item type [{itemType}] does not support)

        409: Conflict - ErrorEntity (30371: Item type config for type [{itemType}] and clazz [{clazz}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = CreateItemTypeConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DefeatureItem)
def defeature_item(
    feature: str,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Defeature an item (defeatureItem)

    Remove a feature from an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}

        method: DELETE

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        feature: (feature) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DefeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DefeatureItem)
async def defeature_item_async(
    feature: str,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Defeature an item (defeatureItem)

    Remove a feature from an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}

        method: DELETE

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        feature: (feature) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DefeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteItem)
def delete_item(
    item_id: str,
    features_to_check: Optional[List[Union[str, DeleteItemFeaturesToCheckEnum]]] = None,
    force: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an item (deleteItem)

    This API is used to delete an item permanently.

    force: the default value should be: false. When the value is:
    * false: only the items in the draft store that have never been published yet can be removed.
    *  true: the item in the draft store(even been published before) can be removed.

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: DELETE

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]] in query

        force: (force) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30335: Item [{itemId}] can't be deleted in non-forced mode if item has been published)

        409: Conflict - ErrorEntity (30386: The item [{itemId}] is currently associated and cannot be deleted in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteItem.create(
        item_id=item_id,
        features_to_check=features_to_check,
        force=force,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteItem)
async def delete_item_async(
    item_id: str,
    features_to_check: Optional[List[Union[str, DeleteItemFeaturesToCheckEnum]]] = None,
    force: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an item (deleteItem)

    This API is used to delete an item permanently.

    force: the default value should be: false. When the value is:
    * false: only the items in the draft store that have never been published yet can be removed.
    *  true: the item in the draft store(even been published before) can be removed.

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: DELETE

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]] in query

        force: (force) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30335: Item [{itemId}] can't be deleted in non-forced mode if item has been published)

        409: Conflict - ErrorEntity (30386: The item [{itemId}] is currently associated and cannot be deleted in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteItem.create(
        item_id=item_id,
        features_to_check=features_to_check,
        force=force,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteItemTypeConfig)
def delete_item_type_config(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete an item type config (deleteItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to delete an item type config permanently.

    Properties:
        url: /platform/admin/items/configs/{id}

        method: DELETE

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = DeleteItemTypeConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteItemTypeConfig)
async def delete_item_type_config_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete an item type config (deleteItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to delete an item type config permanently.

    Properties:
        url: /platform/admin/items/configs/{id}

        method: DELETE

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = DeleteItemTypeConfig.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DisableItem)
def disable_item(
    item_id: str,
    store_id: str,
    body: Optional[ChangeStatusItemRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable an item (disableItem)

    Disable an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/disable

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ChangeStatusItemRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30387: The item [{itemId}] is currently associated and cannot be disabled in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableItem.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DisableItem)
async def disable_item_async(
    item_id: str,
    store_id: str,
    body: Optional[ChangeStatusItemRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable an item (disableItem)

    Disable an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/disable

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ChangeStatusItemRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30387: The item [{itemId}] is currently associated and cannot be disabled in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableItem.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(EnableItem)
def enable_item(
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable an item (enableItem)

    Enable an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/enable

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(EnableItem)
async def enable_item_async(
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable an item (enableItem)

    Enable an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/enable

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FeatureItem)
def feature_item(
    feature: str,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Feature an item (featureItem)

    Add a feature to an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        feature: (feature) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FeatureItem)
async def feature_item_async(
    feature: str,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Feature an item (featureItem)

    Add a feature to an item.
    Other detail info:

      * Returns : updated item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        feature: (feature) REQUIRED str in path

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetApp)
def get_app(
    item_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an app info (getApp)

    This API is used to get an app info.

    Other detail info:

      * Returns : app data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/app

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullAppInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetApp.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetApp)
async def get_app_async(
    item_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an app info (getApp)

    This API is used to get an app info.

    Other detail info:

      * Returns : app data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/app

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullAppInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetApp.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAvailablePredicateTypes)
def get_available_predicate_types(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get available predicate types (getAvailablePredicateTypes)

    Get available predicate types.
    Other detail info:

      * Returns : available predicate types

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/predicate/types

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[AvailablePredicate] (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAvailablePredicateTypes.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAvailablePredicateTypes)
async def get_available_predicate_types_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get available predicate types (getAvailablePredicateTypes)

    Get available predicate types.
    Other detail info:

      * Returns : available predicate types

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/predicate/types

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[AvailablePredicate] (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAvailablePredicateTypes.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetBulkItemIdBySkus)
def get_bulk_item_id_by_skus(
    sku: Optional[List[str]] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get multiple itemId by sku (getBulkItemIdBySkus)

    This API is used to get an list of itemId by list of sku.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/itemId/bySkus

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sku: (sku) OPTIONAL List[str] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ItemId] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetBulkItemIdBySkus.create(
        sku=sku,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetBulkItemIdBySkus)
async def get_bulk_item_id_by_skus_async(
    sku: Optional[List[str]] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get multiple itemId by sku (getBulkItemIdBySkus)

    This API is used to get an list of itemId by list of sku.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/itemId/bySkus

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        sku: (sku) OPTIONAL List[str] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ItemId] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetBulkItemIdBySkus.create(
        sku=sku,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetEstimatedPrice)
def get_estimated_price(
    item_ids: str,
    user_id: str,
    platform: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get estimated price (getEstimatedPrice)

    This API is used to get estimated prices of a flexible pricing bundle

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/estimatedPrice

        method: GET

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - EstimatedPriceInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEstimatedPrice.create(
        item_ids=item_ids,
        user_id=user_id,
        platform=platform,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEstimatedPrice)
async def get_estimated_price_async(
    item_ids: str,
    user_id: str,
    platform: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get estimated price (getEstimatedPrice)

    This API is used to get estimated prices of a flexible pricing bundle

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/estimatedPrice

        method: GET

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - EstimatedPriceInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEstimatedPrice.create(
        item_ids=item_ids,
        user_id=user_id,
        platform=platform,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItem)
def get_item(
    item_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item (getItem)

    This API is used to get an item.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItem.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItem)
async def get_item_async(
    item_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item (getItem)

    This API is used to get an item.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItem.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItemByAppId)
def get_item_by_app_id(
    app_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by appId (getItemByAppId)

    This API is used to get the item by appId.

    Other detail info:

      * Returns : the item with that appId

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byAppId

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30342: Item of appId [{appId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemByAppId.create(
        app_id=app_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItemByAppId)
async def get_item_by_app_id_async(
    app_id: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by appId (getItemByAppId)

    This API is used to get the item by appId.

    Other detail info:

      * Returns : the item with that appId

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byAppId

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30342: Item of appId [{appId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemByAppId.create(
        app_id=app_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItemBySku)
def get_item_by_sku(
    sku: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by sku (getItemBySku)

    This API is used to get the item by sku.

    Other detail info:

      * Returns : the item with sku

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItemBySku)
async def get_item_by_sku_async(
    sku: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by sku (getItemBySku)

    This API is used to get the item by sku.

    Other detail info:

      * Returns : the item with sku

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItemDynamicData)
def get_item_dynamic_data(
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item dynamic data (getItemDynamicData)

    Get item dynamic data for published item.
    Other detail info:

      * Returns : item dynamic data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemDynamicDataInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItemDynamicData)
async def get_item_dynamic_data_async(
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item dynamic data (getItemDynamicData)

    Get item dynamic data for published item.
    Other detail info:

      * Returns : item dynamic data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemDynamicDataInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItemIdBySku)
def get_item_id_by_sku(
    sku: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get itemId by sku (getItemIdBySku)

    [SERVICE COMMUNICATION ONLY] This API is used to get the itemId by sku.

    Other detail info:

      * Returns : the itemId with sku

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/itemId/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - ItemId (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemIdBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItemIdBySku)
async def get_item_id_by_sku_async(
    sku: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get itemId by sku (getItemIdBySku)

    [SERVICE COMMUNICATION ONLY] This API is used to get the itemId by sku.

    Other detail info:

      * Returns : the itemId with sku

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/itemId/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - ItemId (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItemIdBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItemTypeConfig)
def get_item_type_config(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get an item type config (getItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

    Other detail info:

      * Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/{id}

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = GetItemTypeConfig.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItemTypeConfig)
async def get_item_type_config_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get an item type config (getItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

    Other detail info:

      * Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/{id}

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = GetItemTypeConfig.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetItems)
def get_items(
    item_ids: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get items (getItems)

    This API is used to get items.

    Other detail info:

      * Returns : the list of items info

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[FullItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItems.create(
        item_ids=item_ids,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetItems)
async def get_items_async(
    item_ids: str,
    active_only: Optional[bool] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get items (getItems)

    This API is used to get items.

    Other detail info:

      * Returns : the list of items info

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[FullItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetItems.create(
        item_ids=item_ids,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLocaleItem)
def get_locale_item(
    item_id: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item in locale (getLocaleItem)

    This API is used to get an item in specific locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLocaleItem.create(
        item_id=item_id,
        active_only=active_only,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLocaleItem)
async def get_locale_item_async(
    item_id: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item in locale (getLocaleItem)

    This API is used to get an item in specific locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLocaleItem.create(
        item_id=item_id,
        active_only=active_only,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLocaleItemBySku)
def get_locale_item_by_sku(
    sku: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item by sku in locale (getLocaleItemBySku)

    This API is used to get an item by sku in specific locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/bySku/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLocaleItemBySku.create(
        sku=sku,
        active_only=active_only,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLocaleItemBySku)
async def get_locale_item_by_sku_async(
    sku: str,
    active_only: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item by sku in locale (getLocaleItemBySku)

    This API is used to get an item by sku in specific locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/bySku/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLocaleItemBySku.create(
        sku=sku,
        active_only=active_only,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListBasicItemsByFeatures)
def list_basic_items_by_features(
    active_only: Optional[bool] = None,
    features: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List basic items by features (listBasicItemsByFeatures)

    [SERVICE COMMUNICATION ONLY] This API is used to list basic items by features.

    Other detail info:

      * Returns : the list of basic items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byFeatures/basic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        features: (features) OPTIONAL List[str] in query

    Responses:
        200: OK - List[BasicItem] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListBasicItemsByFeatures.create(
        active_only=active_only,
        features=features,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListBasicItemsByFeatures)
async def list_basic_items_by_features_async(
    active_only: Optional[bool] = None,
    features: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List basic items by features (listBasicItemsByFeatures)

    [SERVICE COMMUNICATION ONLY] This API is used to list basic items by features.

    Other detail info:

      * Returns : the list of basic items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byFeatures/basic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        features: (features) OPTIONAL List[str] in query

    Responses:
        200: OK - List[BasicItem] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListBasicItemsByFeatures.create(
        active_only=active_only,
        features=features,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListItemTypeConfigs)
def list_item_type_configs(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get all item type configs (listItemTypeConfigs)

    [Not supported yet in AGS Shared Cloud] This API is used to get all item type configs.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/items/configs

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[ItemTypeConfigInfo] (successful operation)
    """
    request = ListItemTypeConfigs.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListItemTypeConfigs)
async def list_item_type_configs_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get all item type configs (listItemTypeConfigs)

    [Not supported yet in AGS Shared Cloud] This API is used to get all item type configs.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/items/configs

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[ItemTypeConfigInfo] (successful operation)
    """
    request = ListItemTypeConfigs.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkGetItems)
def public_bulk_get_items(
    item_ids: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get locale items (publicBulkGetItems)

    This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store items)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store items)
      *  Returns : the list of items info

    Properties:
        url: /platform/public/namespaces/{namespace}/items/locale/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[ItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetItems.create(
        item_ids=item_ids,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkGetItems)
async def public_bulk_get_items_async(
    item_ids: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get locale items (publicBulkGetItems)

    This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store items)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store items)
      *  Returns : the list of items info

    Properties:
        url: /platform/public/namespaces/{namespace}/items/locale/byIds

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[ItemInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetItems.create(
        item_ids=item_ids,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetApp)
def public_get_app(
    item_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an app in locale (publicGetApp)

    This API is used to get an app in locale. If app not exist in specific region, default region app will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store app)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store app)
      *  Returns : app data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/app/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - AppInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetApp.create(
        item_id=item_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetApp)
async def public_get_app_async(
    item_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an app in locale (publicGetApp)

    This API is used to get an app in locale. If app not exist in specific region, default region app will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store app)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store app)
      *  Returns : app data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/app/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - AppInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetApp.create(
        item_id=item_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetEstimatedPrice)
def public_get_estimated_price(
    item_ids: str,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get estimated price (publicGetEstimatedPrice)

    This API is used to get estimated prices of item

    Properties:
        url: /platform/public/namespaces/{namespace}/items/estimatedPrice

        method: GET

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[EstimatedPriceInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetEstimatedPrice.create(
        item_ids=item_ids,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetEstimatedPrice)
async def public_get_estimated_price_async(
    item_ids: str,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get estimated price (publicGetEstimatedPrice)

    This API is used to get estimated prices of item

    Properties:
        url: /platform/public/namespaces/{namespace}/items/estimatedPrice

        method: GET

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        item_ids: (itemIds) REQUIRED str in query

    Responses:
        200: OK - List[EstimatedPriceInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetEstimatedPrice.create(
        item_ids=item_ids,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetItem)
def public_get_item(
    item_id: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item in locale (publicGetItem)

    This API is used to get an item in locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : item data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItem.create(
        item_id=item_id,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetItem)
async def public_get_item_async(
    item_id: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    populate_bundle: Optional[bool] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item in locale (publicGetItem)

    This API is used to get an item in locale. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : item data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/locale

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        populate_bundle: (populateBundle) OPTIONAL bool in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - PopulatedItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItem.create(
        item_id=item_id,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetItemByAppId)
def public_get_item_by_app_id(
    app_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by appId (publicGetItemByAppId)

    This API is used to get item by appId.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the item with that appId

    Properties:
        url: /platform/public/namespaces/{namespace}/items/byAppId

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - ItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30342: Item of appId [{appId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemByAppId.create(
        app_id=app_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetItemByAppId)
async def public_get_item_by_app_id_async(
    app_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by appId (publicGetItemByAppId)

    This API is used to get item by appId.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the item with that appId

    Properties:
        url: /platform/public/namespaces/{namespace}/items/byAppId

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - ItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30342: Item of appId [{appId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemByAppId.create(
        app_id=app_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetItemBySku)
def public_get_item_by_sku(
    sku: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by sku (publicGetItemBySku)

    This API is used to get the item by sku.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the item with sku

    Properties:
        url: /platform/public/namespaces/{namespace}/items/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - ItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemBySku.create(
        sku=sku,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetItemBySku)
async def public_get_item_by_sku_async(
    sku: str,
    auto_calc_estimated_price: Optional[bool] = None,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item by sku (publicGetItemBySku)

    This API is used to get the item by sku.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the item with sku

    Properties:
        url: /platform/public/namespaces/{namespace}/items/bySku

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - ItemInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemBySku.create(
        sku=sku,
        auto_calc_estimated_price=auto_calc_estimated_price,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetItemDynamicData)
def public_get_item_dynamic_data(
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item dynamic data (publicGetItemDynamicData)

    Get item dynamic data for a published item.
    Other detail info:

      * Returns : item dynamic data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/dynamic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemDynamicDataInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetItemDynamicData)
async def public_get_item_dynamic_data_async(
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item dynamic data (publicGetItemDynamicData)

    Get item dynamic data for a published item.
    Other detail info:

      * Returns : item dynamic data

    Properties:
        url: /platform/public/namespaces/{namespace}/items/{itemId}/dynamic

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ItemDynamicDataInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryItems)
def public_query_items(
    app_type: Optional[Union[str, PublicQueryItemsAppTypeEnum]] = None,
    auto_calc_estimated_price: Optional[bool] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_type: Optional[Union[str, PublicQueryItemsItemTypeEnum]] = None,
    language: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    sort_by: Optional[List[Union[str, PublicQueryItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (publicQueryItems)

    This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the list of items

    Properties:
        url: /platform/public/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        language: (language) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryItems.create(
        app_type=app_type,
        auto_calc_estimated_price=auto_calc_estimated_price,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_type=item_type,
        language=language,
        limit=limit,
        offset=offset,
        region=region,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryItems)
async def public_query_items_async(
    app_type: Optional[Union[str, PublicQueryItemsAppTypeEnum]] = None,
    auto_calc_estimated_price: Optional[bool] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_type: Optional[Union[str, PublicQueryItemsItemTypeEnum]] = None,
    language: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    sort_by: Optional[List[Union[str, PublicQueryItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (publicQueryItems)

    This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the list of items

    Properties:
        url: /platform/public/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        language: (language) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryItems.create(
        app_type=app_type,
        auto_calc_estimated_price=auto_calc_estimated_price,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_type=item_type,
        language=language,
        limit=limit,
        offset=offset,
        region=region,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSearchItems)
def public_search_items(
    keyword: str,
    language: str,
    auto_calc_estimated_price: Optional[bool] = None,
    item_type: Optional[Union[str, PublicSearchItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search items by keyword (publicSearchItems)

    This API is used to search items by keyword in title, description and long description, It's language constrained, also if item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the list of items

    Properties:
        url: /platform/public/namespaces/{namespace}/items/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        keyword: (keyword) REQUIRED str in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchItems.create(
        keyword=keyword,
        language=language,
        auto_calc_estimated_price=auto_calc_estimated_price,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSearchItems)
async def public_search_items_async(
    keyword: str,
    language: str,
    auto_calc_estimated_price: Optional[bool] = None,
    item_type: Optional[Union[str, PublicSearchItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search items by keyword (publicSearchItems)

    This API is used to search items by keyword in title, description and long description, It's language constrained, also if item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the list of items

    Properties:
        url: /platform/public/namespaces/{namespace}/items/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        auto_calc_estimated_price: (autoCalcEstimatedPrice) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        keyword: (keyword) REQUIRED str in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchItems.create(
        keyword=keyword,
        language=language,
        auto_calc_estimated_price=auto_calc_estimated_price,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicValidateItemPurchaseCondition)
def public_validate_item_purchase_condition(
    body: ItemPurchaseConditionValidateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user item purchase condition (publicValidateItemPurchaseCondition)

    This API is used to validate user item purchase condition

    Properties:
        url: /platform/public/namespaces/{namespace}/items/purchase/conditions/validate

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemPurchaseConditionValidateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ItemPurchaseConditionValidateResult] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateItemPurchaseCondition.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicValidateItemPurchaseCondition)
async def public_validate_item_purchase_condition_async(
    body: ItemPurchaseConditionValidateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user item purchase condition (publicValidateItemPurchaseCondition)

    This API is used to validate user item purchase condition

    Properties:
        url: /platform/public/namespaces/{namespace}/items/purchase/conditions/validate

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemPurchaseConditionValidateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ItemPurchaseConditionValidateResult] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateItemPurchaseCondition.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryItemReferences)
def query_item_references(
    item_id: str,
    features_to_check: Optional[
        List[Union[str, QueryItemReferencesFeaturesToCheckEnum]]
    ] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item references (queryItemReferences)

    This API is used to get references for an item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/references

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - ItemDependency (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItemReferences.create(
        item_id=item_id,
        features_to_check=features_to_check,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryItemReferences)
async def query_item_references_async(
    item_id: str,
    features_to_check: Optional[
        List[Union[str, QueryItemReferencesFeaturesToCheckEnum]]
    ] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get item references (queryItemReferences)

    This API is used to get references for an item

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/references

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - ItemDependency (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItemReferences.create(
        item_id=item_id,
        features_to_check=features_to_check,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryItems)
def query_items(
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryItemsAppTypeEnum]] = None,
    available_date: Optional[str] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_type: Optional[Union[str, QueryItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    sort_by: Optional[List[Union[str, QueryItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    target_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (queryItems)

    This API is used to query items by criteria within a store.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        available_date: (availableDate) OPTIONAL str in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItems.create(
        active_only=active_only,
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryItems)
async def query_items_async(
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryItemsAppTypeEnum]] = None,
    available_date: Optional[str] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_type: Optional[Union[str, QueryItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    sort_by: Optional[List[Union[str, QueryItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    target_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (queryItems)

    This API is used to query items by criteria within a store.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        available_date: (availableDate) OPTIONAL str in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItems.create(
        active_only=active_only,
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryItemsV2)
def query_items_v2(
    app_type: Optional[Union[str, QueryItemsV2AppTypeEnum]] = None,
    available_date: Optional[str] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_name: Optional[str] = None,
    item_status: Optional[Union[str, QueryItemsV2ItemStatusEnum]] = None,
    item_type: Optional[List[Union[str, QueryItemsV2ItemTypeEnum]]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    section_exclusive: Optional[bool] = None,
    sort_by: Optional[List[Union[str, QueryItemsV2SortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    target_namespace: Optional[str] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (queryItemsV2)

    This API is used to query items by criteria within a store.

    The behaviour for itemStatus query parameter:
    * TRUE: Show only ACTIVE items
    * FALSE: Show only INACTIVE items
    * Not provided: show both ACTIVE and INACTIVE items
    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        available_date: (availableDate) OPTIONAL str in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_name: (itemName) OPTIONAL str in query

        item_status: (itemStatus) OPTIONAL Union[str, ItemStatusEnum] in query

        item_type: (itemType) OPTIONAL List[Union[str, ItemTypeEnum]] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        section_exclusive: (sectionExclusive) OPTIONAL bool in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - FullItemPagingResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItemsV2.create(
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_name=item_name,
        item_status=item_status,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        section_exclusive=section_exclusive,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        target_namespace=target_namespace,
        with_total=with_total,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryItemsV2)
async def query_items_v2_async(
    app_type: Optional[Union[str, QueryItemsV2AppTypeEnum]] = None,
    available_date: Optional[str] = None,
    base_app_id: Optional[str] = None,
    category_path: Optional[str] = None,
    features: Optional[str] = None,
    include_sub_category_item: Optional[bool] = None,
    item_name: Optional[str] = None,
    item_status: Optional[Union[str, QueryItemsV2ItemStatusEnum]] = None,
    item_type: Optional[List[Union[str, QueryItemsV2ItemTypeEnum]]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    section_exclusive: Optional[bool] = None,
    sort_by: Optional[List[Union[str, QueryItemsV2SortByEnum]]] = None,
    store_id: Optional[str] = None,
    tags: Optional[str] = None,
    target_namespace: Optional[str] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query items by criteria (queryItemsV2)

    This API is used to query items by criteria within a store.

    The behaviour for itemStatus query parameter:
    * TRUE: Show only ACTIVE items
    * FALSE: Show only INACTIVE items
    * Not provided: show both ACTIVE and INACTIVE items
    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        available_date: (availableDate) OPTIONAL str in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_name: (itemName) OPTIONAL str in query

        item_status: (itemStatus) OPTIONAL Union[str, ItemStatusEnum] in query

        item_type: (itemType) OPTIONAL List[Union[str, ItemTypeEnum]] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        section_exclusive: (sectionExclusive) OPTIONAL bool in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - FullItemPagingResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryItemsV2.create(
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        include_sub_category_item=include_sub_category_item,
        item_name=item_name,
        item_status=item_status,
        item_type=item_type,
        limit=limit,
        offset=offset,
        region=region,
        section_exclusive=section_exclusive,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        target_namespace=target_namespace,
        with_total=with_total,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUncategorizedItems)
def query_uncategorized_items(
    active_only: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryUncategorizedItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query uncategorized items (queryUncategorizedItems)

    This API is used to query uncategorized items within a store.

    Other detail info:

      * Returns : the list of uncategorized items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/uncategorized

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUncategorizedItems.create(
        active_only=active_only,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUncategorizedItems)
async def query_uncategorized_items_async(
    active_only: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[List[Union[str, QueryUncategorizedItemsSortByEnum]]] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query uncategorized items (queryUncategorizedItems)

    This API is used to query uncategorized items within a store.

    Other detail info:

      * Returns : the list of uncategorized items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/uncategorized

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUncategorizedItems.create(
        active_only=active_only,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ReturnItem)
def return_item(
    body: ItemReturnRequest,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Return item (returnItem)

    [SERVICE COMMUNICATION ONLY] This api is used for returning a published item while the item is maxCount limited, it will increase the sale available count if orderNo already acquired.

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/return

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemReturnRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Return item successfully)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ReturnItem.create(
        body=body,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ReturnItem)
async def return_item_async(
    body: ItemReturnRequest,
    item_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Return item (returnItem)

    [SERVICE COMMUNICATION ONLY] This api is used for returning a published item while the item is maxCount limited, it will increase the sale available count if orderNo already acquired.

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/return

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemReturnRequest in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Return item successfully)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ReturnItem.create(
        body=body,
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SearchItemTypeConfig)
def search_item_type_config(
    item_type: Union[str, SearchItemTypeConfigItemTypeEnum],
    clazz: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item type config (searchItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

    Other detail info:

      * Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        clazz: (clazz) OPTIONAL str in query

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum] in query

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = SearchItemTypeConfig.create(
        item_type=item_type,
        clazz=clazz,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SearchItemTypeConfig)
async def search_item_type_config_async(
    item_type: Union[str, SearchItemTypeConfigItemTypeEnum],
    clazz: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an item type config (searchItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

    Other detail info:

      * Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        clazz: (clazz) OPTIONAL str in query

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum] in query

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """
    request = SearchItemTypeConfig.create(
        item_type=item_type,
        clazz=clazz,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SearchItems)
def search_items(
    keyword: str,
    language: str,
    active_only: Optional[bool] = None,
    item_type: Optional[Union[str, SearchItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search items by keyword (searchItems)

    This API is used to search items by keyword in title, description and long description within a store.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        keyword: (keyword) REQUIRED str in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchItems.create(
        keyword=keyword,
        language=language,
        active_only=active_only,
        item_type=item_type,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SearchItems)
async def search_items_async(
    keyword: str,
    language: str,
    active_only: Optional[bool] = None,
    item_type: Optional[Union[str, SearchItemsItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search items by keyword (searchItems)

    This API is used to search items by keyword in title, description and long description within a store.

    Other detail info:

      * Returns : the list of items

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        keyword: (keyword) REQUIRED str in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchItems.create(
        keyword=keyword,
        language=language,
        active_only=active_only,
        item_type=item_type,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncInGameItem)
def sync_in_game_item(
    body: InGameItemSync,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync an in game item (syncInGameItem)

    [Not supported yet in AGS Shared Cloud] This API is used to sync an in game item in game namespace to publisher namespace, only INGAMEITEM, CODE, COINS and SEASON are supported

    The synced item has an additional field targetItemId besides targetNamespace, mostly this item should not modified manually again.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED InGameItemSync in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required | 30022: Default region [{region}] is required | 30324: Invalid namespace [{namespace}])

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30373: ItemType [{itemType}] is not allowed in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncInGameItem.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncInGameItem)
async def sync_in_game_item_async(
    body: InGameItemSync,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync an in game item (syncInGameItem)

    [Not supported yet in AGS Shared Cloud] This API is used to sync an in game item in game namespace to publisher namespace, only INGAMEITEM, CODE, COINS and SEASON are supported

    The synced item has an additional field targetItemId besides targetNamespace, mostly this item should not modified manually again.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED InGameItemSync in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required | 30022: Default region [{region}] is required | 30324: Invalid namespace [{namespace}])

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content | 30373: ItemType [{itemType}] is not allowed in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncInGameItem.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateApp)
def update_app(
    body: AppUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an app (updateApp)

    This API is used to update an app.

    An app update example:


        {

          "developer": "accelbyte",

          "publisher": "accelbyte",

          "websiteUrl": "http://accelbyte.io",

          "forumUrl": "http://accelbyte.io",

          "platforms": ["Windows(allowed values: Windows, MacOS, Linux, IOS, Android)"],

          "platformRequirements": {

            "Windows": [

              {

                "label":"minimum(can be minimum or recommended)",

                "osVersion":"os version",

                "processor":"processor",

                "ram":"RAM",

                "graphics":"graphics",

                "directXVersion":"directXVersion",

                "diskSpace":"diskSpace",

                "soundCard":"soundCard",

                "additionals":"additionals"

              }

             ]

          },

          "carousel": [

            {

              "type":"image(allowed values: image, video)",

              "videoSource":"generic(allowed values:generic, youtube, viemo)",

              "url":"url",

              "alt":"alternative url or text",

              "thumbnailUrl":"thumbnail url",

              "previewUrl":"preview url",

            }

          ],

          "localizations": {

            "en": {

              "slogan":"slogan",

              "announcement":"announcement",

            }

          },

          "primaryGenre": "Action",

          "genres": ["Action", "Adventure"],

          "players": ["Single"],

          "releaseDate": "optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

        }

    Other detail info:

      * Returns : updated app data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/app

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullAppInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateApp.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateApp)
async def update_app_async(
    body: AppUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an app (updateApp)

    This API is used to update an app.

    An app update example:


        {

          "developer": "accelbyte",

          "publisher": "accelbyte",

          "websiteUrl": "http://accelbyte.io",

          "forumUrl": "http://accelbyte.io",

          "platforms": ["Windows(allowed values: Windows, MacOS, Linux, IOS, Android)"],

          "platformRequirements": {

            "Windows": [

              {

                "label":"minimum(can be minimum or recommended)",

                "osVersion":"os version",

                "processor":"processor",

                "ram":"RAM",

                "graphics":"graphics",

                "directXVersion":"directXVersion",

                "diskSpace":"diskSpace",

                "soundCard":"soundCard",

                "additionals":"additionals"

              }

             ]

          },

          "carousel": [

            {

              "type":"image(allowed values: image, video)",

              "videoSource":"generic(allowed values:generic, youtube, viemo)",

              "url":"url",

              "alt":"alternative url or text",

              "thumbnailUrl":"thumbnail url",

              "previewUrl":"preview url",

            }

          ],

          "localizations": {

            "en": {

              "slogan":"slogan",

              "announcement":"announcement",

            }

          },

          "primaryGenre": "Action",

          "genres": ["Action", "Adventure"],

          "players": ["Single"],

          "releaseDate": "optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

        }

    Other detail info:

      * Returns : updated app data

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/app

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullAppInfo (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateApp.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateItem)
def update_item(
    body: ItemUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an item (updateItem)

    This API is used to update an item.

    An item update example:


        {

            "categoryPath": "/games",

            "localizations": {

               "en": {

                   "title":"required",

                   "description":"optional",

                   "longDescription":"optional",

                   "localExt": {

                          "properties":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                          ],

                          "functions":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                         ]

                   }

               }

           },

           "images": [

             {

                   "as":"optional, image for",

                   "caption":"optional",

                   "height":10,

                   "width":10,

                   "imageUrl":"http://img-url-required",

                   "smallImageUrl":"http://small-img-url-required"

             }

           ],

           "thumbnailUrl": "optional, thumbnail url",

           "status": "ACTIVE",

           "listable": true,

           "purchasable": true,

           "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

           "name": "optional",

           "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

           "useCount": 1(optional, required if the entitlement type is consumable),

           "stackable": false,

           "appId": "optional, required if itemType is APP",

           "baseAppId": "optional, set value of game app id if you want to link to a game",

           "appType": "GAME(optional, required if itemType is APP)",

           "seasonType": "PASS(optional, required if itemType is SEASON)",

           "sku": "optional, commonly unique item code",

           "targetCurrencyCode": "optional, required if itemType is COINS",

           "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

           created belongs to the publisher namespace",

           "regionData": {

               "US(store's default region is required)": [

                 {

                    "price":10,

                    "discountPercentage":0(integer, optional, range[0,100], discountedPrice = price*((100 - discountPercentage) * 0.01),

                      if it is not 0, will use it to calculate discounted price),

                    "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                    "currencyCode":"code(required, example: USD)",

                    "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                    "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                    "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

                 }

               ]

           },

           "itemIds": [

               "itemId"

           ],

           "itemQty": {

               "itemId":1

           },

           "recurring": {

               "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

               "fixedFreeDays":0(integer, fixed free days, 0 means not set),

               "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

               "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

           },

           "tags": [

               "exampleTag24"

           ],

           "features": [

               "feature"

           ],

           "clazz": "weapon",

           "boothName": "C_campaign1",

           "displayOrder": 1000,

           "ext": {

               "properties":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ],

               "functions":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ]

           },

           "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

           "maxCount": 1(integer, optional, -1 means UNLIMITED, new value should >= old value if both old value and new value is

           limited, unset when item type is CODE)

        }

    Other detail info:

      * Returns : updated item data



    ## Restrictions for item extension and localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (20024: unsupported operation | 30301: Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration | 30322: Bundle item [{itemId}] can't be bundled | 30325: Code item [{itemId}] can't be bundled | 30326: Subscription item [{itemId}] can't be bundled | 30329: Invalid bundled item [{itemId}] quantity | 30021: Default language [{language}] required | 30321: Invalid item discount amount | 30022: Default region [{region}] is required | 30323: Target namespace is required | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}] | 30332: Invalid option box item [{itemId}] quantity | 30333: Item [{itemId}] item type [{itemType}] can't be bundled into option box | 30334: Option box item [{itemId}] can't be bundled | 30337: Invalid loot box item [{itemId}] quantity | 30338: Item [{itemId}] item type [{itemType}] can't be bundled into loot box | 30339: Loot box item [{itemId}] can't be bundled)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30371: Item maxCount not allow reduce | 30372: ItemType is not updatable | 30173: Published store can't modify content | 30175: Duplicated currencyCode [{currencyCode}] in Region [{region}] | 30374: Item sku [{sku}] already exists in namespace [{namespace}] | 30376: Publisher namespace don’t allow sellback item | 30377: This item type [{itemType}] don’t allow sellback | 30378: Sale price don’t allow real currency [{currencyCode}] | 30379: Item sku is not updatable | 30380: Box item [{itemId}] duration and end date can’t be set at the same time | 30381: Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}] | 30383: Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateItem.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateItem)
async def update_item_async(
    body: ItemUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an item (updateItem)

    This API is used to update an item.

    An item update example:


        {

            "categoryPath": "/games",

            "localizations": {

               "en": {

                   "title":"required",

                   "description":"optional",

                   "longDescription":"optional",

                   "localExt": {

                          "properties":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                          ],

                          "functions":[

                                           {

                                               "key1":"value1",

                                               "key2":"value2"

                                           }

                         ]

                   }

               }

           },

           "images": [

             {

                   "as":"optional, image for",

                   "caption":"optional",

                   "height":10,

                   "width":10,

                   "imageUrl":"http://img-url-required",

                   "smallImageUrl":"http://small-img-url-required"

             }

           ],

           "thumbnailUrl": "optional, thumbnail url",

           "status": "ACTIVE",

           "listable": true,

           "purchasable": true,

           "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

           "name": "optional",

           "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

           "useCount": 1(optional, required if the entitlement type is consumable),

           "stackable": false,

           "appId": "optional, required if itemType is APP",

           "baseAppId": "optional, set value of game app id if you want to link to a game",

           "appType": "GAME(optional, required if itemType is APP)",

           "seasonType": "PASS(optional, required if itemType is SEASON)",

           "sku": "optional, commonly unique item code",

           "targetCurrencyCode": "optional, required if itemType is COINS",

           "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

           created belongs to the publisher namespace",

           "regionData": {

               "US(store's default region is required)": [

                 {

                    "price":10,

                    "discountPercentage":0(integer, optional, range[0,100], discountedPrice = price*((100 - discountPercentage) * 0.01),

                      if it is not 0, will use it to calculate discounted price),

                    "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                    "currencyCode":"code(required, example: USD)",

                    "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                    "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                    "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                    "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

                 }

               ]

           },

           "itemIds": [

               "itemId"

           ],

           "itemQty": {

               "itemId":1

           },

           "recurring": {

               "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

               "fixedFreeDays":0(integer, fixed free days, 0 means not set),

               "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

               "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

           },

           "tags": [

               "exampleTag24"

           ],

           "features": [

               "feature"

           ],

           "clazz": "weapon",

           "boothName": "C_campaign1",

           "displayOrder": 1000,

           "ext": {

               "properties":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ],

               "functions":[

                   {

                       "key1":"value1",

                       "key2":"value2"

                   }

               ]

           },

           "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

           "maxCount": 1(integer, optional, -1 means UNLIMITED, new value should >= old value if both old value and new value is

           limited, unset when item type is CODE)

        }

    Other detail info:

      * Returns : updated item data



    ## Restrictions for item extension and localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (20024: unsupported operation | 30301: Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration | 30322: Bundle item [{itemId}] can't be bundled | 30325: Code item [{itemId}] can't be bundled | 30326: Subscription item [{itemId}] can't be bundled | 30329: Invalid bundled item [{itemId}] quantity | 30021: Default language [{language}] required | 30321: Invalid item discount amount | 30022: Default region [{region}] is required | 30323: Target namespace is required | 30327: Invalid item trial price | 30330: Invalid item region price currency namespace [{namespace}] | 30332: Invalid option box item [{itemId}] quantity | 30333: Item [{itemId}] item type [{itemType}] can't be bundled into option box | 30334: Option box item [{itemId}] can't be bundled | 30337: Invalid loot box item [{itemId}] quantity | 30338: Item [{itemId}] item type [{itemType}] can't be bundled into loot box | 30339: Loot box item [{itemId}] can't be bundled)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30371: Item maxCount not allow reduce | 30372: ItemType is not updatable | 30173: Published store can't modify content | 30175: Duplicated currencyCode [{currencyCode}] in Region [{region}] | 30374: Item sku [{sku}] already exists in namespace [{namespace}] | 30376: Publisher namespace don’t allow sellback item | 30377: This item type [{itemType}] don’t allow sellback | 30378: Sale price don’t allow real currency [{currencyCode}] | 30379: Item sku is not updatable | 30380: Box item [{itemId}] duration and end date can’t be set at the same time | 30381: Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}] | 30383: Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateItem.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateItemPurchaseCondition)
def update_item_purchase_condition(
    body: PurchaseConditionUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update item purchase condition (updateItemPurchaseCondition)

    This API is used to update item purchase condition

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PurchaseConditionUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (30331: Invalid purchase condition)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateItemPurchaseCondition.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateItemPurchaseCondition)
async def update_item_purchase_condition_async(
    body: PurchaseConditionUpdate,
    item_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update item purchase condition (updateItemPurchaseCondition)

    This API is used to update item purchase condition

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PurchaseConditionUpdate in body

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullItemInfo (successful operation)

        400: Bad Request - ErrorEntity (30331: Invalid purchase condition)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateItemPurchaseCondition.create(
        body=body,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateItemTypeConfig)
def update_item_type_config(
    body: ItemTypeConfigUpdate,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an Item Type Config (updateItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to update an item type config.

    *  Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/{id}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemTypeConfigUpdate in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)

        409: Conflict - ErrorEntity (30371: Item type config for type [{itemType}] and clazz [{clazz}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdateItemTypeConfig.create(
        body=body,
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateItemTypeConfig)
async def update_item_type_config_async(
    body: ItemTypeConfigUpdate,
    id_: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an Item Type Config (updateItemTypeConfig)

    [Not supported yet in AGS Shared Cloud] This API is used to update an item type config.

    *  Returns : item type config data

    Properties:
        url: /platform/admin/items/configs/{id}

        method: PUT

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemTypeConfigUpdate in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)

        409: Conflict - ErrorEntity (30371: Item type config for type [{itemType}] and clazz [{clazz}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    request = UpdateItemTypeConfig.create(
        body=body,
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ValidateItemPurchaseCondition)
def validate_item_purchase_condition(
    body: ItemPurchaseConditionValidateRequest,
    user_id: str,
    platform: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user purchase condition (validateItemPurchaseCondition)

    This API is used to validate user purchase condition

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/purchase/conditions/validate

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemPurchaseConditionValidateRequest in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL str in query

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - List[ItemPurchaseConditionValidateResult] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidateItemPurchaseCondition.create(
        body=body,
        user_id=user_id,
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ValidateItemPurchaseCondition)
async def validate_item_purchase_condition_async(
    body: ItemPurchaseConditionValidateRequest,
    user_id: str,
    platform: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user purchase condition (validateItemPurchaseCondition)

    This API is used to validate user purchase condition

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/purchase/conditions/validate

        method: POST

        tags: ["Item"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ItemPurchaseConditionValidateRequest in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL str in query

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - List[ItemPurchaseConditionValidateResult] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidateItemPurchaseCondition.create(
        body=body,
        user_id=user_id,
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
