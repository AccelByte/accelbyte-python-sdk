# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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

from ..api.matchmaking.models import LogAppMessageDeclaration
from ..api.matchmaking.models import ModelsAllianceFlexingRule
from ..api.matchmaking.models import ModelsAllianceRule
from ..api.matchmaking.models import ModelsAllianceRuleV1
from ..api.matchmaking.models import ModelsBucketMMRRule
from ..api.matchmaking.models import ModelsChannel
from ..api.matchmaking.models import ModelsChannelRequest
from ..api.matchmaking.models import ModelsChannelV1
from ..api.matchmaking.models import ModelsCombination
from ..api.matchmaking.models import ModelsCreateChannelResponse
from ..api.matchmaking.models import ModelsCreateMockTicket
from ..api.matchmaking.models import ModelsDequeueRequest
from ..api.matchmaking.models import ModelsFlexingRule
from ..api.matchmaking.models import ModelsGetChannelsResponse
from ..api.matchmaking.models import ModelsGetMockMatchesResponse
from ..api.matchmaking.models import ModelsGetMockTicketsResponse
from ..api.matchmaking.models import ModelsImportConfigResponse
from ..api.matchmaking.models import ModelsMatchAddUserIntoSessionRequest
from ..api.matchmaking.models import ModelsMatchOption
from ..api.matchmaking.models import ModelsMatchOptionRule
from ..api.matchmaking.models import ModelsMatchResultRequest
from ..api.matchmaking.models import ModelsMatchResultResponse
from ..api.matchmaking.models import ModelsMatchingAlly
from ..api.matchmaking.models import ModelsMatchingParty
from ..api.matchmaking.models import ModelsMatchingRule
from ..api.matchmaking.models import ModelsMatchmakingResult
from ..api.matchmaking.models import ModelsMockMatch
from ..api.matchmaking.models import ModelsMockTicket
from ..api.matchmaking.models import ModelsPagination
from ..api.matchmaking.models import ModelsPartyMember
from ..api.matchmaking.models import ModelsPlayerResultRequest
from ..api.matchmaking.models import ModelsPlayerResultResponse
from ..api.matchmaking.models import ModelsQueryMockBy
from ..api.matchmaking.models import ModelsRebalanceRequest
from ..api.matchmaking.models import ModelsRebalanceResponse
from ..api.matchmaking.models import ModelsRegion
from ..api.matchmaking.models import ModelsResultAttributeRequest
from ..api.matchmaking.models import ModelsResultAttributeResponse
from ..api.matchmaking.models import ModelsRole
from ..api.matchmaking.models import ModelsRuleSet
from ..api.matchmaking.models import ModelsRuleSetV1
from ..api.matchmaking.models import ModelsSelectionRule
from ..api.matchmaking.models import ModelsSortTicket
from ..api.matchmaking.models import ModelsSortTicketRule
from ..api.matchmaking.models import ModelsStatResumeResponse
from ..api.matchmaking.models import ModelsSubGameMode
from ..api.matchmaking.models import ModelsTicketMetricResultRecord
from ..api.matchmaking.models import ModelsUpdateAllianceRule
from ..api.matchmaking.models import ModelsUpdateChannelRequest
from ..api.matchmaking.models import ModelsUpdatePlayTimeWeightRequest
from ..api.matchmaking.models import ModelsUpdatePlayerPlaytimeWeightResponse
from ..api.matchmaking.models import ModelsUpdateRuleset
from ..api.matchmaking.models import ModelsUpdateRulesetSubGameModes
from ..api.matchmaking.models import ResponseError
from ..api.matchmaking.models import ResponseErrorV1
from ..api.matchmaking.models import ServiceGetSessionHistoryDetailedResponseItem
from ..api.matchmaking.models import ServiceGetSessionHistorySearchResponse
from ..api.matchmaking.models import ServiceGetSessionHistorySearchResponseItem
from ..api.matchmaking.models import ServiceGetSessionHistorySearchResponseItemV2
from ..api.matchmaking.models import ServiceGetSessionHistorySearchResponseV2


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_models_alliance_flexing_rule_example() -> ModelsAllianceFlexingRule:
    instance = ModelsAllianceFlexingRule()
    instance.combination = create_models_combination_example()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_alliance_rule_example() -> ModelsAllianceRule:
    instance = ModelsAllianceRule()
    instance.combination = create_models_combination_example()
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_alliance_rule_v1_example() -> ModelsAllianceRuleV1:
    instance = ModelsAllianceRuleV1()
    instance.combination = create_models_combination_example()
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_bucket_mmr_rule_example() -> ModelsBucketMMRRule:
    instance = ModelsBucketMMRRule()
    instance.disable_authority = randomize("bool")
    instance.flex_authority_count = randomize("int", min_val=1, max_val=1000)
    instance.flex_flat_step_range = randomize("int", min_val=1, max_val=1000)
    instance.flex_immunity_count = randomize("int", min_val=1, max_val=1000)
    instance.flex_range_max = randomize("int", min_val=1, max_val=1000)
    instance.flex_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.flex_step_max = randomize("int", min_val=1, max_val=1000)
    instance.force_authority_match = randomize("bool")
    instance.initial_step_range = randomize("int", min_val=1, max_val=1000)
    instance.mmr_max = randomize("int", min_val=1, max_val=1000)
    instance.mmr_mean = randomize("int", min_val=1, max_val=1000)
    instance.mmr_min = randomize("int", min_val=1, max_val=1000)
    instance.mmr_std_dev = randomize("int", min_val=1, max_val=1000)
    instance.override_mmr_data = randomize("bool")
    instance.use_bucket_mmr = randomize("bool")
    instance.use_flat_flex_step = randomize("bool")
    return instance


def create_models_channel_example() -> ModelsChannel:
    instance = ModelsChannel()
    instance.blocked_player_option = randomize()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.find_match_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.game_mode = randomize()
    instance.joinable = randomize("bool")
    instance.max_delay_ms = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.region_expansion_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_expansion_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_initial_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_max_ms = randomize("int", min_val=1, max_val=1000)
    instance.session_queue_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.slug = randomize()
    instance.social_matchmaking = randomize("bool")
    instance.sub_gamemode_selection = randomize()
    instance.updated_at = randomize()
    instance.use_sub_gamemode = randomize("bool")
    instance.ruleset = create_models_rule_set_example()
    instance.ticket_observability_enable = randomize("bool")
    return instance


def create_models_channel_request_example() -> ModelsChannelRequest:
    instance = ModelsChannelRequest()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.find_match_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.game_mode = randomize()
    instance.max_delay_ms = randomize("int", min_val=1, max_val=1000)
    instance.rule_set = create_models_rule_set_example()
    instance.session_queue_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.blocked_player_option = randomize()
    instance.joinable = randomize("bool")
    instance.region_expansion_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_expansion_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_initial_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_max_ms = randomize("int", min_val=1, max_val=1000)
    instance.social_matchmaking = randomize("bool")
    instance.sub_gamemode_selection = randomize()
    instance.ticket_observability_enable = randomize("bool")
    instance.use_sub_gamemode = randomize("bool")
    return instance


def create_models_channel_v1_example() -> ModelsChannelV1:
    instance = ModelsChannelV1()
    instance.blocked_player_option = randomize()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.find_match_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.game_mode = randomize()
    instance.joinable = randomize("bool")
    instance.max_delay_ms = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.region_expansion_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_expansion_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_initial_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_max_ms = randomize("int", min_val=1, max_val=1000)
    instance.session_queue_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.slug = randomize()
    instance.social_matchmaking = randomize("bool")
    instance.sub_gamemode_selection = randomize()
    instance.updated_at = randomize()
    instance.use_sub_gamemode = randomize("bool")
    instance.rule_set = create_models_rule_set_v1_example()
    instance.ticket_observability_enable = randomize("bool")
    return instance


def create_models_combination_example() -> ModelsCombination:
    instance = ModelsCombination()
    instance.has_combination = randomize("bool")
    instance.role_flexing_enable = randomize("bool")
    instance.role_flexing_player = randomize("int", min_val=1, max_val=1000)
    instance.role_flexing_second = randomize("int", min_val=1, max_val=1000)
    instance.alliances = [[create_models_role_example()]]
    return instance


def create_models_create_channel_response_example() -> ModelsCreateChannelResponse:
    instance = ModelsCreateChannelResponse()
    instance.blocked_player_option = randomize()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.find_match_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.game_mode = randomize()
    instance.joinable = randomize("bool")
    instance.max_delay_ms = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.region_expansion_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_expansion_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_initial_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_max_ms = randomize("int", min_val=1, max_val=1000)
    instance.session_queue_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.slug = randomize()
    instance.social_matchmaking = randomize("bool")
    instance.sub_gamemode_selection = randomize()
    instance.updated_at = randomize()
    instance.use_sub_gamemode = randomize("bool")
    instance.ruleset = create_models_rule_set_example()
    instance.ticket_observability_enable = randomize("bool")
    return instance


def create_models_create_mock_ticket_example() -> ModelsCreateMockTicket:
    instance = ModelsCreateMockTicket()
    instance.attribute_name = randomize()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.mmr_max = randomize("int", min_val=1, max_val=1000)
    instance.mmr_mean = randomize("int", min_val=1, max_val=1000)
    instance.mmr_min = randomize("int", min_val=1, max_val=1000)
    instance.mmr_std_dev = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_dequeue_request_example() -> ModelsDequeueRequest:
    instance = ModelsDequeueRequest()
    instance.match_id = randomize()
    return instance


def create_models_flexing_rule_example() -> ModelsFlexingRule:
    instance = ModelsFlexingRule()
    instance.attribute = randomize()
    instance.criteria = randomize()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.reference = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_get_channels_response_example() -> ModelsGetChannelsResponse:
    instance = ModelsGetChannelsResponse()
    instance.data = [create_models_channel_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_models_get_mock_matches_response_example() -> ModelsGetMockMatchesResponse:
    instance = ModelsGetMockMatchesResponse()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.largest_mmr_distance = randomize("int", min_val=1, max_val=1000)
    instance.longest_time_to_match_seconds = randomize("int", min_val=1, max_val=1000)
    instance.matches = [create_models_mock_match_example()]
    return instance


def create_models_get_mock_tickets_response_example() -> ModelsGetMockTicketsResponse:
    instance = ModelsGetMockTicketsResponse()
    instance.cancelled_count = randomize("int", min_val=1, max_val=1000)
    instance.highest_mmr = randomize("int", min_val=1, max_val=1000)
    instance.in_queue_count = randomize("int", min_val=1, max_val=1000)
    instance.lowest_mmr = randomize("int", min_val=1, max_val=1000)
    instance.matched_count = randomize("int", min_val=1, max_val=1000)
    instance.mmr_in_queue = {}
    instance.mmr_matched = {}
    instance.mmr_timeout = {}
    instance.tickets = [create_models_mock_ticket_example()]
    instance.timeout_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_import_config_response_example() -> ModelsImportConfigResponse:
    instance = ModelsImportConfigResponse()
    instance.failed_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    return instance


def create_models_match_add_user_into_session_request_example() -> (
    ModelsMatchAddUserIntoSessionRequest
):
    instance = ModelsMatchAddUserIntoSessionRequest()
    instance.user_id = randomize("uid")
    instance.blocked_players = [randomize()]
    instance.party_id = randomize("uid")
    return instance


def create_models_match_option_example() -> ModelsMatchOption:
    instance = ModelsMatchOption()
    instance.name = randomize()
    instance.type_ = randomize()
    return instance


def create_models_match_option_rule_example() -> ModelsMatchOptionRule:
    instance = ModelsMatchOptionRule()
    instance.options = [create_models_match_option_example()]
    return instance


def create_models_match_result_request_example() -> ModelsMatchResultRequest:
    instance = ModelsMatchResultRequest()
    instance.match_id = randomize()
    instance.players = [create_models_player_result_request_example()]
    return instance


def create_models_match_result_response_example() -> ModelsMatchResultResponse:
    instance = ModelsMatchResultResponse()
    instance.match_id = randomize()
    instance.players = [create_models_player_result_response_example()]
    return instance


def create_models_matching_ally_example() -> ModelsMatchingAlly:
    instance = ModelsMatchingAlly()
    instance.matching_parties = [create_models_matching_party_example()]
    return instance


def create_models_matching_party_example() -> ModelsMatchingParty:
    instance = ModelsMatchingParty()
    instance.first_ticket_created_at = randomize("int", min_val=1, max_val=1000)
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.party_members = [create_models_party_member_example()]
    instance.ticket_id = randomize()
    instance.ticket_created_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_matching_rule_example() -> ModelsMatchingRule:
    instance = ModelsMatchingRule()
    instance.attribute = randomize()
    instance.criteria = randomize()
    instance.reference = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_matchmaking_result_example() -> ModelsMatchmakingResult:
    instance = ModelsMatchmakingResult()
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.game_mode = randomize()
    instance.is_mock = randomize()
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    instance.namespace = randomize("slug")
    instance.party_attributes = {randomize(): randomize()}
    instance.queued_at = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    instance.ticket_id = randomize()
    instance.updated_at = randomize("date")
    instance.joinable = randomize("bool")
    instance.party_id = randomize("uid")
    instance.ticket_ids = [randomize()]
    return instance


def create_models_mock_match_example() -> ModelsMockMatch:
    instance = ModelsMockMatch()
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.game_mode = randomize()
    instance.is_mock = randomize()
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    instance.mmr_distance = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.party_attributes = {randomize(): randomize()}
    instance.queued_at = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    instance.ticket_id = randomize()
    instance.time_to_match_seconds = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    instance.joinable = randomize("bool")
    instance.party_id = randomize("uid")
    instance.ticket_ids = [randomize()]
    return instance


def create_models_mock_ticket_example() -> ModelsMockTicket:
    instance = ModelsMockTicket()
    instance.additional_criteria = {randomize(): randomize()}
    instance.channel = randomize()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.first_ticket_created_at = randomize("int", min_val=1, max_val=1000)
    instance.is_mock = randomize()
    instance.is_sampled = randomize("bool")
    instance.latency_map = {}
    instance.namespace = randomize("slug")
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.party_leader_id = randomize()
    instance.party_members = [create_models_party_member_example()]
    instance.priority = randomize("int", min_val=1, max_val=1000)
    instance.sampling_properties = [[randomize()]]
    instance.sorted_latency = [create_models_region_example()]
    instance.status = randomize()
    instance.ticket_id = randomize()
    instance.ticket_ids = [randomize()]
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_party_member_example() -> ModelsPartyMember:
    instance = ModelsPartyMember()
    instance.extra_attributes = {randomize(): randomize()}
    instance.user_id = randomize("uid")
    return instance


def create_models_player_result_request_example() -> ModelsPlayerResultRequest:
    instance = ModelsPlayerResultRequest()
    instance.results = [create_models_result_attribute_request_example()]
    instance.user_id = randomize("uid")
    return instance


def create_models_player_result_response_example() -> ModelsPlayerResultResponse:
    instance = ModelsPlayerResultResponse()
    instance.current_score = [create_models_result_attribute_response_example()]
    instance.user_id = randomize("uid")
    return instance


def create_models_query_mock_by_example() -> ModelsQueryMockBy:
    instance = ModelsQueryMockBy()
    instance.timestamp_after = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_rebalance_request_example() -> ModelsRebalanceRequest:
    instance = ModelsRebalanceRequest()
    instance.match_id = randomize()
    return instance


def create_models_rebalance_response_example() -> ModelsRebalanceResponse:
    instance = ModelsRebalanceResponse()
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    return instance


def create_models_region_example() -> ModelsRegion:
    instance = ModelsRegion()
    instance.latency = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    return instance


def create_models_result_attribute_request_example() -> ModelsResultAttributeRequest:
    instance = ModelsResultAttributeRequest()
    instance.attribute = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_result_attribute_response_example() -> ModelsResultAttributeResponse:
    instance = ModelsResultAttributeResponse()
    instance.attribute = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_role_example() -> ModelsRole:
    instance = ModelsRole()
    instance.max = randomize("int", min_val=1, max_val=1000)
    instance.min = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    return instance


def create_models_rule_set_example() -> ModelsRuleSet:
    instance = ModelsRuleSet()
    instance.batch_size = randomize("int", min_val=1, max_val=1000)
    instance.rebalance_enable = randomize("bool")
    instance.ticket_flexing_selection = randomize()
    instance.alliance = create_models_alliance_rule_example()
    instance.alliance_flexing_rule = [create_models_alliance_flexing_rule_example()]
    instance.bucket_mmr_rule = create_models_bucket_mmr_rule_example()
    instance.flexing_rule = [create_models_flexing_rule_example()]
    instance.match_options = create_models_match_option_rule_example()
    instance.matching_rule = [create_models_matching_rule_example()]
    instance.sort_ticket = create_models_sort_ticket_example()
    instance.sort_tickets = [create_models_sort_ticket_rule_example()]
    instance.sub_game_modes = {}
    instance.ticket_flexing_selections = [create_models_selection_rule_example()]
    instance.use_newest_ticket_for_flexing = randomize("bool")
    return instance


def create_models_rule_set_v1_example() -> ModelsRuleSetV1:
    instance = ModelsRuleSetV1()
    instance.batch_size = randomize("int", min_val=1, max_val=1000)
    instance.ticket_flexing_selection = randomize()
    instance.alliance = create_models_alliance_rule_v1_example()
    instance.alliance_flexing_rule = [create_models_alliance_flexing_rule_example()]
    instance.bucket_mmr_rule = create_models_bucket_mmr_rule_example()
    instance.flexing_rules = [create_models_flexing_rule_example()]
    instance.match_options = create_models_match_option_rule_example()
    instance.matching_rules = [create_models_matching_rule_example()]
    instance.sort_ticket = create_models_sort_ticket_example()
    instance.sort_tickets = [create_models_sort_ticket_rule_example()]
    instance.sub_game_modes = {}
    instance.ticket_flexing_selections = [create_models_selection_rule_example()]
    instance.use_newest_ticket_for_flexing = randomize("bool")
    return instance


def create_models_selection_rule_example() -> ModelsSelectionRule:
    instance = ModelsSelectionRule()
    instance.selection = randomize()
    instance.threshold = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_sort_ticket_example() -> ModelsSortTicket:
    instance = ModelsSortTicket()
    instance.search_result = randomize()
    instance.ticket_queue = randomize()
    return instance


def create_models_sort_ticket_rule_example() -> ModelsSortTicketRule:
    instance = ModelsSortTicketRule()
    instance.search_result = randomize()
    instance.threshold = randomize("int", min_val=1, max_val=1000)
    instance.ticket_queue = randomize()
    return instance


def create_models_stat_resume_response_example() -> ModelsStatResumeResponse:
    instance = ModelsStatResumeResponse()
    instance.max = randomize()
    instance.mean = randomize()
    instance.min = randomize()
    instance.multiplier = randomize()
    instance.stddev = randomize()
    instance.value_shifts = {randomize(): randomize()}
    instance.zscores = {randomize(): randomize()}
    return instance


def create_models_sub_game_mode_example() -> ModelsSubGameMode:
    instance = ModelsSubGameMode()
    instance.alliance = create_models_alliance_rule_example()
    instance.name = randomize()
    instance.alliance_flexing_rule = [create_models_alliance_flexing_rule_example()]
    return instance


def create_models_ticket_metric_result_record_example() -> (
    ModelsTicketMetricResultRecord
):
    instance = ModelsTicketMetricResultRecord()
    instance.queue_time = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_alliance_rule_example() -> ModelsUpdateAllianceRule:
    instance = ModelsUpdateAllianceRule()
    instance.combination = create_models_combination_example()
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_channel_request_example() -> ModelsUpdateChannelRequest:
    instance = ModelsUpdateChannelRequest()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.find_match_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.joinable = randomize("bool")
    instance.max_delay_ms = randomize("int", min_val=1, max_val=1000)
    instance.rule_set = create_models_update_ruleset_example()
    instance.session_queue_timeout_seconds = randomize("int", min_val=1, max_val=1000)
    instance.social_matchmaking = randomize("bool")
    instance.use_sub_gamemode = randomize("bool")
    instance.blocked_player_option = randomize()
    instance.region_expansion_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_expansion_rate_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_initial_range_ms = randomize("int", min_val=1, max_val=1000)
    instance.region_latency_max_ms = randomize("int", min_val=1, max_val=1000)
    instance.sub_gamemode_selection = randomize()
    instance.ticket_observability_enable = randomize("bool")
    return instance


def create_models_update_play_time_weight_request_example() -> (
    ModelsUpdatePlayTimeWeightRequest
):
    instance = ModelsUpdatePlayTimeWeightRequest()
    instance.playtime = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    instance.weight = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_player_playtime_weight_response_example() -> (
    ModelsUpdatePlayerPlaytimeWeightResponse
):
    instance = ModelsUpdatePlayerPlaytimeWeightResponse()
    instance.playtime = randomize()
    instance.user_id = randomize("uid")
    instance.weight = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_ruleset_example() -> ModelsUpdateRuleset:
    instance = ModelsUpdateRuleset()
    instance.alliance = create_models_update_alliance_rule_example()
    instance.alliance_flexing_rule = [create_models_alliance_flexing_rule_example()]
    instance.batch_size = randomize("int", min_val=1, max_val=1000)
    instance.sort_ticket = create_models_sort_ticket_example()
    instance.sort_tickets = [create_models_sort_ticket_rule_example()]
    instance.ticket_flexing_selection = randomize()
    instance.ticket_flexing_selections = [create_models_selection_rule_example()]
    instance.bucket_mmr_rule = create_models_bucket_mmr_rule_example()
    instance.flexing_rules = [create_models_flexing_rule_example()]
    instance.match_options = create_models_match_option_rule_example()
    instance.matching_rules = [create_models_matching_rule_example()]
    instance.sub_game_modes = create_models_update_ruleset_sub_game_modes_example()
    instance.use_newest_ticket_for_flexing = randomize("bool")
    return instance


def create_models_update_ruleset_sub_game_modes_example() -> (
    ModelsUpdateRulesetSubGameModes
):
    instance = ModelsUpdateRulesetSubGameModes()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_response_error_v1_example() -> ResponseErrorV1:
    instance = ResponseErrorV1()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_service_get_session_history_detailed_response_item_example() -> (
    ServiceGetSessionHistoryDetailedResponseItem
):
    instance = ServiceGetSessionHistoryDetailedResponseItem()
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.created_at = randomize("date")
    instance.event_description = randomize()
    instance.event_name = randomize()
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.joinable = randomize("bool")
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    instance.party_id = randomize("uid")
    return instance


def create_service_get_session_history_search_response_example() -> (
    ServiceGetSessionHistorySearchResponse
):
    instance = ServiceGetSessionHistorySearchResponse()
    instance.data = [create_service_get_session_history_search_response_item_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_service_get_session_history_search_response_item_example() -> (
    ServiceGetSessionHistorySearchResponseItem
):
    instance = ServiceGetSessionHistorySearchResponseItem()
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.created_at = randomize("date")
    instance.event_description = randomize()
    instance.event_name = randomize()
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.joinable = randomize("bool")
    instance.match_id = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    instance.sub_game_mode = [randomize()]
    instance.party_id = randomize("uid")
    return instance


def create_service_get_session_history_search_response_item_v2_example() -> (
    ServiceGetSessionHistorySearchResponseItemV2
):
    instance = ServiceGetSessionHistorySearchResponseItemV2()
    instance.created_at = randomize("date")
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.joinable = randomize("bool")
    instance.match_id = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.sub_game_mode = [randomize()]
    return instance


def create_service_get_session_history_search_response_v2_example() -> (
    ServiceGetSessionHistorySearchResponseV2
):
    instance = ServiceGetSessionHistorySearchResponseV2()
    instance.data = [
        create_service_get_session_history_search_response_item_v2_example()
    ]
    instance.pagination = create_models_pagination_example()
    return instance
