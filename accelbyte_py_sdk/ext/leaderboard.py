# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.15.9)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

from .utils import randomize

from ..api.leaderboard.models import ModelsArchiveLeaderboardReq
from ..api.leaderboard.models import ModelsArchiveLeaderboardSignedURLResponse
from ..api.leaderboard.models import ModelsDailyConfig
from ..api.leaderboard.models import ModelsDeleteBulkLeaderboardFailedResp
from ..api.leaderboard.models import ModelsDeleteBulkLeaderboardsReq
from ..api.leaderboard.models import ModelsDeleteBulkLeaderboardsResp
from ..api.leaderboard.models import ModelsGetAllLeaderboardConfigsPublicResp
from ..api.leaderboard.models import ModelsGetAllLeaderboardConfigsResp
from ..api.leaderboard.models import ModelsGetAllUserLeaderboardsResp
from ..api.leaderboard.models import ModelsGetHiddenUserResponse
from ..api.leaderboard.models import ModelsGetLeaderboardConfigPublicResp
from ..api.leaderboard.models import ModelsGetLeaderboardConfigResp
from ..api.leaderboard.models import ModelsGetLeaderboardRankingResp
from ..api.leaderboard.models import ModelsGetUserVisibilityResponse
from ..api.leaderboard.models import ModelsLeaderboardConfigReq
from ..api.leaderboard.models import ModelsMonthlyConfig
from ..api.leaderboard.models import ModelsPagination
from ..api.leaderboard.models import ModelsSetUserVisibilityRequest
from ..api.leaderboard.models import ModelsUpdateLeaderboardConfigReq
from ..api.leaderboard.models import ModelsUpdateUserPointAdminV1Request
from ..api.leaderboard.models import ModelsUpdateUserPointAdminV1Response
from ..api.leaderboard.models import ModelsUserLeaderboardRanking
from ..api.leaderboard.models import ModelsUserPoint
from ..api.leaderboard.models import ModelsUserRankingResponse
from ..api.leaderboard.models import ModelsUserRankingResponseDetail
from ..api.leaderboard.models import ModelsWeeklyConfig
from ..api.leaderboard.models import ResponseErrorResponse
from ..api.leaderboard.models import V2Entry
from ..api.leaderboard.models import V2GetAllLeaderboardConfigsPublicResp
from ..api.leaderboard.models import V2GetLeaderboardConfigPublicResp
from ..api.leaderboard.models import V2GetPublicLeaderboardRankingResponse
from ..api.leaderboard.models import V2Pagination


def create_models_archive_leaderboard_req_example() -> ModelsArchiveLeaderboardReq:
    instance = ModelsArchiveLeaderboardReq()
    instance.leaderboard_codes = [randomize()]
    instance.limit = randomize("int", min_val=1, max_val=1000)
    instance.slug = randomize()
    return instance


def create_models_archive_leaderboard_signed_url_response_example() -> ModelsArchiveLeaderboardSignedURLResponse:
    instance = ModelsArchiveLeaderboardSignedURLResponse()
    instance.leaderboard_code = randomize()
    instance.url = randomize("url")
    return instance


def create_models_daily_config_example() -> ModelsDailyConfig:
    instance = ModelsDailyConfig()
    instance.reset_time = randomize()
    return instance


def create_models_delete_bulk_leaderboard_failed_resp_example() -> ModelsDeleteBulkLeaderboardFailedResp:
    instance = ModelsDeleteBulkLeaderboardFailedResp()
    instance.error = randomize()
    instance.leaderboard_code = randomize()
    return instance


def create_models_delete_bulk_leaderboards_req_example() -> ModelsDeleteBulkLeaderboardsReq:
    instance = ModelsDeleteBulkLeaderboardsReq()
    instance.leaderboard_codes = [randomize()]
    return instance


def create_models_delete_bulk_leaderboards_resp_example() -> ModelsDeleteBulkLeaderboardsResp:
    instance = ModelsDeleteBulkLeaderboardsResp()
    instance.failed = [create_models_delete_bulk_leaderboard_failed_resp_example()]
    return instance


def create_models_get_all_leaderboard_configs_public_resp_example() -> ModelsGetAllLeaderboardConfigsPublicResp:
    instance = ModelsGetAllLeaderboardConfigsPublicResp()
    instance.data = [create_models_get_leaderboard_config_public_resp_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_all_leaderboard_configs_resp_example() -> ModelsGetAllLeaderboardConfigsResp:
    instance = ModelsGetAllLeaderboardConfigsResp()
    instance.data = [create_models_get_leaderboard_config_resp_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_all_user_leaderboards_resp_example() -> ModelsGetAllUserLeaderboardsResp:
    instance = ModelsGetAllUserLeaderboardsResp()
    instance.data = [create_models_user_leaderboard_ranking_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_hidden_user_response_example() -> ModelsGetHiddenUserResponse:
    instance = ModelsGetHiddenUserResponse()
    instance.data = [randomize()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_leaderboard_config_public_resp_example() -> ModelsGetLeaderboardConfigPublicResp:
    instance = ModelsGetLeaderboardConfigPublicResp()
    instance.icon_url = randomize("url")
    instance.leaderboard_code = randomize()
    instance.name = randomize()
    instance.stat_code = randomize()
    return instance


def create_models_get_leaderboard_config_resp_example() -> ModelsGetLeaderboardConfigResp:
    instance = ModelsGetLeaderboardConfigResp()
    instance.daily = create_models_daily_config_example()
    instance.descending = randomize("bool")
    instance.icon_url = randomize("url")
    instance.is_archived = randomize("bool")
    instance.is_deleted = randomize("bool")
    instance.leaderboard_code = randomize()
    instance.monthly = create_models_monthly_config_example()
    instance.name = randomize()
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize()
    instance.stat_code = randomize()
    instance.weekly = create_models_weekly_config_example()
    instance.deleted_at = randomize("date")
    return instance


def create_models_get_leaderboard_ranking_resp_example() -> ModelsGetLeaderboardRankingResp:
    instance = ModelsGetLeaderboardRankingResp()
    instance.data = [create_models_user_point_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_user_visibility_response_example() -> ModelsGetUserVisibilityResponse:
    instance = ModelsGetUserVisibilityResponse()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.visibility = randomize("bool")
    return instance


def create_models_leaderboard_config_req_example() -> ModelsLeaderboardConfigReq:
    instance = ModelsLeaderboardConfigReq()
    instance.daily = create_models_daily_config_example()
    instance.descending = randomize("bool")
    instance.icon_url = randomize("url")
    instance.leaderboard_code = randomize()
    instance.monthly = create_models_monthly_config_example()
    instance.name = randomize()
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize()
    instance.stat_code = randomize()
    instance.weekly = create_models_weekly_config_example()
    return instance


def create_models_monthly_config_example() -> ModelsMonthlyConfig:
    instance = ModelsMonthlyConfig()
    instance.reset_date = randomize("int", min_val=1, max_val=1000)
    instance.reset_time = randomize()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_set_user_visibility_request_example() -> ModelsSetUserVisibilityRequest:
    instance = ModelsSetUserVisibilityRequest()
    instance.visibility = randomize("bool")
    return instance


def create_models_update_leaderboard_config_req_example() -> ModelsUpdateLeaderboardConfigReq:
    instance = ModelsUpdateLeaderboardConfigReq()
    instance.daily = create_models_daily_config_example()
    instance.descending = randomize("bool")
    instance.icon_url = randomize("url")
    instance.monthly = create_models_monthly_config_example()
    instance.name = randomize()
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize()
    instance.stat_code = randomize()
    instance.weekly = create_models_weekly_config_example()
    return instance


def create_models_update_user_point_admin_v1_request_example() -> ModelsUpdateUserPointAdminV1Request:
    instance = ModelsUpdateUserPointAdminV1Request()
    instance.inc = randomize("int", min_val=1, max_val=1000)
    instance.latest_value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_user_point_admin_v1_response_example() -> ModelsUpdateUserPointAdminV1Response:
    instance = ModelsUpdateUserPointAdminV1Response()
    instance.point = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    return instance


def create_models_user_leaderboard_ranking_example() -> ModelsUserLeaderboardRanking:
    instance = ModelsUserLeaderboardRanking()
    instance.all_time = create_models_user_ranking_response_detail_example()
    instance.current = create_models_user_ranking_response_detail_example()
    instance.daily = create_models_user_ranking_response_detail_example()
    instance.leaderboard_code = randomize()
    instance.leaderboard_name = randomize()
    instance.monthly = create_models_user_ranking_response_detail_example()
    instance.user_id = randomize("uid")
    instance.weekly = create_models_user_ranking_response_detail_example()
    return instance


def create_models_user_point_example() -> ModelsUserPoint:
    instance = ModelsUserPoint()
    instance.additional_data = {randomize(): randomize()}
    instance.point = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    instance.hidden = randomize("bool")
    return instance


def create_models_user_ranking_response_example() -> ModelsUserRankingResponse:
    instance = ModelsUserRankingResponse()
    instance.all_time = create_models_user_ranking_response_detail_example()
    instance.current = create_models_user_ranking_response_detail_example()
    instance.daily = create_models_user_ranking_response_detail_example()
    instance.monthly = create_models_user_ranking_response_detail_example()
    instance.user_id = randomize("uid")
    instance.weekly = create_models_user_ranking_response_detail_example()
    return instance


def create_models_user_ranking_response_detail_example() -> ModelsUserRankingResponseDetail:
    instance = ModelsUserRankingResponseDetail()
    instance.additional_data = {randomize(): randomize()}
    instance.point = randomize("int", min_val=1, max_val=1000)
    instance.rank = randomize("int", min_val=1, max_val=1000)
    instance.hidden = randomize("bool")
    return instance


def create_models_weekly_config_example() -> ModelsWeeklyConfig:
    instance = ModelsWeeklyConfig()
    instance.reset_day = randomize("int", min_val=1, max_val=1000)
    instance.reset_time = randomize()
    return instance


def create_response_error_response_example() -> ResponseErrorResponse:
    instance = ResponseErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_v2_entry_example() -> V2Entry:
    instance = V2Entry()
    instance.point = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    instance.hidden = randomize("bool")
    return instance


def create_v2_get_all_leaderboard_configs_public_resp_example() -> V2GetAllLeaderboardConfigsPublicResp:
    instance = V2GetAllLeaderboardConfigsPublicResp()
    instance.data = [create_v2_get_leaderboard_config_public_resp_example()]
    instance.paging = create_v2_pagination_example()
    return instance


def create_v2_get_leaderboard_config_public_resp_example() -> V2GetLeaderboardConfigPublicResp:
    instance = V2GetLeaderboardConfigPublicResp()
    instance.icon_url = randomize("url")
    instance.leaderboard_code = randomize()
    instance.name = randomize()
    instance.stat_code = randomize()
    return instance


def create_v2_get_public_leaderboard_ranking_response_example() -> V2GetPublicLeaderboardRankingResponse:
    instance = V2GetPublicLeaderboardRankingResponse()
    instance.data = [create_v2_entry_example()]
    instance.paging = create_v2_pagination_example()
    return instance


def create_v2_pagination_example() -> V2Pagination:
    instance = V2Pagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance
