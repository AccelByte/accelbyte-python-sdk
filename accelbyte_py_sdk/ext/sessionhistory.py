# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..api.sessionhistory.models import ApimodelsAcquiringDS
from ..api.sessionhistory.models import ApimodelsAcquiringDsWaitTime
from ..api.sessionhistory.models import ApimodelsCanceledMatchmakingTicket
from ..api.sessionhistory.models import ApimodelsCreatedMatchmakingTicket
from ..api.sessionhistory.models import ApimodelsEventMatchHistory
from ..api.sessionhistory.models import ApimodelsExpiredMatchmakingTicket
from ..api.sessionhistory.models import ApimodelsGameSessionDetail
from ..api.sessionhistory.models import ApimodelsGameSessionDetailQueryResponse
from ..api.sessionhistory.models import ApimodelsHistory
from ..api.sessionhistory.models import ApimodelsMatchLengthDuration
from ..api.sessionhistory.models import ApimodelsMatchMatchmaking
from ..api.sessionhistory.models import ApimodelsMatchMatchmakingTicket
from ..api.sessionhistory.models import ApimodelsMatchmakingDetail
from ..api.sessionhistory.models import ApimodelsMatchmakingDetailQueryResponse
from ..api.sessionhistory.models import ApimodelsMatchmakingHistory
from ..api.sessionhistory.models import ApimodelsPagination
from ..api.sessionhistory.models import ApimodelsPartyDetail
from ..api.sessionhistory.models import ApimodelsPartyDetailQueryResponse
from ..api.sessionhistory.models import ApimodelsPartyHistory
from ..api.sessionhistory.models import ApimodelsTicketDetailQueryResponse
from ..api.sessionhistory.models import ApimodelsTicketObservabilityDetail
from ..api.sessionhistory.models import ApimodelsTicketObservabilityHistory
from ..api.sessionhistory.models import ApimodelsTotalActiveSession
from ..api.sessionhistory.models import ApimodelsTotalPlayerPersession
from ..api.sessionhistory.models import ApimodelsXRayAcquiringDsQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayAcquiringDsWaitTimeQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayBulkTicketObservabilityRequest
from ..api.sessionhistory.models import ApimodelsXRayBulkTicketObservabilityResponse
from ..api.sessionhistory.models import (
    ApimodelsXRayCanceledMatchmakingTicketQueryResponse,
)
from ..api.sessionhistory.models import (
    ApimodelsXRayCreatedMatchmakingTicketQueryResponse,
)
from ..api.sessionhistory.models import (
    ApimodelsXRayExpiredMatchmakingTicketQueryResponse,
)
from ..api.sessionhistory.models import ApimodelsXRayMatchHistorQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchLengthDurationQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchMatchmakingQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchMatchmakingTicketQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolPodTickMatchResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolPodTickQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolPodTickResult
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolPodTickTicketResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchPoolResult
from ..api.sessionhistory.models import ApimodelsXRayMatchTicketHistory
from ..api.sessionhistory.models import ApimodelsXRayMatchTicketHistoryQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayMatchesQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayTicketMatchesResult
from ..api.sessionhistory.models import ApimodelsXRayTicketObservabilityRequest
from ..api.sessionhistory.models import ApimodelsXRayTicketObservabilityResponse
from ..api.sessionhistory.models import ApimodelsXRayTicketQueryResponse
from ..api.sessionhistory.models import ApimodelsXRayTicketResult
from ..api.sessionhistory.models import ApimodelsXRayTotalActiveSessionQueryResponse
from ..api.sessionhistory.models import (
    ApimodelsXRayTotalPlayerPersessionAVGQueryResponse,
)
from ..api.sessionhistory.models import EnvconfigConfiguration
from ..api.sessionhistory.models import LogconfigConfiguration
from ..api.sessionhistory.models import ModelsAllianceRule
from ..api.sessionhistory.models import ModelsBackfillProposal
from ..api.sessionhistory.models import ModelsBackfillTicket
from ..api.sessionhistory.models import ModelsDSInformation
from ..api.sessionhistory.models import ModelsGameServer
from ..api.sessionhistory.models import ModelsGameSession
from ..api.sessionhistory.models import ModelsGameSessionTeam
from ..api.sessionhistory.models import ModelsMatch
from ..api.sessionhistory.models import ModelsMatchTicket
from ..api.sessionhistory.models import ModelsMatchingAlly
from ..api.sessionhistory.models import ModelsMatchingParty
from ..api.sessionhistory.models import ModelsMatchingRule
from ..api.sessionhistory.models import ModelsMatchmakingResult
from ..api.sessionhistory.models import ModelsParty
from ..api.sessionhistory.models import ModelsPartyMember
from ..api.sessionhistory.models import ModelsPartyMembers
from ..api.sessionhistory.models import ModelsPartyTeam
from ..api.sessionhistory.models import ModelsPlayerData
from ..api.sessionhistory.models import ModelsProposedProposal
from ..api.sessionhistory.models import ModelsSessionConfig
from ..api.sessionhistory.models import ModelsSessionConfiguration
from ..api.sessionhistory.models import ModelsTeam
from ..api.sessionhistory.models import ModelsTicket
from ..api.sessionhistory.models import ModelsTicketData
from ..api.sessionhistory.models import ModelsTicketObservability
from ..api.sessionhistory.models import ModelsTicketStatus
from ..api.sessionhistory.models import ModelsUser
from ..api.sessionhistory.models import ResponseError


def create_apimodels_acquiring_ds_example() -> ApimodelsAcquiringDS:
    instance = ApimodelsAcquiringDS()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.success = randomize("bool")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_acquiring_ds_wait_time_example() -> ApimodelsAcquiringDsWaitTime:
    instance = ApimodelsAcquiringDsWaitTime()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_canceled_matchmaking_ticket_example() -> (
    ApimodelsCanceledMatchmakingTicket
):
    instance = ApimodelsCanceledMatchmakingTicket()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_created_matchmaking_ticket_example() -> (
    ApimodelsCreatedMatchmakingTicket
):
    instance = ApimodelsCreatedMatchmakingTicket()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_event_match_history_example() -> ApimodelsEventMatchHistory:
    instance = ApimodelsEventMatchHistory()
    instance.action = randomize()
    instance.match_id = randomize()
    instance.matchpool = randomize()
    instance.namespace = randomize("slug")
    instance.pod_name = randomize()
    instance.timestamp = randomize("date")
    instance.match = create_models_match_example()
    instance.rule_set = randomize()
    instance.tick_id = randomize()
    return instance


def create_apimodels_expired_matchmaking_ticket_example() -> (
    ApimodelsExpiredMatchmakingTicket
):
    instance = ApimodelsExpiredMatchmakingTicket()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_game_session_detail_example() -> ApimodelsGameSessionDetail:
    instance = ApimodelsGameSessionDetail()
    instance.active = randomize("bool")
    instance.created_at = randomize()
    instance.ended = randomize("bool")
    instance.histories = [create_apimodels_history_example()]
    instance.joinability = randomize()
    instance.last_data = create_models_game_session_example()
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.persistent = randomize("bool")
    instance.pod_name = randomize()
    instance.session_id = randomize("uid")
    instance.session_template = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_apimodels_game_session_detail_query_response_example() -> (
    ApimodelsGameSessionDetailQueryResponse
):
    instance = ApimodelsGameSessionDetailQueryResponse()
    instance.data = [create_apimodels_game_session_detail_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_history_example() -> ApimodelsHistory:
    instance = ApimodelsHistory()
    instance.event_name = randomize()
    instance.payload = create_models_game_session_example()
    instance.timestamp = randomize("date")
    instance.requester_client_id = randomize()
    instance.requester_user_id = randomize()
    return instance


def create_apimodels_match_length_duration_example() -> ApimodelsMatchLengthDuration:
    instance = ApimodelsMatchLengthDuration()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_match_matchmaking_example() -> ApimodelsMatchMatchmaking:
    instance = ApimodelsMatchMatchmaking()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_match_matchmaking_ticket_example() -> (
    ApimodelsMatchMatchmakingTicket
):
    instance = ApimodelsMatchMatchmakingTicket()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_matchmaking_detail_example() -> ApimodelsMatchmakingDetail:
    instance = ApimodelsMatchmakingDetail()
    instance.created_at = randomize("date")
    instance.expired_at = randomize("date")
    instance.game_session_id = randomize()
    instance.histories = [create_apimodels_matchmaking_history_example()]
    instance.match_pool = randomize()
    instance.match_rule = randomize()
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.ticket_id = randomize()
    return instance


def create_apimodels_matchmaking_detail_query_response_example() -> (
    ApimodelsMatchmakingDetailQueryResponse
):
    instance = ApimodelsMatchmakingDetailQueryResponse()
    instance.data = [create_apimodels_matchmaking_detail_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_matchmaking_history_example() -> ApimodelsMatchmakingHistory:
    instance = ApimodelsMatchmakingHistory()
    instance.backfill_proposal = create_models_backfill_proposal_example()
    instance.backfill_ticket = create_models_backfill_ticket_example()
    instance.event_name = randomize()
    instance.requested_user_id = randomize()
    instance.ticket = create_models_ticket_example()
    instance.timestamp = randomize("date")
    instance.unbackfill_reason = randomize()
    return instance


def create_apimodels_pagination_example() -> ApimodelsPagination:
    instance = ApimodelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_apimodels_party_detail_example() -> ApimodelsPartyDetail:
    instance = ApimodelsPartyDetail()
    instance.created_at = randomize("date")
    instance.histories = [create_apimodels_party_history_example()]
    instance.joinability = randomize()
    instance.last_data = create_models_party_example()
    instance.leader_id = randomize()
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.session_template = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_apimodels_party_detail_query_response_example() -> (
    ApimodelsPartyDetailQueryResponse
):
    instance = ApimodelsPartyDetailQueryResponse()
    instance.data = [create_apimodels_party_detail_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_party_history_example() -> ApimodelsPartyHistory:
    instance = ApimodelsPartyHistory()
    instance.event_name = randomize()
    instance.payload = create_models_party_example()
    instance.timestamp = randomize("date")
    instance.requester_client_id = randomize()
    instance.requester_user_id = randomize()
    return instance


def create_apimodels_ticket_detail_query_response_example() -> (
    ApimodelsTicketDetailQueryResponse
):
    instance = ApimodelsTicketDetailQueryResponse()
    instance.data = [create_apimodels_ticket_observability_detail_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_ticket_observability_detail_example() -> (
    ApimodelsTicketObservabilityDetail
):
    instance = ApimodelsTicketObservabilityDetail()
    instance.action = randomize()
    instance.created_at = randomize("date")
    instance.expired_at = randomize("date")
    instance.game_mode = randomize()
    instance.match_id = randomize()
    instance.namespace = randomize("slug")
    instance.party_id = randomize("uid")
    instance.regions = randomize()
    instance.remaining_tickets = randomize("int", min_val=1, max_val=1000)
    instance.ticket_id = randomize()
    instance.updated_at = randomize("date")
    instance.history = [create_apimodels_ticket_observability_history_example()]
    instance.last_data = create_models_ticket_observability_example()
    instance.remaining_players_per_ticket = [randomize("int", min_val=1, max_val=1000)]
    instance.requested_region = [randomize()]
    instance.ticket = create_models_ticket_example()
    instance.time_to_match_sec = randomize("int", min_val=1, max_val=1000)
    instance.user_i_ds = [randomize()]
    return instance


def create_apimodels_ticket_observability_history_example() -> (
    ApimodelsTicketObservabilityHistory
):
    instance = ApimodelsTicketObservabilityHistory()
    instance.action = randomize()
    instance.expired_at = randomize("date")
    instance.id_ = randomize()
    instance.party_id = randomize("uid")
    instance.payload = {randomize(): randomize()}
    instance.pod_name = randomize()
    instance.tick_id = randomize("int", min_val=1, max_val=1000)
    instance.ticket_id = randomize()
    instance.timestamp = randomize("date")
    return instance


def create_apimodels_total_active_session_example() -> ApimodelsTotalActiveSession:
    instance = ApimodelsTotalActiveSession()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_total_player_persession_example() -> (
    ApimodelsTotalPlayerPersession
):
    instance = ApimodelsTotalPlayerPersession()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_x_ray_acquiring_ds_query_response_example() -> (
    ApimodelsXRayAcquiringDsQueryResponse
):
    instance = ApimodelsXRayAcquiringDsQueryResponse()
    instance.data = [create_apimodels_acquiring_ds_example()]
    return instance


def create_apimodels_x_ray_acquiring_ds_wait_time_query_response_example() -> (
    ApimodelsXRayAcquiringDsWaitTimeQueryResponse
):
    instance = ApimodelsXRayAcquiringDsWaitTimeQueryResponse()
    instance.data = [create_apimodels_acquiring_ds_wait_time_example()]
    return instance


def create_apimodels_x_ray_bulk_ticket_observability_request_example() -> (
    ApimodelsXRayBulkTicketObservabilityRequest
):
    instance = ApimodelsXRayBulkTicketObservabilityRequest()
    instance.ticket_observabilities = [
        create_apimodels_x_ray_ticket_observability_request_example()
    ]
    return instance


def create_apimodels_x_ray_bulk_ticket_observability_response_example() -> (
    ApimodelsXRayBulkTicketObservabilityResponse
):
    instance = ApimodelsXRayBulkTicketObservabilityResponse()
    instance.ticket_i_ds = [randomize()]
    return instance


def create_apimodels_x_ray_canceled_matchmaking_ticket_query_response_example() -> (
    ApimodelsXRayCanceledMatchmakingTicketQueryResponse
):
    instance = ApimodelsXRayCanceledMatchmakingTicketQueryResponse()
    instance.data = [create_apimodels_canceled_matchmaking_ticket_example()]
    return instance


def create_apimodels_x_ray_created_matchmaking_ticket_query_response_example() -> (
    ApimodelsXRayCreatedMatchmakingTicketQueryResponse
):
    instance = ApimodelsXRayCreatedMatchmakingTicketQueryResponse()
    instance.data = [create_apimodels_created_matchmaking_ticket_example()]
    return instance


def create_apimodels_x_ray_expired_matchmaking_ticket_query_response_example() -> (
    ApimodelsXRayExpiredMatchmakingTicketQueryResponse
):
    instance = ApimodelsXRayExpiredMatchmakingTicketQueryResponse()
    instance.data = [create_apimodels_expired_matchmaking_ticket_example()]
    return instance


def create_apimodels_x_ray_match_histor_query_response_example() -> (
    ApimodelsXRayMatchHistorQueryResponse
):
    instance = ApimodelsXRayMatchHistorQueryResponse()
    instance.data = [create_apimodels_event_match_history_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_x_ray_match_length_duration_query_response_example() -> (
    ApimodelsXRayMatchLengthDurationQueryResponse
):
    instance = ApimodelsXRayMatchLengthDurationQueryResponse()
    instance.data = [create_apimodels_match_length_duration_example()]
    return instance


def create_apimodels_x_ray_match_matchmaking_query_response_example() -> (
    ApimodelsXRayMatchMatchmakingQueryResponse
):
    instance = ApimodelsXRayMatchMatchmakingQueryResponse()
    instance.data = [create_apimodels_match_matchmaking_example()]
    return instance


def create_apimodels_x_ray_match_matchmaking_ticket_query_response_example() -> (
    ApimodelsXRayMatchMatchmakingTicketQueryResponse
):
    instance = ApimodelsXRayMatchMatchmakingTicketQueryResponse()
    instance.data = [create_apimodels_match_matchmaking_ticket_example()]
    return instance


def create_apimodels_x_ray_match_pool_pod_tick_match_response_example() -> (
    ApimodelsXRayMatchPoolPodTickMatchResponse
):
    instance = ApimodelsXRayMatchPoolPodTickMatchResponse()
    instance.data = [create_apimodels_event_match_history_example()]
    return instance


def create_apimodels_x_ray_match_pool_pod_tick_query_response_example() -> (
    ApimodelsXRayMatchPoolPodTickQueryResponse
):
    instance = ApimodelsXRayMatchPoolPodTickQueryResponse()
    instance.data = [create_apimodels_x_ray_match_pool_pod_tick_result_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_x_ray_match_pool_pod_tick_result_example() -> (
    ApimodelsXRayMatchPoolPodTickResult
):
    instance = ApimodelsXRayMatchPoolPodTickResult()
    instance.pod_name = randomize()
    instance.tick_id = randomize()
    instance.timestamp = randomize("date")
    instance.total_match_backfilled = randomize("int", min_val=1, max_val=1000)
    instance.total_match_created = randomize("int", min_val=1, max_val=1000)
    instance.total_match_to_backfill = randomize("int", min_val=1, max_val=1000)
    instance.total_ticket_backfilled = randomize("int", min_val=1, max_val=1000)
    instance.total_ticket_for_backfill = randomize("int", min_val=1, max_val=1000)
    instance.total_ticket_for_match = randomize("int", min_val=1, max_val=1000)
    instance.total_ticket_in_queue = randomize("int", min_val=1, max_val=1000)
    instance.total_ticket_matched = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_x_ray_match_pool_pod_tick_ticket_response_example() -> (
    ApimodelsXRayMatchPoolPodTickTicketResponse
):
    instance = ApimodelsXRayMatchPoolPodTickTicketResponse()
    instance.data = [create_models_ticket_status_example()]
    return instance


def create_apimodels_x_ray_match_pool_query_response_example() -> (
    ApimodelsXRayMatchPoolQueryResponse
):
    instance = ApimodelsXRayMatchPoolQueryResponse()
    instance.data = [create_apimodels_x_ray_match_pool_result_example()]
    return instance


def create_apimodels_x_ray_match_pool_result_example() -> ApimodelsXRayMatchPoolResult:
    instance = ApimodelsXRayMatchPoolResult()
    instance.pod_name = randomize()
    return instance


def create_apimodels_x_ray_match_ticket_history_example() -> (
    ApimodelsXRayMatchTicketHistory
):
    instance = ApimodelsXRayMatchTicketHistory()
    instance.action = randomize()
    instance.timestamp = randomize("date")
    instance.match = create_apimodels_event_match_history_example()
    instance.ticket = create_models_ticket_example()
    return instance


def create_apimodels_x_ray_match_ticket_history_query_response_example() -> (
    ApimodelsXRayMatchTicketHistoryQueryResponse
):
    instance = ApimodelsXRayMatchTicketHistoryQueryResponse()
    instance.data = [create_apimodels_x_ray_match_ticket_history_example()]
    return instance


def create_apimodels_x_ray_matches_query_response_example() -> (
    ApimodelsXRayMatchesQueryResponse
):
    instance = ApimodelsXRayMatchesQueryResponse()
    instance.data = [create_apimodels_x_ray_ticket_matches_result_example()]
    return instance


def create_apimodels_x_ray_ticket_matches_result_example() -> (
    ApimodelsXRayTicketMatchesResult
):
    instance = ApimodelsXRayTicketMatchesResult()
    instance.actual_time_to_match = randomize()
    instance.created_at = randomize("date")
    instance.is_pivot = randomize("bool")
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.matched_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.players = [create_models_player_data_example()]
    instance.proposed_proposal = create_models_proposed_proposal_example()
    instance.region_preference = [randomize()]
    instance.ticket_attributes = {randomize(): randomize()}
    instance.ticket_id = randomize()
    instance.time_to_match = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_x_ray_ticket_observability_request_example() -> (
    ApimodelsXRayTicketObservabilityRequest
):
    instance = ApimodelsXRayTicketObservabilityRequest()
    instance.action = randomize()
    instance.game_mode = randomize()
    instance.is_backfill_match = randomize("bool")
    instance.is_rule_set_flexed = randomize("bool")
    instance.namespace = randomize("slug")
    instance.session_tick_id = randomize()
    instance.tick_id = randomize("int", min_val=1, max_val=1000)
    instance.ticket_id = randomize()
    instance.timestamp = randomize("date")
    instance.active_alliance_rule = create_models_alliance_rule_example()
    instance.active_matching_rule = [create_models_matching_rule_example()]
    instance.function = randomize()
    instance.iteration = randomize("int", min_val=1, max_val=1000)
    instance.match_id = randomize()
    instance.remaining_players_per_ticket = [randomize("int", min_val=1, max_val=1000)]
    instance.remaining_tickets = randomize("int", min_val=1, max_val=1000)
    instance.time_to_match_sec = randomize("int", min_val=1, max_val=1000)
    instance.unbackfill_reason = randomize()
    instance.unmatch_reason = randomize()
    return instance


def create_apimodels_x_ray_ticket_observability_response_example() -> (
    ApimodelsXRayTicketObservabilityResponse
):
    instance = ApimodelsXRayTicketObservabilityResponse()
    instance.ticket_id = randomize()
    return instance


def create_apimodels_x_ray_ticket_query_response_example() -> (
    ApimodelsXRayTicketQueryResponse
):
    instance = ApimodelsXRayTicketQueryResponse()
    instance.data = [create_apimodels_x_ray_ticket_result_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_x_ray_ticket_result_example() -> ApimodelsXRayTicketResult:
    instance = ApimodelsXRayTicketResult()
    instance.elapsed_time = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.matchpool = randomize()
    instance.pod_name = randomize()
    instance.reason = randomize()
    instance.region = randomize()
    instance.tick_id = randomize()
    instance.ticket_id = randomize()
    instance.ticket_status = randomize()
    instance.timestamp = randomize("date")
    instance.is_backfill = randomize("bool")
    instance.is_pivot = randomize("bool")
    instance.member_attributes = {randomize(): randomize()}
    instance.total_players = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_x_ray_total_active_session_query_response_example() -> (
    ApimodelsXRayTotalActiveSessionQueryResponse
):
    instance = ApimodelsXRayTotalActiveSessionQueryResponse()
    instance.data = [create_apimodels_total_active_session_example()]
    return instance


def create_apimodels_x_ray_total_player_persession_avg_query_response_example() -> (
    ApimodelsXRayTotalPlayerPersessionAVGQueryResponse
):
    instance = ApimodelsXRayTotalPlayerPersessionAVGQueryResponse()
    instance.data = [create_apimodels_total_player_persession_example()]
    return instance


def create_envconfig_configuration_example() -> EnvconfigConfiguration:
    instance = EnvconfigConfiguration()
    instance.session_deletion_grace_period = randomize("int", min_val=1, max_val=1000)
    return instance


def create_logconfig_configuration_example() -> LogconfigConfiguration:
    instance = LogconfigConfiguration()
    instance.log_level = randomize()
    return instance


def create_models_alliance_rule_example() -> ModelsAllianceRule:
    instance = ModelsAllianceRule()
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_backfill_proposal_example() -> ModelsBackfillProposal:
    instance = ModelsBackfillProposal()
    instance.added_tickets = [create_models_ticket_example()]
    instance.backfill_ticket_id = randomize()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.match_session_id = randomize()
    instance.proposal_id = randomize()
    instance.proposed_teams = [create_models_team_example()]
    return instance


def create_models_backfill_ticket_example() -> ModelsBackfillTicket:
    instance = ModelsBackfillTicket()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.match_session_id = randomize()
    instance.match_session_version = randomize("int", min_val=1, max_val=1000)
    instance.partial_match = create_models_match_example()
    instance.ticket_id = randomize()
    return instance


def create_models_ds_information_example() -> ModelsDSInformation:
    instance = ModelsDSInformation()
    instance.requested_at = randomize()
    instance.server = create_models_game_server_example()
    instance.status = randomize()
    instance.status_v2 = randomize()
    return instance


def create_models_game_server_example() -> ModelsGameServer:
    instance = ModelsGameServer()
    instance.alternate_ips = [randomize()]
    instance.custom_attribute = randomize()
    instance.deployment = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.is_override_game_version = randomize("bool")
    instance.last_update = randomize("date")
    instance.namespace = randomize("slug")
    instance.pod_name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.provider = randomize()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.status = randomize()
    return instance


def create_models_game_session_example() -> ModelsGameSession:
    instance = ModelsGameSession()
    instance.attributes = {randomize(): randomize()}
    instance.backfill_ticket_id = randomize()
    instance.code = randomize()
    instance.configuration = create_models_session_config_example()
    instance.configuration_name = randomize()
    instance.created_at = randomize()
    instance.created_by = randomize()
    instance.ds_information = create_models_ds_information_example()
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.is_active = randomize("bool")
    instance.is_full = randomize("bool")
    instance.leader_id = randomize()
    instance.match_pool = randomize()
    instance.members = [create_models_user_example()]
    instance.namespace = randomize("slug")
    instance.processing_time = randomize("int", min_val=1, max_val=1000)
    instance.teams = [create_models_game_session_team_example()]
    instance.ticket_i_ds = [randomize()]
    instance.updated_at = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_game_session_team_example() -> ModelsGameSessionTeam:
    instance = ModelsGameSessionTeam()
    instance.parties = [create_models_party_members_example()]
    instance.team_id = randomize()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_match_example() -> ModelsMatch:
    instance = ModelsMatch()
    instance.backfill = randomize("bool")
    instance.client_version = randomize()
    instance.match_attributes = {randomize(): randomize()}
    instance.pivot_id = randomize()
    instance.region_preference = [randomize()]
    instance.server_name = randomize()
    instance.teams = [create_models_team_example()]
    instance.tickets = [create_models_match_ticket_example()]
    instance.timestamp = randomize("date")
    return instance


def create_models_match_ticket_example() -> ModelsMatchTicket:
    instance = ModelsMatchTicket()
    instance.actual_time_to_match = randomize()
    instance.created_at = randomize("date")
    instance.is_pivot = randomize("bool")
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.matched_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.players = [create_models_player_data_example()]
    instance.proposed_proposal = create_models_proposed_proposal_example()
    instance.region_preference = [randomize()]
    instance.ticket_attributes = {randomize(): randomize()}
    instance.ticket_id = randomize()
    instance.time_to_match = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_matching_ally_example() -> ModelsMatchingAlly:
    instance = ModelsMatchingAlly()
    instance.matching_parties = [create_models_matching_party_example()]
    return instance


def create_models_matching_party_example() -> ModelsMatchingParty:
    instance = ModelsMatchingParty()
    instance.first_ticket_created_at = randomize("int", min_val=1, max_val=1000)
    instance.party_id = randomize("uid")
    instance.party_members = [create_models_party_member_example()]
    instance.ticket_id = randomize()
    instance.party_attributes = {randomize(): randomize()}
    return instance


def create_models_matching_rule_example() -> ModelsMatchingRule:
    instance = ModelsMatchingRule()
    instance.attribute = randomize()
    instance.criteria = randomize()
    instance.reference = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_matchmaking_result_example() -> ModelsMatchmakingResult:
    instance = ModelsMatchmakingResult()
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    instance.queued_at = randomize("int", min_val=1, max_val=1000)
    instance.ticket_id = randomize()
    instance.updated_at = randomize("date")
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.game_mode = randomize()
    instance.joinable = randomize("bool")
    instance.match_session_id = randomize()
    instance.namespace = randomize("slug")
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    return instance


def create_models_party_example() -> ModelsParty:
    instance = ModelsParty()
    instance.attributes = {randomize(): randomize()}
    instance.code = randomize()
    instance.configuration = create_models_session_configuration_example()
    instance.configuration_name = randomize()
    instance.created_at = randomize("date")
    instance.created_by = randomize()
    instance.expired_at = randomize("date")
    instance.id_ = randomize()
    instance.is_active = randomize("bool")
    instance.is_full = randomize("bool")
    instance.leader_id = randomize()
    instance.members = [create_models_user_example()]
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_party_member_example() -> ModelsPartyMember:
    instance = ModelsPartyMember()
    instance.user_id = randomize("uid")
    instance.extra_attributes = {randomize(): randomize()}
    return instance


def create_models_party_members_example() -> ModelsPartyMembers:
    instance = ModelsPartyMembers()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_models_party_team_example() -> ModelsPartyTeam:
    instance = ModelsPartyTeam()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_models_player_data_example() -> ModelsPlayerData:
    instance = ModelsPlayerData()
    instance.attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.platform_id = randomize()
    instance.player_id = randomize()
    return instance


def create_models_proposed_proposal_example() -> ModelsProposedProposal:
    instance = ModelsProposedProposal()
    instance.backfill_id = randomize()
    instance.proposal_id = randomize()
    instance.status = randomize()
    return instance


def create_models_session_config_example() -> ModelsSessionConfig:
    instance = ModelsSessionConfig()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.persistent = randomize("bool")
    instance.requested_regions = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_session_configuration_example() -> ModelsSessionConfiguration:
    instance = ModelsSessionConfiguration()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.persistent = randomize("bool")
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    return instance


def create_models_team_example() -> ModelsTeam:
    instance = ModelsTeam()
    instance.parties = [create_models_party_team_example()]
    instance.team_id = randomize()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_ticket_example() -> ModelsTicket:
    instance = ModelsTicket()
    instance.created_at = randomize("date")
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.matched_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.players = [create_models_player_data_example()]
    instance.proposed_proposal = create_models_proposed_proposal_example()
    instance.ticket_attributes = {randomize(): randomize()}
    instance.ticket_id = randomize()
    return instance


def create_models_ticket_data_example() -> ModelsTicketData:
    instance = ModelsTicketData()
    instance.action = randomize()
    instance.game_mode = randomize()
    instance.is_backfill_match = randomize("bool")
    instance.is_pivot = randomize("bool")
    instance.is_rule_set_flexed = randomize("bool")
    instance.matched_region = randomize()
    instance.member_attributes = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.party_id = randomize("uid")
    instance.pod_name = randomize()
    instance.session_tick_id = randomize()
    instance.tick_id = randomize("int", min_val=1, max_val=1000)
    instance.timestamp = randomize("date")
    instance.total_players = randomize("int", min_val=1, max_val=1000)
    instance.active_alliance_rule = create_models_alliance_rule_example()
    instance.active_matching_rule = [create_models_matching_rule_example()]
    instance.elapsed_time = randomize("int", min_val=1, max_val=1000)
    instance.function = randomize()
    instance.iteration = randomize("int", min_val=1, max_val=1000)
    instance.match_id = randomize()
    instance.remaining_players_per_ticket = [randomize("int", min_val=1, max_val=1000)]
    instance.remaining_tickets = randomize("int", min_val=1, max_val=1000)
    instance.session = create_models_matchmaking_result_example()
    instance.time_to_match_sec = randomize("int", min_val=1, max_val=1000)
    instance.unbackfill_reason = randomize()
    instance.unmatch_reason = randomize()
    return instance


def create_models_ticket_observability_example() -> ModelsTicketObservability:
    instance = ModelsTicketObservability()
    instance.ticket = create_models_ticket_data_example()
    return instance


def create_models_ticket_status_example() -> ModelsTicketStatus:
    instance = ModelsTicketStatus()
    instance.matched = randomize("bool")
    instance.ticket = create_models_ticket_example()
    return instance


def create_models_user_example() -> ModelsUser:
    instance = ModelsUser()
    instance.id_ = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.status = randomize()
    instance.status_v2 = randomize()
    instance.updated_at = randomize()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
