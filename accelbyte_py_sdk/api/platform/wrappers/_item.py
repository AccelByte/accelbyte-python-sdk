# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import AppInfo
from ..models import AppUpdate
from ..models import BasicItem
from ..models import ErrorEntity
from ..models import FullAppInfo
from ..models import FullItemInfo
from ..models import FullItemPagingSlicedResult
from ..models import InGameItemSync
from ..models import ItemAcquireRequest
from ..models import ItemAcquireResult
from ..models import ItemCreate
from ..models import ItemDynamicDataInfo
from ..models import ItemId
from ..models import ItemInfo
from ..models import ItemPagingSlicedResult
from ..models import ItemReturnRequest
from ..models import ItemUpdate
from ..models import PopulatedItemInfo
from ..models import ValidationErrorEntity

from ..operations.item import AcquireItem
from ..operations.item import BulkGetLocaleItems
from ..operations.item import CreateItem
from ..operations.item import DefeatureItem
from ..operations.item import DeleteItem
from ..operations.item import DisableItem
from ..operations.item import EnableItem
from ..operations.item import FeatureItem
from ..operations.item import GetApp
from ..operations.item import GetItem
from ..operations.item import GetItemByAppId
from ..operations.item import GetItemBySku
from ..operations.item import GetItemDynamicData
from ..operations.item import GetItemIdBySku
from ..operations.item import GetLocaleItem
from ..operations.item import GetLocaleItemBySku
from ..operations.item import ListBasicItemsByFeatures
from ..operations.item import PublicBulkGetItems
from ..operations.item import PublicGetApp
from ..operations.item import PublicGetItem
from ..operations.item import PublicGetItemByAppId
from ..operations.item import PublicGetItemBySku
from ..operations.item import PublicGetItemDynamicData
from ..operations.item import PublicQueryItems
from ..operations.item import PublicQueryItemsAppTypeEnum, PublicQueryItemsItemTypeEnum
from ..operations.item import PublicSearchItems
from ..operations.item import QueryItems
from ..operations.item import QueryItemsAppTypeEnum, QueryItemsItemTypeEnum
from ..operations.item import QueryUncategorizedItems
from ..operations.item import ReturnItem
from ..operations.item import SearchItems
from ..operations.item import SyncInGameItem
from ..operations.item import UpdateApp
from ..operations.item import UpdateItem
from ..models import AppInfoPlayersEnum, AppInfoPrimaryGenreEnum, AppInfoPlatformsEnum, AppInfoGenresEnum
from ..models import AppUpdateGenresEnum, AppUpdatePlayersEnum, AppUpdatePlatformsEnum, AppUpdatePrimaryGenreEnum
from ..models import BasicItemAppTypeEnum, BasicItemEntitlementTypeEnum, BasicItemItemTypeEnum, BasicItemSeasonTypeEnum, BasicItemStatusEnum
from ..models import FullAppInfoGenresEnum, FullAppInfoPlatformsEnum, FullAppInfoPrimaryGenreEnum, FullAppInfoPlayersEnum
from ..models import FullItemInfoStatusEnum, FullItemInfoItemTypeEnum, FullItemInfoAppTypeEnum, FullItemInfoEntitlementTypeEnum, FullItemInfoSeasonTypeEnum
from ..models import ItemCreateItemTypeEnum, ItemCreateAppTypeEnum, ItemCreateEntitlementTypeEnum, ItemCreateStatusEnum, ItemCreateSeasonTypeEnum
from ..models import ItemInfoAppTypeEnum, ItemInfoItemTypeEnum, ItemInfoEntitlementTypeEnum, ItemInfoSeasonTypeEnum, ItemInfoStatusEnum
from ..models import ItemUpdateAppTypeEnum, ItemUpdateStatusEnum, ItemUpdateItemTypeEnum, ItemUpdateEntitlementTypeEnum, ItemUpdateSeasonTypeEnum
from ..models import PopulatedItemInfoAppTypeEnum, PopulatedItemInfoStatusEnum, PopulatedItemInfoSeasonTypeEnum, PopulatedItemInfoItemTypeEnum, PopulatedItemInfoEntitlementTypeEnum


@same_doc_as(AcquireItem)
def acquire_item(item_id: str, body: Optional[ItemAcquireRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcquireItem.create(
        item_id=item_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AcquireItem)
async def acquire_item_async(item_id: str, body: Optional[ItemAcquireRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcquireItem.create(
        item_id=item_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(BulkGetLocaleItems)
def bulk_get_locale_items(item_ids: str, active_only: Optional[bool] = None, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(BulkGetLocaleItems)
async def bulk_get_locale_items_async(item_ids: str, active_only: Optional[bool] = None, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(CreateItem)
def create_item(store_id: str, body: Optional[ItemCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateItem.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateItem)
async def create_item_async(store_id: str, body: Optional[ItemCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateItem.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(DefeatureItem)
def defeature_item(feature: str, item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DefeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DefeatureItem)
async def defeature_item_async(feature: str, item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DefeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteItem)
def delete_item(item_id: str, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteItem)
async def delete_item_async(item_id: str, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(DisableItem)
def disable_item(item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DisableItem)
async def disable_item_async(item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(EnableItem)
def enable_item(item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(EnableItem)
async def enable_item_async(item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableItem.create(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(FeatureItem)
def feature_item(feature: str, item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(FeatureItem)
async def feature_item_async(feature: str, item_id: str, store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FeatureItem.create(
        feature=feature,
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetApp)
def get_app(item_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetApp.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetApp)
async def get_app_async(item_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetApp.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetItem)
def get_item(item_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItem.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetItem)
async def get_item_async(item_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItem.create(
        item_id=item_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemByAppId)
def get_item_by_app_id(app_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemByAppId.create(
        app_id=app_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemByAppId)
async def get_item_by_app_id_async(app_id: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemByAppId.create(
        app_id=app_id,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemBySku)
def get_item_by_sku(sku: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemBySku)
async def get_item_by_sku_async(sku: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemDynamicData)
def get_item_dynamic_data(item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemDynamicData)
async def get_item_dynamic_data_async(item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemIdBySku)
def get_item_id_by_sku(sku: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemIdBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetItemIdBySku)
async def get_item_id_by_sku_async(sku: str, active_only: Optional[bool] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetItemIdBySku.create(
        sku=sku,
        active_only=active_only,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetLocaleItem)
def get_locale_item(item_id: str, active_only: Optional[bool] = None, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetLocaleItem)
async def get_locale_item_async(item_id: str, active_only: Optional[bool] = None, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(GetLocaleItemBySku)
def get_locale_item_by_sku(sku: str, active_only: Optional[bool] = None, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetLocaleItemBySku)
async def get_locale_item_by_sku_async(sku: str, active_only: Optional[bool] = None, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(ListBasicItemsByFeatures)
def list_basic_items_by_features(active_only: Optional[bool] = None, features: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListBasicItemsByFeatures.create(
        active_only=active_only,
        features=features,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ListBasicItemsByFeatures)
async def list_basic_items_by_features_async(active_only: Optional[bool] = None, features: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListBasicItemsByFeatures.create(
        active_only=active_only,
        features=features,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicBulkGetItems)
def public_bulk_get_items(item_ids: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicBulkGetItems.create(
        item_ids=item_ids,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicBulkGetItems)
async def public_bulk_get_items_async(item_ids: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicBulkGetItems.create(
        item_ids=item_ids,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetApp)
def public_get_app(item_id: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetApp.create(
        item_id=item_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetApp)
async def public_get_app_async(item_id: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetApp.create(
        item_id=item_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItem)
def public_get_item(item_id: str, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItem.create(
        item_id=item_id,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItem)
async def public_get_item_async(item_id: str, language: Optional[str] = None, populate_bundle: Optional[bool] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItem.create(
        item_id=item_id,
        language=language,
        populate_bundle=populate_bundle,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemByAppId)
def public_get_item_by_app_id(app_id: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemByAppId.create(
        app_id=app_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemByAppId)
async def public_get_item_by_app_id_async(app_id: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemByAppId.create(
        app_id=app_id,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemBySku)
def public_get_item_by_sku(sku: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemBySku.create(
        sku=sku,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemBySku)
async def public_get_item_by_sku_async(sku: str, language: Optional[str] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemBySku.create(
        sku=sku,
        language=language,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemDynamicData)
def public_get_item_dynamic_data(item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetItemDynamicData)
async def public_get_item_dynamic_data_async(item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetItemDynamicData.create(
        item_id=item_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryItems)
def public_query_items(app_type: Optional[Union[str, PublicQueryItemsAppTypeEnum]] = None, base_app_id: Optional[str] = None, category_path: Optional[str] = None, features: Optional[str] = None, item_type: Optional[Union[str, PublicQueryItemsItemTypeEnum]] = None, language: Optional[str] = None, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, tags: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryItems.create(
        app_type=app_type,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryItems)
async def public_query_items_async(app_type: Optional[Union[str, PublicQueryItemsAppTypeEnum]] = None, base_app_id: Optional[str] = None, category_path: Optional[str] = None, features: Optional[str] = None, item_type: Optional[Union[str, PublicQueryItemsItemTypeEnum]] = None, language: Optional[str] = None, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, tags: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryItems.create(
        app_type=app_type,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicSearchItems)
def public_search_items(keyword: str, language: str, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSearchItems.create(
        keyword=keyword,
        language=language,
        limit=limit,
        offset=offset,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicSearchItems)
async def public_search_items_async(keyword: str, language: str, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSearchItems.create(
        keyword=keyword,
        language=language,
        limit=limit,
        offset=offset,
        region=region,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(QueryItems)
def query_items(active_only: Optional[bool] = None, app_type: Optional[Union[str, QueryItemsAppTypeEnum]] = None, available_date: Optional[str] = None, base_app_id: Optional[str] = None, category_path: Optional[str] = None, features: Optional[str] = None, item_type: Optional[Union[str, QueryItemsItemTypeEnum]] = None, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, tags: Optional[str] = None, target_namespace: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryItems.create(
        active_only=active_only,
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryItems)
async def query_items_async(active_only: Optional[bool] = None, app_type: Optional[Union[str, QueryItemsAppTypeEnum]] = None, available_date: Optional[str] = None, base_app_id: Optional[str] = None, category_path: Optional[str] = None, features: Optional[str] = None, item_type: Optional[Union[str, QueryItemsItemTypeEnum]] = None, limit: Optional[int] = None, offset: Optional[int] = None, region: Optional[str] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, tags: Optional[str] = None, target_namespace: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryItems.create(
        active_only=active_only,
        app_type=app_type,
        available_date=available_date,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUncategorizedItems)
def query_uncategorized_items(active_only: Optional[bool] = None, limit: Optional[int] = None, offset: Optional[int] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUncategorizedItems)
async def query_uncategorized_items_async(active_only: Optional[bool] = None, limit: Optional[int] = None, offset: Optional[int] = None, sort_by: Optional[str] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(ReturnItem)
def return_item(item_id: str, body: Optional[ItemReturnRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ReturnItem.create(
        item_id=item_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ReturnItem)
async def return_item_async(item_id: str, body: Optional[ItemReturnRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ReturnItem.create(
        item_id=item_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(SearchItems)
def search_items(keyword: str, language: str, active_only: Optional[bool] = None, limit: Optional[int] = None, offset: Optional[int] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SearchItems.create(
        keyword=keyword,
        language=language,
        active_only=active_only,
        limit=limit,
        offset=offset,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SearchItems)
async def search_items_async(keyword: str, language: str, active_only: Optional[bool] = None, limit: Optional[int] = None, offset: Optional[int] = None, store_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SearchItems.create(
        keyword=keyword,
        language=language,
        active_only=active_only,
        limit=limit,
        offset=offset,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(SyncInGameItem)
def sync_in_game_item(store_id: str, body: Optional[InGameItemSync] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncInGameItem.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SyncInGameItem)
async def sync_in_game_item_async(store_id: str, body: Optional[InGameItemSync] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncInGameItem.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateApp)
def update_app(item_id: str, store_id: str, body: Optional[AppUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateApp.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateApp)
async def update_app_async(item_id: str, store_id: str, body: Optional[AppUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateApp.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateItem)
def update_item(item_id: str, store_id: str, body: Optional[ItemUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateItem.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateItem)
async def update_item_async(item_id: str, store_id: str, body: Optional[ItemUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateItem.create(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
