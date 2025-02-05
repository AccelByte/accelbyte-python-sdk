# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Login Queue Service

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

from ..api.loginqueue.models import ApimodelsConfigurationRequest
from ..api.loginqueue.models import ApimodelsConfigurationResponse
from ..api.loginqueue.models import ApimodelsLink
from ..api.loginqueue.models import ApimodelsQueueStatusResponse
from ..api.loginqueue.models import ApimodelsRefreshTicketResponse
from ..api.loginqueue.models import ResponseError


def create_apimodels_configuration_request_example() -> ApimodelsConfigurationRequest:
    instance = ApimodelsConfigurationRequest()
    instance.enabled = randomize("bool")
    instance.max_concurrency = randomize("int", min_val=1, max_val=1000)
    instance.max_login_rate = randomize("int", min_val=1, max_val=1000)
    instance.min_activation_period_in_second = randomize("int", min_val=1, max_val=1000)
    instance.player_polling_time_in_second = randomize("int", min_val=1, max_val=1000)
    instance.player_reconnect_grace_period_in_second = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.queue_reconnect_grace_period_in_second = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.safety_margin_percentage = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_configuration_response_example() -> ApimodelsConfigurationResponse:
    instance = ApimodelsConfigurationResponse()
    instance.enabled = randomize("bool")
    instance.max_concurrency = randomize("int", min_val=1, max_val=1000)
    instance.max_login_rate = randomize("int", min_val=1, max_val=1000)
    instance.min_activation_period_in_second = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.player_polling_time_in_second = randomize("int", min_val=1, max_val=1000)
    instance.player_reconnect_grace_period_in_second = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.queue_reconnect_grace_period_in_second = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.safety_margin_percentage = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_link_example() -> ApimodelsLink:
    instance = ApimodelsLink()
    instance.action = randomize()
    instance.href = randomize()
    return instance


def create_apimodels_queue_status_response_example() -> ApimodelsQueueStatusResponse:
    instance = ApimodelsQueueStatusResponse()
    instance.is_active = randomize("bool")
    instance.logged_user_count = randomize("int", min_val=1, max_val=1000)
    instance.login_rps = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.queue_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_refresh_ticket_response_example() -> (
    ApimodelsRefreshTicketResponse
):
    instance = ApimodelsRefreshTicketResponse()
    instance.cancel = create_apimodels_link_example()
    instance.estimated_waiting_time_in_seconds = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.namespace = randomize("slug")
    instance.player_polling_time_in_seconds = randomize("int", min_val=1, max_val=1000)
    instance.position = randomize("int", min_val=1, max_val=1000)
    instance.reconnect_expired_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
