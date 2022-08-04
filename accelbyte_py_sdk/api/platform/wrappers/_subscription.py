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
    subscription_id: str,
    user_id: str,
    body: Optional[CancelRequest] = None,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CancelSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CancelSubscription)
async def cancel_subscription_async(
    subscription_id: str,
    user_id: str,
    body: Optional[CancelRequest] = None,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CancelSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    subscription_id: str,
    user_id: str,
    body: Optional[GrantSubscriptionDaysRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantDaysToSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantDaysToSubscription)
async def grant_days_to_subscription_async(
    subscription_id: str,
    user_id: str,
    body: Optional[GrantSubscriptionDaysRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantDaysToSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PlatformSubscribeSubscription)
def platform_subscribe_subscription(
    user_id: str,
    body: Optional[PlatformSubscribeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformSubscribeSubscription.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformSubscribeSubscription)
async def platform_subscribe_subscription_async(
    user_id: str,
    body: Optional[PlatformSubscribeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformSubscribeSubscription.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ProcessUserSubscriptionNotification)
def process_user_subscription_notification(
    subscription_id: str,
    user_id: str,
    body: Optional[TradeNotification] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserSubscriptionNotification.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProcessUserSubscriptionNotification)
async def process_user_subscription_notification_async(
    subscription_id: str,
    user_id: str,
    body: Optional[TradeNotification] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserSubscriptionNotification.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelSubscription)
def public_cancel_subscription(
    subscription_id: str,
    user_id: str,
    body: Optional[CancelRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCancelSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelSubscription)
async def public_cancel_subscription_async(
    subscription_id: str,
    user_id: str,
    body: Optional[CancelRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCancelSubscription.create(
        subscription_id=subscription_id,
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    user_id: str,
    body: Optional[SubscribeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSubscribeSubscription.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubscribeSubscription)
async def public_subscribe_subscription_async(
    user_id: str,
    body: Optional[SubscribeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSubscribeSubscription.create(
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RecurringChargeSubscription.create(
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
