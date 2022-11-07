# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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

from ..api.lobby.models import HandlersGetUsersPresenceResponse
from ..api.lobby.models import HandlersUserPresence
from ..api.lobby.models import LogAppMessageDeclaration
from ..api.lobby.models import ModelBulkAddFriendsRequest
from ..api.lobby.models import ModelBulkUsersFreeFormNotificationRequestV1
from ..api.lobby.models import ModelChatMessageResponse
from ..api.lobby.models import ModelCreateTemplateRequest
from ..api.lobby.models import ModelCreateTopicRequest
from ..api.lobby.models import ModelCreateTopicRequestV1
from ..api.lobby.models import ModelFreeFormNotificationRequest
from ..api.lobby.models import ModelFreeFormNotificationRequestV1
from ..api.lobby.models import ModelGetAllNotificationTemplateSlugResp
from ..api.lobby.models import ModelGetAllNotificationTopicsResponse
from ..api.lobby.models import ModelGetFriendsResponse
from ..api.lobby.models import ModelGetUserFriendsResponse
from ..api.lobby.models import ModelGetUserIncomingFriendsResponse
from ..api.lobby.models import ModelGetUserOutgoingFriendsResponse
from ..api.lobby.models import ModelLocalization
from ..api.lobby.models import ModelNotificationTemplateResponse
from ..api.lobby.models import ModelNotificationTopicResponse
from ..api.lobby.models import ModelNotificationTopicResponseV1
from ..api.lobby.models import ModelNotificationWithTemplateRequest
from ..api.lobby.models import ModelNotificationWithTemplateRequestV1
from ..api.lobby.models import ModelPagination
from ..api.lobby.models import ModelTemplateContent
from ..api.lobby.models import ModelTemplateLocalization
from ..api.lobby.models import ModelTemplateLocalizationResponse
from ..api.lobby.models import ModelTemplateResponse
from ..api.lobby.models import ModelTopicByNamespacesResponse
from ..api.lobby.models import ModelUpdateTemplateRequest
from ..api.lobby.models import ModelUpdateTopicRequest
from ..api.lobby.models import ModelUserAcceptFriendRequest
from ..api.lobby.models import ModelUserCancelFriendRequest
from ..api.lobby.models import ModelUserGetFriendshipStatusResponse
from ..api.lobby.models import ModelUserRejectFriendRequest
from ..api.lobby.models import ModelUserRequestFriendRequest
from ..api.lobby.models import ModelUserUnfriendRequest
from ..api.lobby.models import ModelsAdminAddProfanityFilterIntoListRequest
from ..api.lobby.models import ModelsAdminAddProfanityFiltersFilterRequest
from ..api.lobby.models import ModelsAdminAddProfanityFiltersRequest
from ..api.lobby.models import ModelsAdminCreateProfanityListRequest
from ..api.lobby.models import ModelsAdminDeleteProfanityFilterRequest
from ..api.lobby.models import ModelsAdminGetProfanityListFiltersV1Response
from ..api.lobby.models import ModelsAdminGetProfanityListsListResponse
from ..api.lobby.models import ModelsAdminSetProfanityRuleForNamespaceRequest
from ..api.lobby.models import ModelsAdminUpdateProfanityList
from ..api.lobby.models import ModelsAdminVerifyMessageProfanityRequest
from ..api.lobby.models import ModelsAdminVerifyMessageProfanityResponse
from ..api.lobby.models import ModelsBlockedByPlayerData
from ..api.lobby.models import ModelsBlockedPlayerData
from ..api.lobby.models import ModelsConfig
from ..api.lobby.models import ModelsConfigList
from ..api.lobby.models import ModelsConfigReq
from ..api.lobby.models import ModelsCreateConfigRequest
from ..api.lobby.models import ModelsCreateConfigResponse
from ..api.lobby.models import ModelsDebugProfanityFilterRequest
from ..api.lobby.models import ModelsGetAllPlayerBlockedByUsersResponse
from ..api.lobby.models import ModelsGetAllPlayerBlockedUsersResponse
from ..api.lobby.models import ModelsGetAllPlayerSessionAttributeResponse
from ..api.lobby.models import ModelsGetConfigResponse
from ..api.lobby.models import ModelsGetLobbyCcuResponse
from ..api.lobby.models import ModelsGetPlayerSessionAttributeResponse
from ..api.lobby.models import ModelsImportConfigResponse
from ..api.lobby.models import ModelsListBlockedPlayerRequest
from ..api.lobby.models import ModelsPartyData
from ..api.lobby.models import ModelsPartyPUTCustomAttributesRequest
from ..api.lobby.models import ModelsPartyPUTLimitSizeRequest
from ..api.lobby.models import ModelsProfanityFilter
from ..api.lobby.models import ModelsProfanityRule
from ..api.lobby.models import ModelsSetPlayerSessionAttributeRequest
from ..api.lobby.models import ModelsUpdateConfigRequest
from ..api.lobby.models import ModelsUpdateConfigResponse
from ..api.lobby.models import ResponseError
from ..api.lobby.models import RestapiErrorResponseBody
from ..api.lobby.models import RestapiErrorResponseV1


def create_handlers_get_users_presence_response_example() -> HandlersGetUsersPresenceResponse:
    instance = HandlersGetUsersPresenceResponse()
    instance.busy = randomize("int", min_val=1, max_val=1000)
    instance.data = [create_handlers_user_presence_example()]
    instance.invisible = randomize("int", min_val=1, max_val=1000)
    instance.offline = randomize("int", min_val=1, max_val=1000)
    instance.online = randomize("int", min_val=1, max_val=1000)
    return instance


def create_handlers_user_presence_example() -> HandlersUserPresence:
    instance = HandlersUserPresence()
    instance.activity = randomize()
    instance.availability = randomize()
    instance.last_seen_at = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_model_bulk_add_friends_request_example() -> ModelBulkAddFriendsRequest:
    instance = ModelBulkAddFriendsRequest()
    instance.friend_ids = [randomize()]
    return instance


def create_model_bulk_users_free_form_notification_request_v1_example() -> ModelBulkUsersFreeFormNotificationRequestV1:
    instance = ModelBulkUsersFreeFormNotificationRequestV1()
    instance.message = randomize()
    instance.topic_name = randomize()
    instance.user_ids = [randomize()]
    return instance


def create_model_chat_message_response_example() -> ModelChatMessageResponse:
    instance = ModelChatMessageResponse()
    instance.from_ = randomize()
    instance.id_ = randomize()
    instance.payload = randomize()
    instance.received_at = randomize("int", min_val=1, max_val=1000)
    instance.to = randomize()
    return instance


def create_model_create_template_request_example() -> ModelCreateTemplateRequest:
    instance = ModelCreateTemplateRequest()
    instance.template_content = randomize()
    instance.template_language = randomize()
    instance.template_slug = randomize()
    return instance


def create_model_create_topic_request_example() -> ModelCreateTopicRequest:
    instance = ModelCreateTopicRequest()
    instance.description = randomize()
    instance.topic = randomize()
    return instance


def create_model_create_topic_request_v1_example() -> ModelCreateTopicRequestV1:
    instance = ModelCreateTopicRequestV1()
    instance.description = randomize()
    instance.topic_name = randomize()
    return instance


def create_model_free_form_notification_request_example() -> ModelFreeFormNotificationRequest:
    instance = ModelFreeFormNotificationRequest()
    instance.message = randomize()
    instance.topic = randomize()
    return instance


def create_model_free_form_notification_request_v1_example() -> ModelFreeFormNotificationRequestV1:
    instance = ModelFreeFormNotificationRequestV1()
    instance.message = randomize()
    instance.topic_name = randomize()
    return instance


def create_model_get_all_notification_template_slug_resp_example() -> ModelGetAllNotificationTemplateSlugResp:
    instance = ModelGetAllNotificationTemplateSlugResp()
    instance.data = [create_model_localization_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_get_all_notification_topics_response_example() -> ModelGetAllNotificationTopicsResponse:
    instance = ModelGetAllNotificationTopicsResponse()
    instance.data = [create_model_notification_topic_response_v1_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_get_friends_response_example() -> ModelGetFriendsResponse:
    instance = ModelGetFriendsResponse()
    instance.friend_i_ds = [randomize()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_get_user_friends_response_example() -> ModelGetUserFriendsResponse:
    instance = ModelGetUserFriendsResponse()
    instance.friend_i_ds = [randomize()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_get_user_incoming_friends_response_example() -> ModelGetUserIncomingFriendsResponse:
    instance = ModelGetUserIncomingFriendsResponse()
    instance.friend_i_ds = [randomize()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_get_user_outgoing_friends_response_example() -> ModelGetUserOutgoingFriendsResponse:
    instance = ModelGetUserOutgoingFriendsResponse()
    instance.friend_i_ds = [randomize()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_localization_example() -> ModelLocalization:
    instance = ModelLocalization()
    instance.last_draft_at = randomize()
    instance.last_published_at = randomize()
    instance.template_content = create_model_template_content_example()
    instance.template_language = randomize()
    return instance


def create_model_notification_template_response_example() -> ModelNotificationTemplateResponse:
    instance = ModelNotificationTemplateResponse()
    instance.template_localizations = [create_model_localization_example()]
    instance.template_slug = randomize()
    return instance


def create_model_notification_topic_response_example() -> ModelNotificationTopicResponse:
    instance = ModelNotificationTopicResponse()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.namespace = randomize("slug")
    instance.topic = randomize()
    return instance


def create_model_notification_topic_response_v1_example() -> ModelNotificationTopicResponseV1:
    instance = ModelNotificationTopicResponseV1()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.namespace = randomize("slug")
    instance.topic_name = randomize()
    return instance


def create_model_notification_with_template_request_example() -> ModelNotificationWithTemplateRequest:
    instance = ModelNotificationWithTemplateRequest()
    instance.template_context = {randomize(): randomize()}
    instance.template_language = randomize()
    instance.template_slug = randomize()
    instance.topic = randomize()
    return instance


def create_model_notification_with_template_request_v1_example() -> ModelNotificationWithTemplateRequestV1:
    instance = ModelNotificationWithTemplateRequestV1()
    instance.template_context = {randomize(): randomize()}
    instance.template_language = randomize()
    instance.template_slug = randomize()
    instance.topic_name = randomize()
    return instance


def create_model_pagination_example() -> ModelPagination:
    instance = ModelPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_model_template_content_example() -> ModelTemplateContent:
    instance = ModelTemplateContent()
    instance.draft = randomize()
    instance.published = randomize()
    return instance


def create_model_template_localization_example() -> ModelTemplateLocalization:
    instance = ModelTemplateLocalization()
    instance.last_draft_at = randomize()
    instance.last_published_at = randomize()
    instance.template_content = create_model_template_content_example()
    instance.template_language = randomize()
    instance.template_slug = randomize()
    return instance


def create_model_template_localization_response_example() -> ModelTemplateLocalizationResponse:
    instance = ModelTemplateLocalizationResponse()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    instance.template_localization = [create_model_template_localization_example()]
    return instance


def create_model_template_response_example() -> ModelTemplateResponse:
    instance = ModelTemplateResponse()
    instance.localizations = [create_model_localization_example()]
    instance.template_slug = randomize()
    return instance


def create_model_topic_by_namespaces_response_example() -> ModelTopicByNamespacesResponse:
    instance = ModelTopicByNamespacesResponse()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    instance.topics = [create_model_notification_topic_response_example()]
    return instance


def create_model_update_template_request_example() -> ModelUpdateTemplateRequest:
    instance = ModelUpdateTemplateRequest()
    instance.template_content = randomize()
    return instance


def create_model_update_topic_request_example() -> ModelUpdateTopicRequest:
    instance = ModelUpdateTopicRequest()
    instance.description = randomize()
    return instance


def create_model_user_accept_friend_request_example() -> ModelUserAcceptFriendRequest:
    instance = ModelUserAcceptFriendRequest()
    instance.friend_id = randomize()
    return instance


def create_model_user_cancel_friend_request_example() -> ModelUserCancelFriendRequest:
    instance = ModelUserCancelFriendRequest()
    instance.friend_id = randomize()
    return instance


def create_model_user_get_friendship_status_response_example() -> ModelUserGetFriendshipStatusResponse:
    instance = ModelUserGetFriendshipStatusResponse()
    instance.code = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    return instance


def create_model_user_reject_friend_request_example() -> ModelUserRejectFriendRequest:
    instance = ModelUserRejectFriendRequest()
    instance.friend_id = randomize()
    return instance


def create_model_user_request_friend_request_example() -> ModelUserRequestFriendRequest:
    instance = ModelUserRequestFriendRequest()
    instance.friend_id = randomize()
    instance.friend_public_id = randomize()
    return instance


def create_model_user_unfriend_request_example() -> ModelUserUnfriendRequest:
    instance = ModelUserUnfriendRequest()
    instance.friend_id = randomize()
    return instance


def create_models_admin_add_profanity_filter_into_list_request_example() -> ModelsAdminAddProfanityFilterIntoListRequest:
    instance = ModelsAdminAddProfanityFilterIntoListRequest()
    instance.filter_ = randomize()
    instance.note = randomize()
    return instance


def create_models_admin_add_profanity_filters_filter_request_example() -> ModelsAdminAddProfanityFiltersFilterRequest:
    instance = ModelsAdminAddProfanityFiltersFilterRequest()
    instance.filter_ = randomize()
    instance.note = randomize()
    return instance


def create_models_admin_add_profanity_filters_request_example() -> ModelsAdminAddProfanityFiltersRequest:
    instance = ModelsAdminAddProfanityFiltersRequest()
    instance.filters = [
        create_models_admin_add_profanity_filters_filter_request_example()
    ]
    return instance


def create_models_admin_create_profanity_list_request_example() -> ModelsAdminCreateProfanityListRequest:
    instance = ModelsAdminCreateProfanityListRequest()
    instance.is_enabled = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.name = randomize()
    return instance


def create_models_admin_delete_profanity_filter_request_example() -> ModelsAdminDeleteProfanityFilterRequest:
    instance = ModelsAdminDeleteProfanityFilterRequest()
    instance.filter_ = randomize()
    return instance


def create_models_admin_get_profanity_list_filters_v1_response_example() -> ModelsAdminGetProfanityListFiltersV1Response:
    instance = ModelsAdminGetProfanityListFiltersV1Response()
    instance.filters = [create_models_profanity_filter_example()]
    return instance


def create_models_admin_get_profanity_lists_list_response_example() -> ModelsAdminGetProfanityListsListResponse:
    instance = ModelsAdminGetProfanityListsListResponse()
    instance.is_enabled = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.name = randomize()
    return instance


def create_models_admin_set_profanity_rule_for_namespace_request_example() -> ModelsAdminSetProfanityRuleForNamespaceRequest:
    instance = ModelsAdminSetProfanityRuleForNamespaceRequest()
    instance.rule = randomize()
    return instance


def create_models_admin_update_profanity_list_example() -> ModelsAdminUpdateProfanityList:
    instance = ModelsAdminUpdateProfanityList()
    instance.is_enabled = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.new_name = randomize()
    return instance


def create_models_admin_verify_message_profanity_request_example() -> ModelsAdminVerifyMessageProfanityRequest:
    instance = ModelsAdminVerifyMessageProfanityRequest()
    instance.message = randomize()
    instance.profanity_level = randomize()
    return instance


def create_models_admin_verify_message_profanity_response_example() -> ModelsAdminVerifyMessageProfanityResponse:
    instance = ModelsAdminVerifyMessageProfanityResponse()
    instance.filtered_message = randomize()
    instance.has_profanity = randomize("bool")
    return instance


def create_models_blocked_by_player_data_example() -> ModelsBlockedByPlayerData:
    instance = ModelsBlockedByPlayerData()
    instance.blocked_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_models_blocked_player_data_example() -> ModelsBlockedPlayerData:
    instance = ModelsBlockedPlayerData()
    instance.blocked_at = randomize("date")
    instance.blocked_user_id = randomize()
    return instance


def create_models_config_example() -> ModelsConfig:
    instance = ModelsConfig()
    instance.max_ds_wait_time = randomize("int", min_val=1, max_val=1000)
    instance.allow_invite_non_connected_user = randomize("bool")
    instance.allow_join_party_during_matchmaking = randomize("bool")
    instance.auto_kick_on_disconnect = randomize("bool")
    instance.auto_kick_on_disconnect_delay = randomize("int", min_val=1, max_val=1000)
    instance.cancel_ticket_on_disconnect = randomize("bool")
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.concurrent_users_limit = randomize("int", min_val=1, max_val=1000)
    instance.disable_invitation_on_join_party = randomize("bool")
    instance.enable_chat = randomize("bool")
    instance.entitlement_check = randomize("bool")
    instance.entitlement_item_id = randomize()
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.keep_presence_activity_on_disconnect = randomize("bool")
    instance.max_party_member = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.profanity_filter = randomize("bool")
    instance.ready_consent_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_config_list_example() -> ModelsConfigList:
    instance = ModelsConfigList()
    instance.configs = [create_models_config_example()]
    return instance


def create_models_config_req_example() -> ModelsConfigReq:
    instance = ModelsConfigReq()
    instance.allow_invite_non_connected_user = randomize("bool")
    instance.allow_join_party_during_matchmaking = randomize("bool")
    instance.auto_kick_on_disconnect = randomize("bool")
    instance.auto_kick_on_disconnect_delay = randomize("int", min_val=1, max_val=1000)
    instance.cancel_ticket_on_disconnect = randomize("bool")
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.concurrent_users_limit = randomize("int", min_val=1, max_val=1000)
    instance.disable_invitation_on_join_party = randomize("bool")
    instance.enable_chat = randomize("bool")
    instance.entitlement_check = randomize("bool")
    instance.entitlement_item_id = randomize()
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.keep_presence_activity_on_disconnect = randomize("bool")
    instance.max_ds_wait_time = randomize("int", min_val=1, max_val=1000)
    instance.max_party_member = randomize("int", min_val=1, max_val=1000)
    instance.profanity_filter = randomize("bool")
    instance.ready_consent_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_config_request_example() -> ModelsCreateConfigRequest:
    instance = ModelsCreateConfigRequest()
    instance.api_key = randomize()
    return instance


def create_models_create_config_response_example() -> ModelsCreateConfigResponse:
    instance = ModelsCreateConfigResponse()
    instance.api_key = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_debug_profanity_filter_request_example() -> ModelsDebugProfanityFilterRequest:
    instance = ModelsDebugProfanityFilterRequest()
    instance.text = randomize()
    return instance


def create_models_get_all_player_blocked_by_users_response_example() -> ModelsGetAllPlayerBlockedByUsersResponse:
    instance = ModelsGetAllPlayerBlockedByUsersResponse()
    instance.data = [create_models_blocked_by_player_data_example()]
    return instance


def create_models_get_all_player_blocked_users_response_example() -> ModelsGetAllPlayerBlockedUsersResponse:
    instance = ModelsGetAllPlayerBlockedUsersResponse()
    instance.data = [create_models_blocked_player_data_example()]
    return instance


def create_models_get_all_player_session_attribute_response_example() -> ModelsGetAllPlayerSessionAttributeResponse:
    instance = ModelsGetAllPlayerSessionAttributeResponse()
    instance.attributes = {randomize(): randomize()}
    return instance


def create_models_get_config_response_example() -> ModelsGetConfigResponse:
    instance = ModelsGetConfigResponse()
    instance.api_key = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_get_lobby_ccu_response_example() -> ModelsGetLobbyCcuResponse:
    instance = ModelsGetLobbyCcuResponse()
    instance.count_current_users = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_get_player_session_attribute_response_example() -> ModelsGetPlayerSessionAttributeResponse:
    instance = ModelsGetPlayerSessionAttributeResponse()
    instance.key = randomize()
    instance.value = randomize()
    return instance


def create_models_import_config_response_example() -> ModelsImportConfigResponse:
    instance = ModelsImportConfigResponse()
    instance.failed_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    return instance


def create_models_list_blocked_player_request_example() -> ModelsListBlockedPlayerRequest:
    instance = ModelsListBlockedPlayerRequest()
    instance.list_blocked_user_id = [randomize()]
    return instance


def create_models_party_data_example() -> ModelsPartyData:
    instance = ModelsPartyData()
    instance.custom_attribute = {randomize(): randomize()}
    instance.invitees = [randomize()]
    instance.leader = randomize()
    instance.members = [randomize()]
    instance.namespace = randomize("slug")
    instance.party_id = randomize("uid")
    instance.updated_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_party_put_custom_attributes_request_example() -> ModelsPartyPUTCustomAttributesRequest:
    instance = ModelsPartyPUTCustomAttributesRequest()
    instance.custom_attribute = {randomize(): randomize()}
    instance.updated_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_party_put_limit_size_request_example() -> ModelsPartyPUTLimitSizeRequest:
    instance = ModelsPartyPUTLimitSizeRequest()
    instance.limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_profanity_filter_example() -> ModelsProfanityFilter:
    instance = ModelsProfanityFilter()
    instance.filter_ = randomize()
    instance.list_name = randomize()
    instance.namespace = randomize("slug")
    instance.note = randomize()
    return instance


def create_models_profanity_rule_example() -> ModelsProfanityRule:
    instance = ModelsProfanityRule()
    instance.namespace = randomize("slug")
    instance.rule = randomize()
    return instance


def create_models_set_player_session_attribute_request_example() -> ModelsSetPlayerSessionAttributeRequest:
    instance = ModelsSetPlayerSessionAttributeRequest()
    instance.attributes = {randomize(): randomize()}
    return instance


def create_models_update_config_request_example() -> ModelsUpdateConfigRequest:
    instance = ModelsUpdateConfigRequest()
    instance.api_key = randomize()
    return instance


def create_models_update_config_response_example() -> ModelsUpdateConfigResponse:
    instance = ModelsUpdateConfigResponse()
    instance.api_key = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_restapi_error_response_body_example() -> RestapiErrorResponseBody:
    instance = RestapiErrorResponseBody()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_restapi_error_response_v1_example() -> RestapiErrorResponseV1:
    instance = RestapiErrorResponseV1()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
