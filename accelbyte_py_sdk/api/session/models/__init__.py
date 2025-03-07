# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Session Service."""

__version__ = "3.23.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .apimodels_append_team_game_session_request import (
    ApimodelsAppendTeamGameSessionRequest,
)
from .apimodels_config_alert_request_create import ApimodelsConfigAlertRequestCreate
from .apimodels_config_alert_response import ApimodelsConfigAlertResponse
from .apimodels_configuration_template_response import (
    ApimodelsConfigurationTemplateResponse,
)
from .apimodels_configuration_template_response import (
    TextChatModeEnum as ApimodelsConfigurationTemplateResponseTextChatModeEnum,
)
from .apimodels_configuration_templates_response import (
    ApimodelsConfigurationTemplatesResponse,
)
from .apimodels_create_configuration_template_request import (
    ApimodelsCreateConfigurationTemplateRequest,
)
from .apimodels_create_configuration_template_request import (
    TextChatModeEnum as ApimodelsCreateConfigurationTemplateRequestTextChatModeEnum,
)
from .apimodels_create_game_session_request import ApimodelsCreateGameSessionRequest
from .apimodels_create_game_session_request import (
    TextChatModeEnum as ApimodelsCreateGameSessionRequestTextChatModeEnum,
)
from .apimodels_create_party_request import ApimodelsCreatePartyRequest
from .apimodels_delete_bulk_game_session_request import (
    ApimodelsDeleteBulkGameSessionRequest,
)
from .apimodels_delete_bulk_game_sessions_api_response import (
    ApimodelsDeleteBulkGameSessionsAPIResponse,
)
from .apimodels_delete_bulk_party_session_request import (
    ApimodelsDeleteBulkPartySessionRequest,
)
from .apimodels_delete_bulk_party_sessions_api_response import (
    ApimodelsDeleteBulkPartySessionsAPIResponse,
)
from .apimodels_ds_information_response import ApimodelsDSInformationResponse
from .apimodels_environment_variable_list_response import (
    ApimodelsEnvironmentVariableListResponse,
)
from .apimodels_environment_variable_response import (
    ApimodelsEnvironmentVariableResponse,
)
from .apimodels_game_session_query_response import ApimodelsGameSessionQueryResponse
from .apimodels_game_session_response import ApimodelsGameSessionResponse
from .apimodels_global_configuration_response import (
    ApimodelsGlobalConfigurationResponse,
)
from .apimodels_join_by_code_request import ApimodelsJoinByCodeRequest
from .apimodels_kick_response import ApimodelsKickResponse
from .apimodels_native_session_paging_response import (
    ApimodelsNativeSessionPagingResponse,
)
from .apimodels_pagination import ApimodelsPagination
from .apimodels_party_query_response import ApimodelsPartyQueryResponse
from .apimodels_party_session_response import ApimodelsPartySessionResponse
from .apimodels_player_attributes_request_body import (
    ApimodelsPlayerAttributesRequestBody,
)
from .apimodels_player_attributes_response_body import (
    ApimodelsPlayerAttributesResponseBody,
)
from .apimodels_player_platform import ApimodelsPlayerPlatform
from .apimodels_players_current_platform_request import (
    ApimodelsPlayersCurrentPlatformRequest,
)
from .apimodels_players_current_platform_response import (
    ApimodelsPlayersCurrentPlatformResponse,
)
from .apimodels_promote_leader_request import ApimodelsPromoteLeaderRequest
from .apimodels_psn_app_server_credential_record import (
    ApimodelsPSNAppServerCredentialRecord,
)
from .apimodels_public_configuration import ApimodelsPublicConfiguration
from .apimodels_public_configuration import (
    TextChatModeEnum as ApimodelsPublicConfigurationTextChatModeEnum,
)
from .apimodels_put_global_configuration_request import (
    ApimodelsPutGlobalConfigurationRequest,
)
from .apimodels_put_platform_credentials_request import (
    ApimodelsPutPlatformCredentialsRequest,
)
from .apimodels_request_member import ApimodelsRequestMember
from .apimodels_response_delete_bulk_game_sessions import (
    ApimodelsResponseDeleteBulkGameSessions,
)
from .apimodels_response_delete_bulk_party_sessions import (
    ApimodelsResponseDeleteBulkPartySessions,
)
from .apimodels_server_secret import ApimodelsServerSecret
from .apimodels_session_invite_request import ApimodelsSessionInviteRequest
from .apimodels_session_invite_response import ApimodelsSessionInviteResponse
from .apimodels_session_storage_request import ApimodelsSessionStorageRequest
from .apimodels_set_ds_ready_request import ApimodelsSetDSReadyRequest
from .apimodels_update_configuration_template_request import (
    ApimodelsUpdateConfigurationTemplateRequest,
)
from .apimodels_update_configuration_template_request import (
    TextChatModeEnum as ApimodelsUpdateConfigurationTemplateRequestTextChatModeEnum,
)
from .apimodels_update_game_session_backfill_request import (
    ApimodelsUpdateGameSessionBackfillRequest,
)
from .apimodels_update_game_session_member_status_response import (
    ApimodelsUpdateGameSessionMemberStatusResponse,
)
from .apimodels_update_game_session_request import ApimodelsUpdateGameSessionRequest
from .apimodels_update_gamesession_ds_information_request import (
    ApimodelsUpdateGamesessionDSInformationRequest,
)
from .apimodels_update_party_request import ApimodelsUpdatePartyRequest
from .apimodels_user_response import ApimodelsUserResponse
from .apimodels_xbl_certificate_response_body import ApimodelsXblCertificateResponseBody
from .logconfig_configuration import LogconfigConfiguration
from .logconfig_configuration import LogLevelEnum as LogconfigConfigurationLogLevelEnum
from .model_native_session import ModelNativeSession
from .model_native_session_member import ModelNativeSessionMember
from .models_async_process_ds_request import ModelsAsyncProcessDSRequest
from .models_default_dsmc_config import ModelsDefaultDSMCConfig
from .models_dsm_config_record import ModelsDSMConfigRecord
from .models_extend_configuration import ModelsExtendConfiguration
from .models_game_server import ModelsGameServer
from .models_member_active_session import ModelsMemberActiveSession
from .models_native_session_setting import ModelsNativeSessionSetting
from .models_party_members import ModelsPartyMembers
from .models_platform_credentials import ModelsPlatformCredentials
from .models_port_configuration_ams import ModelsPortConfigurationAMS
from .models_psn_app_server_credentials import ModelsPSNAppServerCredentials
from .models_recent_player_query_response import ModelsRecentPlayerQueryResponse
from .models_request_reconcile_max_active_session import (
    ModelsRequestReconcileMaxActiveSession,
)
from .models_team import ModelsTeam
from .models_user_info_response import ModelsUserInfoResponse
from .models_user_platform_info import ModelsUserPlatformInfo
from .models_xbl_certificate_credential import ModelsXBLCertificateCredential
from .response_error import ResponseError
