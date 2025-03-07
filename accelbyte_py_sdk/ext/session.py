# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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

from ..api.session.models import ApimodelsAppendTeamGameSessionRequest
from ..api.session.models import ApimodelsConfigAlertRequestCreate
from ..api.session.models import ApimodelsConfigAlertResponse
from ..api.session.models import ApimodelsConfigurationTemplateResponse
from ..api.session.models import ApimodelsConfigurationTemplatesResponse
from ..api.session.models import ApimodelsCreateConfigurationTemplateRequest
from ..api.session.models import ApimodelsCreateGameSessionRequest
from ..api.session.models import ApimodelsCreatePartyRequest
from ..api.session.models import ApimodelsDSInformationResponse
from ..api.session.models import ApimodelsDeleteBulkGameSessionRequest
from ..api.session.models import ApimodelsDeleteBulkGameSessionsAPIResponse
from ..api.session.models import ApimodelsDeleteBulkPartySessionRequest
from ..api.session.models import ApimodelsDeleteBulkPartySessionsAPIResponse
from ..api.session.models import ApimodelsEnvironmentVariableListResponse
from ..api.session.models import ApimodelsEnvironmentVariableResponse
from ..api.session.models import ApimodelsGameSessionQueryResponse
from ..api.session.models import ApimodelsGameSessionResponse
from ..api.session.models import ApimodelsGlobalConfigurationResponse
from ..api.session.models import ApimodelsJoinByCodeRequest
from ..api.session.models import ApimodelsKickResponse
from ..api.session.models import ApimodelsNativeSessionPagingResponse
from ..api.session.models import ApimodelsPSNAppServerCredentialRecord
from ..api.session.models import ApimodelsPagination
from ..api.session.models import ApimodelsPartyQueryResponse
from ..api.session.models import ApimodelsPartySessionResponse
from ..api.session.models import ApimodelsPlayerAttributesRequestBody
from ..api.session.models import ApimodelsPlayerAttributesResponseBody
from ..api.session.models import ApimodelsPlayerPlatform
from ..api.session.models import ApimodelsPlayersCurrentPlatformRequest
from ..api.session.models import ApimodelsPlayersCurrentPlatformResponse
from ..api.session.models import ApimodelsPromoteLeaderRequest
from ..api.session.models import ApimodelsPublicConfiguration
from ..api.session.models import ApimodelsPutGlobalConfigurationRequest
from ..api.session.models import ApimodelsPutPlatformCredentialsRequest
from ..api.session.models import ApimodelsRequestMember
from ..api.session.models import ApimodelsResponseDeleteBulkGameSessions
from ..api.session.models import ApimodelsResponseDeleteBulkPartySessions
from ..api.session.models import ApimodelsServerSecret
from ..api.session.models import ApimodelsSessionInviteRequest
from ..api.session.models import ApimodelsSessionInviteResponse
from ..api.session.models import ApimodelsSessionStorageRequest
from ..api.session.models import ApimodelsSetDSReadyRequest
from ..api.session.models import ApimodelsUpdateConfigurationTemplateRequest
from ..api.session.models import ApimodelsUpdateGameSessionBackfillRequest
from ..api.session.models import ApimodelsUpdateGameSessionMemberStatusResponse
from ..api.session.models import ApimodelsUpdateGameSessionRequest
from ..api.session.models import ApimodelsUpdateGamesessionDSInformationRequest
from ..api.session.models import ApimodelsUpdatePartyRequest
from ..api.session.models import ApimodelsUserResponse
from ..api.session.models import ApimodelsXblCertificateResponseBody
from ..api.session.models import LogconfigConfiguration
from ..api.session.models import ModelNativeSession
from ..api.session.models import ModelNativeSessionMember
from ..api.session.models import ModelsAsyncProcessDSRequest
from ..api.session.models import ModelsDSMConfigRecord
from ..api.session.models import ModelsDefaultDSMCConfig
from ..api.session.models import ModelsExtendConfiguration
from ..api.session.models import ModelsGameServer
from ..api.session.models import ModelsMemberActiveSession
from ..api.session.models import ModelsNativeSessionSetting
from ..api.session.models import ModelsPSNAppServerCredentials
from ..api.session.models import ModelsPartyMembers
from ..api.session.models import ModelsPlatformCredentials
from ..api.session.models import ModelsPortConfigurationAMS
from ..api.session.models import ModelsRecentPlayerQueryResponse
from ..api.session.models import ModelsRequestReconcileMaxActiveSession
from ..api.session.models import ModelsTeam
from ..api.session.models import ModelsUserInfoResponse
from ..api.session.models import ModelsUserPlatformInfo
from ..api.session.models import ModelsXBLCertificateCredential
from ..api.session.models import ResponseError


def create_apimodels_append_team_game_session_request_example() -> (
    ApimodelsAppendTeamGameSessionRequest
):
    instance = ApimodelsAppendTeamGameSessionRequest()
    instance.additional_members = [create_models_party_members_example()]
    instance.proposed_teams = [create_models_team_example()]
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_config_alert_request_create_example() -> (
    ApimodelsConfigAlertRequestCreate
):
    instance = ApimodelsConfigAlertRequestCreate()
    instance.duration_days = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_config_alert_response_example() -> ApimodelsConfigAlertResponse:
    instance = ApimodelsConfigAlertResponse()
    instance.created_at = randomize("date")
    instance.duration_days = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    return instance


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
    instance.persistent = randomize("bool")
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    instance.updated_at = randomize()
    instance.app_name = randomize()
    instance.async_process_ds_request = create_models_async_process_ds_request_example()
    instance.attributes = {randomize(): randomize()}
    instance.auto_join = randomize("bool")
    instance.auto_leave_session = randomize("bool")
    instance.custom_urlgrpc = randomize()
    instance.disable_code_generation = randomize("bool")
    instance.disable_resend_invite = randomize("bool")
    instance.ds_manual_set_ready = randomize("bool")
    instance.ds_source = randomize()
    instance.enable_secret = randomize("bool")
    instance.fallback_claim_keys = [randomize()]
    instance.grpc_session_config = create_models_extend_configuration_example()
    instance.immutable_storage = randomize("bool")
    instance.leader_election_grace_period = randomize("int", min_val=1, max_val=1000)
    instance.manual_rejoin = randomize("bool")
    instance.max_active_sessions = randomize("int", min_val=1, max_val=1000)
    instance.native_session_setting = create_models_native_session_setting_example()
    instance.preferred_claim_keys = [randomize()]
    instance.psn_base_url = randomize("url")
    instance.requested_regions = [randomize()]
    instance.text_chat_mode = randomize()
    instance.tie_teams_session_lifetime = randomize("bool")
    instance.ttl_hours = randomize("int", min_val=1, max_val=1000)
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
    instance.persistent = randomize("bool")
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    instance.app_name = randomize()
    instance.async_process_ds_request = create_models_async_process_ds_request_example()
    instance.attributes = {randomize(): randomize()}
    instance.auto_join = randomize("bool")
    instance.auto_leave_session = randomize("bool")
    instance.custom_urlgrpc = randomize()
    instance.disable_code_generation = randomize("bool")
    instance.disable_resend_invite = randomize("bool")
    instance.ds_manual_set_ready = randomize("bool")
    instance.ds_source = randomize()
    instance.enable_secret = randomize("bool")
    instance.fallback_claim_keys = [randomize()]
    instance.grpc_session_config = create_models_extend_configuration_example()
    instance.immutable_storage = randomize("bool")
    instance.leader_election_grace_period = randomize("int", min_val=1, max_val=1000)
    instance.manual_rejoin = randomize("bool")
    instance.max_active_sessions = randomize("int", min_val=1, max_val=1000)
    instance.native_session_setting = create_models_native_session_setting_example()
    instance.preferred_claim_keys = [randomize()]
    instance.psn_base_url = randomize("url")
    instance.text_chat_mode = randomize()
    instance.tie_teams_session_lifetime = randomize("bool")
    instance.ttl_hours = randomize("int", min_val=1, max_val=1000)
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
    instance.app_name = randomize()
    instance.auto_join = randomize("bool")
    instance.custom_urlgrpc = randomize()
    instance.ds_source = randomize()
    instance.fallback_claim_keys = [randomize()]
    instance.preferred_claim_keys = [randomize()]
    instance.storage = create_apimodels_session_storage_request_example()
    instance.text_chat_mode = randomize()
    instance.tie_teams_session_lifetime = randomize("bool")
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


def create_apimodels_delete_bulk_game_session_request_example() -> (
    ApimodelsDeleteBulkGameSessionRequest
):
    instance = ApimodelsDeleteBulkGameSessionRequest()
    instance.ids = [randomize()]
    return instance


def create_apimodels_delete_bulk_game_sessions_api_response_example() -> (
    ApimodelsDeleteBulkGameSessionsAPIResponse
):
    instance = ApimodelsDeleteBulkGameSessionsAPIResponse()
    instance.failed = [create_apimodels_response_delete_bulk_game_sessions_example()]
    instance.success = [randomize()]
    return instance


def create_apimodels_delete_bulk_party_session_request_example() -> (
    ApimodelsDeleteBulkPartySessionRequest
):
    instance = ApimodelsDeleteBulkPartySessionRequest()
    instance.ids = [randomize()]
    return instance


def create_apimodels_delete_bulk_party_sessions_api_response_example() -> (
    ApimodelsDeleteBulkPartySessionsAPIResponse
):
    instance = ApimodelsDeleteBulkPartySessionsAPIResponse()
    instance.failed = [create_apimodels_response_delete_bulk_party_sessions_example()]
    instance.success = [randomize()]
    return instance


def create_apimodels_ds_information_response_example() -> (
    ApimodelsDSInformationResponse
):
    instance = ApimodelsDSInformationResponse()
    instance.created_at = randomize()
    instance.requested_at = randomize()
    instance.server = create_models_game_server_example()
    instance.status = randomize()
    instance.status_v2 = randomize()
    return instance


def create_apimodels_environment_variable_list_response_example() -> (
    ApimodelsEnvironmentVariableListResponse
):
    instance = ApimodelsEnvironmentVariableListResponse()
    instance.data = [create_apimodels_environment_variable_response_example()]
    return instance


def create_apimodels_environment_variable_response_example() -> (
    ApimodelsEnvironmentVariableResponse
):
    instance = ApimodelsEnvironmentVariableResponse()
    instance.name = randomize()
    instance.actual_value = randomize()
    instance.default_value = randomize()
    instance.description = randomize()
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
    instance.updated_at = randomize()
    instance.version = randomize("int", min_val=1, max_val=1000)
    instance.attributes = {randomize(): randomize()}
    instance.code = randomize()
    instance.expired_at = randomize()
    instance.storage = {randomize(): randomize()}
    instance.teams = [create_models_team_example()]
    instance.ticket_i_ds = [randomize()]
    return instance


def create_apimodels_global_configuration_response_example() -> (
    ApimodelsGlobalConfigurationResponse
):
    instance = ApimodelsGlobalConfigurationResponse()
    instance.region_retry_mapping = {}
    instance.region_url_mapping = [randomize()]
    instance.test_game_mode = randomize()
    instance.test_region_url_mapping = [randomize()]
    instance.test_target_user_i_ds = [randomize()]
    instance.updated_at = randomize()
    instance.metric_excluded_namespaces = [randomize()]
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


def create_apimodels_native_session_paging_response_example() -> (
    ApimodelsNativeSessionPagingResponse
):
    instance = ApimodelsNativeSessionPagingResponse()
    instance.data = [create_model_native_session_example()]
    instance.paging = create_apimodels_pagination_example()
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
    instance.code = randomize()
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
    instance.attributes = {randomize(): randomize()}
    instance.expired_at = randomize()
    instance.storage = {randomize(): randomize()}
    return instance


def create_apimodels_player_attributes_request_body_example() -> (
    ApimodelsPlayerAttributesRequestBody
):
    instance = ApimodelsPlayerAttributesRequestBody()
    instance.crossplay_enabled = randomize("bool")
    instance.current_platform = randomize()
    instance.data = {randomize(): randomize()}
    instance.platforms = [create_models_user_platform_info_example()]
    instance.simultaneous_platform = randomize()
    instance.roles = [randomize()]
    return instance


def create_apimodels_player_attributes_response_body_example() -> (
    ApimodelsPlayerAttributesResponseBody
):
    instance = ApimodelsPlayerAttributesResponseBody()
    instance.crossplay_enabled = randomize("bool")
    instance.current_platform = randomize()
    instance.data = {randomize(): randomize()}
    instance.platforms = [create_models_user_platform_info_example()]
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_apimodels_player_platform_example() -> ApimodelsPlayerPlatform:
    instance = ApimodelsPlayerPlatform()
    instance.current_platform = randomize()
    instance.user_id = randomize("uid")
    instance.crossplay_enabled = randomize("bool")
    return instance


def create_apimodels_players_current_platform_request_example() -> (
    ApimodelsPlayersCurrentPlatformRequest
):
    instance = ApimodelsPlayersCurrentPlatformRequest()
    instance.user_i_ds = [randomize()]
    return instance


def create_apimodels_players_current_platform_response_example() -> (
    ApimodelsPlayersCurrentPlatformResponse
):
    instance = ApimodelsPlayersCurrentPlatformResponse()
    instance.data = [create_apimodels_player_platform_example()]
    return instance


def create_apimodels_promote_leader_request_example() -> ApimodelsPromoteLeaderRequest:
    instance = ApimodelsPromoteLeaderRequest()
    instance.leader_id = randomize()
    return instance


def create_apimodels_psn_app_server_credential_record_example() -> (
    ApimodelsPSNAppServerCredentialRecord
):
    instance = ApimodelsPSNAppServerCredentialRecord()
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.scope = randomize()
    return instance


def create_apimodels_public_configuration_example() -> ApimodelsPublicConfiguration:
    instance = ApimodelsPublicConfiguration()
    instance.auto_join = randomize("bool")
    instance.client_version = randomize()
    instance.deployment = randomize()
    instance.inactive_timeout = randomize("int", min_val=1, max_val=1000)
    instance.invite_timeout = randomize("int", min_val=1, max_val=1000)
    instance.joinability = randomize()
    instance.max_players = randomize("int", min_val=1, max_val=1000)
    instance.min_players = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.persistent = randomize("bool")
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    instance.app_name = randomize()
    instance.async_process_ds_request = create_models_async_process_ds_request_example()
    instance.attributes = {randomize(): randomize()}
    instance.custom_urlgrpc = randomize()
    instance.disable_code_generation = randomize("bool")
    instance.disable_resend_invite = randomize("bool")
    instance.ds_manual_set_ready = randomize("bool")
    instance.ds_source = randomize()
    instance.enable_secret = randomize("bool")
    instance.fallback_claim_keys = [randomize()]
    instance.grpc_session_config = create_models_extend_configuration_example()
    instance.immutable_storage = randomize("bool")
    instance.leader_election_grace_period = randomize("int", min_val=1, max_val=1000)
    instance.manual_rejoin = randomize("bool")
    instance.max_active_session = randomize("int", min_val=1, max_val=1000)
    instance.native_session_setting = create_models_native_session_setting_example()
    instance.preferred_claim_keys = [randomize()]
    instance.psn_base_url = randomize("url")
    instance.requested_regions = [randomize()]
    instance.text_chat_mode = randomize()
    instance.tie_teams_session_lifetime = randomize("bool")
    instance.ttl_hours = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_put_global_configuration_request_example() -> (
    ApimodelsPutGlobalConfigurationRequest
):
    instance = ApimodelsPutGlobalConfigurationRequest()
    instance.metric_excluded_namespaces = [randomize()]
    instance.region_retry_mapping = {}
    instance.region_url_mapping = [randomize()]
    instance.test_game_mode = randomize()
    instance.test_region_url_mapping = [randomize()]
    instance.test_target_user_i_ds = [randomize()]
    return instance


def create_apimodels_put_platform_credentials_request_example() -> (
    ApimodelsPutPlatformCredentialsRequest
):
    instance = ApimodelsPutPlatformCredentialsRequest()
    instance.psn = create_apimodels_psn_app_server_credential_record_example()
    return instance


def create_apimodels_request_member_example() -> ApimodelsRequestMember:
    instance = ApimodelsRequestMember()
    instance.id_ = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    return instance


def create_apimodels_response_delete_bulk_game_sessions_example() -> (
    ApimodelsResponseDeleteBulkGameSessions
):
    instance = ApimodelsResponseDeleteBulkGameSessions()
    instance.error = randomize()
    instance.id_ = randomize()
    return instance


def create_apimodels_response_delete_bulk_party_sessions_example() -> (
    ApimodelsResponseDeleteBulkPartySessions
):
    instance = ApimodelsResponseDeleteBulkPartySessions()
    instance.error = randomize()
    instance.id_ = randomize()
    return instance


def create_apimodels_server_secret_example() -> ApimodelsServerSecret:
    instance = ApimodelsServerSecret()
    instance.secret = randomize()
    return instance


def create_apimodels_session_invite_request_example() -> ApimodelsSessionInviteRequest:
    instance = ApimodelsSessionInviteRequest()
    instance.platform_id = randomize()
    instance.user_id = randomize("uid")
    instance.metadata = {randomize(): randomize()}
    return instance


def create_apimodels_session_invite_response_example() -> (
    ApimodelsSessionInviteResponse
):
    instance = ApimodelsSessionInviteResponse()
    instance.platform_user_id = randomize()
    return instance


def create_apimodels_session_storage_request_example() -> (
    ApimodelsSessionStorageRequest
):
    instance = ApimodelsSessionStorageRequest()
    instance.leader = {randomize(): randomize()}
    return instance


def create_apimodels_set_ds_ready_request_example() -> ApimodelsSetDSReadyRequest:
    instance = ApimodelsSetDSReadyRequest()
    instance.ready = randomize("bool")
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
    instance.persistent = randomize("bool")
    instance.requested_regions = [randomize()]
    instance.text_chat = randomize("bool")
    instance.type_ = randomize()
    instance.app_name = randomize()
    instance.async_process_ds_request = create_models_async_process_ds_request_example()
    instance.attributes = {randomize(): randomize()}
    instance.auto_join = randomize("bool")
    instance.auto_leave_session = randomize("bool")
    instance.custom_urlgrpc = randomize()
    instance.disable_code_generation = randomize("bool")
    instance.disable_resend_invite = randomize("bool")
    instance.ds_manual_set_ready = randomize("bool")
    instance.ds_source = randomize()
    instance.enable_secret = randomize("bool")
    instance.fallback_claim_keys = [randomize()]
    instance.grpc_session_config = create_models_extend_configuration_example()
    instance.immutable_storage = randomize("bool")
    instance.leader_election_grace_period = randomize("int", min_val=1, max_val=1000)
    instance.manual_rejoin = randomize("bool")
    instance.max_active_sessions = randomize("int", min_val=1, max_val=1000)
    instance.native_session_setting = create_models_native_session_setting_example()
    instance.preferred_claim_keys = [randomize()]
    instance.psn_base_url = randomize("url")
    instance.text_chat_mode = randomize()
    instance.tie_teams_session_lifetime = randomize("bool")
    instance.ttl_hours = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_update_game_session_backfill_request_example() -> (
    ApimodelsUpdateGameSessionBackfillRequest
):
    instance = ApimodelsUpdateGameSessionBackfillRequest()
    instance.backfill_ticket_id = randomize()
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
    instance.fallback_claim_keys = [randomize()]
    instance.preferred_claim_keys = [randomize()]
    instance.tie_teams_session_lifetime = randomize("bool")
    return instance


def create_apimodels_update_gamesession_ds_information_request_example() -> (
    ApimodelsUpdateGamesessionDSInformationRequest
):
    instance = ApimodelsUpdateGamesessionDSInformationRequest()
    instance.created_region = randomize()
    instance.deployment = randomize()
    instance.description = randomize()
    instance.ip = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.server_id = randomize()
    instance.source = randomize()
    instance.status = randomize()
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
    instance.previous_status = randomize()
    return instance


def create_apimodels_xbl_certificate_response_body_example() -> (
    ApimodelsXblCertificateResponseBody
):
    instance = ApimodelsXblCertificateResponseBody()
    instance.business_partner_cert_file_bytes = randomize()
    instance.business_partner_cert_file_name = randomize()
    instance.created_by = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    return instance


def create_logconfig_configuration_example() -> LogconfigConfiguration:
    instance = LogconfigConfiguration()
    instance.log_level = randomize()
    return instance


def create_model_native_session_example() -> ModelNativeSession:
    instance = ModelNativeSession()
    instance.created_at = randomize("date")
    instance.deleted_at = randomize("date")
    instance.id_ = randomize()
    instance.members = [create_model_native_session_member_example()]
    instance.namespace = randomize("slug")
    instance.native_session_platforms = {randomize(): randomize()}
    instance.persistent = randomize("bool")
    instance.push_context_id = randomize()
    return instance


def create_model_native_session_member_example() -> ModelNativeSessionMember:
    instance = ModelNativeSessionMember()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_async_process_ds_request_example() -> ModelsAsyncProcessDSRequest:
    instance = ModelsAsyncProcessDSRequest()
    instance.async_ = randomize("bool")
    instance.timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_default_dsmc_config_example() -> ModelsDefaultDSMCConfig:
    instance = ModelsDefaultDSMCConfig()
    instance.claim_timeout = randomize("int", min_val=1, max_val=1000)
    instance.creation_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_dsm_config_record_example() -> ModelsDSMConfigRecord:
    instance = ModelsDSMConfigRecord()
    instance.claim_timeout = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.creation_timeout = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    return instance


def create_models_extend_configuration_example() -> ModelsExtendConfiguration:
    instance = ModelsExtendConfiguration()
    instance.app_name = randomize()
    instance.custom_url = randomize("url")
    instance.function_flag = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_game_server_example() -> ModelsGameServer:
    instance = ModelsGameServer()
    instance.custom_attribute = randomize()
    instance.is_override_game_version = randomize("bool")
    instance.last_update = randomize("date")
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.source = randomize()
    instance.status = randomize()
    instance.alternate_ips = [randomize()]
    instance.ams_protocol = [create_models_port_configuration_ams_example()]
    instance.deployment = randomize()
    instance.description = randomize()
    instance.extend_region = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.pod_name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.provider = randomize()
    return instance


def create_models_member_active_session_example() -> ModelsMemberActiveSession:
    instance = ModelsMemberActiveSession()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.member_id = randomize()
    instance.namespace = randomize("slug")
    instance.session_i_ds = [randomize()]
    instance.session_template = randomize()
    instance.total = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    return instance


def create_models_native_session_setting_example() -> ModelsNativeSessionSetting:
    instance = ModelsNativeSessionSetting()
    instance.psn_service_label = randomize("int", min_val=1, max_val=1000)
    instance.session_title = randomize()
    instance.xbox_allow_cross_platform = randomize("bool")
    instance.xbox_sandbox_id = randomize()
    instance.xbox_service_config_id = randomize()
    instance.xbox_session_template_name = randomize()
    instance.xbox_title_id = randomize()
    instance.localized_session_name = {randomize(): randomize()}
    instance.psn_supported_platforms = [randomize()]
    instance.should_sync = randomize("bool")
    return instance


def create_models_party_members_example() -> ModelsPartyMembers:
    instance = ModelsPartyMembers()
    instance.party_id = randomize("uid")
    instance.user_i_ds = [randomize()]
    return instance


def create_models_platform_credentials_example() -> ModelsPlatformCredentials:
    instance = ModelsPlatformCredentials()
    instance.psn = create_models_psn_app_server_credentials_example()
    instance.updated_at = randomize()
    instance.xbox = create_models_xbl_certificate_credential_example()
    return instance


def create_models_port_configuration_ams_example() -> ModelsPortConfigurationAMS:
    instance = ModelsPortConfigurationAMS()
    instance.name = randomize()
    instance.protocol = randomize()
    return instance


def create_models_psn_app_server_credentials_example() -> ModelsPSNAppServerCredentials:
    instance = ModelsPSNAppServerCredentials()
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.created_at = randomize()
    instance.created_by = randomize()
    instance.scope = randomize()
    instance.updated_at = randomize()
    return instance


def create_models_recent_player_query_response_example() -> (
    ModelsRecentPlayerQueryResponse
):
    instance = ModelsRecentPlayerQueryResponse()
    instance.data = [create_models_user_info_response_example()]
    return instance


def create_models_request_reconcile_max_active_session_example() -> (
    ModelsRequestReconcileMaxActiveSession
):
    instance = ModelsRequestReconcileMaxActiveSession()
    instance.user_id = randomize("uid")
    return instance


def create_models_team_example() -> ModelsTeam:
    instance = ModelsTeam()
    instance.parties = [create_models_party_members_example()]
    instance.team_id = randomize()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_user_info_response_example() -> ModelsUserInfoResponse:
    instance = ModelsUserInfoResponse()
    instance.last_played_time = randomize("date")
    instance.match_pool = randomize()
    instance.namespace = randomize("slug")
    instance.platform_name = randomize()
    instance.session_template = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_user_platform_info_example() -> ModelsUserPlatformInfo:
    instance = ModelsUserPlatformInfo()
    instance.name = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_xbl_certificate_credential_example() -> (
    ModelsXBLCertificateCredential
):
    instance = ModelsXBLCertificateCredential()
    instance.business_partner_cert_file_bytes = randomize()
    instance.business_partner_cert_file_name = randomize()
    instance.created_at = randomize("date")
    instance.created_by = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
