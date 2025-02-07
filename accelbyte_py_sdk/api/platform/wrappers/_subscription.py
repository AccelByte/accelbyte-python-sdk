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

from ..models import BillingHistoryPagingSlicedResult
from ..models import CancelRequest
from ..models import ErrorEntity
from ..models import GrantSubscriptionDaysRequest
from ..models import PlatformSubscribeRequest
from ..models import RecurringChargeResult
from ..models import Subscribable
from ..models import SubscribeRequest
from ..models import SubscriptionActivityPagingSlicedResult
from ..models import SubscriptionInfo
from ..models import SubscriptionPagingSlicedResult
from ..models import TradeNotification
from ..models import ValidationErrorEntity

from ..operations.subscription import CancelSubscription
from ..operations.subscription import CheckUserSubscriptionSubscribableByItemId
from ..operations.subscription import DeleteUserSubscription
from ..operations.subscription import GetUserSubscription
from ..operations.subscription import GetUserSubscriptionActivities
from ..operations.subscription import GetUserSubscriptionBillingHistories
from ..operations.subscription import GrantDaysToSubscription
from ..operations.subscription import PlatformSubscribeSubscription
from ..operations.subscription import ProcessUserSubscriptionNotification
from ..operations.subscription import PublicCancelSubscription
from ..operations.subscription import PublicChangeSubscriptionBillingAccount
from ..operations.subscription import PublicCheckUserSubscriptionSubscribableByItemId
from ..operations.subscription import PublicGetUserSubscription
from ..operations.subscription import PublicGetUserSubscriptionBillingHistories
from ..operations.subscription import PublicQueryUserSubscriptions
from ..operations.subscription import (
    PublicQueryUserSubscriptionsChargeStatusEnum,
    PublicQueryUserSubscriptionsStatusEnum,
    PublicQueryUserSubscriptionsSubscribedByEnum,
)
from ..operations.subscription import PublicSubscribeSubscription
from ..operations.subscription import QuerySubscriptions
from ..operations.subscription import (
    QuerySubscriptionsChargeStatusEnum,
    QuerySubscriptionsStatusEnum,
    QuerySubscriptionsSubscribedByEnum,
)
from ..operations.subscription import QueryUserSubscriptions
from ..operations.subscription import (
    QueryUserSubscriptionsChargeStatusEnum,
    QueryUserSubscriptionsStatusEnum,
    QueryUserSubscriptionsSubscribedByEnum,
)
from ..operations.subscription import RecurringChargeSubscription
from ..models import (
    SubscriptionInfoChargeStatusEnum,
    SubscriptionInfoStatusEnum,
    SubscriptionInfoSubscribedByEnum,
)
from ..models import TradeNotificationPaymentProviderEnum, TradeNotificationStatusEnum


@same_doc_as(CancelSubscription)
def cancel_subscription(
    body: CancelRequest,
    subscription_id: str,
    user_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a subscription (cancelSubscription)

    Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
    Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
    Set force true, will ignore the error if subscription is during recurring charging.
    Other detail info:

      * Returns : cancelled subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CancelRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CancelSubscription)
async def cancel_subscription_async(
    body: CancelRequest,
    subscription_id: str,
    user_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a subscription (cancelSubscription)

    Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
    Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
    Set force true, will ignore the error if subscription is during recurring charging.
    Other detail info:

      * Returns : cancelled subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CancelRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        force=force,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CheckUserSubscriptionSubscribableByItemId)
def check_user_subscription_subscribable_by_item_id(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user subscription subscribable (checkUserSubscriptionSubscribableByItemId)

    Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

    Other detail info:

      * Returns : subscribable info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - Subscribable (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckUserSubscriptionSubscribableByItemId.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckUserSubscriptionSubscribableByItemId)
async def check_user_subscription_subscribable_by_item_id_async(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user subscription subscribable (checkUserSubscriptionSubscribableByItemId)

    Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

    Other detail info:

      * Returns : subscribable info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - Subscribable (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckUserSubscriptionSubscribableByItemId.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserSubscription)
def delete_user_subscription(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user subscription (deleteUserSubscription)

    [TEST FACILITY ONLY] Forbidden in live environment. Delete user subscription.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: DELETE

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete user subscription successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserSubscription)
async def delete_user_subscription_async(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user subscription (deleteUserSubscription)

    [TEST FACILITY ONLY] Forbidden in live environment. Delete user subscription.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: DELETE

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete user subscription successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserSubscription)
def get_user_subscription(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription (getUserSubscription)

    Get user subscription.
    Other detail info:

      * Returns : subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserSubscription)
async def get_user_subscription_async(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription (getUserSubscription)

    Get user subscription.
    Other detail info:

      * Returns : subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserSubscriptionActivities)
def get_user_subscription_activities(
    user_id: str,
    exclude_system: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    subscription_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription activity (getUserSubscriptionActivities)

    Get user subscription activity.
    Other detail info:

      * Returns : paginated subscription activity

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/activities

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_system: (excludeSystem) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        subscription_id: (subscriptionId) OPTIONAL str in query

    Responses:
        200: OK - SubscriptionActivityPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscriptionActivities.create(
        user_id=user_id,
        exclude_system=exclude_system,
        limit=limit,
        offset=offset,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserSubscriptionActivities)
async def get_user_subscription_activities_async(
    user_id: str,
    exclude_system: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    subscription_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription activity (getUserSubscriptionActivities)

    Get user subscription activity.
    Other detail info:

      * Returns : paginated subscription activity

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/activities

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_system: (excludeSystem) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        subscription_id: (subscriptionId) OPTIONAL str in query

    Responses:
        200: OK - SubscriptionActivityPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscriptionActivities.create(
        user_id=user_id,
        exclude_system=exclude_system,
        limit=limit,
        offset=offset,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserSubscriptionBillingHistories)
def get_user_subscription_billing_histories(
    subscription_id: str,
    user_id: str,
    exclude_free: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription billing histories (getUserSubscriptionBillingHistories)

    Get user subscription billing histories.
    Other detail info:

      * Returns : paginated subscription billing history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_free: (excludeFree) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - BillingHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscriptionBillingHistories.create(
        subscription_id=subscription_id,
        user_id=user_id,
        exclude_free=exclude_free,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserSubscriptionBillingHistories)
async def get_user_subscription_billing_histories_async(
    subscription_id: str,
    user_id: str,
    exclude_free: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription billing histories (getUserSubscriptionBillingHistories)

    Get user subscription billing histories.
    Other detail info:

      * Returns : paginated subscription billing history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_free: (excludeFree) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - BillingHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSubscriptionBillingHistories.create(
        subscription_id=subscription_id,
        user_id=user_id,
        exclude_free=exclude_free,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GrantDaysToSubscription)
def grant_days_to_subscription(
    body: GrantSubscriptionDaysRequest,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant days to a subscription (grantDaysToSubscription)

    Grant days to a subscription, if grantDays is positive, it will add free days and push the next billing date by the amount of day.
    if the grantDays is negative or zero, it only apply to active/cancelled subscription, remove days will decrease current period end, and move the next billing date closer.
    Other detail info:

      * Returns : updated subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GrantSubscriptionDaysRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantDaysToSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantDaysToSubscription)
async def grant_days_to_subscription_async(
    body: GrantSubscriptionDaysRequest,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant days to a subscription (grantDaysToSubscription)

    Grant days to a subscription, if grantDays is positive, it will add free days and push the next billing date by the amount of day.
    if the grantDays is negative or zero, it only apply to active/cancelled subscription, remove days will decrease current period end, and move the next billing date closer.
    Other detail info:

      * Returns : updated subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GrantSubscriptionDaysRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantDaysToSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PlatformSubscribeSubscription)
def platform_subscribe_subscription(
    body: PlatformSubscribeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Free subscribe by platform (platformSubscribeSubscription)

    Free subscribe by platform, can used by other justice service to redeem/reward the subscription.
    Other detail info:

      * Returns : result subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformSubscribeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        201: Created - (platform subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 20008: user [{userId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformSubscribeSubscription.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformSubscribeSubscription)
async def platform_subscribe_subscription_async(
    body: PlatformSubscribeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Free subscribe by platform (platformSubscribeSubscription)

    Free subscribe by platform, can used by other justice service to redeem/reward the subscription.
    Other detail info:

      * Returns : result subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformSubscribeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        201: Created - (platform subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 20008: user [{userId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformSubscribeSubscription.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ProcessUserSubscriptionNotification)
def process_user_subscription_notification(
    body: TradeNotification,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Web hook for payment notification (processUserSubscriptionNotification)

    [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
    Other detail info:

      * Returns : Process result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeNotification in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (process successfully)

        400: Bad Request - (process failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ProcessUserSubscriptionNotification.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProcessUserSubscriptionNotification)
async def process_user_subscription_notification_async(
    body: TradeNotification,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Web hook for payment notification (processUserSubscriptionNotification)

    [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
    Other detail info:

      * Returns : Process result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeNotification in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (process successfully)

        400: Bad Request - (process failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ProcessUserSubscriptionNotification.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelSubscription)
def public_cancel_subscription(
    body: CancelRequest,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a subscription (publicCancelSubscription)

    Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
    Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
    Other detail info:

      * Returns : cancelled subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CancelRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelSubscription)
async def public_cancel_subscription_async(
    body: CancelRequest,
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a subscription (publicCancelSubscription)

    Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
    Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
    Other detail info:

      * Returns : cancelled subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CancelRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelSubscription.create(
        body=body,
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicChangeSubscriptionBillingAccount)
def public_change_subscription_billing_account(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request to change a subscription billing account (publicChangeSubscriptionBillingAccount)

    Request to change a subscription billing account, this will guide user to payment station. The actual change will happen at the 0 payment notification successfully handled.
    Only ACTIVE USER subscription with real currency billing account can be changed.
    Other detail info:

      * Returns : updated subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        400: Bad Request - ErrorEntity (40125: Subscription [{subscriptionId}] has no real currency billing account)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChangeSubscriptionBillingAccount.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicChangeSubscriptionBillingAccount)
async def public_change_subscription_billing_account_async(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request to change a subscription billing account (publicChangeSubscriptionBillingAccount)

    Request to change a subscription billing account, this will guide user to payment station. The actual change will happen at the 0 payment notification successfully handled.
    Only ACTIVE USER subscription with real currency billing account can be changed.
    Other detail info:

      * Returns : updated subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        400: Bad Request - ErrorEntity (40125: Subscription [{subscriptionId}] has no real currency billing account)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChangeSubscriptionBillingAccount.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCheckUserSubscriptionSubscribableByItemId)
def public_check_user_subscription_subscribable_by_item_id(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user subscription subscribable (publicCheckUserSubscriptionSubscribableByItemId)

    Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

    Other detail info:

      * Returns : subscribable info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - Subscribable (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCheckUserSubscriptionSubscribableByItemId.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCheckUserSubscriptionSubscribableByItemId)
async def public_check_user_subscription_subscribable_by_item_id_async(
    item_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user subscription subscribable (publicCheckUserSubscriptionSubscribableByItemId)

    Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

    Other detail info:

      * Returns : subscribable info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - Subscribable (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCheckUserSubscriptionSubscribableByItemId.create(
        item_id=item_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserSubscription)
def public_get_user_subscription(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription (publicGetUserSubscription)

    Get user subscription.
    Other detail info:

      * Returns : subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserSubscription)
async def public_get_user_subscription_async(
    subscription_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription (publicGetUserSubscription)

    Get user subscription.
    Other detail info:

      * Returns : subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserSubscriptionBillingHistories)
def public_get_user_subscription_billing_histories(
    subscription_id: str,
    user_id: str,
    exclude_free: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription billing histories (publicGetUserSubscriptionBillingHistories)

    Get user subscription billing histories.
    Other detail info:

      * Returns : paginated subscription history

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_free: (excludeFree) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - BillingHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSubscriptionBillingHistories.create(
        subscription_id=subscription_id,
        user_id=user_id,
        exclude_free=exclude_free,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserSubscriptionBillingHistories)
async def public_get_user_subscription_billing_histories_async(
    subscription_id: str,
    user_id: str,
    exclude_free: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user subscription billing histories (publicGetUserSubscriptionBillingHistories)

    Get user subscription billing histories.
    Other detail info:

      * Returns : paginated subscription history

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_free: (excludeFree) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - BillingHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSubscriptionBillingHistories.create(
        subscription_id=subscription_id,
        user_id=user_id,
        exclude_free=exclude_free,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserSubscriptions)
def public_query_user_subscriptions(
    user_id: str,
    charge_status: Optional[
        Union[str, PublicQueryUserSubscriptionsChargeStatusEnum]
    ] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, PublicQueryUserSubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[
        Union[str, PublicQueryUserSubscriptionsSubscribedByEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscriptions (publicQueryUserSubscriptions)

    Query user subscriptions.
    Other detail info:

      * Returns : paginated subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserSubscriptions.create(
        user_id=user_id,
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserSubscriptions)
async def public_query_user_subscriptions_async(
    user_id: str,
    charge_status: Optional[
        Union[str, PublicQueryUserSubscriptionsChargeStatusEnum]
    ] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, PublicQueryUserSubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[
        Union[str, PublicQueryUserSubscriptionsSubscribedByEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscriptions (publicQueryUserSubscriptions)

    Query user subscriptions.
    Other detail info:

      * Returns : paginated subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserSubscriptions.create(
        user_id=user_id,
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSubscribeSubscription)
def public_subscribe_subscription(
    body: SubscribeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe a subscription (publicSubscribeSubscription)

    Subscribe a subscription. Support both real and virtual payment. Need go through payment flow using the paymentOrderNo if paymentFlowRequired true.
     ACTIVE USER subscription can't do subscribe again.
     The next billing date will be X(default 4) hours before the current period ends if correctly subscribed.
    User with permission SANDBOX will create sandbox subscription that not real paid.
    Other detail info:

      * Optional permission(user with this permission will create sandbox subscription) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SubscribeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support | 40122: Subscription already been subscribed by user | 40123: Currency [{currencyCode}] does not support | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification | 40173: Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSubscribeSubscription.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubscribeSubscription)
async def public_subscribe_subscription_async(
    body: SubscribeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe a subscription (publicSubscribeSubscription)

    Subscribe a subscription. Support both real and virtual payment. Need go through payment flow using the paymentOrderNo if paymentFlowRequired true.
     ACTIVE USER subscription can't do subscribe again.
     The next billing date will be X(default 4) hours before the current period ends if correctly subscribed.
    User with permission SANDBOX will create sandbox subscription that not real paid.
    Other detail info:

      * Optional permission(user with this permission will create sandbox subscription) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created subscription

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SubscribeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support | 40122: Subscription already been subscribed by user | 40123: Currency [{currencyCode}] does not support | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification | 40173: Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSubscribeSubscription.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QuerySubscriptions)
def query_subscriptions(
    charge_status: Optional[Union[str, QuerySubscriptionsChargeStatusEnum]] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, QuerySubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[Union[str, QuerySubscriptionsSubscribedByEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query subscriptions (querySubscriptions)

    Query subscriptions.
    Other detail info:

      * Returns : paginated subscriptions

    Properties:
        url: /platform/admin/namespaces/{namespace}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySubscriptions.create(
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QuerySubscriptions)
async def query_subscriptions_async(
    charge_status: Optional[Union[str, QuerySubscriptionsChargeStatusEnum]] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, QuerySubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[Union[str, QuerySubscriptionsSubscribedByEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query subscriptions (querySubscriptions)

    Query subscriptions.
    Other detail info:

      * Returns : paginated subscriptions

    Properties:
        url: /platform/admin/namespaces/{namespace}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySubscriptions.create(
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserSubscriptions)
def query_user_subscriptions(
    user_id: str,
    charge_status: Optional[Union[str, QueryUserSubscriptionsChargeStatusEnum]] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, QueryUserSubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[Union[str, QueryUserSubscriptionsSubscribedByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscriptions (queryUserSubscriptions)

    Query user subscriptions.
    Other detail info:

      * Returns : paginated subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserSubscriptions.create(
        user_id=user_id,
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserSubscriptions)
async def query_user_subscriptions_async(
    user_id: str,
    charge_status: Optional[Union[str, QueryUserSubscriptionsChargeStatusEnum]] = None,
    item_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sku: Optional[str] = None,
    status: Optional[Union[str, QueryUserSubscriptionsStatusEnum]] = None,
    subscribed_by: Optional[Union[str, QueryUserSubscriptionsSubscribedByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user subscriptions (queryUserSubscriptions)

    Query user subscriptions.
    Other detail info:

      * Returns : paginated subscription

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL Union[str, ChargeStatusEnum] in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum] in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserSubscriptions.create(
        user_id=user_id,
        charge_status=charge_status,
        item_id=item_id,
        limit=limit,
        offset=offset,
        sku=sku,
        status=status,
        subscribed_by=subscribed_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RecurringChargeSubscription)
def recurring_charge_subscription(
    subscription_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Recurring charge subscription (recurringChargeSubscription)

    [TEST FACILITY ONLY] Forbidden in live environment. Recurring charge subscription, it will trigger recurring charge if the USER subscription status is ACTIVE, nextBillingDate is before now and no fail recurring charge within X(default 12) hours.
    Other detail info:

      * Returns : recurring charge result

    Properties:
        url: /platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

    Responses:
        200: OK - RecurringChargeResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RecurringChargeSubscription.create(
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RecurringChargeSubscription)
async def recurring_charge_subscription_async(
    subscription_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Recurring charge subscription (recurringChargeSubscription)

    [TEST FACILITY ONLY] Forbidden in live environment. Recurring charge subscription, it will trigger recurring charge if the USER subscription status is ACTIVE, nextBillingDate is before now and no fail recurring charge within X(default 12) hours.
    Other detail info:

      * Returns : recurring charge result

    Properties:
        url: /platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

    Responses:
        200: OK - RecurringChargeResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RecurringChargeSubscription.create(
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
