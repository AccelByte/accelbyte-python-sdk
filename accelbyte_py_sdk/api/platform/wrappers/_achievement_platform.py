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

from ..models import ADTOObjectForQueryingXboxUserAchievements
from ..models import ADTOObjectForUnlockSteamAchievementAPI
from ..models import ADTOObjectForUpdateXboxAchievementCompletePercentageAPI
from ..models import ErrorEntity
from ..models import ValidationErrorEntity

from ..operations.achievement_platform import GetXblUserAchievements
from ..operations.achievement_platform import UnlockSteamUserAchievement
from ..operations.achievement_platform import UpdateXblUserAchievement


@same_doc_as(GetXblUserAchievements)
def get_xbl_user_achievements(
    user_id: str,
    xbox_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetXblUserAchievements.create(
        user_id=user_id,
        xbox_user_id=xbox_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetXblUserAchievements)
async def get_xbl_user_achievements_async(
    user_id: str,
    xbox_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetXblUserAchievements.create(
        user_id=user_id,
        xbox_user_id=xbox_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnlockSteamUserAchievement)
def unlock_steam_user_achievement(
    user_id: str,
    body: Optional[ADTOObjectForUnlockSteamAchievementAPI] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UnlockSteamUserAchievement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnlockSteamUserAchievement)
async def unlock_steam_user_achievement_async(
    user_id: str,
    body: Optional[ADTOObjectForUnlockSteamAchievementAPI] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UnlockSteamUserAchievement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXblUserAchievement)
def update_xbl_user_achievement(
    user_id: str,
    body: Optional[ADTOObjectForUpdateXboxAchievementCompletePercentageAPI] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateXblUserAchievement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXblUserAchievement)
async def update_xbl_user_achievement_async(
    user_id: str,
    body: Optional[ADTOObjectForUpdateXboxAchievementCompletePercentageAPI] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateXblUserAchievement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
