# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Analytics Game Telemetry

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

from ..api.gametelemetry.models import BaseErrorResponse
from ..api.gametelemetry.models import GetNamespaceEventResponse
from ..api.gametelemetry.models import HTTPValidationError
from ..api.gametelemetry.models import ListBaseResponseStr
from ..api.gametelemetry.models import PagedResponseGetNamespaceEventResponse
from ..api.gametelemetry.models import Paging
from ..api.gametelemetry.models import PlayTimeResponse
from ..api.gametelemetry.models import TelemetryBody
from ..api.gametelemetry.models import ValidationError


def create_base_error_response_example() -> BaseErrorResponse:
    instance = BaseErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_get_namespace_event_response_example() -> GetNamespaceEventResponse:
    instance = GetNamespaceEventResponse()
    instance.event_id = randomize()
    instance.event_name = randomize()
    instance.event_namespace = randomize("slug")
    instance.event_timestamp = randomize()
    instance.flight_id = randomize()
    instance.payload = {randomize(): randomize()}
    instance.user_id = randomize("uid")
    instance.user_namespace = randomize("slug")
    return instance


def create_http_validation_error_example() -> HTTPValidationError:
    instance = HTTPValidationError()
    instance.detail = [create_validation_error_example()]
    return instance


def create_list_base_response_str_example() -> ListBaseResponseStr:
    instance = ListBaseResponseStr()
    instance.data = [randomize()]
    return instance


def create_paged_response_get_namespace_event_response_example() -> (
    PagedResponseGetNamespaceEventResponse
):
    instance = PagedResponseGetNamespaceEventResponse()
    instance.data = [create_get_namespace_event_response_example()]
    instance.paging = create_paging_example()
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_play_time_response_example() -> PlayTimeResponse:
    instance = PlayTimeResponse()
    instance.total_playtime = randomize("int", min_val=1, max_val=1000)
    return instance


def create_telemetry_body_example() -> TelemetryBody:
    instance = TelemetryBody()
    instance.event_name = randomize()
    instance.event_namespace = randomize("slug")
    instance.payload = {randomize(): randomize()}
    instance.client_timestamp = randomize("date")
    instance.device_type = randomize()
    instance.event_id = randomize()
    instance.event_timestamp = randomize("date")
    return instance


def create_validation_error_example() -> ValidationError:
    instance = ValidationError()
    instance.loc = [randomize()]
    instance.msg = randomize()
    instance.type_ = randomize()
    return instance
