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

from ..models import ModelBulkUsersFreeFormNotificationRequestV1
from ..models import ModelCreateTemplateRequest
from ..models import ModelCreateTopicRequest
from ..models import ModelCreateTopicRequestV1
from ..models import ModelFreeFormNotificationRequest
from ..models import ModelFreeFormNotificationRequestV1
from ..models import ModelGetAllNotificationTemplateSlugResp
from ..models import ModelGetAllNotificationTopicsResponse
from ..models import ModelLocalization
from ..models import ModelNotificationResponse
from ..models import ModelNotificationTemplateResponse
from ..models import ModelNotificationTopicResponse
from ..models import ModelNotificationTopicResponseV1
from ..models import ModelNotificationWithTemplateRequest
from ..models import ModelNotificationWithTemplateRequestV1
from ..models import ModelTopicByNamespacesResponse
from ..models import ModelUpdateTemplateRequest
from ..models import ModelUpdateTopicRequest
from ..models import RestapiErrorResponseBody
from ..models import RestapiErrorResponseV1

from ..operations.notification import CreateNotificationTemplateV1Admin
from ..operations.notification import CreateNotificationTopicV1Admin
from ..operations.notification import CreateTopic
from ..operations.notification import DeleteNotificationTemplateSlugV1Admin
from ..operations.notification import DeleteNotificationTopicV1Admin
from ..operations.notification import DeleteTemplateLocalizationV1Admin
from ..operations.notification import DeleteTopicByTopicName
from ..operations.notification import FreeFormNotificationByUserID
from ..operations.notification import GetAllNotificationTemplatesV1Admin
from ..operations.notification import GetAllNotificationTopicsV1Admin
from ..operations.notification import GetMyNotifications
from ..operations.notification import GetNotificationTopicV1Admin
from ..operations.notification import GetSingleTemplateLocalizationV1Admin
from ..operations.notification import GetTemplateSlugLocalizationsTemplateV1Admin
from ..operations.notification import GetTopicByNamespace
from ..operations.notification import GetTopicByTopicName
from ..operations.notification import NotificationWithTemplateByUserID
from ..operations.notification import PublishTemplateLocalizationV1Admin
from ..operations.notification import SendMultipleUsersFreeformNotificationV1Admin
from ..operations.notification import SendPartyFreeformNotificationV1Admin
from ..operations.notification import SendPartyTemplatedNotificationV1Admin
from ..operations.notification import SendSpecificUserFreeformNotificationV1Admin
from ..operations.notification import SendSpecificUserTemplatedNotificationV1Admin
from ..operations.notification import SendUsersFreeformNotificationV1Admin
from ..operations.notification import SendUsersTemplatedNotificationV1Admin
from ..operations.notification import UpdateNotificationTopicV1Admin
from ..operations.notification import UpdateTemplateLocalizationV1Admin
from ..operations.notification import UpdateTopicByTopicName


@same_doc_as(CreateNotificationTemplateV1Admin)
def create_notification_template_v1_admin(
    body: ModelCreateTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification template (createNotificationTemplateV1Admin)

    Create new notification template. Include handlebars {{key}} for replaceable contexts. The key inside
    handlebars will be the key to be replaced when sending notification. Already existing template with the same
    slug and language can not be created.

    Check model description for detailed input restrictions.

    Action Code: 50204

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        409: Conflict - RestapiErrorResponseV1 (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNotificationTemplateV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNotificationTemplateV1Admin)
async def create_notification_template_v1_admin_async(
    body: ModelCreateTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification template (createNotificationTemplateV1Admin)

    Create new notification template. Include handlebars {{key}} for replaceable contexts. The key inside
    handlebars will be the key to be replaced when sending notification. Already existing template with the same
    slug and language can not be created.

    Check model description for detailed input restrictions.

    Action Code: 50204

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        409: Conflict - RestapiErrorResponseV1 (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNotificationTemplateV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateNotificationTopicV1Admin)
def create_notification_topic_v1_admin(
    body: ModelCreateTopicRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification topic (createNotificationTopicV1Admin)

    Create new notification topic.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50214

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTopicRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNotificationTopicV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNotificationTopicV1Admin)
async def create_notification_topic_v1_admin_async(
    body: ModelCreateTopicRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification topic (createNotificationTopicV1Admin)

    Create new notification topic.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50214

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTopicRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNotificationTopicV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateTopic)
def create_topic(
    body: ModelCreateTopicRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification topic (createTopic)

    Create new notification topic.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        409: Conflict - RestapiErrorResponseBody (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTopic.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateTopic)
async def create_topic_async(
    body: ModelCreateTopicRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new notification topic (createTopic)

    Create new notification topic.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        409: Conflict - RestapiErrorResponseBody (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTopic.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNotificationTemplateSlugV1Admin)
def delete_notification_template_slug_v1_admin(
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete template slug in notification template (deleteNotificationTemplateSlugV1Admin)

    Delete template slug in notification template

    Action Code: 50206

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNotificationTemplateSlugV1Admin.create(
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNotificationTemplateSlugV1Admin)
async def delete_notification_template_slug_v1_admin_async(
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete template slug in notification template (deleteNotificationTemplateSlugV1Admin)

    Delete template slug in notification template

    Action Code: 50206

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNotificationTemplateSlugV1Admin.create(
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNotificationTopicV1Admin)
def delete_notification_topic_v1_admin(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete topic information by topic name (deleteNotificationTopicV1Admin)

    Delete topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50217

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNotificationTopicV1Admin.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNotificationTopicV1Admin)
async def delete_notification_topic_v1_admin_async(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete topic information by topic name (deleteNotificationTopicV1Admin)

    Delete topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50217

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNotificationTopicV1Admin.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTemplateLocalizationV1Admin)
def delete_template_localization_v1_admin(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete template localization (deleteTemplateLocalizationV1Admin)

    Delete template localization

    Action Code: 50209

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTemplateLocalizationV1Admin)
async def delete_template_localization_v1_admin_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete template localization (deleteTemplateLocalizationV1Admin)

    Delete template localization

    Action Code: 50209

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTopicByTopicName)
def delete_topic_by_topic_name(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete topic information by topic name (deleteTopicByTopicName)

    delete topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: DELETE

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTopicByTopicName)
async def delete_topic_by_topic_name_async(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete topic information by topic name (deleteTopicByTopicName)

    delete topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: DELETE

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FreeFormNotificationByUserID)
def free_form_notification_by_user_id(
    body: ModelFreeFormNotificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a user (freeFormNotificationByUserID)

    Sends notification to a user.

    Properties:
        url: /notification/namespaces/{namespace}/users/{userId}/freeform

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FreeFormNotificationByUserID.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FreeFormNotificationByUserID)
async def free_form_notification_by_user_id_async(
    body: ModelFreeFormNotificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a user (freeFormNotificationByUserID)

    Sends notification to a user.

    Properties:
        url: /notification/namespaces/{namespace}/users/{userId}/freeform

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FreeFormNotificationByUserID.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllNotificationTemplatesV1Admin)
def get_all_notification_templates_v1_admin(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all notification template in a namespace (getAllNotificationTemplatesV1Admin)

    Get all templates in a namespace

    Action Code: 50203

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNotificationTemplateResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllNotificationTemplatesV1Admin.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllNotificationTemplatesV1Admin)
async def get_all_notification_templates_v1_admin_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all notification template in a namespace (getAllNotificationTemplatesV1Admin)

    Get all templates in a namespace

    Action Code: 50203

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNotificationTemplateResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllNotificationTemplatesV1Admin.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllNotificationTopicsV1Admin)
def get_all_notification_topics_v1_admin(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic by namespace (getAllNotificationTopicsV1Admin)

    Get topic by namespace.

    Action Code: 50213

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetAllNotificationTopicsResponse (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllNotificationTopicsV1Admin.create(
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllNotificationTopicsV1Admin)
async def get_all_notification_topics_v1_admin_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic by namespace (getAllNotificationTopicsV1Admin)

    Get topic by namespace.

    Action Code: 50213

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetAllNotificationTopicsResponse (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllNotificationTopicsV1Admin.create(
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMyNotifications)
def get_my_notifications(
    end_time: Optional[int] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of notifications (getMyNotifications)

    Get list of notifications in a namespace.
    The query parameters **startTime** and **endTime** can be filled with the **sequenceID** value in the notification, where the value is an epoch timestamp.
    Example **sequenceID** or epoch timestamp value: **1706595813**

    Properties:
        url: /notification/namespaces/{namespace}/me

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL int in query

    Responses:
        200: OK - ModelNotificationResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyNotifications.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMyNotifications)
async def get_my_notifications_async(
    end_time: Optional[int] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of notifications (getMyNotifications)

    Get list of notifications in a namespace.
    The query parameters **startTime** and **endTime** can be filled with the **sequenceID** value in the notification, where the value is an epoch timestamp.
    Example **sequenceID** or epoch timestamp value: **1706595813**

    Properties:
        url: /notification/namespaces/{namespace}/me

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL int in query

    Responses:
        200: OK - ModelNotificationResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyNotifications.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNotificationTopicV1Admin)
def get_notification_topic_v1_admin(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic information by topic name (getNotificationTopicV1Admin)

    Get topic information by topic name.

    Action Code: 50215

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ModelNotificationTopicResponseV1 (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationTopicV1Admin.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNotificationTopicV1Admin)
async def get_notification_topic_v1_admin_async(
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic information by topic name (getNotificationTopicV1Admin)

    Get topic information by topic name.

    Action Code: 50215

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        200: OK - ModelNotificationTopicResponseV1 (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNotificationTopicV1Admin.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleTemplateLocalizationV1Admin)
def get_single_template_localization_v1_admin(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a template localization (getSingleTemplateLocalizationV1Admin)

    Get a template localization

    Action Code: 50207

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        200: OK - ModelLocalization (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleTemplateLocalizationV1Admin)
async def get_single_template_localization_v1_admin_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a template localization (getSingleTemplateLocalizationV1Admin)

    Get a template localization

    Action Code: 50207

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        200: OK - ModelLocalization (OK)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTemplateSlugLocalizationsTemplateV1Admin)
def get_template_slug_localizations_template_v1_admin(
    template_slug: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all notification template localization in a slug (getTemplateSlugLocalizationsTemplateV1Admin)

    Get all templates in a namespace

    Action Code: 50205

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetAllNotificationTemplateSlugResp (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTemplateSlugLocalizationsTemplateV1Admin.create(
        template_slug=template_slug,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTemplateSlugLocalizationsTemplateV1Admin)
async def get_template_slug_localizations_template_v1_admin_async(
    template_slug: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all notification template localization in a slug (getTemplateSlugLocalizationsTemplateV1Admin)

    Get all templates in a namespace

    Action Code: 50205

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetAllNotificationTemplateSlugResp (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTemplateSlugLocalizationsTemplateV1Admin.create(
        template_slug=template_slug,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTopicByNamespace)
def get_topic_by_namespace(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic by namespace (getTopicByNamespace)

    get topic by namespace.

    Properties:
        url: /notification/namespaces/{namespace}/topics

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelTopicByNamespacesResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTopicByNamespace.create(
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTopicByNamespace)
async def get_topic_by_namespace_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic by namespace (getTopicByNamespace)

    get topic by namespace.

    Properties:
        url: /notification/namespaces/{namespace}/topics

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelTopicByNamespacesResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTopicByNamespace.create(
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTopicByTopicName)
def get_topic_by_topic_name(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic information by topic name (getTopicByTopicName)

    get topic information by topic name.

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelNotificationTopicResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTopicByTopicName)
async def get_topic_by_topic_name_async(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get topic information by topic name (getTopicByTopicName)

    get topic information by topic name.

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: GET

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelNotificationTopicResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(NotificationWithTemplateByUserID)
def notification_with_template_by_user_id(
    body: ModelNotificationWithTemplateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send notification to a user with template (notificationWithTemplateByUserID)

    Sends notification to a user with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /notification/namespaces/{namespace}/users/{userId}/templated

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = NotificationWithTemplateByUserID.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(NotificationWithTemplateByUserID)
async def notification_with_template_by_user_id_async(
    body: ModelNotificationWithTemplateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send notification to a user with template (notificationWithTemplateByUserID)

    Sends notification to a user with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /notification/namespaces/{namespace}/users/{userId}/templated

        method: POST

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = NotificationWithTemplateByUserID.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishTemplateLocalizationV1Admin)
def publish_template_localization_v1_admin(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """publish template localization draft (publishTemplateLocalizationV1Admin)

    Publish notification template draft. Empty draft can not be published.

    Action Code: 50210

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishTemplateLocalizationV1Admin)
async def publish_template_localization_v1_admin_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """publish template localization draft (publishTemplateLocalizationV1Admin)

    Publish notification template draft. Empty draft can not be published.

    Action Code: 50210

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishTemplateLocalizationV1Admin.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendMultipleUsersFreeformNotificationV1Admin)
def send_multiple_users_freeform_notification_v1_admin(
    body: ModelBulkUsersFreeFormNotificationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to multiple users (sendMultipleUsersFreeformNotificationV1Admin)

    Sends notification to multiple user.
    Action Code: 50211

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkUsersFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendMultipleUsersFreeformNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendMultipleUsersFreeformNotificationV1Admin)
async def send_multiple_users_freeform_notification_v1_admin_async(
    body: ModelBulkUsersFreeFormNotificationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to multiple users (sendMultipleUsersFreeformNotificationV1Admin)

    Sends notification to multiple user.
    Action Code: 50211

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkUsersFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendMultipleUsersFreeformNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SendPartyFreeformNotificationV1Admin)
def send_party_freeform_notification_v1_admin(
    body: ModelFreeFormNotificationRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a party (sendPartyFreeformNotificationV1Admin)

    Sends notification to a party.

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendPartyFreeformNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SendPartyFreeformNotificationV1Admin)
async def send_party_freeform_notification_v1_admin_async(
    body: ModelFreeFormNotificationRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a party (sendPartyFreeformNotificationV1Admin)

    Sends notification to a party.

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendPartyFreeformNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SendPartyTemplatedNotificationV1Admin)
def send_party_templated_notification_v1_admin(
    body: ModelNotificationWithTemplateRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send templated notification to a party (sendPartyTemplatedNotificationV1Admin)

    Sends templated notification to a party.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendPartyTemplatedNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SendPartyTemplatedNotificationV1Admin)
async def send_party_templated_notification_v1_admin_async(
    body: ModelNotificationWithTemplateRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send templated notification to a party (sendPartyTemplatedNotificationV1Admin)

    Sends templated notification to a party.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendPartyTemplatedNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendSpecificUserFreeformNotificationV1Admin)
def send_specific_user_freeform_notification_v1_admin(
    body: ModelFreeFormNotificationRequestV1,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a user (sendSpecificUserFreeformNotificationV1Admin)

    Sends notification to a user.
    Action Code: 50211

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendSpecificUserFreeformNotificationV1Admin.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendSpecificUserFreeformNotificationV1Admin)
async def send_specific_user_freeform_notification_v1_admin_async(
    body: ModelFreeFormNotificationRequestV1,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to a user (sendSpecificUserFreeformNotificationV1Admin)

    Sends notification to a user.
    Action Code: 50211

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendSpecificUserFreeformNotificationV1Admin.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendSpecificUserTemplatedNotificationV1Admin)
def send_specific_user_templated_notification_v1_admin(
    body: ModelNotificationWithTemplateRequestV1,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send templated notification to specific user (sendSpecificUserTemplatedNotificationV1Admin)

    Sends templated notification to a user.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Action Code: 50212

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendSpecificUserTemplatedNotificationV1Admin.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendSpecificUserTemplatedNotificationV1Admin)
async def send_specific_user_templated_notification_v1_admin_async(
    body: ModelNotificationWithTemplateRequestV1,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send templated notification to specific user (sendSpecificUserTemplatedNotificationV1Admin)

    Sends templated notification to a user.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Action Code: 50212

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendSpecificUserTemplatedNotificationV1Admin.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendUsersFreeformNotificationV1Admin)
def send_users_freeform_notification_v1_admin(
    body: ModelFreeFormNotificationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to connected users (sendUsersFreeformNotificationV1Admin)

    Sends notification to all connected users in a namespace.

    Action Code: 50201

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendUsersFreeformNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendUsersFreeformNotificationV1Admin)
async def send_users_freeform_notification_v1_admin_async(
    body: ModelFreeFormNotificationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send freeform notification to connected users (sendUsersFreeformNotificationV1Admin)

    Sends notification to all connected users in a namespace.

    Action Code: 50201

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendUsersFreeformNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendUsersTemplatedNotificationV1Admin)
def send_users_templated_notification_v1_admin(
    body: ModelNotificationWithTemplateRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send notification to connected users with template (sendUsersTemplatedNotificationV1Admin)

    Sends notification to all connected users in a namespace with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Action Code: 50202

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendUsersTemplatedNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendUsersTemplatedNotificationV1Admin)
async def send_users_templated_notification_v1_admin_async(
    body: ModelNotificationWithTemplateRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send notification to connected users with template (sendUsersTemplatedNotificationV1Admin)

    Sends notification to all connected users in a namespace with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Action Code: 50202

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify

        method: POST

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendUsersTemplatedNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateNotificationTopicV1Admin)
def update_notification_topic_v1_admin(
    body: ModelUpdateTopicRequest,
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update topic information by topic name (updateNotificationTopicV1Admin)

    Update topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50216

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: PUT

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNotificationTopicV1Admin.create(
        body=body,
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateNotificationTopicV1Admin)
async def update_notification_topic_v1_admin_async(
    body: ModelUpdateTopicRequest,
    topic_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update topic information by topic name (updateNotificationTopicV1Admin)

    Update topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50216

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: PUT

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNotificationTopicV1Admin.create(
        body=body,
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateTemplateLocalizationV1Admin)
def update_template_localization_v1_admin(
    body: ModelUpdateTemplateRequest,
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update template localization (updateTemplateLocalizationV1Admin)

    Update template localization

    Action Code: 50208

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: PUT

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTemplateLocalizationV1Admin.create(
        body=body,
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateTemplateLocalizationV1Admin)
async def update_template_localization_v1_admin_async(
    body: ModelUpdateTemplateRequest,
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update template localization (updateTemplateLocalizationV1Admin)

    Update template localization

    Action Code: 50208

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: PUT

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTemplateLocalizationV1Admin.create(
        body=body,
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateTopicByTopicName)
def update_topic_by_topic_name(
    body: ModelUpdateTopicRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update topic information by topic name (updateTopicByTopicName)

    update topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: PUT

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTopicByTopicName.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateTopicByTopicName)
async def update_topic_by_topic_name_async(
    body: ModelUpdateTopicRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update topic information by topic name (updateTopicByTopicName)

    update topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Properties:
        url: /notification/namespaces/{namespace}/topics/{topic}

        method: PUT

        tags: ["notification", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTopicRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTopicByTopicName.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
