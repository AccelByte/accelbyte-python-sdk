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

from ..models import ModelsPaginatedContributorResponse
from ..models import ModelsPaginatedGlobalAchievementResponse
from ..models import ModelsPaginatedUserContributionResponse
from ..models import ResponseError

from ..operations.global_achievements import AdminListGlobalAchievementContributors
from ..operations.global_achievements import (
    AdminListGlobalAchievementContributorsSortByEnum,
)
from ..operations.global_achievements import AdminListGlobalAchievements
from ..operations.global_achievements import AdminListGlobalAchievementsSortByEnum
from ..operations.global_achievements import AdminListUserContributions
from ..operations.global_achievements import AdminListUserContributionsSortByEnum
from ..operations.global_achievements import ClaimGlobalAchievementReward
from ..operations.global_achievements import ListGlobalAchievementContributors
from ..operations.global_achievements import ListGlobalAchievementContributorsSortByEnum
from ..operations.global_achievements import ListUserContributions
from ..operations.global_achievements import ListUserContributionsSortByEnum
from ..operations.global_achievements import PublicListGlobalAchievements
from ..operations.global_achievements import PublicListGlobalAchievementsSortByEnum
from ..operations.global_achievements import ResetGlobalAchievement


@same_doc_as(AdminListGlobalAchievementContributors)
def admin_list_global_achievement_contributors(
    achievement_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[
        Union[str, AdminListGlobalAchievementContributorsSortByEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin list contributors of global achievement (AdminListGlobalAchievementContributors)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedContributorResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGlobalAchievementContributors.create(
        achievement_code=achievement_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListGlobalAchievementContributors)
async def admin_list_global_achievement_contributors_async(
    achievement_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[
        Union[str, AdminListGlobalAchievementContributorsSortByEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin list contributors of global achievement (AdminListGlobalAchievementContributors)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedContributorResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGlobalAchievementContributors.create(
        achievement_code=achievement_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListGlobalAchievements)
def admin_list_global_achievements(
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListGlobalAchievementsSortByEnum]] = None,
    status: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin query global achievements [include achieved and in-progress] (AdminListGlobalAchievements)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`




    Note:




    Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedGlobalAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGlobalAchievements.create(
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListGlobalAchievements)
async def admin_list_global_achievements_async(
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListGlobalAchievementsSortByEnum]] = None,
    status: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin query global achievements [include achieved and in-progress] (AdminListGlobalAchievements)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`




    Note:




    Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedGlobalAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListGlobalAchievements.create(
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserContributions)
def admin_list_user_contributions(
    user_id: str,
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListUserContributionsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin list of global achievements that has been contributed by the user (AdminListUserContributions)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedUserContributionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserContributions.create(
        user_id=user_id,
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserContributions)
async def admin_list_user_contributions_async(
    user_id: str,
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListUserContributionsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin list of global achievements that has been contributed by the user (AdminListUserContributions)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedUserContributionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserContributions.create(
        user_id=user_id,
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ClaimGlobalAchievementReward)
def claim_global_achievement_reward(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim global achievement reward (ClaimGlobalAchievementReward)

    Required permission
    `NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`




    Note:




    Global achievement should be unlocked to claim the reward. Only contributor of global achievement are eligible for rewards

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim

        method: POST

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClaimGlobalAchievementReward.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ClaimGlobalAchievementReward)
async def claim_global_achievement_reward_async(
    achievement_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim global achievement reward (ClaimGlobalAchievementReward)

    Required permission
    `NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`




    Note:




    Global achievement should be unlocked to claim the reward. Only contributor of global achievement are eligible for rewards

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim

        method: POST

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClaimGlobalAchievementReward.create(
        achievement_code=achievement_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListGlobalAchievementContributors)
def list_global_achievement_contributors(
    achievement_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, ListGlobalAchievementContributorsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contributors of global achievement (ListGlobalAchievementContributors)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedContributorResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGlobalAchievementContributors.create(
        achievement_code=achievement_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListGlobalAchievementContributors)
async def list_global_achievement_contributors_async(
    achievement_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, ListGlobalAchievementContributorsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contributors of global achievement (ListGlobalAchievementContributors)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedContributorResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGlobalAchievementContributors.create(
        achievement_code=achievement_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListUserContributions)
def list_user_contributions(
    user_id: str,
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, ListUserContributionsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List of global achievements that has been contributed by the user (ListUserContributions)

    Required permission
    `NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedUserContributionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserContributions.create(
        user_id=user_id,
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListUserContributions)
async def list_user_contributions_async(
    user_id: str,
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, ListUserContributionsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List of global achievements that has been contributed by the user (ListUserContributions)

    Required permission
    `NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedUserContributionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserContributions.create(
        user_id=user_id,
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListGlobalAchievements)
def public_list_global_achievements(
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListGlobalAchievementsSortByEnum]] = None,
    status: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query global achievements [include achieved and in-progress] (PublicListGlobalAchievements)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`




    Note:




    Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedGlobalAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListGlobalAchievements.create(
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListGlobalAchievements)
async def public_list_global_achievements_async(
    achievement_codes: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListGlobalAchievementsSortByEnum]] = None,
    status: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query global achievements [include achieved and in-progress] (PublicListGlobalAchievements)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`




    Note:




    Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/global/achievements

        method: GET

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        achievement_codes: (achievementCodes) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsPaginatedGlobalAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListGlobalAchievements.create(
        achievement_codes=achievement_codes,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetGlobalAchievement)
def reset_global_achievement(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset global achievement (ResetGlobalAchievement)

    [TEST FACILITY ONLY]




    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset

        method: DELETE

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetGlobalAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetGlobalAchievement)
async def reset_global_achievement_async(
    achievement_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset global achievement (ResetGlobalAchievement)

    [TEST FACILITY ONLY]




    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset

        method: DELETE

        tags: ["Global Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetGlobalAchievement.create(
        achievement_code=achievement_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
