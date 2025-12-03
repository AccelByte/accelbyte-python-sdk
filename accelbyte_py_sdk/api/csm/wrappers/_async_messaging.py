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

from ..models import ApimodelCreateSubscriptionRequest
from ..models import ApimodelCreateSubscriptionResponse
from ..models import ApimodelCreateTopicRequest
from ..models import ApimodelListTopicsResponse
from ..models import ApimodelTopicResponse
from ..models import ApimodelTopicSubscription
from ..models import ResponseErrorResponse

from ..operations.async_messaging import CreateSubscriptionHandler
from ..operations.async_messaging import CreateTopicHandler
from ..operations.async_messaging import DeleteTopicHandler
from ..operations.async_messaging import ListTopicsHandler
from ..operations.async_messaging import UnsubscribeTopicHandler


@same_doc_as(CreateSubscriptionHandler)
def create_subscription_handler(
    app: str,
    body: ApimodelCreateSubscriptionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe To Topic (CreateSubscriptionHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [CREATE]`

    Subscribe App queue to given Topic name list inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions

        method: POST

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSubscriptionRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelCreateSubscriptionResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSubscriptionHandler.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSubscriptionHandler)
async def create_subscription_handler_async(
    app: str,
    body: ApimodelCreateSubscriptionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Subscribe To Topic (CreateSubscriptionHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [CREATE]`

    Subscribe App queue to given Topic name list inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions

        method: POST

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSubscriptionRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelCreateSubscriptionResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSubscriptionHandler.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateTopicHandler)
def create_topic_handler(
    body: ApimodelCreateTopicRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Async Messaging Topic (CreateTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [CREATE]`

    Create New Async Messaging Topic, the topic name is unique inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics

        method: POST

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTopicHandler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateTopicHandler)
async def create_topic_handler_async(
    body: ApimodelCreateTopicRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Async Messaging Topic (CreateTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [CREATE]`

    Create New Async Messaging Topic, the topic name is unique inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics

        method: POST

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTopicHandler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTopicHandler)
def delete_topic_handler(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Async Messaging Topic (DeleteTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [DELETE]`

    Delete Async Messaging Topic inside a game namespace given its topic name.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}

        method: DELETE

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTopicHandler.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTopicHandler)
async def delete_topic_handler_async(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Async Messaging Topic (DeleteTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [DELETE]`

    Delete Async Messaging Topic inside a game namespace given its topic name.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}

        method: DELETE

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTopicHandler.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListTopicsHandler)
def list_topics_handler(
    fuzzy_topic_name: Optional[str] = None,
    is_subscribed_by_app_name: Optional[str] = None,
    is_unsubscribed_by_app_name: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Async Messaging Topics (ListTopicsHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [READ]`

    List all Async Messaging Topics inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics

        method: GET

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        fuzzy_topic_name: (fuzzyTopicName) OPTIONAL str in query

        is_subscribed_by_app_name: (isSubscribedByAppName) OPTIONAL str in query

        is_unsubscribed_by_app_name: (isUnsubscribedByAppName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelListTopicsResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTopicsHandler.create(
        fuzzy_topic_name=fuzzy_topic_name,
        is_subscribed_by_app_name=is_subscribed_by_app_name,
        is_unsubscribed_by_app_name=is_unsubscribed_by_app_name,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListTopicsHandler)
async def list_topics_handler_async(
    fuzzy_topic_name: Optional[str] = None,
    is_subscribed_by_app_name: Optional[str] = None,
    is_unsubscribed_by_app_name: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Async Messaging Topics (ListTopicsHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [READ]`

    List all Async Messaging Topics inside a game namespace.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics

        method: GET

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        fuzzy_topic_name: (fuzzyTopicName) OPTIONAL str in query

        is_subscribed_by_app_name: (isSubscribedByAppName) OPTIONAL str in query

        is_unsubscribed_by_app_name: (isUnsubscribedByAppName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelListTopicsResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTopicsHandler.create(
        fuzzy_topic_name=fuzzy_topic_name,
        is_subscribed_by_app_name=is_subscribed_by_app_name,
        is_unsubscribed_by_app_name=is_unsubscribed_by_app_name,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnsubscribeTopicHandler)
def unsubscribe_topic_handler(
    app: str,
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unsubscribe From Topic (UnsubscribeTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [DELETE]`

    Unsubscribe App queue from a topic by Topic Name.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions

        method: DELETE

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicSubscription (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnsubscribeTopicHandler.create(
        app=app,
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnsubscribeTopicHandler)
async def unsubscribe_topic_handler_async(
    app: str,
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unsubscribe From Topic (UnsubscribeTopicHandler)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [DELETE]`

    Unsubscribe App queue from a topic by Topic Name.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions

        method: DELETE

        tags: ["Async Messaging"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ApimodelTopicSubscription (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnsubscribeTopicHandler.create(
        app=app,
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
