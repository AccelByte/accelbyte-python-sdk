# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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
from ..api.match2.models import ApiBackfillGetResponse
from ..api.match2.models import ApiBackfillProposalResponse
from ..api.match2.models import ApiListMatchFunctionsResponse
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
from ..api.match2.models import ApiParty
from ..api.match2.models import ApiPlayerData
from ..api.match2.models import ApiProposedProposal
from ..api.match2.models import ApiRuleSetPayload
from ..api.match2.models import ApiTeam
from ..api.match2.models import ApiTicket
from ..api.match2.models import ModelsPagination
from ..api.match2.models import ResponseError


def create_api_back_fill_accept_request_example() -> ApiBackFillAcceptRequest:
    instance = ApiBackFillAcceptRequest()
    instance.proposal_id = randomize()
    instance.stop = randomize("bool")
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


def create_api_list_match_functions_response_example() -> ApiListMatchFunctionsResponse:
    instance = ApiListMatchFunctionsResponse()
    instance.configs = [create_api_match_function_config_example()]
    instance.functions = [randomize()]
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
    return instance


def create_api_match_function_override_example() -> ApiMatchFunctionOverride:
    instance = ApiMatchFunctionOverride()
    instance.backfill_matches = randomize()
    instance.hydration = [randomize()]
    instance.make_matches = randomize()
    instance.stat_codes = [randomize()]
    instance.validation = [randomize()]
    return instance


def create_api_match_function_request_example() -> ApiMatchFunctionRequest:
    instance = ApiMatchFunctionRequest()
    instance.match_function = randomize()
    instance.url = randomize("url")
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
    instance.session_id = randomize("uid")
    return instance


def create_api_match_ticket_response_example() -> ApiMatchTicketResponse:
    instance = ApiMatchTicketResponse()
    instance.match_ticket_id = randomize()
    return instance


def create_api_match_ticket_status_example() -> ApiMatchTicketStatus:
    instance = ApiMatchTicketStatus()
    instance.match_found = randomize("bool")
    instance.session_id = randomize("uid")
    instance.proposed_proposal = create_api_proposed_proposal_example()
    return instance


def create_api_party_example() -> ApiParty:
    instance = ApiParty()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_api_player_data_example() -> ApiPlayerData:
    instance = ApiPlayerData()
    instance.attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.player_id = randomize()
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


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
