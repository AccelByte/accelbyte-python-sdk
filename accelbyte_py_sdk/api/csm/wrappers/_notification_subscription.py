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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ApimodelBulkSubscribeRequest
from ..models import ApimodelGetNotificationSubscriberListResponse
from ..models import ApimodelGetNotificationSubscriberStatusResponse
from ..models import ApimodelSelfSubscribeNotificationRequest
from ..models import ApimodelSubscribeNotificationRequest
from ..models import ApimodelSubscribeNotificationResponse
from ..models import ResponseErrorResponse

from ..operations.notification_subscription import BulkSaveSubscriptionAppNotificationV2
from ..operations.notification_subscription import (
    DeleteSubscriptionAppNotificationByUserIDV2,
)
from ..operations.notification_subscription import DeleteSubscriptionAppNotificationV2
from ..operations.notification_subscription import GetNotificationSubscriberListV2
from ..operations.notification_subscription import GetSubscriptionV2Handler
from ..operations.notification_subscription import SubscribeAppNotificationV2
from ..operations.notification_subscription import SubscribeV2Handler
from ..operations.notification_subscription import UnsubscribeV2Handler


@same_doc_as(BulkSaveSubscriptionAppNotificationV2)
def bulk_save_subscription_app_notification_v2(
    app: str,
    body: ApimodelBulkSubscribeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update the subscription of the users (BulkSaveSubscriptionAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [UPDATE]`

    Update the subscription the user(s) is an app notification.

    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    - "all"
    - "app-down"
    - "critical-vulnerability"
    - subscribers : user(s) notification subscription to be updated - Required.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: PUT

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelBulkSubscribeRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkSaveSubscriptionAppNotificationV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkSaveSubscriptionAppNotificationV2)
async def bulk_save_subscription_app_notification_v2_async(
    app: str,
    body: ApimodelBulkSubscribeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update the subscription of the users (BulkSaveSubscriptionAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [UPDATE]`

    Update the subscription the user(s) is an app notification.

    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    - "all"
    - "app-down"
    - "critical-vulnerability"
    - subscribers : user(s) notification subscription to be updated - Required.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: PUT

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelBulkSubscribeRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkSaveSubscriptionAppNotificationV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSubscriptionAppNotificationByUserIDV2)
def delete_subscription_app_notification_by_user_idv2(
    app: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription by user ID (DeleteSubscriptionAppNotificationByUserIDV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription by user ID.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationByUserIDV2.create(
        app=app,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSubscriptionAppNotificationByUserIDV2)
async def delete_subscription_app_notification_by_user_idv2_async(
    app: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription by user ID (DeleteSubscriptionAppNotificationByUserIDV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription by user ID.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationByUserIDV2.create(
        app=app,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteSubscriptionAppNotificationV2)
def delete_subscription_app_notification_v2(
    app: str,
    subscription_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription (DeleteSubscriptionAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

    Responses:
        200: OK -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationV2.create(
        app=app,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteSubscriptionAppNotificationV2)
async def delete_subscription_app_notification_v2_async(
    app: str,
    subscription_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription (DeleteSubscriptionAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

    Responses:
        200: OK -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationV2.create(
        app=app,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNotificationSubscriberListV2)
def get_notification_subscriber_list_v2(
    app: str,
    notification_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of the app notification subscriber (GetNotificationSubscriberListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

    Request param:
    - notificationType : type of the subscribed app notification
    - values:
    - all
    - app-down
    - critical-vulnerability

    Get a list of the app notification subscriber

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: GET

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        notification_type: (notificationType) REQUIRED str in query

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationSubscriberListV2.create(
        app=app,
        notification_type=notification_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNotificationSubscriberListV2)
async def get_notification_subscriber_list_v2_async(
    app: str,
    notification_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of the app notification subscriber (GetNotificationSubscriberListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

    Request param:
    - notificationType : type of the subscribed app notification
    - values:
    - all
    - app-down
    - critical-vulnerability

    Get a list of the app notification subscriber

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: GET

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        notification_type: (notificationType) REQUIRED str in query

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationSubscriberListV2.create(
        app=app,
        notification_type=notification_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSubscriptionV2Handler)
def get_subscription_v2_handler(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Subscription status of a user (GetSubscriptionV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [READ]`

    Get Subscription status of a user

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: GET

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetNotificationSubscriberStatusResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSubscriptionV2Handler.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSubscriptionV2Handler)
async def get_subscription_v2_handler_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Subscription status of a user (GetSubscriptionV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [READ]`

    Get Subscription status of a user

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: GET

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetNotificationSubscriberStatusResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSubscriptionV2Handler.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SubscribeAppNotificationV2)
def subscribe_app_notification_v2(
    app: str,
    body: ApimodelSubscribeNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe the user(s) an app notification (SubscribeAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [CREATE]`

    Subscribe the user(s) an app notification.

    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    -"all"
    - "app-down"
    - "critical-vulnerability"
    - subscribers : user(s) to subscribe the app notification - Required.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: POST

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelSubscribeNotificationRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSubscribeNotificationResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SubscribeAppNotificationV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SubscribeAppNotificationV2)
async def subscribe_app_notification_v2_async(
    app: str,
    body: ApimodelSubscribeNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe the user(s) an app notification (SubscribeAppNotificationV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [CREATE]`

    Subscribe the user(s) an app notification.

    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    -"all"
    - "app-down"
    - "critical-vulnerability"
    - subscribers : user(s) to subscribe the app notification - Required.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: POST

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelSubscribeNotificationRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSubscribeNotificationResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SubscribeAppNotificationV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SubscribeV2Handler)
def subscribe_v2_handler(
    app: str,
    body: ApimodelSelfSubscribeNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe to app down notification (SubscribeV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [CREATE]`

    Subscribe to app down notification
    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    - "all"
    - "app-down"
    - "critical-vulnerability"

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: POST

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelSelfSubscribeNotificationRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successfully submitted request to subcribe from app down notification)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SubscribeV2Handler.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SubscribeV2Handler)
async def subscribe_v2_handler_async(
    app: str,
    body: ApimodelSelfSubscribeNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe to app down notification (SubscribeV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [CREATE]`

    Subscribe to app down notification
    Request body:
    - notificationType : type of the app notification to be subscribed - Required.
    - values:
    - "all"
    - "app-down"
    - "critical-vulnerability"

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: POST

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelSelfSubscribeNotificationRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successfully submitted request to subcribe from app down notification)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SubscribeV2Handler.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnsubscribeV2Handler)
def unsubscribe_v2_handler(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unsubscribe to app down notification (UnsubscribeV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [DELETE]`

    Unsubscribe to app down notification

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successfully submitted request to unsubcribe from app down notification)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnsubscribeV2Handler.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnsubscribeV2Handler)
async def unsubscribe_v2_handler_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unsubscribe to app down notification (UnsubscribeV2Handler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [DELETE]`

    Unsubscribe to app down notification

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me

        method: DELETE

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (successfully submitted request to unsubcribe from app down notification)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnsubscribeV2Handler.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
