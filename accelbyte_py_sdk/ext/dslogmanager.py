# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ds Log Manager Service (3.2.0)

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

from ..api.dslogmanager.models import LogAppMessageDeclaration
from ..api.dslogmanager.models import ModelsAllocationEvent
from ..api.dslogmanager.models import ModelsBatchDownloadLogsRequest
from ..api.dslogmanager.models import ModelsDownloadLogsRequest
from ..api.dslogmanager.models import ModelsListTerminatedServersResponse
from ..api.dslogmanager.models import ModelsLogFileStatus
from ..api.dslogmanager.models import ModelsMatchResult
from ..api.dslogmanager.models import ModelsNotifPayloadServerStatusChange
from ..api.dslogmanager.models import ModelsPagingCursor
from ..api.dslogmanager.models import ModelsRequestMatchMember
from ..api.dslogmanager.models import ModelsRequestMatchParty
from ..api.dslogmanager.models import ModelsRequestMatchingAlly
from ..api.dslogmanager.models import ModelsServer
from ..api.dslogmanager.models import ModelsServerLogs
from ..api.dslogmanager.models import ModelsStatusHistory
from ..api.dslogmanager.models import ResponseError


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_models_allocation_event_example() -> ModelsAllocationEvent:
    instance = ModelsAllocationEvent()
    instance.description = randomize()
    instance.time_stamp = randomize("date")
    instance.type_ = randomize()
    return instance


def create_models_batch_download_logs_request_example() -> (
    ModelsBatchDownloadLogsRequest
):
    instance = ModelsBatchDownloadLogsRequest()
    instance.downloads = [create_models_download_logs_request_example()]
    return instance


def create_models_download_logs_request_example() -> ModelsDownloadLogsRequest:
    instance = ModelsDownloadLogsRequest()
    instance.alloc_id = randomize()
    instance.namespace = randomize("slug")
    instance.pod_name = randomize()
    return instance


def create_models_list_terminated_servers_response_example() -> (
    ModelsListTerminatedServersResponse
):
    instance = ModelsListTerminatedServersResponse()
    instance.data = [create_models_notif_payload_server_status_change_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_log_file_status_example() -> ModelsLogFileStatus:
    instance = ModelsLogFileStatus()
    instance.log_existence = randomize("bool")
    return instance


def create_models_match_result_example() -> ModelsMatchResult:
    instance = ModelsMatchResult()
    instance.game_mode = randomize()
    instance.matching_allies = [create_models_request_matching_ally_example()]
    instance.namespace = randomize("slug")
    instance.session_id = randomize("uid")
    return instance


def create_models_notif_payload_server_status_change_example() -> (
    ModelsNotifPayloadServerStatusChange
):
    instance = ModelsNotifPayloadServerStatusChange()
    instance.match = create_models_match_result_example()
    instance.server = create_models_server_example()
    return instance


def create_models_paging_cursor_example() -> ModelsPagingCursor:
    instance = ModelsPagingCursor()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_request_match_member_example() -> ModelsRequestMatchMember:
    instance = ModelsRequestMatchMember()
    instance.user_id = randomize("uid")
    return instance


def create_models_request_match_party_example() -> ModelsRequestMatchParty:
    instance = ModelsRequestMatchParty()
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.party_members = [create_models_request_match_member_example()]
    return instance


def create_models_request_matching_ally_example() -> ModelsRequestMatchingAlly:
    instance = ModelsRequestMatchingAlly()
    instance.matching_parties = [create_models_request_match_party_example()]
    return instance


def create_models_server_example() -> ModelsServer:
    instance = ModelsServer()
    instance.allocation_events = [create_models_allocation_event_example()]
    instance.allocation_id = randomize()
    instance.alternate_ips = [randomize()]
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.deployment = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.is_override_game_version = randomize("bool")
    instance.job_id = randomize()
    instance.last_update = randomize("date")
    instance.match_id = randomize()
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.params = randomize()
    instance.pod_name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.provider = randomize()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.status = randomize()
    instance.status_history = [create_models_status_history_example()]
    instance.termination_reason = randomize()
    return instance


def create_models_server_logs_example() -> ModelsServerLogs:
    instance = ModelsServerLogs()
    instance.std_err_logs = randomize()
    instance.std_out_logs = randomize()
    return instance


def create_models_status_history_example() -> ModelsStatusHistory:
    instance = ModelsStatusHistory()
    instance.status = randomize()
    instance.time_stamp = randomize("date")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
