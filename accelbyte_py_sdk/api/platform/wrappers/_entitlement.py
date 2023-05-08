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

from ..models import AppEntitlementInfo
from ..models import AppEntitlementPagingSlicedResult
from ..models import BulkEntitlementGrantRequest
from ..models import BulkEntitlementGrantResult
from ..models import BulkEntitlementRevokeResult
from ..models import BulkOperationResult
from ..models import EntitlementDecrement
from ..models import EntitlementDecrementResult
from ..models import EntitlementGrant
from ..models import EntitlementHistoryInfo
from ..models import EntitlementInfo
from ..models import EntitlementOwnership
from ..models import EntitlementPagingSlicedResult
from ..models import EntitlementSoldRequest
from ..models import EntitlementSoldResult
from ..models import EntitlementUpdate
from ..models import ErrorEntity
from ..models import Ownership
from ..models import OwnershipToken
from ..models import RevokeUseCountRequest
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
from ..operations.entitlement import GrantEntitlements
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
from ..operations.entitlement import PublicSellUserEntitlement
from ..operations.entitlement import QueryEntitlements
from ..operations.entitlement import (
    QueryEntitlementsAppTypeEnum,
    QueryEntitlementsEntitlementClazzEnum,
)
from ..operations.entitlement import QueryEntitlements1
from ..operations.entitlement import QueryUserEntitlements
from ..operations.entitlement import (
    QueryUserEntitlementsAppTypeEnum,
    QueryUserEntitlementsEntitlementClazzEnum,
)
from ..operations.entitlement import QueryUserEntitlementsByAppType
from ..operations.entitlement import QueryUserEntitlementsByAppTypeAppTypeEnum
from ..operations.entitlement import RevokeAllEntitlements
from ..operations.entitlement import RevokeEntitlements
from ..operations.entitlement import RevokeUseCount
from ..operations.entitlement import RevokeUserEntitlement
from ..operations.entitlement import RevokeUserEntitlements
from ..operations.entitlement import SellUserEntitlement
from ..operations.entitlement import UpdateUserEntitlement
from ..models import AppEntitlementInfoAppTypeEnum, AppEntitlementInfoStatusEnum
from ..models import BulkEntitlementGrantResultStatusEnum
from ..models import BulkEntitlementRevokeResultStatusEnum
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
    """Consume user entitlement (consumeUserEntitlement)

    Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : consumed entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementDecrement in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementDecrementResult (successful operation)

        400: Bad Request - ErrorEntity (31123: Unable to acquire box item, box item [{itemId}] expired)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 20006: optimistic lock)
    """
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
    """Consume user entitlement (consumeUserEntitlement)

    Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : consumed entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementDecrement in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementDecrementResult (successful operation)

        400: Bad Request - ErrorEntity (31123: Unable to acquire box item, box item [{itemId}] expired)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 20006: optimistic lock)
    """
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
    """Disable user entitlement (disableUserEntitlement)

    Disable user entitlement if entitlement, only active entitlement can be disable, disabled entitlement can't consume.
     Like revoke, it will lose the entitlement ownership, except disabled entitlement can enable.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : disable entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31172: Entitlement [{entitlementId}] not active | 20006: optimistic lock)
    """
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
    """Disable user entitlement (disableUserEntitlement)

    Disable user entitlement if entitlement, only active entitlement can be disable, disabled entitlement can't consume.
     Like revoke, it will lose the entitlement ownership, except disabled entitlement can enable.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : disable entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31172: Entitlement [{entitlementId}] not active | 20006: optimistic lock)
    """
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
    """Enable user entitlement (enableUserEntitlement)

    Enable user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : enable entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31174: Entitlement [{entitlementId}] already consumed | 31177: Permanent item already owned | 31179: Duplicate entitlement exists | 20006: optimistic lock)
    """
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
    """Enable user entitlement (enableUserEntitlement)

    Enable user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : enable entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31174: Entitlement [{entitlementId}] already consumed | 31177: Permanent item already owned | 31179: Duplicate entitlement exists | 20006: optimistic lock)
    """
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
    """Exists any user active entitlement (existsAnyUserActiveEntitlement)

    Exists any user active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any user active entitlement (existsAnyUserActiveEntitlement)

    Exists any user active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any user active entitlement (existsAnyUserActiveEntitlementByItemIds)

    Exists any user active entitlement of specified items.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_ids: (itemIds) REQUIRED List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any user active entitlement (existsAnyUserActiveEntitlementByItemIds)

    Exists any user active entitlement of specified items.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_ids: (itemIds) REQUIRED List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get entitlement (getEntitlement)

    Get entitlement.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get entitlement (getEntitlement)

    Get entitlement.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlements by itemIds (getUserActiveEntitlementsByItemIds)

    Get user entitlements by itemIds.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementInfo] (successful operation)
    """
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
    """Get user entitlements by itemIds (getUserActiveEntitlementsByItemIds)

    Get user entitlements by itemIds.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementInfo] (successful operation)
    """
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
    """Get user app entitlement by appId (getUserAppEntitlementByAppId)

    Get user app entitlement by appId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - AppEntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31142: Entitlement with appId [{appId}] does not exist in namespace [{namespace}])
    """
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
    """Get user app entitlement by appId (getUserAppEntitlementByAppId)

    Get user app entitlement by appId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - AppEntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31142: Entitlement with appId [{appId}] does not exist in namespace [{namespace}])
    """
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
    """Get user app entitlement ownership by appId (getUserAppEntitlementOwnershipByAppId)

    Get user app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get user app entitlement ownership by appId (getUserAppEntitlementOwnershipByAppId)

    Get user app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get user entitlement (getUserEntitlement)

    Get user entitlement.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement (getUserEntitlement)

    Get user entitlement.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by itemId (getUserEntitlementByItemId)

    Get user entitlement by itemId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31144: Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by itemId (getUserEntitlementByItemId)

    Get user entitlement by itemId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31144: Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by sku (getUserEntitlementBySku)

    Get user entitlement by sku.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31143: Entitlement with sku [{sku}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by sku (getUserEntitlementBySku)

    Get user entitlement by sku.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31143: Entitlement with sku [{sku}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement history (getUserEntitlementHistories)

    Get user entitlement histories.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : list of entitlement history

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[EntitlementHistoryInfo] (successful operation)
    """
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
    """Get user entitlement history (getUserEntitlementHistories)

    Get user entitlement histories.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : list of entitlement history

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[EntitlementHistoryInfo] (successful operation)
    """
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
    """Get user entitlement ownership by itemId (getUserEntitlementOwnershipByItemId)

    Get user entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by itemId (getUserEntitlementOwnershipByItemId)

    Get user entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by itemIds (getUserEntitlementOwnershipByItemIds)

    Get user entitlement ownership by itemIds.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementOwnership] (successful operation)
    """
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
    """Get user entitlement ownership by itemIds (getUserEntitlementOwnershipByItemIds)

    Get user entitlement ownership by itemIds.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementOwnership] (successful operation)
    """
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
    """Get user entitlement ownership by sku (getUserEntitlementOwnershipBySku)

    Get user entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by sku (getUserEntitlementOwnershipBySku)

    Get user entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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


@same_doc_as(GrantEntitlements)
def grant_entitlements(
    body: Optional[BulkEntitlementGrantRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant entitlements to different users (grantEntitlements)

    Grant entitlements to multiple users, skipped granting will be treated as fail.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : bulk grant entitlements result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/grant

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkEntitlementGrantRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkEntitlementGrantResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantEntitlements.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantEntitlements)
async def grant_entitlements_async(
    body: Optional[BulkEntitlementGrantRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant entitlements to different users (grantEntitlements)

    Grant entitlements to multiple users, skipped granting will be treated as fail.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : bulk grant entitlements result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/grant

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkEntitlementGrantRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkEntitlementGrantResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantEntitlements.create(
        body=body,
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
    """Grant user entitlement (grantUserEntitlement)

    Grant user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=1 (CREATE)
      *  Returns : granted entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL List[EntitlementGrant] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - List[StackableEntitlementInfo] (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Grant user entitlement (grantUserEntitlement)

    Grant user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=1 (CREATE)
      *  Returns : granted entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL List[EntitlementGrant] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - List[StackableEntitlementInfo] (successful operation)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Consume user entitlement (publicConsumeUserEntitlement)

    Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED. Client should pass item id in options if entitlement clazz is OPTIONBOX
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : consumed entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementDecrement in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementDecrementResult (successful operation)

        400: Bad Request - ErrorEntity (31121: OptionBox entitlement [{entitlementId}] use count is not 1 | 31122: OptionBox entitlement [{entitlementId}] options size is not 1 | 31123: Unable to acquire box item, box item [{itemId}] expired)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}] | 31145: Option [{option}] doesn't exist in OptionBox entitlement [{entitlementId}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 20006: optimistic lock)
    """
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
    """Consume user entitlement (publicConsumeUserEntitlement)

    Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED. Client should pass item id in options if entitlement clazz is OPTIONBOX
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : consumed entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementDecrement in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementDecrementResult (successful operation)

        400: Bad Request - ErrorEntity (31121: OptionBox entitlement [{entitlementId}] use count is not 1 | 31122: OptionBox entitlement [{entitlementId}] options size is not 1 | 31123: Unable to acquire box item, box item [{itemId}] expired)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}] | 31145: Option [{option}] doesn't exist in OptionBox entitlement [{entitlementId}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 20006: optimistic lock)
    """
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
    """Exists any my active entitlement (publicExistsAnyMyActiveEntitlement)

    Exists any my active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any my active entitlement (publicExistsAnyMyActiveEntitlement)

    Exists any my active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any user active entitlement (publicExistsAnyUserActiveEntitlement)

    Exists any user active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Exists any user active entitlement (publicExistsAnyUserActiveEntitlement)

    Exists any user active entitlement of specified itemIds, skus and appIds

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Gets an entitlement ownership token (publicGetEntitlementOwnershipToken)

    Gets an entitlement ownership token of specified itemIds, skus and appIds

    The decoded ownership token header like below:


        {

          "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

          "typ": "JWT",

          "alg": "RS256"

        }



    That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

    you can also get jwks from IAM endpoint.

    The decoded ownership token payload like below:


        {

         "namespace": "accelbyte",

         "entitlements": [

          {

            "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

            "appType": null,

            "appId": null,

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "prime-plus"

          },

          {

            "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

            "appType": "GAME",

            "appId": "omeganebula",

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "APPG005ON"

          }

         ],

        "sub": "66459eb6a4e44e6fb0040bd20c1079a5",

        "exp": 1619624360,

        "iat": 1619624060

        }



    if there's no active entitlement for the specific params, the entitlements section will be omitted.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - OwnershipToken (successful operation)
    """
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
    """Gets an entitlement ownership token (publicGetEntitlementOwnershipToken)

    Gets an entitlement ownership token of specified itemIds, skus and appIds

    The decoded ownership token header like below:


        {

          "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

          "typ": "JWT",

          "alg": "RS256"

        }



    That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

    you can also get jwks from IAM endpoint.

    The decoded ownership token payload like below:


        {

         "namespace": "accelbyte",

         "entitlements": [

          {

            "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

            "appType": null,

            "appId": null,

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "prime-plus"

          },

          {

            "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

            "appType": "GAME",

            "appId": "omeganebula",

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "APPG005ON"

          }

         ],

        "sub": "66459eb6a4e44e6fb0040bd20c1079a5",

        "exp": 1619624360,

        "iat": 1619624060

        }



    if there's no active entitlement for the specific params, the entitlements section will be omitted.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - OwnershipToken (successful operation)
    """
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
    """Get my app entitlement ownership by appId (publicGetMyAppEntitlementOwnershipByAppId)

    Get my app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace app entitlement ownership

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get my app entitlement ownership by appId (publicGetMyAppEntitlementOwnershipByAppId)

    Get my app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace app entitlement ownership

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get my entitlement ownership by itemId (publicGetMyEntitlementOwnershipByItemId)

    Get my entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
        * can be filled with game namespace in order to get game namespace entitlement ownership by sku

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get my entitlement ownership by itemId (publicGetMyEntitlementOwnershipByItemId)

    Get my entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
        * can be filled with game namespace in order to get game namespace entitlement ownership by sku

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get my entitlement ownership by sku (publicGetMyEntitlementOwnershipBySku)

    Get my entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
        * can be filled with game namespace in order to get game namespace entitlement ownership by sku

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get my entitlement ownership by sku (publicGetMyEntitlementOwnershipBySku)

    Get my entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
        * can be filled with game namespace in order to get game namespace entitlement ownership by sku

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user app entitlement by appId (publicGetUserAppEntitlementByAppId)

    Get user app entitlement by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - AppEntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31142: Entitlement with appId [{appId}] does not exist in namespace [{namespace}])
    """
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
    """Get user app entitlement by appId (publicGetUserAppEntitlementByAppId)

    Get user app entitlement by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - AppEntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31142: Entitlement with appId [{appId}] does not exist in namespace [{namespace}])
    """
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
    """Get user app entitlement ownership by appId (publicGetUserAppEntitlementOwnershipByAppId)

    Get user app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get user app entitlement ownership by appId (publicGetUserAppEntitlementOwnershipByAppId)

    Get user app entitlement ownership by appId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_id: (appId) REQUIRED str in query

    Responses:
        200: OK - Ownership (successful operation)
    """
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
    """Get user entitlement (publicGetUserEntitlement)

    Get user entitlement.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement (publicGetUserEntitlement)

    Get user entitlement.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by itemId (publicGetUserEntitlementByItemId)

    Get user entitlement by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31144: Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by itemId (publicGetUserEntitlementByItemId)

    Get user entitlement by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31144: Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by sku (publicGetUserEntitlementBySku)

    Get user entitlement by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31143: Entitlement with sku [{sku}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement by sku (publicGetUserEntitlementBySku)

    Get user entitlement by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31143: Entitlement with sku [{sku}] does not exist in namespace [{namespace}])
    """
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
    """Get user entitlement ownership by itemId (publicGetUserEntitlementOwnershipByItemId)

    Get user entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by itemId (publicGetUserEntitlementOwnershipByItemId)

    Get user entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by itemIds (publicGetUserEntitlementOwnershipByItemIds)

    Get user entitlement ownership by itemIds.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementOwnership] (successful operation)
    """
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
    """Get user entitlement ownership by itemIds (publicGetUserEntitlementOwnershipByItemIds)

    Get user entitlement ownership by itemIds.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ids: (ids) OPTIONAL List[str] in query

    Responses:
        200: OK - List[EntitlementOwnership] (successful operation)
    """
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
    """Get user entitlement ownership by sku (publicGetUserEntitlementOwnershipBySku)

    Get user entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Get user entitlement ownership by sku (publicGetUserEntitlementOwnershipBySku)

    Get user entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """
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
    """Query user entitlements (publicQueryUserEntitlements)

    Query user entitlements for a specific user.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        features: (features) OPTIONAL List[str] in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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
    """Query user entitlements (publicQueryUserEntitlements)

    Query user entitlements for a specific user.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        features: (features) OPTIONAL List[str] in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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
    """Query app entitlements by appType (publicQueryUserEntitlementsByAppType)

    Query app entitlements by appType.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : app entitlement pagination

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        app_type: (appType) REQUIRED Union[str, AppTypeEnum] in query

    Responses:
        200: OK - AppEntitlementPagingSlicedResult (successful operation)
    """
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
    """Query app entitlements by appType (publicQueryUserEntitlementsByAppType)

    Query app entitlements by appType.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : app entitlement pagination

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        app_type: (appType) REQUIRED Union[str, AppTypeEnum] in query

    Responses:
        200: OK - AppEntitlementPagingSlicedResult (successful operation)
    """
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


@same_doc_as(PublicSellUserEntitlement)
def public_sell_user_entitlement(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementSoldRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sell user entitlement (publicSellUserEntitlement)

    Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementSoldRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSellUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSellUserEntitlement)
async def public_sell_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementSoldRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sell user entitlement (publicSellUserEntitlement)

    Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : entitlement

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementSoldRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSellUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
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
    """Query entitlements (queryEntitlements)

    Query entitlements.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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
    """Query entitlements (queryEntitlements)

    Query entitlements.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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


@same_doc_as(QueryEntitlements1)
def query_entitlements_1(
    active_only: Optional[bool] = None,
    item_ids: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query entitlements by Item Ids (queryEntitlements_1)

    Query entitlements by Item Ids.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEntitlements1.create(
        active_only=active_only,
        item_ids=item_ids,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryEntitlements1)
async def query_entitlements_1_async(
    active_only: Optional[bool] = None,
    item_ids: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query entitlements by Item Ids (queryEntitlements_1)

    Query entitlements by Item Ids.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/byItemIds

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEntitlements1.create(
        active_only=active_only,
        item_ids=item_ids,
        limit=limit,
        offset=offset,
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
    """Query user entitlements (queryUserEntitlements)

    Query entitlements for a specific user.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        features: (features) OPTIONAL List[str] in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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
    """Query user entitlements (queryUserEntitlements)

    Query entitlements for a specific user.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        features: (features) OPTIONAL List[str] in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """
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
    """Query app entitlements by appType (queryUserEntitlementsByAppType)

    Query app entitlements by appType.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2
      *  Returns : app entitlement pagination

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        app_type: (appType) REQUIRED Union[str, AppTypeEnum] in query

    Responses:
        200: OK - AppEntitlementPagingSlicedResult (successful operation)
    """
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
    """Query app entitlements by appType (queryUserEntitlementsByAppType)

    Query app entitlements by appType.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2
      *  Returns : app entitlement pagination

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        app_type: (appType) REQUIRED Union[str, AppTypeEnum] in query

    Responses:
        200: OK - AppEntitlementPagingSlicedResult (successful operation)
    """
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


@same_doc_as(RevokeAllEntitlements)
def revoke_all_entitlements(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke all entitlements of a user (This API is for testing purpose only) (revokeAllEntitlements)

    Revoke all entitlements of a user (This API is for testing purpose only)
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoked entitlements count

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeAllEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeAllEntitlements)
async def revoke_all_entitlements_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke all entitlements of a user (This API is for testing purpose only) (revokeAllEntitlements)

    Revoke all entitlements of a user (This API is for testing purpose only)
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoked entitlements count

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeAllEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeEntitlements)
def revoke_entitlements(
    body: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke entitlements by Ids (revokeEntitlements)

    Revoke entitlements, skipped revocation will be treated as fail.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : bulk revoke entitlements result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/revoke

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkEntitlementRevokeResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeEntitlements.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeEntitlements)
async def revoke_entitlements_async(
    body: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke entitlements by Ids (revokeEntitlements)

    Revoke entitlements, skipped revocation will be treated as fail.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : bulk revoke entitlements result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/entitlements/revoke

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkEntitlementRevokeResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeEntitlements.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeUseCount)
def revoke_use_count(
    entitlement_id: str,
    user_id: str,
    body: Optional[RevokeUseCountRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke specified use count of user entitlement (revokeUseCount)

    Revoke specified use count of user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revokeByUseCount

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RevokeUseCountRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUseCount.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeUseCount)
async def revoke_use_count_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[RevokeUseCountRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke specified use count of user entitlement (revokeUseCount)

    Revoke specified use count of user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revokeByUseCount

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RevokeUseCountRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUseCount.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
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
    """Revoke user entitlement (revokeUserEntitlement)

    Revoke user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Revoke user entitlement (revokeUserEntitlement)

    Revoke user entitlement.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])
    """
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
    """Revoke user's entitlements by ids (revokeUserEntitlements)

    Revoke user's entitlements by ids.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlements count

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_ids: (entitlementIds) REQUIRED str in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
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
    """Revoke user's entitlements by ids (revokeUserEntitlements)

    Revoke user's entitlements by ids.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : revoke entitlements count

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_ids: (entitlementIds) REQUIRED str in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
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


@same_doc_as(SellUserEntitlement)
def sell_user_entitlement(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementSoldRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sell user entitlement (sellUserEntitlement)

    Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT, action=4 (UPDATE)
      *  Returns : entitlement

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementSoldRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SellUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SellUserEntitlement)
async def sell_user_entitlement_async(
    entitlement_id: str,
    user_id: str,
    body: Optional[EntitlementSoldRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sell user entitlement (sellUserEntitlement)

    Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT, action=4 (UPDATE)
      *  Returns : entitlement

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementSoldRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SellUserEntitlement.create(
        entitlement_id=entitlement_id,
        user_id=user_id,
        body=body,
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
    """Update user entitlement (updateUserEntitlement)

    Update user entitlement. If update CONSUMABLE entitlement useCount to 0, the status will be CONSUMED.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : updated entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementUpdate in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
    """Update user entitlement (updateUserEntitlement)

    Update user entitlement. If update CONSUMABLE entitlement useCount to 0, the status will be CONSUMED.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4 (UPDATE)
      *  Returns : updated entitlement

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementUpdate in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
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
