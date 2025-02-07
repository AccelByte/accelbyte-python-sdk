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

from ..models import ModelsAchievementOrderUpdateRequest
from ..models import ModelsAchievementRequest
from ..models import ModelsAchievementResponse
from ..models import ModelsAchievementUpdateRequest
from ..models import ModelsPaginatedAchievementResponse
from ..models import ModelsPublicAchievementResponse
from ..models import ModelsPublicAchievementsResponse
from ..models import ResponseError
from ..models import ServiceImportConfigResponse

from ..operations.achievements import AdminCreateNewAchievement
from ..operations.achievements import AdminDeleteAchievement
from ..operations.achievements import AdminGetAchievement
from ..operations.achievements import AdminListAchievements
from ..operations.achievements import AdminListAchievementsSortByEnum
from ..operations.achievements import AdminUpdateAchievement
from ..operations.achievements import AdminUpdateAchievementListOrder
from ..operations.achievements import ExportAchievements
from ..operations.achievements import ImportAchievements
from ..operations.achievements import PublicGetAchievement
from ..operations.achievements import PublicListAchievements
from ..operations.achievements import PublicListAchievementsSortByEnum


@same_doc_as(AdminCreateNewAchievement)
def admin_create_new_achievement(
    body: ModelsAchievementRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new achievement (AdminCreateNewAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [CREATE]` and scope `social`


    Other detail info:
    - achievementCode: Human readable unique code to indentify the achievement. Must be lowercase
    and maximum length is 32
    - incremental: If the achievement is not incremental, it does not need to store a goal value
    of a stat to be unlocked.
    If the achievement is incremental, it needs to set statCode and goalValue
    - statCode: Selected statistic code, from the published statistic code event.Human readable unique
    code to indentify the achievement. Must be lowercase and maximum length is 32
    - goalValue: Statistics value required to unlock the achievement.
    - defaultLanguage: localozation for achievement name and achievement description. Allowed format : en, en-US
    - slug: specify the image they want to use, it can be file image name or something
    to define the achievement icon.

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements

        method: POST

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsAchievementResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateNewAchievement.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateNewAchievement)
async def admin_create_new_achievement_async(
    body: ModelsAchievementRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new achievement (AdminCreateNewAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [CREATE]` and scope `social`


    Other detail info:
    - achievementCode: Human readable unique code to indentify the achievement. Must be lowercase
    and maximum length is 32
    - incremental: If the achievement is not incremental, it does not need to store a goal value
    of a stat to be unlocked.
    If the achievement is incremental, it needs to set statCode and goalValue
    - statCode: Selected statistic code, from the published statistic code event.Human readable unique
    code to indentify the achievement. Must be lowercase and maximum length is 32
    - goalValue: Statistics value required to unlock the achievement.
    - defaultLanguage: localozation for achievement name and achievement description. Allowed format : en, en-US
    - slug: specify the image they want to use, it can be file image name or something
    to define the achievement icon.

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements

        method: POST

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsAchievementResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateNewAchievement.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAchievement)
def admin_delete_achievement(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an achievement (AdminDeleteAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: DELETE

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAchievement)
async def admin_delete_achievement_async(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an achievement (AdminDeleteAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: DELETE

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAchievement)
def admin_get_achievement(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an achievement (AdminGetAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAchievement)
async def admin_get_achievement_async(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an achievement (AdminGetAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAchievements)
def admin_list_achievements(
    global_: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListAchievementsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query achievements (AdminListAchievements)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        global_: (global) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAchievements.create(
        global_=global_,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAchievements)
async def admin_list_achievements_async(
    global_: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListAchievementsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query achievements (AdminListAchievements)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        global_: (global) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAchievements.create(
        global_=global_,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAchievement)
def admin_update_achievement(
    achievement_code: str,
    body: ModelsAchievementUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an achievement (AdminUpdateAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: PUT

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementUpdateRequest in body

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAchievement.create(
        achievement_code=achievement_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAchievement)
async def admin_update_achievement_async(
    achievement_code: str,
    body: ModelsAchievementUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an achievement (AdminUpdateAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: PUT

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementUpdateRequest in body

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAchievement.create(
        achievement_code=achievement_code,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAchievementListOrder)
def admin_update_achievement_list_order(
    achievement_code: str,
    body: ModelsAchievementOrderUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update achievements listOrder (AdminUpdateAchievementListOrder)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: PATCH

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementOrderUpdateRequest in body

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAchievementListOrder.create(
        achievement_code=achievement_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAchievementListOrder)
async def admin_update_achievement_list_order_async(
    achievement_code: str,
    body: ModelsAchievementOrderUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update achievements listOrder (AdminUpdateAchievementListOrder)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: PATCH

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementOrderUpdateRequest in body

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAchievementListOrder.create(
        achievement_code=achievement_code,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportAchievements)
def export_achievements(
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export achievements configuration into a json file (ExportAchievements)


    Required permission `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]`

    Required Scope: `social`

    Successful response header will contain: `content-disposition: attachment; filename=achievement__config.json`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/export

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - Any (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportAchievements.create(
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportAchievements)
async def export_achievements_async(
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export achievements configuration into a json file (ExportAchievements)


    Required permission `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]`

    Required Scope: `social`

    Successful response header will contain: `content-disposition: attachment; filename=achievement__config.json`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/export

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - Any (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportAchievements.create(
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportAchievements)
def import_achievements(
    file: Optional[Any] = None,
    strategy: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import achievements from file (ImportAchievements)


    Required permission ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]

    Required Scope: social

    Import achievement configuration from file. It will merge with existing achievement.
    Available import strategy:
    - leaveOut: if achievement with same key exist, the existing will be used and imported one will be ignored (default)
    - replace: if achievement with same key exist, the imported achievement will be used and existing one will be removed

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/import

        method: POST

        tags: ["Achievements"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        strategy: (strategy) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServiceImportConfigResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportAchievements.create(
        file=file,
        strategy=strategy,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportAchievements)
async def import_achievements_async(
    file: Optional[Any] = None,
    strategy: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import achievements from file (ImportAchievements)


    Required permission ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]

    Required Scope: social

    Import achievement configuration from file. It will merge with existing achievement.
    Available import strategy:
    - leaveOut: if achievement with same key exist, the existing will be used and imported one will be ignored (default)
    - replace: if achievement with same key exist, the imported achievement will be used and existing one will be removed

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/import

        method: POST

        tags: ["Achievements"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        strategy: (strategy) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServiceImportConfigResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportAchievements.create(
        file=file,
        strategy=strategy,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetAchievement)
def public_get_achievement(
    achievement_code: str,
    language: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an achievement (PublicGetAchievement)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ModelsPublicAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAchievement.create(
        achievement_code=achievement_code,
        language=language,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetAchievement)
async def public_get_achievement_async(
    achievement_code: str,
    language: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an achievement (PublicGetAchievement)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ModelsPublicAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAchievement.create(
        achievement_code=achievement_code,
        language=language,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListAchievements)
def public_list_achievements(
    language: str,
    global_: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListAchievementsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query achievements (PublicListAchievements)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/achievements

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        global_: (global) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ModelsPublicAchievementsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListAchievements.create(
        language=language,
        global_=global_,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListAchievements)
async def public_list_achievements_async(
    language: str,
    global_: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListAchievementsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query achievements (PublicListAchievements)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/achievements

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        global_: (global) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ModelsPublicAchievementsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListAchievements.create(
        language=language,
        global_=global_,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
