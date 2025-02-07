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

from ..models import ModelCreateTemplateRequest
from ..models import ModelFreeFormNotificationRequest
from ..models import ModelGlobalConfiguration
from ..models import ModelNotificationWithTemplateRequest
from ..models import ModelPutGlobalConfigurationRequest
from ..models import ModelTemplateLocalization
from ..models import ModelTemplateLocalizationResponse
from ..models import ModelTemplateResponse
from ..models import ModelUpdateTemplateRequest
from ..models import RestapiErrorResponseBody

from ..operations.admin import AdminDeleteGlobalConfig
from ..operations.admin import AdminGetGlobalConfig
from ..operations.admin import AdminUpdateGlobalConfig
from ..operations.admin import CreateTemplate
from ..operations.admin import DeleteTemplateLocalization
from ..operations.admin import DeleteTemplateSlug
from ..operations.admin import FreeFormNotification
from ..operations.admin import GetGameTemplate
from ..operations.admin import GetLocalizationTemplate
from ..operations.admin import GetSlugTemplate
from ..operations.admin import NotificationWithTemplate
from ..operations.admin import PublishTemplate
from ..operations.admin import UpdateLocalizationTemplate


@deprecated
@same_doc_as(AdminDeleteGlobalConfig)
def admin_delete_global_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete of global configuration data. (adminDeleteGlobalConfig)

    Delete of global configuration data.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: DELETE

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - str (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)
    """
    request = AdminDeleteGlobalConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteGlobalConfig)
async def admin_delete_global_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete of global configuration data. (adminDeleteGlobalConfig)

    Delete of global configuration data.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: DELETE

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - str (No Content)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)
    """
    request = AdminDeleteGlobalConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetGlobalConfig)
def admin_get_global_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Record of global configuration dsmc. (adminGetGlobalConfig)

    Get dsmc global configuration.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: GET

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelGlobalConfiguration (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = AdminGetGlobalConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetGlobalConfig)
async def admin_get_global_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Record of global configuration dsmc. (adminGetGlobalConfig)

    Get dsmc global configuration.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: GET

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelGlobalConfiguration (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = AdminGetGlobalConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateGlobalConfig)
def admin_update_global_config(
    body: ModelPutGlobalConfigurationRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upsert global configuration data. (adminUpdateGlobalConfig)

    Upsert global configuration data.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: PUT

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPutGlobalConfigurationRequest in body

    Responses:
        200: OK - ModelGlobalConfiguration (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)
    """
    request = AdminUpdateGlobalConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateGlobalConfig)
async def admin_update_global_config_async(
    body: ModelPutGlobalConfigurationRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upsert global configuration data. (adminUpdateGlobalConfig)

    Upsert global configuration data.

    Properties:
        url: /lobby/v1/admin/global-configurations

        method: PUT

        tags: ["admin", "global-configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPutGlobalConfigurationRequest in body

    Responses:
        200: OK - ModelGlobalConfiguration (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)
    """
    request = AdminUpdateGlobalConfig.create(
        body=body,
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
    """create new notification template (createTemplate)

    Create new notification template. Include handlebars {{key}} for replaceable contexts. The the key inside
    handlebars will be the key to be replaced when sending notification. Already existing template with the same
    slug and language can not be created.

    Check model description for detailed input restrictions.

    Properties:
        url: /notification/namespaces/{namespace}/templates

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

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
    """create new notification template (createTemplate)

    Create new notification template. Include handlebars {{key}} for replaceable contexts. The the key inside
    handlebars will be the key to be replaced when sending notification. Already existing template with the same
    slug and language can not be created.

    Check model description for detailed input restrictions.

    Properties:
        url: /notification/namespaces/{namespace}/templates

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

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
    request = CreateTemplate.create(
        body=body,
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
    """delete template localization (deleteTemplateLocalization)

    Delete all template in a slug

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: DELETE

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    """delete template localization (deleteTemplateLocalization)

    Delete all template in a slug

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: DELETE

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    request = DeleteTemplateLocalization.create(
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
    """delete template localization (deleteTemplateSlug)

    Delete localization template

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}

        method: DELETE

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    """delete template localization (deleteTemplateSlug)

    Delete localization template

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}

        method: DELETE

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    request = DeleteTemplateSlug.create(
        template_slug=template_slug,
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
    """send freeform notification to a user (freeFormNotification)

    Sends notification to all connected users in a namespace.

    Properties:
        url: /notification/namespaces/{namespace}/freeform

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """send freeform notification to a user (freeFormNotification)

    Sends notification to all connected users in a namespace.

    Properties:
        url: /notification/namespaces/{namespace}/freeform

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelFreeFormNotificationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FreeFormNotification.create(
        body=body,
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
    """get all notification template in a namespace (getGameTemplate)

    Get all templates in a namespace

    Properties:
        url: /notification/namespaces/{namespace}/templates

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelTemplateResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get all notification template in a namespace (getGameTemplate)

    Get all templates in a namespace

    Properties:
        url: /notification/namespaces/{namespace}/templates

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelTemplateResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get a template localization (getLocalizationTemplate)

    Get a template localization

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        200: OK - ModelTemplateLocalization (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get a template localization (getLocalizationTemplate)

    Get a template localization

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        200: OK - ModelTemplateLocalization (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get all notification template in a slug (getSlugTemplate)

    Get all templates in a namespace

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelTemplateLocalizationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """get all notification template in a slug (getSlugTemplate)

    Get all templates in a namespace

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}

        method: GET

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelTemplateLocalizationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(NotificationWithTemplate)
def notification_with_template(
    body: ModelNotificationWithTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """send notification to a user with template (notificationWithTemplate)

    Sends notification to all connected users in a namespace with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /notification/namespaces/{namespace}/templated

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """send notification to a user with template (notificationWithTemplate)

    Sends notification to all connected users in a namespace with predefined template.

    In the request body, specify which template slug (template identifier) to use and the template language.

    NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
    Template need to be published before it can be use to send notifications

    Properties:
        url: /notification/namespaces/{namespace}/templated

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelNotificationWithTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = NotificationWithTemplate.create(
        body=body,
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
    """publish draft template (publishTemplate)

    Publish notification template draft. Empty draft can not be published.

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    """publish draft template (publishTemplate)

    Publish notification template draft. Empty draft can not be published.

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish

        method: POST

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    request = PublishTemplate.create(
        template_language=template_language,
        template_slug=template_slug,
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
    """update template draft (updateLocalizationTemplate)

    Modify draft template

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: PUT

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    """update template draft (updateLocalizationTemplate)

    Modify draft template

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: PUT

        tags: ["admin", "notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

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
    request = UpdateLocalizationTemplate.create(
        body=body,
        template_language=template_language,
        template_slug=template_slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
