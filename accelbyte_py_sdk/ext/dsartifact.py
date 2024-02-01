# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Artifact Manager

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

from ..api.dsartifact.models import LogAppMessageDeclaration
from ..api.dsartifact.models import ModelsAllQueueResult
from ..api.dsartifact.models import ModelsArtifactFileStatus
from ..api.dsartifact.models import ModelsListAllQueueResponse
from ..api.dsartifact.models import ModelsListNodesIPAddress
from ..api.dsartifact.models import ModelsListQueueResponse
from ..api.dsartifact.models import ModelsListTerminatedServersResponse
from ..api.dsartifact.models import ModelsMatchResult
from ..api.dsartifact.models import ModelsNotifPayloadServerStatusChange
from ..api.dsartifact.models import ModelsPagingCursor
from ..api.dsartifact.models import ModelsQueue
from ..api.dsartifact.models import ModelsQueueResult
from ..api.dsartifact.models import ModelsRequestMatchMember
from ..api.dsartifact.models import ModelsRequestMatchParty
from ..api.dsartifact.models import ModelsRequestMatchingAlly
from ..api.dsartifact.models import ModelsServer
from ..api.dsartifact.models import ModelsStatusHistory
from ..api.dsartifact.models import ResponseError


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_models_all_queue_result_example() -> ModelsAllQueueResult:
    instance = ModelsAllQueueResult()
    instance.allocation_id = randomize()
    instance.created_at = randomize("date")
    instance.failed = randomize("bool")
    instance.failed_reason = randomize()
    instance.node_ip = randomize()
    instance.pod_name = randomize()
    instance.uploading = randomize("bool")
    return instance


def create_models_artifact_file_status_example() -> ModelsArtifactFileStatus:
    instance = ModelsArtifactFileStatus()
    instance.artifact_existence = randomize("bool")
    instance.artifact_status = randomize()
    return instance


def create_models_list_all_queue_response_example() -> ModelsListAllQueueResponse:
    instance = ModelsListAllQueueResponse()
    instance.data = [create_models_all_queue_result_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_list_nodes_ip_address_example() -> ModelsListNodesIPAddress:
    instance = ModelsListNodesIPAddress()
    instance.ip_addresses = [randomize()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_list_queue_response_example() -> ModelsListQueueResponse:
    instance = ModelsListQueueResponse()
    instance.data = [create_models_queue_result_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_list_terminated_servers_response_example() -> (
    ModelsListTerminatedServersResponse
):
    instance = ModelsListTerminatedServersResponse()
    instance.data = [create_models_notif_payload_server_status_change_example()]
    instance.paging = create_models_paging_cursor_example()
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
    instance.source = randomize()
    return instance


def create_models_paging_cursor_example() -> ModelsPagingCursor:
    instance = ModelsPagingCursor()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_queue_example() -> ModelsQueue:
    instance = ModelsQueue()
    instance.allocation_id = randomize()
    instance.created_at = randomize("date")
    instance.failed = randomize("bool")
    instance.failed_reason = randomize()
    instance.namespace = randomize("slug")
    instance.node_ip = randomize()
    instance.pod_name = randomize()
    instance.uploading = randomize("bool")
    return instance


def create_models_queue_result_example() -> ModelsQueueResult:
    instance = ModelsQueueResult()
    instance.allocation_id = randomize()
    instance.created_at = randomize("date")
    instance.pod_name = randomize()
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
    instance.allocation_id = randomize()
    instance.alternate_ips = [randomize()]
    instance.artifact_path = randomize()
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.deployment = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.is_core_dump_enabled = randomize("bool")
    instance.last_update = randomize("date")
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.params = randomize()
    instance.pod_name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.provider = randomize()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.status = randomize()
    instance.status_history = [create_models_status_history_example()]
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
