# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (1.4.1)

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
from ..api.match2.models import ApiListMatchFunctionsResponse
from ..api.match2.models import ApiListMatchPoolsResponse
from ..api.match2.models import ApiListRuleSetsResponse
from ..api.match2.models import ApiMatchFunctionConfig
from ..api.match2.models import ApiMatchFunctionRequest
from ..api.match2.models import ApiMatchPool
from ..api.match2.models import ApiMatchPoolConfig
from ..api.match2.models import ApiMatchRuleSet
from ..api.match2.models import ApiMatchRuleSetData
from ..api.match2.models import ApiMatchRuleSetNameData
from ..api.match2.models import ApiMatchTicketRequest
from ..api.match2.models import ApiMatchTicketResponse
from ..api.match2.models import ApiMatchTicketStatus
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


def create_api_match_function_config_example() -> ApiMatchFunctionConfig:
    instance = ApiMatchFunctionConfig()
    instance.match_function = randomize()
    instance.url = randomize("url")
    return instance


def create_api_match_function_request_example() -> ApiMatchFunctionRequest:
    instance = ApiMatchFunctionRequest()
    instance.match_function = randomize()
    instance.url = randomize("url")
    return instance


def create_api_match_pool_example() -> ApiMatchPool:
    instance = ApiMatchPool()
    instance.backfill_ticket_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.match_function = randomize()
    instance.name = randomize()
    instance.rule_set = randomize()
    instance.session_template = randomize()
    instance.ticket_expiration_seconds = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_match_pool_config_example() -> ApiMatchPoolConfig:
    instance = ApiMatchPoolConfig()
    instance.backfill_ticket_expiration_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.match_function = randomize()
    instance.rule_set = randomize()
    instance.session_template = randomize()
    instance.ticket_expiration_seconds = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_match_rule_set_example() -> ApiMatchRuleSet:
    instance = ApiMatchRuleSet()
    instance.data = randomize()
    instance.name = randomize()
    return instance


def create_api_match_rule_set_data_example() -> ApiMatchRuleSetData:
    instance = ApiMatchRuleSetData()
    instance.data = randomize()
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
