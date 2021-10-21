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
from ..operations.subscription import PublicSubscribeSubscription
from ..operations.subscription import QuerySubscriptions
from ..operations.subscription import QueryUserSubscriptions
from ..operations.subscription import RecurringChargeSubscription


@same_doc_as(CancelSubscription)
def cancel_subscription(user_id: str, subscription_id: str, body: Optional[CancelRequest] = None, force: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CancelSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        body=body,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CheckUserSubscriptionSubscribableByItemId)
def check_user_subscription_subscribable_by_item_id(user_id: str, item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CheckUserSubscriptionSubscribableByItemId.create(
        user_id=user_id,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUserSubscription)
def delete_user_subscription(user_id: str, subscription_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserSubscription)
def get_user_subscription(user_id: str, subscription_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserSubscriptionActivities)
def get_user_subscription_activities(user_id: str, subscription_id: Optional[str] = None, exclude_system: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserSubscriptionActivities.create(
        user_id=user_id,
        subscription_id=subscription_id,
        exclude_system=exclude_system,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserSubscriptionBillingHistories)
def get_user_subscription_billing_histories(user_id: str, subscription_id: str, exclude_free: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserSubscriptionBillingHistories.create(
        user_id=user_id,
        subscription_id=subscription_id,
        exclude_free=exclude_free,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GrantDaysToSubscription)
def grant_days_to_subscription(user_id: str, subscription_id: str, body: Optional[GrantSubscriptionDaysRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantDaysToSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PlatformSubscribeSubscription)
def platform_subscribe_subscription(user_id: str, body: Optional[PlatformSubscribeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformSubscribeSubscription.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ProcessUserSubscriptionNotification)
def process_user_subscription_notification(user_id: str, subscription_id: str, body: Optional[TradeNotification] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ProcessUserSubscriptionNotification.create(
        user_id=user_id,
        subscription_id=subscription_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCancelSubscription)
def public_cancel_subscription(user_id: str, subscription_id: str, body: Optional[CancelRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCancelSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicChangeSubscriptionBillingAccount)
def public_change_subscription_billing_account(user_id: str, subscription_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicChangeSubscriptionBillingAccount.create(
        user_id=user_id,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCheckUserSubscriptionSubscribableByItemId)
def public_check_user_subscription_subscribable_by_item_id(user_id: str, item_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCheckUserSubscriptionSubscribableByItemId.create(
        user_id=user_id,
        item_id=item_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserSubscription)
def public_get_user_subscription(user_id: str, subscription_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserSubscription.create(
        user_id=user_id,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserSubscriptionBillingHistories)
def public_get_user_subscription_billing_histories(user_id: str, subscription_id: str, exclude_free: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserSubscriptionBillingHistories.create(
        user_id=user_id,
        subscription_id=subscription_id,
        exclude_free=exclude_free,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryUserSubscriptions)
def public_query_user_subscriptions(user_id: str, item_id: Optional[str] = None, sku: Optional[str] = None, status: Optional[str] = None, charge_status: Optional[str] = None, subscribed_by: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserSubscriptions.create(
        user_id=user_id,
        item_id=item_id,
        sku=sku,
        status=status,
        charge_status=charge_status,
        subscribed_by=subscribed_by,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicSubscribeSubscription)
def public_subscribe_subscription(user_id: str, body: Optional[SubscribeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSubscribeSubscription.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QuerySubscriptions)
def query_subscriptions(user_id: Optional[str] = None, item_id: Optional[str] = None, sku: Optional[str] = None, status: Optional[str] = None, charge_status: Optional[str] = None, subscribed_by: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QuerySubscriptions.create(
        user_id=user_id,
        item_id=item_id,
        sku=sku,
        status=status,
        charge_status=charge_status,
        subscribed_by=subscribed_by,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUserSubscriptions)
def query_user_subscriptions(user_id: str, item_id: Optional[str] = None, sku: Optional[str] = None, status: Optional[str] = None, charge_status: Optional[str] = None, subscribed_by: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserSubscriptions.create(
        user_id=user_id,
        item_id=item_id,
        sku=sku,
        status=status,
        charge_status=charge_status,
        subscribed_by=subscribed_by,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RecurringChargeSubscription)
def recurring_charge_subscription(subscription_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RecurringChargeSubscription.create(
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
