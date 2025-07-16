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

from ..api.sessionhistory.models import ApimodelsXRayBulkTicketObservabilityRequest
from ..api.sessionhistory.models import ApimodelsXRayBulkTicketObservabilityResponse
from ..api.sessionhistory.models import ApimodelsXRayTicketObservabilityRequest
from ..api.sessionhistory.models import ApimodelsXRayTicketObservabilityResponse
from ..api.sessionhistory.models import ModelsAllianceRule
from ..api.sessionhistory.models import ModelsMatchingRule
from ..api.sessionhistory.models import ResponseError


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


def create_models_alliance_rule_example() -> ModelsAllianceRule:
    instance = ModelsAllianceRule()
    instance.max_number = randomize("int", min_val=1, max_val=1000)
    instance.min_number = randomize("int", min_val=1, max_val=1000)
    instance.player_max_number = randomize("int", min_val=1, max_val=1000)
    instance.player_min_number = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_matching_rule_example() -> ModelsMatchingRule:
    instance = ModelsMatchingRule()
    instance.attribute = randomize()
    instance.criteria = randomize()
    instance.reference = randomize("int", min_val=1, max_val=1000)
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
