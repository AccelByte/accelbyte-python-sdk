# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Lobby Server."""

__version__ = "3.38.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .handlers_get_users_presence_response import HandlersGetUsersPresenceResponse
from .handlers_user_presence import HandlersUserPresence
from .log_app_message_declaration import LogAppMessageDeclaration
from .logconfig_configuration import LogconfigConfiguration
from .logconfig_configuration import (
    LogLevelDBEnum as LogconfigConfigurationLogLevelDBEnum,
    LogLevelEnum as LogconfigConfigurationLogLevelEnum,
)
from .model_bulk_friends_request import ModelBulkFriendsRequest
from .model_bulk_friends_response import ModelBulkFriendsResponse
from .model_bulk_users_free_form_notification_request_v1 import (
    ModelBulkUsersFreeFormNotificationRequestV1,
)
from .model_create_template_request import ModelCreateTemplateRequest
from .model_create_topic_request import ModelCreateTopicRequest
from .model_create_topic_request_v1 import ModelCreateTopicRequestV1
from .model_free_form_notification_request import ModelFreeFormNotificationRequest
from .model_free_form_notification_request_v1 import ModelFreeFormNotificationRequestV1
from .model_friend_with_platform import ModelFriendWithPlatform
from .model_friendship_connection import ModelFriendshipConnection
from .model_friendship_connection_response import ModelFriendshipConnectionResponse
from .model_get_all_notification_template_slug_resp import (
    ModelGetAllNotificationTemplateSlugResp,
)
from .model_get_all_notification_topics_response import (
    ModelGetAllNotificationTopicsResponse,
)
from .model_get_friends_response import ModelGetFriendsResponse
from .model_get_user_friends_response import ModelGetUserFriendsResponse
from .model_get_user_incoming_friends_response import (
    ModelGetUserIncomingFriendsResponse,
)
from .model_get_user_outgoing_friends_response import (
    ModelGetUserOutgoingFriendsResponse,
)
from .model_global_configuration import ModelGlobalConfiguration
from .model_incoming_friends_with_time_data import ModelIncomingFriendsWithTimeData
from .model_list_bulk_user_platforms_response import ModelListBulkUserPlatformsResponse
from .model_load_incoming_friends_with_time_response import (
    ModelLoadIncomingFriendsWithTimeResponse,
)
from .model_load_outgoing_friends_with_time_response import (
    ModelLoadOutgoingFriendsWithTimeResponse,
)
from .model_localization import ModelLocalization
from .model_native_friend_request import ModelNativeFriendRequest
from .model_native_friend_sync_response import ModelNativeFriendSyncResponse
from .model_native_user_block_request import ModelNativeUserBlockRequest
from .model_native_user_block_response import ModelNativeUserBlockResponse
from .model_notification_response import ModelNotificationResponse
from .model_notification_template_response import ModelNotificationTemplateResponse
from .model_notification_topic_response import ModelNotificationTopicResponse
from .model_notification_topic_response_v1 import ModelNotificationTopicResponseV1
from .model_notification_with_template_request import (
    ModelNotificationWithTemplateRequest,
)
from .model_notification_with_template_request_v1 import (
    ModelNotificationWithTemplateRequestV1,
)
from .model_outgoing_friends_with_time_data import ModelOutgoingFriendsWithTimeData
from .model_pagination import ModelPagination
from .model_put_global_configuration_request import ModelPutGlobalConfigurationRequest
from .model_request_user_presence import ModelRequestUserPresence
from .model_template_content import ModelTemplateContent
from .model_template_localization import ModelTemplateLocalization
from .model_template_localization_response import ModelTemplateLocalizationResponse
from .model_template_response import ModelTemplateResponse
from .model_topic_by_namespaces_response import ModelTopicByNamespacesResponse
from .model_update_template_request import ModelUpdateTemplateRequest
from .model_update_topic_request import ModelUpdateTopicRequest
from .model_user_accept_friend_request import ModelUserAcceptFriendRequest
from .model_user_cancel_friend_request import ModelUserCancelFriendRequest
from .model_user_get_friendship_status_response import (
    ModelUserGetFriendshipStatusResponse,
)
from .model_user_platform_info import ModelUserPlatformInfo
from .model_user_reject_friend_request import ModelUserRejectFriendRequest
from .model_user_request_friend_request import ModelUserRequestFriendRequest
from .model_user_unfriend_request import ModelUserUnfriendRequest
from .model_user_with_platform_info import ModelUserWithPlatformInfo
from .models_admin_add_profanity_filter_into_list_request import (
    ModelsAdminAddProfanityFilterIntoListRequest,
)
from .models_admin_add_profanity_filters_filter_request import (
    ModelsAdminAddProfanityFiltersFilterRequest,
)
from .models_admin_add_profanity_filters_request import (
    ModelsAdminAddProfanityFiltersRequest,
)
from .models_admin_create_profanity_list_request import (
    ModelsAdminCreateProfanityListRequest,
)
from .models_admin_delete_profanity_filter_request import (
    ModelsAdminDeleteProfanityFilterRequest,
)
from .models_admin_get_profanity_list_filters_v1_response import (
    ModelsAdminGetProfanityListFiltersV1Response,
)
from .models_admin_get_profanity_lists_list_response import (
    ModelsAdminGetProfanityListsListResponse,
)
from .models_admin_set_profanity_rule_for_namespace_request import (
    ModelsAdminSetProfanityRuleForNamespaceRequest,
)
from .models_admin_update_profanity_list import ModelsAdminUpdateProfanityList
from .models_admin_verify_message_profanity_request import (
    ModelsAdminVerifyMessageProfanityRequest,
)
from .models_admin_verify_message_profanity_response import (
    ModelsAdminVerifyMessageProfanityResponse,
)
from .models_block_player_request import ModelsBlockPlayerRequest
from .models_blocked_by_player_data import ModelsBlockedByPlayerData
from .models_blocked_player_data import ModelsBlockedPlayerData
from .models_config import ModelsConfig
from .models_config_list import ModelsConfigList
from .models_config_req import ModelsConfigReq
from .models_create_config_request import ModelsCreateConfigRequest
from .models_create_config_response import ModelsCreateConfigResponse
from .models_debug_profanity_filter_request import ModelsDebugProfanityFilterRequest
from .models_get_all_player_blocked_by_users_response import (
    ModelsGetAllPlayerBlockedByUsersResponse,
)
from .models_get_all_player_blocked_users_response import (
    ModelsGetAllPlayerBlockedUsersResponse,
)
from .models_get_all_player_session_attribute_response import (
    ModelsGetAllPlayerSessionAttributeResponse,
)
from .models_get_bulk_all_player_blocked_users_request import (
    ModelsGetBulkAllPlayerBlockedUsersRequest,
)
from .models_get_bulk_all_player_blocked_users_response import (
    ModelsGetBulkAllPlayerBlockedUsersResponse,
)
from .models_get_config_response import ModelsGetConfigResponse
from .models_get_lobby_ccu_response import ModelsGetLobbyCcuResponse
from .models_get_player_session_attribute_response import (
    ModelsGetPlayerSessionAttributeResponse,
)
from .models_import_config_response import ModelsImportConfigResponse
from .models_list_blocked_player_request import ModelsListBlockedPlayerRequest
from .models_list_unblock_player_request import ModelsListUnblockPlayerRequest
from .models_party_data import ModelsPartyData
from .models_party_put_custom_attributes_request import (
    ModelsPartyPUTCustomAttributesRequest,
)
from .models_party_put_limit_size_request import ModelsPartyPUTLimitSizeRequest
from .models_profanity_filter import ModelsProfanityFilter
from .models_profanity_rule import ModelsProfanityRule
from .models_set_player_session_attribute_request import (
    ModelsSetPlayerSessionAttributeRequest,
)
from .models_unblock_player_request import ModelsUnblockPlayerRequest
from .models_update_config_request import ModelsUpdateConfigRequest
from .models_update_config_response import ModelsUpdateConfigResponse
from .response_error import ResponseError
from .restapi_error_response_body import RestapiErrorResponseBody
from .restapi_error_response_v1 import RestapiErrorResponseV1
