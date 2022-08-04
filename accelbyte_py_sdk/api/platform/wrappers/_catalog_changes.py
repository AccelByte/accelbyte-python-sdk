# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

from ..models import CatalogChangePagingSlicedResult
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SelectAllRecords.create(
        store_id=store_id,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
