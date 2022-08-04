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

from ..models import ModelBulkUsersFreeFormNotificationRequestV1
from ..models import ModelCreateTemplateRequest
from ..models import ModelCreateTopicRequest
from ..models import ModelCreateTopicRequestV1
from ..models import ModelFreeFormNotificationRequest
from ..models import ModelFreeFormNotificationRequestV1
from ..models import ModelGetAllNotificationTemplateSlugResp
from ..models import ModelGetAllNotificationTopicsResponse
from ..models import ModelLocalization
from ..models import ModelNotificationTemplateResponse
from ..models import ModelNotificationTopicResponse
from ..models import ModelNotificationTopicResponseV1
from ..models import ModelNotificationWithTemplateRequest
from ..models import ModelNotificationWithTemplateRequestV1
from ..models import ModelTemplateLocalization
from ..models import ModelTemplateLocalizationResponse
from ..models import ModelTemplateResponse
from ..models import ModelTopicByNamespacesResponse
from ..models import ModelUpdateTemplateRequest
from ..models import ModelUpdateTopicRequest
from ..models import RestapiErrorResponseBody
from ..models import RestapiErrorResponseV1

from ..operations.notification import CreateNotificationTemplateV1Admin
from ..operations.notification import CreateNotificationTopicV1Admin
from ..operations.notification import CreateTemplate
from ..operations.notification import CreateTopic
from ..operations.notification import DeleteNotificationTemplateSlugV1Admin
from ..operations.notification import DeleteNotificationTopicV1Admin
from ..operations.notification import DeleteTemplateLocalization
from ..operations.notification import DeleteTemplateLocalizationV1Admin
from ..operations.notification import DeleteTemplateSlug
from ..operations.notification import DeleteTopicByTopicName
from ..operations.notification import FreeFormNotification
from ..operations.notification import FreeFormNotificationByUserID
from ..operations.notification import GetAllNotificationTemplatesV1Admin
from ..operations.notification import GetAllNotificationTopicsV1Admin
from ..operations.notification import GetGameTemplate
from ..operations.notification import GetLocalizationTemplate
from ..operations.notification import GetNotificationTopicV1Admin
from ..operations.notification import GetSingleTemplateLocalizationV1Admin
from ..operations.notification import GetSlugTemplate
from ..operations.notification import GetTemplateSlugLocalizationsTemplateV1Admin
from ..operations.notification import GetTopicByNamespace
from ..operations.notification import GetTopicByTopicName
from ..operations.notification import NotificationWithTemplate
from ..operations.notification import NotificationWithTemplateByUserID
from ..operations.notification import PublishTemplate
from ..operations.notification import PublishTemplateLocalizationV1Admin
from ..operations.notification import SendMultipleUsersFreeformNotificationV1Admin
from ..operations.notification import SendPartyFreeformNotificationV1Admin
from ..operations.notification import SendPartyTemplatedNotificationV1Admin
from ..operations.notification import SendSpecificUserFreeformNotificationV1Admin
from ..operations.notification import SendSpecificUserTemplatedNotificationV1Admin
from ..operations.notification import SendUsersFreeformNotificationV1Admin
from ..operations.notification import SendUsersTemplatedNotificationV1Admin
from ..operations.notification import UpdateLocalizationTemplate
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateNotificationTopicV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateTemplate)
def create_template(
    body: ModelCreateTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateTemplate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateTemplate)
async def create_template_async(
    body: ModelCreateTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateTemplate.create(
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteNotificationTopicV1Admin.create(
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTemplateLocalization)
def delete_template_localization(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteTemplateLocalization.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTemplateLocalization)
async def delete_template_localization_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteTemplateLocalization.create(
        template_language=template_language,
        template_slug=template_slug,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(DeleteTemplateSlug)
def delete_template_slug(
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteTemplateSlug.create(
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTemplateSlug)
async def delete_template_slug_async(
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteTemplateSlug.create(
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FreeFormNotification)
def free_form_notification(
    body: ModelFreeFormNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FreeFormNotification.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FreeFormNotification)
async def free_form_notification_async(
    body: ModelFreeFormNotificationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FreeFormNotification.create(
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(GetGameTemplate)
def get_game_template(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameTemplate.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameTemplate)
async def get_game_template_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameTemplate.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLocalizationTemplate)
def get_localization_template(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLocalizationTemplate.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLocalizationTemplate)
async def get_localization_template_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLocalizationTemplate.create(
        template_language=template_language,
        template_slug=template_slug,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(GetSlugTemplate)
def get_slug_template(
    template_slug: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSlugTemplate.create(
        template_slug=template_slug,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSlugTemplate)
async def get_slug_template_async(
    template_slug: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSlugTemplate.create(
        template_slug=template_slug,
        after=after,
        before=before,
        limit=limit,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTopicByTopicName.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(NotificationWithTemplate)
def notification_with_template(
    body: ModelNotificationWithTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = NotificationWithTemplate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(NotificationWithTemplate)
async def notification_with_template_async(
    body: ModelNotificationWithTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = NotificationWithTemplate.create(
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(PublishTemplate)
def publish_template(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishTemplate.create(
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishTemplate)
async def publish_template_async(
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublishTemplate.create(
        template_language=template_language,
        template_slug=template_slug,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SendMultipleUsersFreeformNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SendPartyFreeformNotificationV1Admin)
def send_party_freeform_notification_v1_admin(
    body: ModelFreeFormNotificationRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SendPartyFreeformNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendPartyFreeformNotificationV1Admin)
async def send_party_freeform_notification_v1_admin_async(
    body: ModelFreeFormNotificationRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(SendPartyTemplatedNotificationV1Admin)
def send_party_templated_notification_v1_admin(
    body: ModelNotificationWithTemplateRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SendPartyTemplatedNotificationV1Admin.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendPartyTemplatedNotificationV1Admin)
async def send_party_templated_notification_v1_admin_async(
    body: ModelNotificationWithTemplateRequestV1,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SendUsersTemplatedNotificationV1Admin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLocalizationTemplate)
def update_localization_template(
    body: ModelUpdateTemplateRequest,
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateLocalizationTemplate.create(
        body=body,
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLocalizationTemplate)
async def update_localization_template_async(
    body: ModelUpdateTemplateRequest,
    template_language: str,
    template_slug: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateLocalizationTemplate.create(
        body=body,
        template_language=template_language,
        template_slug=template_slug,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
