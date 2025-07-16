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

from ..models import ApimodelGetNotificationSubscriberListResponseV2
from ..models import ResponseErrorResponse

from ..operations.notification_subscription_v3 import (
    DeleteSubscriptionAppNotificationV3,
)
from ..operations.notification_subscription_v3 import GetNotificationSubscriberListV3


@same_doc_as(DeleteSubscriptionAppNotificationV3)
def delete_subscription_app_notification_v3(
    app: str,
    email_address: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription by user ID or email address (DeleteSubscriptionAppNotificationV3)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription using either user ID or email address.
    Only one of them should be provided.

    Properties:
        url: /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: DELETE

        tags: ["Notification Subscription V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        email_address: (emailAddress) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationV3.create(
        app=app,
        email_address=email_address,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSubscriptionAppNotificationV3)
async def delete_subscription_app_notification_v3_async(
    app: str,
    email_address: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove other person subscription by user ID or email address (DeleteSubscriptionAppNotificationV3)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

    Remove a user from the notification subscription using either user ID or email address.
    Only one of them should be provided.

    Properties:
        url: /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: DELETE

        tags: ["Notification Subscription V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        email_address: (emailAddress) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSubscriptionAppNotificationV3.create(
        app=app,
        email_address=email_address,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNotificationSubscriberListV3)
def get_notification_subscriber_list_v3(
    app: str,
    notification_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of the app notification subscriber (GetNotificationSubscriberListV3)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

    Request param:
    - notificationType : type of the subscribed app notification
    - values:
    - all
    - app-down
    - critical-vulnerability

    Get a list of the app notification subscriber

    Properties:
        url: /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: GET

        tags: ["Notification Subscription V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        notification_type: (notificationType) REQUIRED str in query

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponseV2

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationSubscriberListV3.create(
        app=app,
        notification_type=notification_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNotificationSubscriberListV3)
async def get_notification_subscriber_list_v3_async(
    app: str,
    notification_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of the app notification subscriber (GetNotificationSubscriberListV3)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

    Request param:
    - notificationType : type of the subscribed app notification
    - values:
    - all
    - app-down
    - critical-vulnerability

    Get a list of the app notification subscriber

    Properties:
        url: /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: GET

        tags: ["Notification Subscription V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        notification_type: (notificationType) REQUIRED str in query

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponseV2

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationSubscriberListV3.create(
        app=app,
        notification_type=notification_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
