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

from ..models import ErrorEntity
from ..models import ThirdPartySubscriptionOwnership
from ..models import ThirdPartySubscriptionTransactionHistoryPagingSlicedResult
from ..models import ThirdPartySubscriptionTransactionInfo
from ..models import ThirdPartySubscriptionTransactionPagingSlicedResult
from ..models import ThirdPartyUserSubscriptionInfo
from ..models import ThirdPartyUserSubscriptionPagingSlicedResult

from ..operations.iap_subscription import GetSubscriptionHistory
from ..operations.iap_subscription import (
    GetThirdPartyPlatformSubscriptionOwnershipByGroupId,
)
from ..operations.iap_subscription import (
    GetThirdPartyPlatformSubscriptionOwnershipByGroupIdPlatformEnum,
)
from ..operations.iap_subscription import (
    GetThirdPartyPlatformSubscriptionOwnershipByProductId,
)
from ..operations.iap_subscription import (
    GetThirdPartyPlatformSubscriptionOwnershipByProductIdPlatformEnum,
)
from ..operations.iap_subscription import GetThirdPartySubscriptionDetails
from ..operations.iap_subscription import GetThirdPartyUserSubscriptionDetails
from ..operations.iap_subscription import PublicQueryUserThirdPartySubscription
from ..operations.iap_subscription import (
    PublicQueryUserThirdPartySubscriptionPlatformEnum,
)
from ..operations.iap_subscription import QueryThirdPartySubscription
from ..operations.iap_subscription import QueryThirdPartySubscriptionPlatformEnum
from ..operations.iap_subscription import QueryUserThirdPartySubscription
from ..operations.iap_subscription import QueryUserThirdPartySubscriptionPlatformEnum
from ..operations.iap_subscription import QueryUserThirdPartySubscriptionTransactions
from ..operations.iap_subscription import (
    QueryUserThirdPartySubscriptionTransactionsPlatformEnum,
)
from ..operations.iap_subscription import SyncSubscription
from ..operations.iap_subscription import SyncSubscriptionTransaction
from ..models import (
    ThirdPartySubscriptionTransactionInfoPlatformEnum,
    ThirdPartySubscriptionTransactionInfoStatusEnum,
)
from ..models import (
    ThirdPartyUserSubscriptionInfoPlatformEnum,
    ThirdPartyUserSubscriptionInfoStatusEnum,
)


@same_doc_as(GetSubscriptionHistory)
def get_subscription_history(
    id_: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Subscription Transaction Update History (getSubscriptionHistory)

    Get Subscription Transaction Update History

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ThirdPartySubscriptionTransactionHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSubscriptionHistory.create(
        id_=id_,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSubscriptionHistory)
async def get_subscription_history_async(
    id_: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Subscription Transaction Update History (getSubscriptionHistory)

    Get Subscription Transaction Update History

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ThirdPartySubscriptionTransactionHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSubscriptionHistory.create(
        id_=id_,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetThirdPartyPlatformSubscriptionOwnershipByGroupId)
def get_third_party_platform_subscription_ownership_by_group_id(
    group_id: str,
    platform: Union[
        str, GetThirdPartyPlatformSubscriptionOwnershipByGroupIdPlatformEnum
    ],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user third party platform subscription ownership by subscription group id (getThirdPartyPlatformSubscriptionOwnershipByGroupId)

    Get user third party subscription by subscription group id.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byGroupId

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        group_id: (groupId) REQUIRED str in query

    Responses:
        200: OK - ThirdPartySubscriptionOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyPlatformSubscriptionOwnershipByGroupId.create(
        group_id=group_id,
        platform=platform,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetThirdPartyPlatformSubscriptionOwnershipByGroupId)
async def get_third_party_platform_subscription_ownership_by_group_id_async(
    group_id: str,
    platform: Union[
        str, GetThirdPartyPlatformSubscriptionOwnershipByGroupIdPlatformEnum
    ],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user third party platform subscription ownership by subscription group id (getThirdPartyPlatformSubscriptionOwnershipByGroupId)

    Get user third party subscription by subscription group id.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byGroupId

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        group_id: (groupId) REQUIRED str in query

    Responses:
        200: OK - ThirdPartySubscriptionOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyPlatformSubscriptionOwnershipByGroupId.create(
        group_id=group_id,
        platform=platform,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetThirdPartyPlatformSubscriptionOwnershipByProductId)
def get_third_party_platform_subscription_ownership_by_product_id(
    platform: Union[
        str, GetThirdPartyPlatformSubscriptionOwnershipByProductIdPlatformEnum
    ],
    product_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user third party platform subscription ownership by subscription product id (getThirdPartyPlatformSubscriptionOwnershipByProductId)

    Get user third party subscription by subscription product id.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byProductId

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        product_id: (productId) REQUIRED str in query

    Responses:
        200: OK - ThirdPartySubscriptionOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyPlatformSubscriptionOwnershipByProductId.create(
        platform=platform,
        product_id=product_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetThirdPartyPlatformSubscriptionOwnershipByProductId)
async def get_third_party_platform_subscription_ownership_by_product_id_async(
    platform: Union[
        str, GetThirdPartyPlatformSubscriptionOwnershipByProductIdPlatformEnum
    ],
    product_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user third party platform subscription ownership by subscription product id (getThirdPartyPlatformSubscriptionOwnershipByProductId)

    Get user third party subscription by subscription product id.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byProductId

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        product_id: (productId) REQUIRED str in query

    Responses:
        200: OK - ThirdPartySubscriptionOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyPlatformSubscriptionOwnershipByProductId.create(
        platform=platform,
        product_id=product_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetThirdPartySubscriptionDetails)
def get_third_party_subscription_details(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user subscription transaction details. (getThirdPartySubscriptionDetails)

    Admin get user subscription details.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartySubscriptionTransactionInfo (successful operation)

        404: Not Found - ErrorEntity (39149: Third Party Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartySubscriptionDetails.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetThirdPartySubscriptionDetails)
async def get_third_party_subscription_details_async(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user subscription transaction details. (getThirdPartySubscriptionDetails)

    Admin get user subscription details.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartySubscriptionTransactionInfo (successful operation)

        404: Not Found - ErrorEntity (39149: Third Party Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartySubscriptionDetails.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetThirdPartyUserSubscriptionDetails)
def get_third_party_user_subscription_details(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user subscription details. (getThirdPartyUserSubscriptionDetails)

    Admin get user subscription details.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartyUserSubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (39149: Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyUserSubscriptionDetails.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetThirdPartyUserSubscriptionDetails)
async def get_third_party_user_subscription_details_async(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user subscription details. (getThirdPartyUserSubscriptionDetails)

    Admin get user subscription details.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartyUserSubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (39149: Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetThirdPartyUserSubscriptionDetails.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserThirdPartySubscription)
def public_query_user_third_party_subscription(
    platform: Union[str, PublicQueryUserThirdPartySubscriptionPlatformEnum],
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscription. (publicQueryUserThirdPartySubscription)

    Query user subscription, default sort by updatedAtOther detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserThirdPartySubscription.create(
        platform=platform,
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        product_id=product_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserThirdPartySubscription)
async def public_query_user_third_party_subscription_async(
    platform: Union[str, PublicQueryUserThirdPartySubscriptionPlatformEnum],
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscription. (publicQueryUserThirdPartySubscription)

    Query user subscription, default sort by updatedAtOther detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserThirdPartySubscription.create(
        platform=platform,
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        product_id=product_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryThirdPartySubscription)
def query_third_party_subscription(
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[Union[str, QueryThirdPartySubscriptionPlatformEnum]] = None,
    product_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query subscriptions. (queryThirdPartySubscription)

    Query subscriptions, default sort by updatedAt Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/subscriptions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryThirdPartySubscription.create(
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryThirdPartySubscription)
async def query_third_party_subscription_async(
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[Union[str, QueryThirdPartySubscriptionPlatformEnum]] = None,
    product_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query subscriptions. (queryThirdPartySubscription)

    Query subscriptions, default sort by updatedAt Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/subscriptions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryThirdPartySubscription.create(
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserThirdPartySubscription)
def query_user_third_party_subscription(
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[Union[str, QueryUserThirdPartySubscriptionPlatformEnum]] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscription. (queryUserThirdPartySubscription)

    Query user subscription, default sort by updatedAtOther detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserThirdPartySubscription.create(
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserThirdPartySubscription)
async def query_user_third_party_subscription_async(
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[Union[str, QueryUserThirdPartySubscriptionPlatformEnum]] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscription. (queryUserThirdPartySubscription)

    Query user subscription, default sort by updatedAtOther detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartyUserSubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserThirdPartySubscription.create(
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserThirdPartySubscriptionTransactions)
def query_user_third_party_subscription_transactions(
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[
        Union[str, QueryUserThirdPartySubscriptionTransactionsPlatformEnum]
    ] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin query user subscription transactions. (queryUserThirdPartySubscriptionTransactions)

    Admin query user subscription transactions, default sort by startAt timeOther detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartySubscriptionTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserThirdPartySubscriptionTransactions.create(
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserThirdPartySubscriptionTransactions)
async def query_user_third_party_subscription_transactions_async(
    user_id: str,
    active_only: Optional[bool] = None,
    group_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform: Optional[
        Union[str, QueryUserThirdPartySubscriptionTransactionsPlatformEnum]
    ] = None,
    product_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin query user subscription transactions. (queryUserThirdPartySubscriptionTransactions)

    Admin query user subscription transactions, default sort by startAt timeOther detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions

        method: GET

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        group_id: (groupId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

        product_id: (productId) OPTIONAL str in query

    Responses:
        200: OK - ThirdPartySubscriptionTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserThirdPartySubscriptionTransactions.create(
        user_id=user_id,
        active_only=active_only,
        group_id=group_id,
        limit=limit,
        offset=offset,
        platform=platform,
        product_id=product_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSubscription)
def sync_subscription(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Subscription Status (syncSubscription)

    Sync Subscription Status

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync

        method: PUT

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartyUserSubscriptionInfo (successful operation)

        400: Bad Request - ErrorEntity (39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}])

        404: Not Found - ErrorEntity (39149: Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}]. | 39150: Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}]..)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSubscription.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSubscription)
async def sync_subscription_async(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Subscription Status (syncSubscription)

    Sync Subscription Status

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync

        method: PUT

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartyUserSubscriptionInfo (successful operation)

        400: Bad Request - ErrorEntity (39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}])

        404: Not Found - ErrorEntity (39149: Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}]. | 39150: Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}]..)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSubscription.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSubscriptionTransaction)
def sync_subscription_transaction(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Subscription transaction (syncSubscriptionTransaction)

    Sync Subscription Status

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync

        method: PUT

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartySubscriptionTransactionInfo (successful operation)

        400: Bad Request - ErrorEntity (39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}])

        404: Not Found - ErrorEntity (39149: Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSubscriptionTransaction.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSubscriptionTransaction)
async def sync_subscription_transaction_async(
    id_: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Subscription transaction (syncSubscriptionTransaction)

    Sync Subscription Status

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync

        method: PUT

        tags: ["IAP(Subscription)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ThirdPartySubscriptionTransactionInfo (successful operation)

        400: Bad Request - ErrorEntity (39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}])

        404: Not Found - ErrorEntity (39149: Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSubscriptionTransaction.create(
        id_=id_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
