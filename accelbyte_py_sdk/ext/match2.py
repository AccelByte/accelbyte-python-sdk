# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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

from ..api.match2.models import ApiBackFillAcceptRequest
from ..api.match2.models import ApiBackFillCreateRequest
from ..api.match2.models import ApiBackFillRejectRequest
from ..api.match2.models import ApiBackfillCreateResponse
from ..api.match2.models import ApiBackfillGetResponse
from ..api.match2.models import ApiBackfillProposalResponse
from ..api.match2.models import ApiExternalFailureMetricRecord
from ..api.match2.models import ApiListBackfillQueryResponse
from ..api.match2.models import ApiListEnvironmentVariablesResponse
from ..api.match2.models import ApiListMatchFunctionsResponse
from ..api.match2.models import ApiListMatchPoolTicketsResponse
from ..api.match2.models import ApiListMatchPoolsResponse
from ..api.match2.models import ApiListRuleSetsResponse
from ..api.match2.models import ApiMatch
from ..api.match2.models import ApiMatchFunctionConfig
from ..api.match2.models import ApiMatchFunctionOverride
from ..api.match2.models import ApiMatchFunctionRequest
from ..api.match2.models import ApiMatchPool
from ..api.match2.models import ApiMatchPoolConfig
from ..api.match2.models import ApiMatchRuleSetNameData
from ..api.match2.models import ApiMatchTicketRequest
from ..api.match2.models import ApiMatchTicketResponse
from ..api.match2.models import ApiMatchTicketStatus
from ..api.match2.models import ApiMatchTicketStatuses
from ..api.match2.models import ApiNamespaceConfigList
from ..api.match2.models import ApiParty
from ..api.match2.models import ApiPatchNamespaceConfigRequest
from ..api.match2.models import ApiPlayerData
from ..api.match2.models import ApiPlayerMetricRecord
from ..api.match2.models import ApiProposedProposal
from ..api.match2.models import ApiRuleSetPayload
from ..api.match2.models import ApiTeam
from ..api.match2.models import ApiTicket
from ..api.match2.models import ApiTicketMetricResultRecord
from ..api.match2.models import ConfigEnvironmentVariable
from ..api.match2.models import ConfigmodelsNamespaceConfig
from ..api.match2.models import LogconfigConfiguration
from ..api.match2.models import MatchmakerMatchTicketRecord
from ..api.match2.models import MatchmakerParty
from ..api.match2.models import MatchmakerProposedProposal
from ..api.match2.models import MatchmakerTeam
from ..api.match2.models import MatchmakerTicket
from ..api.match2.models import ModelsConfiguration
from ..api.match2.models import ModelsDSInformation
from ..api.match2.models import ModelsGameSession
from ..api.match2.models import ModelsPagination
from ..api.match2.models import ModelsServer
from ..api.match2.models import ModelsUser
from ..api.match2.models import PlayerPlayerData
from ..api.match2.models import ResponseError


def create_api_back_fill_accept_request_example() -> ApiBackFillAcceptRequest:
    instance = ApiBackFillAcceptRequest()
    instance.proposal_id = randomize()
    instance.stop = randomize("bool")
    instance.accepted_ticket_ids = [randomize()]
    return instance


def create_api_back_fill_create_request_example() -> ApiBackFillCreateRequest:
    instance = ApiBackFillCreateRequest()
    instance.match_pool = randomize()
    instance.session_id = randomize("uid")
    return instance


def create_api_back_fill_reject_request_example() -> ApiBackFillRejectRequest:
    instance = ApiBackFillRejectRequest()
    instance.proposal_id = randomize()
    instance.stop = randomize("bool")
    return instance


def create_api_backfill_create_response_example() -> ApiBackfillCreateResponse:
    instance = ApiBackfillCreateResponse()
    instance.id_ = randomize()
    return instance


def create_api_backfill_get_response_example() -> ApiBackfillGetResponse:
    instance = ApiBackfillGetResponse()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.match_session_id = randomize()
    instance.partial_match = create_api_match_example()
    instance.ticket_id = randomize()
    return instance


def create_api_backfill_proposal_response_example() -> ApiBackfillProposalResponse:
    instance = ApiBackfillProposalResponse()
    instance.backfill_ticket_id = randomize()
    instance.created_at = randomize("date")
    instance.match_pool = randomize()
    instance.match_session_id = randomize()
    instance.proposal_id = randomize()
    instance.proposed_teams = [create_api_team_example()]
    instance.tickets = [create_api_ticket_example()]
    return instance


def create_api_external_failure_metric_record_example() -> (
    ApiExternalFailureMetricRecord
):
    instance = ApiExternalFailureMetricRecord()
    instance.type_ = randomize()
    return instance


def create_api_list_backfill_query_response_example() -> ApiListBackfillQueryResponse:
    instance = ApiListBackfillQueryResponse()
    instance.data = [create_api_backfill_get_response_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_api_list_environment_variables_response_example() -> (
    ApiListEnvironmentVariablesResponse
):
    instance = ApiListEnvironmentVariablesResponse()
    instance.data = [create_config_environment_variable_example()]
    return instance


def create_api_list_match_functions_response_example() -> ApiListMatchFunctionsResponse:
    instance = ApiListMatchFunctionsResponse()
    instance.functions = [randomize()]
    instance.pagination = create_models_pagination_example()
    instance.configs = [create_api_match_function_config_example()]
    return instance


def create_api_list_match_pool_tickets_response_example() -> (
    ApiListMatchPoolTicketsResponse
):
    instance = ApiListMatchPoolTicketsResponse()
    instance.data = [create_matchmaker_match_ticket_record_example()]
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    instance.pagination = create_models_pagination_example()
    return instance


def create_api_list_match_pools_response_example() -> ApiListMatchPoolsResponse:
    instance = ApiListMatchPoolsResponse()
    instance.data = [create_api_match_pool_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_api_list_rule_sets_response_example() -> ApiListRuleSetsResponse:
    instance = ApiListRuleSetsResponse()
    instance.data = [create_api_match_rule_set_name_data_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_api_match_example() -> ApiMatch:
    instance = ApiMatch()
    instance.backfill = randomize("bool")
    instance.client_version = randomize()
    instance.match_attributes = {randomize(): randomize()}
    instance.region_preference = [randomize()]
    instance.server_name = randomize()
    instance.teams = [create_api_team_example()]
    instance.tickets = [create_api_ticket_example()]
    return instance


def create_api_match_function_config_example() -> ApiMatchFunctionConfig:
    instance = ApiMatchFunctionConfig()
    instance.match_function = randomize()
    instance.url = randomize("url")
    instance.service_app_name = randomize()
    return instance


def create_api_match_function_override_example() -> ApiMatchFunctionOverride:
    instance = ApiMatchFunctionOverride()
    instance.backfill_matches = randomize()
    instance.enrichment = [randomize()]
    instance.make_matches = randomize()
    instance.stat_codes = [randomize()]
    instance.validation = [randomize()]
    return instance


def create_api_match_function_request_example() -> ApiMatchFunctionRequest:
    instance = ApiMatchFunctionRequest()
    instance.match_function = randomize()
    instance.url = randomize("url")
    instance.service_app_name = randomize()
    return instance


def create_api_match_pool_example() -> ApiMatchPool:
    instance = ApiMatchPool()
    instance.auto_accept_backfill_proposal = randomize("bool")
    instance.backfill_proposal_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.backfill_ticket_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.match_function = randomize()
    instance.match_function_override = create_api_match_function_override_example()
    instance.name = randomize()
    instance.rule_set = randomize()
    instance.session_template = randomize()
    instance.ticket_expiration_seconds = randomize("int", min_val=1, max_val=1000)
    instance.best_latency_calculation_method = randomize()
    instance.crossplay_disabled = randomize("bool")
    instance.platform_group_enabled = randomize("bool")
    return instance


def create_api_match_pool_config_example() -> ApiMatchPoolConfig:
    instance = ApiMatchPoolConfig()
    instance.auto_accept_backfill_proposal = randomize("bool")
    instance.backfill_proposal_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.backfill_ticket_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.match_function = randomize()
    instance.match_function_override = create_api_match_function_override_example()
    instance.rule_set = randomize()
    instance.session_template = randomize()
    instance.ticket_expiration_seconds = randomize("int", min_val=1, max_val=1000)
    instance.best_latency_calculation_method = randomize()
    instance.crossplay_disabled = randomize("bool")
    instance.platform_group_enabled = randomize("bool")
    return instance


def create_api_match_rule_set_name_data_example() -> ApiMatchRuleSetNameData:
    instance = ApiMatchRuleSetNameData()
    instance.name = randomize()
    return instance


def create_api_match_ticket_request_example() -> ApiMatchTicketRequest:
    instance = ApiMatchTicketRequest()
    instance.attributes = {randomize(): randomize()}
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.excluded_sessions = [randomize()]
    instance.session_id = randomize("uid")
    instance.storage = {randomize(): randomize()}
    return instance


def create_api_match_ticket_response_example() -> ApiMatchTicketResponse:
    instance = ApiMatchTicketResponse()
    instance.match_ticket_id = randomize()
    instance.queue_time = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_match_ticket_status_example() -> ApiMatchTicketStatus:
    instance = ApiMatchTicketStatus()
    instance.match_found = randomize("bool")
    instance.session_id = randomize("uid")
    instance.is_active = randomize("bool")
    instance.match_pool = randomize()
    instance.match_ticket_id = randomize()
    instance.proposed_proposal = create_api_proposed_proposal_example()
    return instance


def create_api_match_ticket_statuses_example() -> ApiMatchTicketStatuses:
    instance = ApiMatchTicketStatuses()
    instance.data = [create_api_match_ticket_status_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_api_namespace_config_list_example() -> ApiNamespaceConfigList:
    instance = ApiNamespaceConfigList()
    instance.configs = [create_configmodels_namespace_config_example()]
    return instance


def create_api_party_example() -> ApiParty:
    instance = ApiParty()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_api_patch_namespace_config_request_example() -> (
    ApiPatchNamespaceConfigRequest
):
    instance = ApiPatchNamespaceConfigRequest()
    instance.cross_platform_no_current_platform = randomize("bool")
    instance.extra_platforms = [randomize()]
    instance.match_any_common = randomize("bool")
    instance.platform_group = {}
    return instance


def create_api_player_data_example() -> ApiPlayerData:
    instance = ApiPlayerData()
    instance.attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.player_id = randomize()
    return instance


def create_api_player_metric_record_example() -> ApiPlayerMetricRecord:
    instance = ApiPlayerMetricRecord()
    instance.player_in_queue = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_proposed_proposal_example() -> ApiProposedProposal:
    instance = ApiProposedProposal()
    instance.backfill_id = randomize()
    instance.proposal_id = randomize()
    instance.status = randomize()
    return instance


def create_api_rule_set_payload_example() -> ApiRuleSetPayload:
    instance = ApiRuleSetPayload()
    instance.data = {randomize(): randomize()}
    instance.enable_custom_match_function = randomize("bool")
    instance.name = randomize()
    return instance


def create_api_team_example() -> ApiTeam:
    instance = ApiTeam()
    instance.parties = [create_api_party_example()]
    instance.team_id = randomize()
    instance.user_i_ds = [randomize()]
    return instance


def create_api_ticket_example() -> ApiTicket:
    instance = ApiTicket()
    instance.created_at = randomize("date")
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.players = [create_api_player_data_example()]
    instance.ticket_attributes = {randomize(): randomize()}
    instance.ticket_id = randomize()
    return instance


def create_api_ticket_metric_result_record_example() -> ApiTicketMetricResultRecord:
    instance = ApiTicketMetricResultRecord()
    instance.queue_time = randomize("int", min_val=1, max_val=1000)
    return instance


def create_config_environment_variable_example() -> ConfigEnvironmentVariable:
    instance = ConfigEnvironmentVariable()
    instance.name = randomize()
    instance.actual_value = randomize()
    instance.default_value = randomize()
    instance.description = randomize()
    return instance


def create_configmodels_namespace_config_example() -> ConfigmodelsNamespaceConfig:
    instance = ConfigmodelsNamespaceConfig()
    instance.namespace = randomize("slug")
    instance.cross_platform_no_current_platform = randomize("bool")
    instance.extra_platforms = [randomize()]
    instance.match_any_common = randomize("bool")
    instance.platform_group = {}
    return instance


def create_logconfig_configuration_example() -> LogconfigConfiguration:
    instance = LogconfigConfiguration()
    instance.log_level = randomize()
    return instance


def create_matchmaker_match_ticket_record_example() -> MatchmakerMatchTicketRecord:
    instance = MatchmakerMatchTicketRecord()
    instance.created_at = randomize("date")
    instance.is_active = randomize("bool")
    instance.party_session_id = randomize()
    instance.proposed_proposal = create_matchmaker_proposed_proposal_example()
    instance.session_id = randomize("uid")
    instance.ticket = create_matchmaker_ticket_example()
    instance.ticket_id = randomize()
    instance.unique_ticket_id = randomize()
    return instance


def create_matchmaker_party_example() -> MatchmakerParty:
    instance = MatchmakerParty()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_matchmaker_proposed_proposal_example() -> MatchmakerProposedProposal:
    instance = MatchmakerProposedProposal()
    instance.backfill_id = randomize()
    instance.proposal_id = randomize()
    instance.status = randomize()
    return instance


def create_matchmaker_team_example() -> MatchmakerTeam:
    instance = MatchmakerTeam()
    instance.parties = [create_matchmaker_party_example()]
    instance.team_id = randomize()
    instance.user_i_ds = [randomize()]
    return instance


def create_matchmaker_ticket_example() -> MatchmakerTicket:
    instance = MatchmakerTicket()
    instance.created_at = randomize("date")
    instance.excluded_sessions = [randomize()]
    instance.is_active = randomize("bool")
    instance.is_pivot = randomize("bool")
    instance.is_single_play = randomize("bool")
    instance.latencies = {}
    instance.match_pool = randomize()
    instance.matched_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.party_session_id = randomize()
    instance.players = [create_player_player_data_example()]
    instance.proposed_proposal = create_matchmaker_proposed_proposal_example()
    instance.ticket_attributes = {randomize(): randomize()}
    instance.ticket_id = randomize()
    instance.ticket_information = {randomize(): randomize()}
    return instance


def create_models_configuration_example() -> ModelsConfiguration:
    instance = ModelsConfiguration()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.requested_regions = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_ds_information_example() -> ModelsDSInformation:
    instance = ModelsDSInformation()
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.requested_at = randomize()
    instance.requested_regions = [randomize()]
    instance.server = create_models_server_example()
    instance.status = randomize()
    return instance


def create_models_game_session_example() -> ModelsGameSession:
    instance = ModelsGameSession()
    instance.attributes = {randomize(): randomize()}
    instance.backfill_ticket_id = randomize()
    instance.configuration = create_models_configuration_example()
    instance.created_at = randomize("date")
    instance.ds_information = create_models_ds_information_example()
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.is_full = randomize("bool")
    instance.join_type = randomize()
    instance.leader_id = randomize()
    instance.match_pool = randomize()
    instance.members = [create_models_user_example()]
    instance.namespace = randomize("slug")
    instance.teams = [create_matchmaker_team_example()]
    instance.updated_at = randomize("date")
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_server_example() -> ModelsServer:
    instance = ModelsServer()
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


def create_models_user_example() -> ModelsUser:
    instance = ModelsUser()
    instance.id_ = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.status = randomize()
    instance.status_v2 = randomize()
    instance.updated_at = randomize("date")
    instance.previous_status = randomize()
    return instance


def create_player_player_data_example() -> PlayerPlayerData:
    instance = PlayerPlayerData()
    instance.attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.platform_id = randomize()
    instance.player_id = randomize()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
