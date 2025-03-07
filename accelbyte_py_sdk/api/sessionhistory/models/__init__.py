# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Session History Service."""

__version__ = "1.13.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .apimodels_acquiring_ds import ApimodelsAcquiringDS
from .apimodels_acquiring_ds_wait_time import ApimodelsAcquiringDsWaitTime
from .apimodels_canceled_matchmaking_ticket import ApimodelsCanceledMatchmakingTicket
from .apimodels_created_matchmaking_ticket import ApimodelsCreatedMatchmakingTicket
from .apimodels_event_match_history import ApimodelsEventMatchHistory
from .apimodels_expired_matchmaking_ticket import ApimodelsExpiredMatchmakingTicket
from .apimodels_game_session_detail import ApimodelsGameSessionDetail
from .apimodels_game_session_detail_query_response import (
    ApimodelsGameSessionDetailQueryResponse,
)
from .apimodels_history import ApimodelsHistory
from .apimodels_match_length_duration import ApimodelsMatchLengthDuration
from .apimodels_match_matchmaking import ApimodelsMatchMatchmaking
from .apimodels_match_matchmaking_ticket import ApimodelsMatchMatchmakingTicket
from .apimodels_matchmaking_detail import ApimodelsMatchmakingDetail
from .apimodels_matchmaking_detail_query_response import (
    ApimodelsMatchmakingDetailQueryResponse,
)
from .apimodels_matchmaking_history import ApimodelsMatchmakingHistory
from .apimodels_pagination import ApimodelsPagination
from .apimodels_party_detail import ApimodelsPartyDetail
from .apimodels_party_detail_query_response import ApimodelsPartyDetailQueryResponse
from .apimodels_party_history import ApimodelsPartyHistory
from .apimodels_ticket_detail_query_response import ApimodelsTicketDetailQueryResponse
from .apimodels_ticket_observability_detail import ApimodelsTicketObservabilityDetail
from .apimodels_ticket_observability_history import ApimodelsTicketObservabilityHistory
from .apimodels_total_active_session import ApimodelsTotalActiveSession
from .apimodels_total_player_persession import ApimodelsTotalPlayerPersession
from .apimodels_x_ray_acquiring_ds_query_response import (
    ApimodelsXRayAcquiringDsQueryResponse,
)
from .apimodels_x_ray_acquiring_ds_wait_time_query_response import (
    ApimodelsXRayAcquiringDsWaitTimeQueryResponse,
)
from .apimodels_x_ray_bulk_ticket_observability_request import (
    ApimodelsXRayBulkTicketObservabilityRequest,
)
from .apimodels_x_ray_bulk_ticket_observability_response import (
    ApimodelsXRayBulkTicketObservabilityResponse,
)
from .apimodels_x_ray_canceled_matchmaking_ticket_query_response import (
    ApimodelsXRayCanceledMatchmakingTicketQueryResponse,
)
from .apimodels_x_ray_created_matchmaking_ticket_query_response import (
    ApimodelsXRayCreatedMatchmakingTicketQueryResponse,
)
from .apimodels_x_ray_expired_matchmaking_ticket_query_response import (
    ApimodelsXRayExpiredMatchmakingTicketQueryResponse,
)
from .apimodels_x_ray_match_histor_query_response import (
    ApimodelsXRayMatchHistorQueryResponse,
)
from .apimodels_x_ray_match_length_duration_query_response import (
    ApimodelsXRayMatchLengthDurationQueryResponse,
)
from .apimodels_x_ray_match_matchmaking_query_response import (
    ApimodelsXRayMatchMatchmakingQueryResponse,
)
from .apimodels_x_ray_match_matchmaking_ticket_query_response import (
    ApimodelsXRayMatchMatchmakingTicketQueryResponse,
)
from .apimodels_x_ray_match_pool_pod_tick_match_response import (
    ApimodelsXRayMatchPoolPodTickMatchResponse,
)
from .apimodels_x_ray_match_pool_pod_tick_query_response import (
    ApimodelsXRayMatchPoolPodTickQueryResponse,
)
from .apimodels_x_ray_match_pool_pod_tick_result import (
    ApimodelsXRayMatchPoolPodTickResult,
)
from .apimodels_x_ray_match_pool_pod_tick_ticket_response import (
    ApimodelsXRayMatchPoolPodTickTicketResponse,
)
from .apimodels_x_ray_match_pool_query_response import (
    ApimodelsXRayMatchPoolQueryResponse,
)
from .apimodels_x_ray_match_pool_result import ApimodelsXRayMatchPoolResult
from .apimodels_x_ray_match_ticket_history import ApimodelsXRayMatchTicketHistory
from .apimodels_x_ray_match_ticket_history_query_response import (
    ApimodelsXRayMatchTicketHistoryQueryResponse,
)
from .apimodels_x_ray_matches_query_response import ApimodelsXRayMatchesQueryResponse
from .apimodels_x_ray_ticket_matches_result import ApimodelsXRayTicketMatchesResult
from .apimodels_x_ray_ticket_observability_request import (
    ApimodelsXRayTicketObservabilityRequest,
)
from .apimodels_x_ray_ticket_observability_response import (
    ApimodelsXRayTicketObservabilityResponse,
)
from .apimodels_x_ray_ticket_query_response import ApimodelsXRayTicketQueryResponse
from .apimodels_x_ray_ticket_result import ApimodelsXRayTicketResult
from .apimodels_x_ray_total_active_session_query_response import (
    ApimodelsXRayTotalActiveSessionQueryResponse,
)
from .apimodels_x_ray_total_player_persession_avg_query_response import (
    ApimodelsXRayTotalPlayerPersessionAVGQueryResponse,
)
from .envconfig_configuration import EnvconfigConfiguration
from .logconfig_configuration import LogconfigConfiguration
from .logconfig_configuration import LogLevelEnum as LogconfigConfigurationLogLevelEnum
from .models_alliance_rule import ModelsAllianceRule
from .models_backfill_proposal import ModelsBackfillProposal
from .models_backfill_ticket import ModelsBackfillTicket
from .models_ds_information import ModelsDSInformation
from .models_game_server import ModelsGameServer
from .models_game_session import ModelsGameSession
from .models_game_session_team import ModelsGameSessionTeam
from .models_match import ModelsMatch
from .models_match_ticket import ModelsMatchTicket
from .models_matching_ally import ModelsMatchingAlly
from .models_matching_party import ModelsMatchingParty
from .models_matching_rule import ModelsMatchingRule
from .models_matchmaking_result import ModelsMatchmakingResult
from .models_party import ModelsParty
from .models_party_member import ModelsPartyMember
from .models_party_members import ModelsPartyMembers
from .models_party_team import ModelsPartyTeam
from .models_player_data import ModelsPlayerData
from .models_proposed_proposal import ModelsProposedProposal
from .models_session_config import ModelsSessionConfig
from .models_session_configuration import ModelsSessionConfiguration
from .models_team import ModelsTeam
from .models_ticket import ModelsTicket
from .models_ticket_data import ModelsTicketData
from .models_ticket_observability import ModelsTicketObservability
from .models_ticket_status import ModelsTicketStatus
from .models_user import ModelsUser
from .response_error import ResponseError
