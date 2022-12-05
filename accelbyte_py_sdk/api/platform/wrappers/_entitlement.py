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

from ..models import AppEntitlementInfo
from ..models import AppEntitlementPagingSlicedResult
from ..models import BulkOperationResult
from ..models import EntitlementDecrement
from ..models import EntitlementDecrementResult
from ..models import EntitlementGrant
from ..models import EntitlementHistoryInfo
from ..models import EntitlementInfo
from ..models import EntitlementOwnership
from ..models import EntitlementPagingSlicedResult
from ..models import EntitlementUpdate
from ..models import ErrorEntity
from ..models import Ownership
from ..models import OwnershipToken
from ..models import StackableEntitlementInfo
from ..models import TimedOwnership
from ..models import ValidationErrorEntity

from ..operations.entitlement import ConsumeUserEntitlement
from ..operations.entitlement import DisableUserEntitlement
from ..operations.entitlement import EnableUserEntitlement
from ..operations.entitlement import ExistsAnyUserActiveEntitlement
from ..operations.entitlement import ExistsAnyUserActiveEntitlementByItemIds
from ..operations.entitlement import GetEntitlement
from ..operations.entitlement import GetUserActiveEntitlementsByItemIds
from ..operations.entitlement import GetUserAppEntitlementByAppId
from ..operations.entitlement import GetUserAppEntitlementOwnershipByAppId
from ..operations.entitlement import GetUserEntitlement
from ..operations.entitlement import GetUserEntitlementByItemId
from ..operations.entitlement import GetUserEntitlementByItemIdEntitlementClazzEnum
from ..operations.entitlement import GetUserEntitlementBySku
from ..operations.entitlement import GetUserEntitlementBySkuEntitlementClazzEnum
from ..operations.entitlement import GetUserEntitlementHistories
from ..operations.entitlement import GetUserEntitlementOwnershipByItemId
from ..operations.entitlement import (
    GetUserEntitlementOwnershipByItemIdEntitlementClazzEnum,
)
from ..operations.entitlement import GetUserEntitlementOwnershipByItemIds
from ..operations.entitlement import GetUserEntitlementOwnershipBySku
from ..operations.entitlement import (
    GetUserEntitlementOwnershipBySkuEntitlementClazzEnum,
)
from ..operations.entitlement import GrantUserEntitlement
from ..operations.entitlement import PublicConsumeUserEntitlement
from ..operations.entitlement import PublicExistsAnyMyActiveEntitlement
from ..operations.entitlement import PublicExistsAnyUserActiveEntitlement
from ..operations.entitlement import PublicGetEntitlementOwnershipToken
from ..operations.entitlement import PublicGetMyAppEntitlementOwnershipByAppId
from ..operations.entitlement import PublicGetMyEntitlementOwnershipByItemId
from ..operations.entitlement import (
    PublicGetMyEntitlementOwnershipByItemIdEntitlementClazzEnum,
)
from ..operations.entitlement import PublicGetMyEntitlementOwnershipBySku
from ..operations.entitlement import (
    PublicGetMyEntitlementOwnershipBySkuEntitlementClazzEnum,
)
from ..operations.entitlement import PublicGetUserAppEntitlementByAppId
from ..operations.entitlement import PublicGetUserAppEntitlementOwnershipByAppId
from ..operations.entitlement import PublicGetUserEntitlement
from ..operations.entitlement import PublicGetUserEntitlementByItemId
from ..operations.entitlement import (
    PublicGetUserEntitlementByItemIdEntitlementClazzEnum,
)
from ..operations.entitlement import PublicGetUserEntitlementBySku
from ..operations.entitlement import PublicGetUserEntitlementBySkuEntitlementClazzEnum
from ..operations.entitlement import PublicGetUserEntitlementOwnershipByItemId
from ..operations.entitlement import (
    PublicGetUserEntitlementOwnershipByItemIdEntitlementClazzEnum,
)
from ..operations.entitlement import PublicGetUserEntitlementOwnershipByItemIds
from ..operations.entitlement import PublicGetUserEntitlementOwnershipBySku
from ..operations.entitlement import (
    PublicGetUserEntitlementOwnershipBySkuEntitlementClazzEnum,
)
from ..operations.entitlement import PublicQueryUserEntitlements
from ..operations.entitlement import (
    PublicQueryUserEntitlementsAppTypeEnum,
    PublicQueryUserEntitlementsEntitlementClazzEnum,
)
from ..operations.entitlement import PublicQueryUserEntitlementsByAppType
from ..operations.entitlement import PublicQueryUserEntitlementsByAppTypeAppTypeEnum
from ..operations.entitlement import QueryEntitlements
from ..operations.entitlement import (
    QueryEntitlementsAppTypeEnum,
    QueryEntitlementsEntitlementClazzEnum,
)
from ..operations.entitlement import QueryUserEntitlements
from ..operations.entitlement import (
    QueryUserEntitlementsAppTypeEnum,
    QueryUserEntitlementsEntitlementClazzEnum,
)
from ..operations.entitlement import QueryUserEntitlementsByAppType
from ..operations.entitlement import QueryUserEntitlementsByAppTypeAppTypeEnum
from ..operations.entitlement import RevokeUserEntitlement
from ..operations.entitlement import RevokeUserEntitlements
from ..operations.entitlement import UpdateUserEntitlement
from ..models import AppEntitlementInfoAppTypeEnum, AppEntitlementInfoStatusEnum
from ..models import (
    EntitlementDecrementResultAppTypeEnum,
    EntitlementDecrementResultClazzEnum,
    EntitlementDecrementResultSourceEnum,
    EntitlementDecrementResultStatusEnum,
    EntitlementDecrementResultTypeEnum,
)
from ..models import EntitlementGrantSourceEnum
from ..models import EntitlementHistoryInfoActionEnum
from ..models import (
    EntitlementInfoAppTypeEnum,
    EntitlementInfoClazzEnum,
    EntitlementInfoSourceEnum,
    EntitlementInfoStatusEnum,
    EntitlementInfoTypeEnum,
)
from ..models import EntitlementUpdateStatusEnum
from ..models import (
    StackableEntitlementInfoAppTypeEnum,
    StackableEntitlementInfoClazzEnum,
    StackableEntitlementInfoSourceEnum,
    StackableEntitlementInfoStatusEnum,
    StackableEntitlementInfoTypeEnum,
)


@same_doc_as(ConsumeUserEntitlement)
def consume_user_entitlement(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementDecrement] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ConsumeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ConsumeUserEntitlement)
async def consume_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementDecrement] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ConsumeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DisableUserEntitlement)
def disable_user_entitlement(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DisableUserEntitlement)
async def disable_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(EnableUserEntitlement)
def enable_user_entitlement(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(EnableUserEntitlement)
async def enable_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExistsAnyUserActiveEntitlement)
def exists_any_user_active_entitlement(
    user_id: str,
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExistsAnyUserActiveEntitlement)
async def exists_any_user_active_entitlement_async(
    user_id: str,
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExistsAnyUserActiveEntitlementByItemIds)
def exists_any_user_active_entitlement_by_item_ids(
    item_ids: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlementByItemIds.create(
        item_ids=item_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExistsAnyUserActiveEntitlementByItemIds)
async def exists_any_user_active_entitlement_by_item_ids_async(
    item_ids: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlementByItemIds.create(
        item_ids=item_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetEntitlement)
def get_entitlement(
    entitlement_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEntitlement.create(
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEntitlement)
async def get_entitlement_async(
    entitlement_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEntitlement.create(
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserActiveEntitlementsByItemIds)
def get_user_active_entitlements_by_item_ids(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserActiveEntitlementsByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserActiveEntitlementsByItemIds)
async def get_user_active_entitlements_by_item_ids_async(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserActiveEntitlementsByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserAppEntitlementByAppId)
def get_user_app_entitlement_by_app_id(
    app_id: str,
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementByAppId.create(
        app_id=app_id,
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserAppEntitlementByAppId)
async def get_user_app_entitlement_by_app_id_async(
    app_id: str,
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementByAppId.create(
        app_id=app_id,
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserAppEntitlementOwnershipByAppId)
def get_user_app_entitlement_ownership_by_app_id(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserAppEntitlementOwnershipByAppId)
async def get_user_app_entitlement_ownership_by_app_id_async(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlement)
def get_user_entitlement(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlement)
async def get_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementByItemId)
def get_user_entitlement_by_item_id(
    item_id: str,
    user_id: str,
    active_only: Optional[bool] = None,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementByItemId.create(
        item_id=item_id,
        user_id=user_id,
        active_only=active_only,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementByItemId)
async def get_user_entitlement_by_item_id_async(
    item_id: str,
    user_id: str,
    active_only: Optional[bool] = None,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementByItemId.create(
        item_id=item_id,
        user_id=user_id,
        active_only=active_only,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementBySku)
def get_user_entitlement_by_sku(
    sku: str,
    user_id: str,
    active_only: Optional[bool] = None,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementBySku.create(
        sku=sku,
        user_id=user_id,
        active_only=active_only,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementBySku)
async def get_user_entitlement_by_sku_async(
    sku: str,
    user_id: str,
    active_only: Optional[bool] = None,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementBySku.create(
        sku=sku,
        user_id=user_id,
        active_only=active_only,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementHistories)
def get_user_entitlement_histories(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementHistories.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementHistories)
async def get_user_entitlement_histories_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementHistories.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementOwnershipByItemId)
def get_user_entitlement_ownership_by_item_id(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementOwnershipByItemId)
async def get_user_entitlement_ownership_by_item_id_async(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementOwnershipByItemIds)
def get_user_entitlement_ownership_by_item_ids(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementOwnershipByItemIds)
async def get_user_entitlement_ownership_by_item_ids_async(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEntitlementOwnershipBySku)
def get_user_entitlement_ownership_by_sku(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEntitlementOwnershipBySku)
async def get_user_entitlement_ownership_by_sku_async(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, GetUserEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GrantUserEntitlement)
def grant_user_entitlement(
    user_id: str,
    body: Optional[List[EntitlementGrant]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantUserEntitlement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantUserEntitlement)
async def grant_user_entitlement_async(
    user_id: str,
    body: Optional[List[EntitlementGrant]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantUserEntitlement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicConsumeUserEntitlement)
def public_consume_user_entitlement(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementDecrement] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicConsumeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicConsumeUserEntitlement)
async def public_consume_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementDecrement] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicConsumeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicExistsAnyMyActiveEntitlement)
def public_exists_any_my_active_entitlement(
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyMyActiveEntitlement.create(
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicExistsAnyMyActiveEntitlement)
async def public_exists_any_my_active_entitlement_async(
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyMyActiveEntitlement.create(
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicExistsAnyUserActiveEntitlement)
def public_exists_any_user_active_entitlement(
    user_id: str,
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicExistsAnyUserActiveEntitlement)
async def public_exists_any_user_active_entitlement_async(
    user_id: str,
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetEntitlementOwnershipToken)
def public_get_entitlement_ownership_token(
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetEntitlementOwnershipToken.create(
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetEntitlementOwnershipToken)
async def public_get_entitlement_ownership_token_async(
    app_ids: Optional[List[str]] = None,
    item_ids: Optional[List[str]] = None,
    skus: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetEntitlementOwnershipToken.create(
        app_ids=app_ids,
        item_ids=item_ids,
        skus=skus,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyAppEntitlementOwnershipByAppId)
def public_get_my_app_entitlement_ownership_by_app_id(
    app_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyAppEntitlementOwnershipByAppId)
async def public_get_my_app_entitlement_ownership_by_app_id_async(
    app_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyEntitlementOwnershipByItemId)
def public_get_my_entitlement_ownership_by_item_id(
    item_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetMyEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEntitlementOwnershipByItemId.create(
        item_id=item_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyEntitlementOwnershipByItemId)
async def public_get_my_entitlement_ownership_by_item_id_async(
    item_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetMyEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEntitlementOwnershipByItemId.create(
        item_id=item_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyEntitlementOwnershipBySku)
def public_get_my_entitlement_ownership_by_sku(
    sku: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetMyEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEntitlementOwnershipBySku.create(
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyEntitlementOwnershipBySku)
async def public_get_my_entitlement_ownership_by_sku_async(
    sku: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetMyEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEntitlementOwnershipBySku.create(
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserAppEntitlementByAppId)
def public_get_user_app_entitlement_by_app_id(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserAppEntitlementByAppId)
async def public_get_user_app_entitlement_by_app_id_async(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserAppEntitlementOwnershipByAppId)
def public_get_user_app_entitlement_ownership_by_app_id(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserAppEntitlementOwnershipByAppId)
async def public_get_user_app_entitlement_ownership_by_app_id_async(
    app_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlement)
def public_get_user_entitlement(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlement)
async def public_get_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlementByItemId)
def public_get_user_entitlement_by_item_id(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlementByItemId)
async def public_get_user_entitlement_by_item_id_async(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlementBySku)
def public_get_user_entitlement_by_sku(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlementBySku)
async def public_get_user_entitlement_by_sku_async(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlementOwnershipByItemId)
def public_get_user_entitlement_ownership_by_item_id(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlementOwnershipByItemId)
async def public_get_user_entitlement_ownership_by_item_id_async(
    item_id: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementOwnershipByItemIdEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipByItemId.create(
        item_id=item_id,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlementOwnershipByItemIds)
def public_get_user_entitlement_ownership_by_item_ids(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlementOwnershipByItemIds)
async def public_get_user_entitlement_ownership_by_item_ids_async(
    user_id: str,
    ids: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipByItemIds.create(
        user_id=user_id,
        ids=ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserEntitlementOwnershipBySku)
def public_get_user_entitlement_ownership_by_sku(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserEntitlementOwnershipBySku)
async def public_get_user_entitlement_ownership_by_sku_async(
    sku: str,
    user_id: str,
    entitlement_clazz: Optional[
        Union[str, PublicGetUserEntitlementOwnershipBySkuEntitlementClazzEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipBySku.create(
        sku=sku,
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserEntitlements)
def public_query_user_entitlements(
    user_id: str,
    app_type: Optional[Union[str, PublicQueryUserEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, PublicQueryUserEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    features: Optional[List[str]] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlements.create(
        user_id=user_id,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        features=features,
        item_id=item_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserEntitlements)
async def public_query_user_entitlements_async(
    user_id: str,
    app_type: Optional[Union[str, PublicQueryUserEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, PublicQueryUserEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    features: Optional[List[str]] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlements.create(
        user_id=user_id,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        features=features,
        item_id=item_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserEntitlementsByAppType)
def public_query_user_entitlements_by_app_type(
    app_type: Union[str, PublicQueryUserEntitlementsByAppTypeAppTypeEnum],
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlementsByAppType.create(
        app_type=app_type,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserEntitlementsByAppType)
async def public_query_user_entitlements_by_app_type_async(
    app_type: Union[str, PublicQueryUserEntitlementsByAppTypeAppTypeEnum],
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlementsByAppType.create(
        app_type=app_type,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryEntitlements)
def query_entitlements(
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, QueryEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEntitlements.create(
        active_only=active_only,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        item_id=item_id,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryEntitlements)
async def query_entitlements_async(
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, QueryEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEntitlements.create(
        active_only=active_only,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        item_id=item_id,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserEntitlements)
def query_user_entitlements(
    user_id: str,
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryUserEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, QueryUserEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    features: Optional[List[str]] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlements.create(
        user_id=user_id,
        active_only=active_only,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        features=features,
        item_id=item_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserEntitlements)
async def query_user_entitlements_async(
    user_id: str,
    active_only: Optional[bool] = None,
    app_type: Optional[Union[str, QueryUserEntitlementsAppTypeEnum]] = None,
    entitlement_clazz: Optional[
        Union[str, QueryUserEntitlementsEntitlementClazzEnum]
    ] = None,
    entitlement_name: Optional[str] = None,
    features: Optional[List[str]] = None,
    item_id: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlements.create(
        user_id=user_id,
        active_only=active_only,
        app_type=app_type,
        entitlement_clazz=entitlement_clazz,
        entitlement_name=entitlement_name,
        features=features,
        item_id=item_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserEntitlementsByAppType)
def query_user_entitlements_by_app_type(
    app_type: Union[str, QueryUserEntitlementsByAppTypeAppTypeEnum],
    user_id: str,
    active_only: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlementsByAppType.create(
        app_type=app_type,
        user_id=user_id,
        active_only=active_only,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserEntitlementsByAppType)
async def query_user_entitlements_by_app_type_async(
    app_type: Union[str, QueryUserEntitlementsByAppTypeAppTypeEnum],
    user_id: str,
    active_only: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlementsByAppType.create(
        app_type=app_type,
        user_id=user_id,
        active_only=active_only,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeUserEntitlement)
def revoke_user_entitlement(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeUserEntitlement)
async def revoke_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeUserEntitlements)
def revoke_user_entitlements(
    entitlement_ids: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlements.create(
        entitlement_ids=entitlement_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeUserEntitlements)
async def revoke_user_entitlements_async(
    entitlement_ids: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlements.create(
        entitlement_ids=entitlement_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserEntitlement)
def update_user_entitlement(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserEntitlement)
async def update_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
