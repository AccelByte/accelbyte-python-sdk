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

from ..models import ErrorEntity
from ..models import SteamAchievementUpdateRequest
from ..models import ValidationErrorEntity
from ..models import XblAchievementUpdateRequest
from ..models import XblUserAchievements

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
    """Get xbox live user achievements. (getXblUserAchievements)

    This API is used to get xbox live user achievements(Only for test).

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl

        method: GET

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        xbox_user_id: (xboxUserId) REQUIRED str in query

    Responses:
        200: OK - XblUserAchievements (OK)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get xbox live user achievements. (getXblUserAchievements)

    This API is used to get xbox live user achievements(Only for test).

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl

        method: GET

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        xbox_user_id: (xboxUserId) REQUIRED str in query

    Responses:
        200: OK - XblUserAchievements (OK)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: SteamAchievementUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unlock steam achievement. (unlockSteamUserAchievement)

    This API is used to unlock steam achievement.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam

        method: PUT

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamAchievementUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (39244: Steam config does not exist | 39245: Steam app id does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnlockSteamUserAchievement.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnlockSteamUserAchievement)
async def unlock_steam_user_achievement_async(
    body: SteamAchievementUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unlock steam achievement. (unlockSteamUserAchievement)

    This API is used to unlock steam achievement.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam

        method: PUT

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamAchievementUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (39244: Steam config does not exist | 39245: Steam app id does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnlockSteamUserAchievement.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXblUserAchievement)
def update_xbl_user_achievement(
    body: XblAchievementUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xbox live achievements. (updateXblUserAchievement)

    This API is used to update xbox live achievements.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl

        method: PUT

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XblAchievementUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblUserAchievement.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXblUserAchievement)
async def update_xbl_user_achievement_async(
    body: XblAchievementUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xbox live achievements. (updateXblUserAchievement)

    This API is used to update xbox live achievements.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl

        method: PUT

        tags: ["Achievement(Platform)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XblAchievementUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblUserAchievement.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
