# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Match Service V2."""

__version__ = "2.32.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .api_back_fill_accept_request import ApiBackFillAcceptRequest
from .api_back_fill_create_request import ApiBackFillCreateRequest
from .api_back_fill_reject_request import ApiBackFillRejectRequest
from .api_backfill_create_response import ApiBackfillCreateResponse
from .api_backfill_get_response import ApiBackfillGetResponse
from .api_backfill_proposal_response import ApiBackfillProposalResponse
from .api_external_failure_metric_record import ApiExternalFailureMetricRecord
from .api_external_failure_metric_record import (
    TypeEnum as ApiExternalFailureMetricRecordTypeEnum,
)
from .api_list_backfill_query_response import ApiListBackfillQueryResponse
from .api_list_environment_variables_response import ApiListEnvironmentVariablesResponse
from .api_list_match_functions_response import ApiListMatchFunctionsResponse
from .api_list_match_pool_tickets_response import ApiListMatchPoolTicketsResponse
from .api_list_match_pools_response import ApiListMatchPoolsResponse
from .api_list_rule_sets_response import ApiListRuleSetsResponse
from .api_match import ApiMatch
from .api_match_function_config import ApiMatchFunctionConfig
from .api_match_function_override import ApiMatchFunctionOverride
from .api_match_function_request import ApiMatchFunctionRequest
from .api_match_pool import ApiMatchPool
from .api_match_pool_config import ApiMatchPoolConfig
from .api_match_rule_set_name_data import ApiMatchRuleSetNameData
from .api_match_ticket_request import ApiMatchTicketRequest
from .api_match_ticket_response import ApiMatchTicketResponse
from .api_match_ticket_status import ApiMatchTicketStatus
from .api_match_ticket_statuses import ApiMatchTicketStatuses
from .api_namespace_config_list import ApiNamespaceConfigList
from .api_party import ApiParty
from .api_patch_namespace_config_request import ApiPatchNamespaceConfigRequest
from .api_player_data import ApiPlayerData
from .api_player_metric_record import ApiPlayerMetricRecord
from .api_proposed_proposal import ApiProposedProposal
from .api_rule_set_payload import ApiRuleSetPayload
from .api_team import ApiTeam
from .api_ticket import ApiTicket
from .api_ticket_metric_result_record import ApiTicketMetricResultRecord
from .config_environment_variable import ConfigEnvironmentVariable
from .configmodels_namespace_config import ConfigmodelsNamespaceConfig
from .logconfig_configuration import LogconfigConfiguration
from .logconfig_configuration import LogLevelEnum as LogconfigConfigurationLogLevelEnum
from .matchmaker_match_ticket_record import MatchmakerMatchTicketRecord
from .matchmaker_party import MatchmakerParty
from .matchmaker_proposed_proposal import MatchmakerProposedProposal
from .matchmaker_team import MatchmakerTeam
from .matchmaker_ticket import MatchmakerTicket
from .models_configuration import ModelsConfiguration
from .models_ds_information import ModelsDSInformation
from .models_game_session import ModelsGameSession
from .models_pagination import ModelsPagination
from .models_server import ModelsServer
from .models_user import ModelsUser
from .player_player_data import PlayerPlayerData
from .response_error import ResponseError
