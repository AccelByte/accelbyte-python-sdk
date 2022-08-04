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

from ..models import ModelsArchiveLeaderboardReq
from ..models import ModelsArchiveLeaderboardSignedURLResponse
from ..models import ModelsGetLeaderboardRankingResp
from ..models import ModelsUpdateUserPointAdminV1Request
from ..models import ModelsUpdateUserPointAdminV1Response
from ..models import ModelsUserRankingResponse
from ..models import ResponseErrorResponse
from ..models import V2GetPublicLeaderboardRankingResponse

from ..operations.leaderboard_data import (
    AdminGetArchivedLeaderboardRankingDataV1Handler,
)
from ..operations.leaderboard_data import CreateArchivedLeaderboardRankingDataV1Handler
from ..operations.leaderboard_data import DeleteUserRankingAdminV1
from ..operations.leaderboard_data import DeleteUserRankingPublicV1
from ..operations.leaderboard_data import DeleteUserRankingsAdminV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingPublicV2
from ..operations.leaderboard_data import GetArchivedLeaderboardRankingDataV1Handler
from ..operations.leaderboard_data import GetCurrentMonthLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentMonthLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetCurrentSeasonLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentSeasonLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetCurrentWeekLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentWeekLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetTodayLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetTodayLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetUserRankingAdminV1
from ..operations.leaderboard_data import GetUserRankingPublicV1
from ..operations.leaderboard_data import UpdateUserPointAdminV1


@same_doc_as(AdminGetArchivedLeaderboardRankingDataV1Handler)
def admin_get_archived_leaderboard_ranking_data_v1_handler(
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetArchivedLeaderboardRankingDataV1Handler)
async def admin_get_archived_leaderboard_ranking_data_v1_handler_async(
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateArchivedLeaderboardRankingDataV1Handler)
def create_archived_leaderboard_ranking_data_v1_handler(
    body: ModelsArchiveLeaderboardReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateArchivedLeaderboardRankingDataV1Handler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateArchivedLeaderboardRankingDataV1Handler)
async def create_archived_leaderboard_ranking_data_v1_handler_async(
    body: ModelsArchiveLeaderboardReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateArchivedLeaderboardRankingDataV1Handler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingAdminV1)
def delete_user_ranking_admin_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingAdminV1)
async def delete_user_ranking_admin_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingPublicV1)
def delete_user_ranking_public_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingPublicV1)
async def delete_user_ranking_public_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingsAdminV1)
def delete_user_rankings_admin_v1(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingsAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingsAdminV1)
async def delete_user_rankings_admin_v1_async(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRankingsAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingAdminV1)
def get_all_time_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingAdminV1)
async def get_all_time_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingPublicV1)
def get_all_time_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingPublicV1)
async def get_all_time_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingPublicV2)
def get_all_time_leaderboard_ranking_public_v2(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingPublicV2)
async def get_all_time_leaderboard_ranking_public_v2_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetArchivedLeaderboardRankingDataV1Handler)
def get_archived_leaderboard_ranking_data_v1_handler(
    leaderboard_code: str,
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_code=leaderboard_code,
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetArchivedLeaderboardRankingDataV1Handler)
async def get_archived_leaderboard_ranking_data_v1_handler_async(
    leaderboard_code: str,
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_code=leaderboard_code,
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentMonthLeaderboardRankingAdminV1)
def get_current_month_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentMonthLeaderboardRankingAdminV1)
async def get_current_month_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentMonthLeaderboardRankingPublicV1)
def get_current_month_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentMonthLeaderboardRankingPublicV1)
async def get_current_month_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentSeasonLeaderboardRankingAdminV1)
def get_current_season_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentSeasonLeaderboardRankingAdminV1)
async def get_current_season_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentSeasonLeaderboardRankingPublicV1)
def get_current_season_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentSeasonLeaderboardRankingPublicV1)
async def get_current_season_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentWeekLeaderboardRankingAdminV1)
def get_current_week_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentWeekLeaderboardRankingAdminV1)
async def get_current_week_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentWeekLeaderboardRankingPublicV1)
def get_current_week_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentWeekLeaderboardRankingPublicV1)
async def get_current_week_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTodayLeaderboardRankingAdminV1)
def get_today_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTodayLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTodayLeaderboardRankingAdminV1)
async def get_today_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTodayLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTodayLeaderboardRankingPublicV1)
def get_today_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTodayLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTodayLeaderboardRankingPublicV1)
async def get_today_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetTodayLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingAdminV1)
def get_user_ranking_admin_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingAdminV1)
async def get_user_ranking_admin_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingPublicV1)
def get_user_ranking_public_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingPublicV1)
async def get_user_ranking_public_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserPointAdminV1)
def update_user_point_admin_v1(
    body: ModelsUpdateUserPointAdminV1Request,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserPointAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserPointAdminV1)
async def update_user_point_admin_v1_async(
    body: ModelsUpdateUserPointAdminV1Request,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserPointAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
