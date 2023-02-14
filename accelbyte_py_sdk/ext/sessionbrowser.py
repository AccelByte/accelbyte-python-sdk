# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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

from ..api.sessionbrowser.models import ModelsActiveCustomGameResponse
from ..api.sessionbrowser.models import ModelsActiveMatchmakingGameResponse
from ..api.sessionbrowser.models import ModelsAddPlayerRequest
from ..api.sessionbrowser.models import ModelsAddPlayerResponse
from ..api.sessionbrowser.models import ModelsAdminSessionResponse
from ..api.sessionbrowser.models import ModelsCountActiveSessionResponse
from ..api.sessionbrowser.models import ModelsCreateSessionRequest
from ..api.sessionbrowser.models import ModelsCustomGameResponse
from ..api.sessionbrowser.models import ModelsGameSession
from ..api.sessionbrowser.models import ModelsGameSessionSetting
from ..api.sessionbrowser.models import ModelsGetSessionHistoryDetailedResponseItem
from ..api.sessionbrowser.models import ModelsGetSessionHistorySearchResponseItemV2
from ..api.sessionbrowser.models import ModelsGetSessionHistorySearchResponseV2
from ..api.sessionbrowser.models import ModelsJoinGameSessionRequest
from ..api.sessionbrowser.models import ModelsMatchAttributes
from ..api.sessionbrowser.models import ModelsMatchMaking
from ..api.sessionbrowser.models import ModelsMatchingAlly
from ..api.sessionbrowser.models import ModelsMatchingParty
from ..api.sessionbrowser.models import ModelsPagination
from ..api.sessionbrowser.models import ModelsPagingCursor
from ..api.sessionbrowser.models import ModelsPartyMember
from ..api.sessionbrowser.models import ModelsRecentPlayerHistory
from ..api.sessionbrowser.models import ModelsRecentPlayerQueryResponse
from ..api.sessionbrowser.models import ModelsServer
from ..api.sessionbrowser.models import ModelsSessionByUserIDsResponse
from ..api.sessionbrowser.models import ModelsSessionPlayerHistory
from ..api.sessionbrowser.models import ModelsSessionPlayerJoining
from ..api.sessionbrowser.models import ModelsSessionQueryResponse
from ..api.sessionbrowser.models import ModelsSessionResponse
from ..api.sessionbrowser.models import ModelsStatusHistory
from ..api.sessionbrowser.models import ModelsUpdateSessionRequest
from ..api.sessionbrowser.models import ModelsUpdateSettingsRequest
from ..api.sessionbrowser.models import ResponseError
from ..api.sessionbrowser.models import RestapiErrorResponseV2
from ..api.sessionbrowser.models import RestapiErrorV1


def create_models_active_custom_game_response_example() -> (
    ModelsActiveCustomGameResponse
):
    instance = ModelsActiveCustomGameResponse()
    instance.pagination = create_models_paging_cursor_example()
    instance.sessions = [create_models_custom_game_response_example()]
    return instance


def create_models_active_matchmaking_game_response_example() -> (
    ModelsActiveMatchmakingGameResponse
):
    instance = ModelsActiveMatchmakingGameResponse()
    instance.pagination = create_models_paging_cursor_example()
    instance.sessions = [create_models_game_session_example()]
    return instance


def create_models_add_player_request_example() -> ModelsAddPlayerRequest:
    instance = ModelsAddPlayerRequest()
    instance.as_spectator = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_models_add_player_response_example() -> ModelsAddPlayerResponse:
    instance = ModelsAddPlayerResponse()
    instance.status = randomize("bool")
    return instance


def create_models_admin_session_response_example() -> ModelsAdminSessionResponse:
    instance = ModelsAdminSessionResponse()
    instance.all_players = [randomize()]
    instance.created_at = randomize("date")
    instance.game_session_setting = create_models_game_session_setting_example()
    instance.game_version = randomize("version")
    instance.joinable = randomize("bool")
    instance.match = create_models_match_making_example()
    instance.namespace = randomize("slug")
    instance.players = [randomize()]
    instance.server = create_models_server_example()
    instance.session_id = randomize("uid")
    instance.session_type = randomize()
    instance.spectators = [randomize()]
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_models_count_active_session_response_example() -> (
    ModelsCountActiveSessionResponse
):
    instance = ModelsCountActiveSessionResponse()
    instance.custom_game = randomize("int", min_val=1, max_val=1000)
    instance.matchmaking_game = randomize("int", min_val=1, max_val=1000)
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_session_request_example() -> ModelsCreateSessionRequest:
    instance = ModelsCreateSessionRequest()
    instance.game_session_setting = create_models_game_session_setting_example()
    instance.game_version = randomize("version")
    instance.namespace = randomize("slug")
    instance.session_type = randomize()
    instance.username = randomize("slug")
    return instance


def create_models_custom_game_response_example() -> ModelsCustomGameResponse:
    instance = ModelsCustomGameResponse()
    instance.all_players = [randomize()]
    instance.created_at = randomize("date")
    instance.game_session_setting = create_models_game_session_setting_example()
    instance.joinable = randomize("bool")
    instance.namespace = randomize("slug")
    instance.players = [randomize()]
    instance.server = create_models_server_example()
    instance.session_id = randomize("uid")
    instance.session_type = randomize()
    instance.spectators = [randomize()]
    return instance


def create_models_game_session_example() -> ModelsGameSession:
    instance = ModelsGameSession()
    instance.all_players = [randomize()]
    instance.created_at = randomize("date")
    instance.game_session_setting = create_models_game_session_setting_example()
    instance.game_version = randomize("version")
    instance.joinable = randomize("bool")
    instance.match = create_models_match_making_example()
    instance.namespace = randomize("slug")
    instance.players = [randomize()]
    instance.server = create_models_server_example()
    instance.session_id = randomize("uid")
    instance.session_type = randomize()
    instance.spectators = [randomize()]
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_models_game_session_setting_example() -> ModelsGameSessionSetting:
    instance = ModelsGameSessionSetting()
    instance.allow_join_in_progress = randomize("bool")
    instance.current_internal_player = randomize("int", min_val=1, max_val=1000)
    instance.current_player = randomize("int", min_val=1, max_val=1000)
    instance.map_name = randomize()
    instance.max_internal_player = randomize("int", min_val=1, max_val=1000)
    instance.max_player = randomize("int", min_val=1, max_val=1000)
    instance.mode = randomize()
    instance.num_bot = randomize("int", min_val=1, max_val=1000)
    instance.password = randomize("password")
    instance.settings = {randomize(): randomize()}
    return instance


def create_models_get_session_history_detailed_response_item_example() -> (
    ModelsGetSessionHistoryDetailedResponseItem
):
    instance = ModelsGetSessionHistoryDetailedResponseItem()
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


def create_models_get_session_history_search_response_item_v2_example() -> (
    ModelsGetSessionHistorySearchResponseItemV2
):
    instance = ModelsGetSessionHistorySearchResponseItemV2()
    instance.created_at = randomize("date")
    instance.game_mode = randomize()
    instance.id_ = randomize()
    instance.joinable = randomize("bool")
    instance.joining = [create_models_session_player_joining_example()]
    instance.match_id = randomize()
    instance.namespace = randomize("slug")
    instance.players = [create_models_session_player_history_example()]
    instance.removed_reason = randomize()
    instance.session_type = randomize()
    instance.status = randomize()
    instance.sub_game_mode = [randomize()]
    return instance


def create_models_get_session_history_search_response_v2_example() -> (
    ModelsGetSessionHistorySearchResponseV2
):
    instance = ModelsGetSessionHistorySearchResponseV2()
    instance.data = [
        create_models_get_session_history_search_response_item_v2_example()
    ]
    instance.pagination = create_models_pagination_example()
    return instance


def create_models_join_game_session_request_example() -> ModelsJoinGameSessionRequest:
    instance = ModelsJoinGameSessionRequest()
    instance.password = randomize("password")
    return instance


def create_models_match_attributes_example() -> ModelsMatchAttributes:
    instance = ModelsMatchAttributes()
    instance.first_ticket_created_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_match_making_example() -> ModelsMatchMaking:
    instance = ModelsMatchMaking()
    instance.channel = randomize()
    instance.client_version = randomize()
    instance.created_at = randomize("date")
    instance.deployment = randomize()
    instance.event = randomize()
    instance.game_mode = randomize()
    instance.match_id = randomize()
    instance.matching_allies = [create_models_matching_ally_example()]
    instance.namespace = randomize("slug")
    instance.party_attributes = {randomize(): randomize()}
    instance.queued_at = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.server_name = randomize()
    instance.status = randomize()
    instance.sub_game_mode = [randomize()]
    instance.joinable = randomize("bool")
    instance.party_id = randomize("uid")
    return instance


def create_models_matching_ally_example() -> ModelsMatchingAlly:
    instance = ModelsMatchingAlly()
    instance.matching_parties = [create_models_matching_party_example()]
    return instance


def create_models_matching_party_example() -> ModelsMatchingParty:
    instance = ModelsMatchingParty()
    instance.match_attributes = create_models_match_attributes_example()
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.party_members = [create_models_party_member_example()]
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_paging_cursor_example() -> ModelsPagingCursor:
    instance = ModelsPagingCursor()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_party_member_example() -> ModelsPartyMember:
    instance = ModelsPartyMember()
    instance.extra_attributes = {randomize(): randomize()}
    instance.user_id = randomize("uid")
    return instance


def create_models_recent_player_history_example() -> ModelsRecentPlayerHistory:
    instance = ModelsRecentPlayerHistory()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.other_display_name = randomize()
    instance.other_id = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_models_recent_player_query_response_example() -> (
    ModelsRecentPlayerQueryResponse
):
    instance = ModelsRecentPlayerQueryResponse()
    instance.data = [create_models_recent_player_history_example()]
    return instance


def create_models_server_example() -> ModelsServer:
    instance = ModelsServer()
    instance.allocation_id = randomize()
    instance.alternate_ips = [randomize()]
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.cpu_request = randomize()
    instance.deployment = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.is_override_game_version = randomize("bool")
    instance.last_update = randomize("date")
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.mem_request = randomize()
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


def create_models_session_by_user_i_ds_response_example() -> (
    ModelsSessionByUserIDsResponse
):
    instance = ModelsSessionByUserIDsResponse()
    instance.data = [create_models_game_session_example()]
    return instance


def create_models_session_player_history_example() -> ModelsSessionPlayerHistory:
    instance = ModelsSessionPlayerHistory()
    instance.action = randomize()
    instance.date = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_models_session_player_joining_example() -> ModelsSessionPlayerJoining:
    instance = ModelsSessionPlayerJoining()
    instance.date = randomize("date")
    instance.state = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_session_query_response_example() -> ModelsSessionQueryResponse:
    instance = ModelsSessionQueryResponse()
    instance.pagination = create_models_paging_cursor_example()
    instance.sessions = [create_models_game_session_example()]
    return instance


def create_models_session_response_example() -> ModelsSessionResponse:
    instance = ModelsSessionResponse()
    instance.all_players = [randomize()]
    instance.created_at = randomize("date")
    instance.game_session_setting = create_models_game_session_setting_example()
    instance.game_version = randomize("version")
    instance.joinable = randomize("bool")
    instance.match = create_models_match_making_example()
    instance.namespace = randomize("slug")
    instance.players = [randomize()]
    instance.server = create_models_server_example()
    instance.session_id = randomize("uid")
    instance.session_type = randomize()
    instance.spectators = [randomize()]
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_models_status_history_example() -> ModelsStatusHistory:
    instance = ModelsStatusHistory()
    instance.status = randomize()
    instance.time_stamp = randomize("date")
    return instance


def create_models_update_session_request_example() -> ModelsUpdateSessionRequest:
    instance = ModelsUpdateSessionRequest()
    instance.game_max_player = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_settings_request_example() -> ModelsUpdateSettingsRequest:
    instance = ModelsUpdateSettingsRequest()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_restapi_error_response_v2_example() -> RestapiErrorResponseV2:
    instance = RestapiErrorResponseV2()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance


def create_restapi_error_v1_example() -> RestapiErrorV1:
    instance = RestapiErrorV1()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
