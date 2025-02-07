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

from ..models import CatalogChangePagingResult
from ..models import CatalogChangeStatistics
from ..models import ErrorEntity
from ..models import StoreInfo

from ..operations.catalog_changes import GetStatistic
from ..operations.catalog_changes import (
    GetStatisticActionEnum,
    GetStatisticItemTypeEnum,
    GetStatisticTypeEnum,
)
from ..operations.catalog_changes import PublishAll
from ..operations.catalog_changes import PublishSelected
from ..operations.catalog_changes import QueryChanges
from ..operations.catalog_changes import (
    QueryChangesActionEnum,
    QueryChangesItemTypeEnum,
    QueryChangesSortByEnum,
    QueryChangesStatusEnum,
    QueryChangesTypeEnum,
)
from ..operations.catalog_changes import SelectAllRecords
from ..operations.catalog_changes import SelectAllRecordsByCriteria
from ..operations.catalog_changes import (
    SelectAllRecordsByCriteriaActionEnum,
    SelectAllRecordsByCriteriaItemTypeEnum,
    SelectAllRecordsByCriteriaTypeEnum,
)
from ..operations.catalog_changes import SelectRecord
from ..operations.catalog_changes import UnselectAllRecords
from ..operations.catalog_changes import UnselectRecord


@same_doc_as(GetStatistic)
def get_statistic(
    store_id: str,
    action: Optional[Union[str, GetStatisticActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, GetStatisticItemTypeEnum]] = None,
    type_: Optional[Union[str, GetStatisticTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog changes statistics (getStatistic)

    This API is used to query catalog changes statistics .

    Other detail info:

      * Returns : catalog changes statistics changes

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics

        method: GET

        tags: ["CatalogChanges"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

    Responses:
        200: OK - CatalogChangeStatistics (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatistic.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatistic)
async def get_statistic_async(
    store_id: str,
    action: Optional[Union[str, GetStatisticActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, GetStatisticItemTypeEnum]] = None,
    type_: Optional[Union[str, GetStatisticTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog changes statistics (getStatistic)

    This API is used to query catalog changes statistics .

    Other detail info:

      * Returns : catalog changes statistics changes

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics

        method: GET

        tags: ["CatalogChanges"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

    Responses:
        200: OK - CatalogChangeStatistics (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatistic.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishAll)
def publish_all(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish all unpublished changes (publishAll)

    This API is used to publish all unpublished changes.

    Other detail info:

      * Returns : no content

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishAll.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishAll)
async def publish_all_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish all unpublished changes (publishAll)

    This API is used to publish all unpublished changes.

    Other detail info:

      * Returns : no content

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishAll.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishSelected)
def publish_selected(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish selected unpublished changes (publishSelected)

    This API is used to publish selected unpublished changes.

    Other detail info:

      * Returns : no content

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishSelected.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishSelected)
async def publish_selected_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish selected unpublished changes (publishSelected)

    This API is used to publish selected unpublished changes.

    Other detail info:

      * Returns : no content

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishSelected.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryChanges)
def query_changes(
    store_id: str,
    action: Optional[Union[str, QueryChangesActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, QueryChangesItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    selected: Optional[bool] = None,
    sort_by: Optional[List[Union[str, QueryChangesSortByEnum]]] = None,
    status: Optional[Union[str, QueryChangesStatusEnum]] = None,
    type_: Optional[Union[str, QueryChangesTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query catalog changes (queryChanges)

    This API is used to query changes .

    Other detail info:

      * Returns : the pagination of changes

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria

        method: GET

        tags: ["CatalogChanges"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        selected: (selected) OPTIONAL bool in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - CatalogChangePagingResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryChanges.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        limit=limit,
        offset=offset,
        selected=selected,
        sort_by=sort_by,
        status=status,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        with_total=with_total,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryChanges)
async def query_changes_async(
    store_id: str,
    action: Optional[Union[str, QueryChangesActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, QueryChangesItemTypeEnum]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    selected: Optional[bool] = None,
    sort_by: Optional[List[Union[str, QueryChangesSortByEnum]]] = None,
    status: Optional[Union[str, QueryChangesStatusEnum]] = None,
    type_: Optional[Union[str, QueryChangesTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    with_total: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query catalog changes (queryChanges)

    This API is used to query changes .

    Other detail info:

      * Returns : the pagination of changes

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria

        method: GET

        tags: ["CatalogChanges"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        selected: (selected) OPTIONAL bool in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - CatalogChangePagingResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryChanges.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        limit=limit,
        offset=offset,
        selected=selected,
        sort_by=sort_by,
        status=status,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        with_total=with_total,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SelectAllRecords)
def select_all_records(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select all changes (selectAllRecords)

    Select all changes.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectAllRecords.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SelectAllRecords)
async def select_all_records_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select all changes (selectAllRecords)

    Select all changes.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectAllRecords.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SelectAllRecordsByCriteria)
def select_all_records_by_criteria(
    store_id: str,
    action: Optional[Union[str, SelectAllRecordsByCriteriaActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, SelectAllRecordsByCriteriaItemTypeEnum]] = None,
    selected: Optional[bool] = None,
    type_: Optional[Union[str, SelectAllRecordsByCriteriaTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select all changes by criteria (selectAllRecordsByCriteria)

    Select all changes by criteria

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        selected: (selected) OPTIONAL bool in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

    Responses:
        204: No Content - (Select all changes by criteria successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectAllRecordsByCriteria.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        selected=selected,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SelectAllRecordsByCriteria)
async def select_all_records_by_criteria_async(
    store_id: str,
    action: Optional[Union[str, SelectAllRecordsByCriteriaActionEnum]] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[Union[str, SelectAllRecordsByCriteriaItemTypeEnum]] = None,
    selected: Optional[bool] = None,
    type_: Optional[Union[str, SelectAllRecordsByCriteriaTypeEnum]] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select all changes by criteria (selectAllRecordsByCriteria)

    Select all changes by criteria

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        selected: (selected) OPTIONAL bool in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

    Responses:
        204: No Content - (Select all changes by criteria successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectAllRecordsByCriteria.create(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        selected=selected,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SelectRecord)
def select_record(
    change_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select a change (selectRecord)

    Select a change, it will be included when partial publish.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        change_id: (changeId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectRecord.create(
        change_id=change_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SelectRecord)
async def select_record_async(
    change_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Select a change (selectRecord)

    Select a change, it will be included when partial publish.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        change_id: (changeId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SelectRecord.create(
        change_id=change_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnselectAllRecords)
def unselect_all_records(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unselect all changes (unselectAllRecords)

    Unselect all change.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnselectAllRecords.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnselectAllRecords)
async def unselect_all_records_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unselect all changes (unselectAllRecords)

    Unselect all change.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnselectAllRecords.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnselectRecord)
def unselect_record(
    change_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unselect a change (unselectRecord)

    Unselect a change, it will not be included when partial publish.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        change_id: (changeId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30071: Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}] | 30072: Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}] | 30073: Can't unselect store change | 30074: Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnselectRecord.create(
        change_id=change_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnselectRecord)
async def unselect_record_async(
    change_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unselect a change (unselectRecord)

    Unselect a change, it will not be included when partial publish.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        change_id: (changeId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30071: Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}] | 30072: Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}] | 30073: Can't unselect store change | 30074: Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnselectRecord.create(
        change_id=change_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
