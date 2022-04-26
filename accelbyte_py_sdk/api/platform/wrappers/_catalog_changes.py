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

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import CatalogChangePagingSlicedResult
from ..models import ErrorEntity
from ..models import StoreInfo

from ..operations.catalog_changes import PublishAll
from ..operations.catalog_changes import QueryChanges
from ..operations.catalog_changes import QueryChangesActionEnum, QueryChangesItemTypeEnum, QueryChangesStatusEnum, QueryChangesTypeEnum


@same_doc_as(PublishAll)
def publish_all(store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishAll.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublishAll)
async def publish_all_async(store_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishAll.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(QueryChanges)
def query_changes(store_id: str, action: Optional[Union[str, QueryChangesActionEnum]] = None, item_type: Optional[Union[str, QueryChangesItemTypeEnum]] = None, limit: Optional[int] = None, offset: Optional[int] = None, sort_by: Optional[str] = None, status: Optional[Union[str, QueryChangesStatusEnum]] = None, type_: Optional[Union[str, QueryChangesTypeEnum]] = None, updated_at_end: Optional[str] = None, updated_at_start: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryChanges.create(
        store_id=store_id,
        action=action,
        item_type=item_type,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryChanges)
async def query_changes_async(store_id: str, action: Optional[Union[str, QueryChangesActionEnum]] = None, item_type: Optional[Union[str, QueryChangesItemTypeEnum]] = None, limit: Optional[int] = None, offset: Optional[int] = None, sort_by: Optional[str] = None, status: Optional[Union[str, QueryChangesStatusEnum]] = None, type_: Optional[Union[str, QueryChangesTypeEnum]] = None, updated_at_end: Optional[str] = None, updated_at_start: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryChanges.create(
        store_id=store_id,
        action=action,
        item_type=item_type,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
