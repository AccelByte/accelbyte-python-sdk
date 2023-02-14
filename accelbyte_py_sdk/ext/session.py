# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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

from ..api.session.models import ApimodelsConfigurationTemplateResponse
from ..api.session.models import ApimodelsConfigurationTemplatesResponse
from ..api.session.models import ApimodelsCreateConfigurationTemplateRequest
from ..api.session.models import ApimodelsCreateGameSessionRequest
from ..api.session.models import ApimodelsCreatePartyRequest
from ..api.session.models import ApimodelsDSInformationResponse
from ..api.session.models import ApimodelsGameSessionQueryResponse
from ..api.session.models import ApimodelsGameSessionResponse
from ..api.session.models import ApimodelsJoinByCodeRequest
from ..api.session.models import ApimodelsKickResponse
from ..api.session.models import ApimodelsPagination
from ..api.session.models import ApimodelsPartyQueryResponse
from ..api.session.models import ApimodelsPartySessionResponse
from ..api.session.models import ApimodelsPlayerAttributesRequestBody
from ..api.session.models import ApimodelsPlayerAttributesResponseBody
from ..api.session.models import ApimodelsPromoteLeaderRequest
from ..api.session.models import ApimodelsPublicConfiguration
from ..api.session.models import ApimodelsRequestMember
from ..api.session.models import ApimodelsSessionInviteRequest
from ..api.session.models import ApimodelsUpdateConfigurationTemplateRequest
from ..api.session.models import ApimodelsUpdateGameSessionMemberStatusResponse
from ..api.session.models import ApimodelsUpdateGameSessionRequest
from ..api.session.models import ApimodelsUpdatePartyRequest
from ..api.session.models import ApimodelsUserResponse
from ..api.session.models import ModelsGameServer
from ..api.session.models import ModelsPartyMembers
from ..api.session.models import ModelsTeam
from ..api.session.models import ModelsUserPlatformInfo
from ..api.session.models import ResponseError


def create_apimodels_configuration_template_response_example() -> (
    ApimodelsConfigurationTemplateResponse
):
    instance = ApimodelsConfigurationTemplateResponse()
    instance.client_version = randomize()
    instance.created_at = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.last = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    instance.updated_at = randomize()
    return instance


def create_apimodels_configuration_templates_response_example() -> (
    ApimodelsConfigurationTemplatesResponse
):
    instance = ApimodelsConfigurationTemplatesResponse()
    instance.data = [create_apimodels_configuration_template_response_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_create_configuration_template_request_example() -> (
    ApimodelsCreateConfigurationTemplateRequest
):
    instance = ApimodelsCreateConfigurationTemplateRequest()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    return instance


def create_apimodels_create_game_session_request_example() -> (
    ApimodelsCreateGameSessionRequest
):
    instance = ApimodelsCreateGameSessionRequest()
    instance.attributes = {randomize(): randomize()}
    instance.backfill_ticket_id = randomize()
    instance.client_version = randomize()
    instance.configuration_name = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.match_pool = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.requested_regions = [randomize()]
    instance.server_name = randomize()
    instance.teams = [create_models_team_example()]
    instance.text_chat = randomize("bool")
    instance.ticket_i_ds = [randomize()]
    instance.type_ = randomize()
    return instance


def create_apimodels_create_party_request_example() -> ApimodelsCreatePartyRequest:
    instance = ApimodelsCreatePartyRequest()
    instance.attributes = {randomize(): randomize()}
    instance.configuration_name = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.members = [create_apimodels_request_member_example()]
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    return instance


def create_apimodels_ds_information_response_example() -> (
    ApimodelsDSInformationResponse
):
    instance = ApimodelsDSInformationResponse()
    instance.requested_at = randomize()
    instance.server = create_models_game_server_example()
    instance.status = randomize()
    instance.status_v2 = randomize()
    return instance


def create_apimodels_game_session_query_response_example() -> (
    ApimodelsGameSessionQueryResponse
):
    instance = ApimodelsGameSessionQueryResponse()
    instance.data = [create_apimodels_game_session_response_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_game_session_response_example() -> ApimodelsGameSessionResponse:
    instance = ApimodelsGameSessionResponse()
    instance.attributes = {randomize(): randomize()}
    instance.backfill_ticket_id = randomize()
    instance.configuration = create_apimodels_public_configuration_example()
    instance.created_at = randomize()
    instance.created_by = randomize()
    instance.ds_information = create_apimodels_ds_information_response_example()
    instance.id_ = randomize()
    instance.is_active = randomize("bool")
    instance.is_full = randomize("bool")
    instance.leader_id = randomize()
    instance.match_pool = randomize()
    instance.members = [create_apimodels_user_response_example()]
    instance.namespace = randomize("slug")
    instance.teams = [create_models_team_example()]
    instance.ticket_i_ds = [randomize()]
    instance.updated_at = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    instance.expired_at = randomize()
    return instance


def create_apimodels_join_by_code_request_example() -> ApimodelsJoinByCodeRequest:
    instance = ApimodelsJoinByCodeRequest()
    instance.code = randomize()
    return instance


def create_apimodels_kick_response_example() -> ApimodelsKickResponse:
    instance = ApimodelsKickResponse()
    instance.leader_id = randomize()
    instance.members = [create_apimodels_user_response_example()]
    instance.party_id = randomize("uid")
    return instance


def create_apimodels_pagination_example() -> ApimodelsPagination:
    instance = ApimodelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_apimodels_party_query_response_example() -> ApimodelsPartyQueryResponse:
    instance = ApimodelsPartyQueryResponse()
    instance.data = [create_apimodels_party_session_response_example()]
    instance.paging = create_apimodels_pagination_example()
    return instance


def create_apimodels_party_session_response_example() -> ApimodelsPartySessionResponse:
    instance = ApimodelsPartySessionResponse()
    instance.attributes = {randomize(): randomize()}
    instance.configuration = create_apimodels_public_configuration_example()
    instance.created_at = randomize()
    instance.created_by = randomize()
    instance.id_ = randomize()
    instance.is_active = randomize("bool")
    instance.is_full = randomize("bool")
    instance.leader_id = randomize()
    instance.members = [create_apimodels_user_response_example()]
    instance.namespace = randomize("slug")
    instance.updated_at = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    instance.code = randomize()
    instance.expired_at = randomize()
    return instance


def create_apimodels_player_attributes_request_body_example() -> (
    ApimodelsPlayerAttributesRequestBody
):
    instance = ApimodelsPlayerAttributesRequestBody()
    instance.crossplay_enabled = randomize("bool")
    instance.data = {randomize(): randomize()}
    instance.platforms = [create_models_user_platform_info_example()]
    return instance


def create_apimodels_player_attributes_response_body_example() -> (
    ApimodelsPlayerAttributesResponseBody
):
    instance = ApimodelsPlayerAttributesResponseBody()
    instance.crossplay_enabled = randomize("bool")
    instance.data = {randomize(): randomize()}
    instance.platforms = [create_models_user_platform_info_example()]
    instance.user_id = randomize("uid")
    return instance


def create_apimodels_promote_leader_request_example() -> ApimodelsPromoteLeaderRequest:
    instance = ApimodelsPromoteLeaderRequest()
    instance.leader_id = randomize()
    return instance


def create_apimodels_public_configuration_example() -> ApimodelsPublicConfiguration:
    instance = ApimodelsPublicConfiguration()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    return instance


def create_apimodels_request_member_example() -> ApimodelsRequestMember:
    instance = ApimodelsRequestMember()
    instance.id_ = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    return instance


def create_apimodels_session_invite_request_example() -> ApimodelsSessionInviteRequest:
    instance = ApimodelsSessionInviteRequest()
    instance.user_id = randomize("uid")
    return instance


def create_apimodels_update_configuration_template_request_example() -> (
    ApimodelsUpdateConfigurationTemplateRequest
):
    instance = ApimodelsUpdateConfigurationTemplateRequest()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    return instance


def create_apimodels_update_game_session_member_status_response_example() -> (
    ApimodelsUpdateGameSessionMemberStatusResponse
):
    instance = ApimodelsUpdateGameSessionMemberStatusResponse()
    instance.status = randomize()
    instance.status_v2 = randomize()
    return instance


def create_apimodels_update_game_session_request_example() -> (
    ApimodelsUpdateGameSessionRequest
):
    instance = ApimodelsUpdateGameSessionRequest()
    instance.attributes = {randomize(): randomize()}
    instance.backfill_ticket_id = randomize()
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.match_pool = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.requested_regions = [randomize()]
    instance.teams = [create_models_team_example()]
    instance.ticket_i_ds = [randomize()]
    instance.type_ = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_update_party_request_example() -> ApimodelsUpdatePartyRequest:
    instance = ApimodelsUpdatePartyRequest()
    instance.attributes = {randomize(): randomize()}
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_user_response_example() -> ApimodelsUserResponse:
    instance = ApimodelsUserResponse()
    instance.id_ = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.status = randomize()
    instance.status_v2 = randomize()
    instance.updated_at = randomize()
    return instance


def create_models_game_server_example() -> ModelsGameServer:
    instance = ModelsGameServer()
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


def create_models_party_members_example() -> ModelsPartyMembers:
    instance = ModelsPartyMembers()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_models_team_example() -> ModelsTeam:
    instance = ModelsTeam()
    instance.parties = [create_models_party_members_example()]
    instance.user_i_ds = [randomize()]
    return instance


def create_models_user_platform_info_example() -> ModelsUserPlatformInfo:
    instance = ModelsUserPlatformInfo()
    instance.name = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
