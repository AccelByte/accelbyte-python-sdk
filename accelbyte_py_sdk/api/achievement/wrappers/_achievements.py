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

from ..models import ModelsAchievement
from ..models import ModelsAchievementOrderUpdateRequest
from ..models import ModelsAchievementRequest
from ..models import ModelsAchievementResponse
from ..models import ModelsAchievementUpdateRequest
from ..models import ModelsPaginatedAchievementResponse
from ..models import ModelsPaginatedUserAchievementResponse
from ..models import ModelsPublicAchievementResponse
from ..models import ModelsPublicAchievementsResponse
from ..models import ResponseError
from ..models import ServiceImportConfigResponse

from ..operations.achievements import AdminCreateNewAchievement
from ..operations.achievements import AdminDeleteAchievement
from ..operations.achievements import AdminGetAchievement
from ..operations.achievements import AdminListAchievements
from ..operations.achievements import AdminListAchievementsSortByEnum
from ..operations.achievements import AdminListUserAchievements
from ..operations.achievements import AdminResetAchievement
from ..operations.achievements import AdminUnlockAchievement
from ..operations.achievements import AdminUpdateAchievement
from ..operations.achievements import AdminUpdateAchievementListOrder
from ..operations.achievements import ExportAchievements
from ..operations.achievements import ImportAchievements
from ..operations.achievements import PublicGetAchievement
from ..operations.achievements import PublicListAchievements
from ..operations.achievements import PublicListAchievementsSortByEnum
from ..operations.achievements import PublicListUserAchievements
from ..operations.achievements import PublicUnlockAchievement


@same_doc_as(AdminCreateNewAchievement)
def admin_create_new_achievement(
    body: ModelsAchievementRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListAchievementsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAchievements.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAchievements)
async def admin_list_achievements_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListAchievementsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListAchievements.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserAchievements)
def admin_list_user_achievements(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    prefer_unlocked: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListUserAchievements.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        prefer_unlocked=prefer_unlocked,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserAchievements)
async def admin_list_user_achievements_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    prefer_unlocked: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListUserAchievements.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        prefer_unlocked=prefer_unlocked,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetAchievement)
def admin_reset_achievement(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminResetAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetAchievement)
async def admin_reset_achievement_async(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminResetAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUnlockAchievement)
def admin_unlock_achievement(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUnlockAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUnlockAchievement)
async def admin_unlock_achievement_async(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUnlockAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportAchievements.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportAchievements)
async def export_achievements_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportAchievements.create(
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListAchievementsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListAchievements.create(
        language=language,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListAchievements)
async def public_list_achievements_async(
    language: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListAchievementsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListAchievements.create(
        language=language,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListUserAchievements)
def public_list_user_achievements(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    prefer_unlocked: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListUserAchievements.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        prefer_unlocked=prefer_unlocked,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListUserAchievements)
async def public_list_user_achievements_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    prefer_unlocked: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListUserAchievements.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        prefer_unlocked=prefer_unlocked,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUnlockAchievement)
def public_unlock_achievement(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUnlockAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUnlockAchievement)
async def public_unlock_achievement_async(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUnlockAchievement.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
