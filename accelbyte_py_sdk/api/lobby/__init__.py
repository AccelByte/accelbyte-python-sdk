# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Lobby Server."""

__version__ = "3.35.5"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# admin
from .wrappers import admin_delete_global_config
from .wrappers import admin_delete_global_config_async
from .wrappers import admin_get_global_config
from .wrappers import admin_get_global_config_async
from .wrappers import admin_update_global_config
from .wrappers import admin_update_global_config_async
from .wrappers import create_template
from .wrappers import create_template_async
from .wrappers import delete_template_localization
from .wrappers import delete_template_localization_async
from .wrappers import delete_template_slug
from .wrappers import delete_template_slug_async
from .wrappers import free_form_notification
from .wrappers import free_form_notification_async
from .wrappers import get_game_template
from .wrappers import get_game_template_async
from .wrappers import get_localization_template
from .wrappers import get_localization_template_async
from .wrappers import get_slug_template
from .wrappers import get_slug_template_async
from .wrappers import notification_with_template
from .wrappers import notification_with_template_async
from .wrappers import publish_template
from .wrappers import publish_template_async
from .wrappers import update_localization_template
from .wrappers import update_localization_template_async

# blocks
from .wrappers import sync_native_blocked_user
from .wrappers import sync_native_blocked_user_async

# config
from .wrappers import admin_export_config_v1
from .wrappers import admin_export_config_v1_async
from .wrappers import admin_get_all_config_v1
from .wrappers import admin_get_all_config_v1_async
from .wrappers import admin_get_config_v1
from .wrappers import admin_get_config_v1_async
from .wrappers import admin_import_config_v1
from .wrappers import admin_import_config_v1_async
from .wrappers import admin_update_config_v1
from .wrappers import admin_update_config_v1_async

# friends
from .wrappers import add_friends_without_confirmation
from .wrappers import add_friends_without_confirmation_async
from .wrappers import admin_list_friends_of_friends
from .wrappers import admin_list_friends_of_friends_async
from .wrappers import bulk_delete_friends
from .wrappers import bulk_delete_friends_async
from .wrappers import get_incoming_friend_requests
from .wrappers import get_incoming_friend_requests_async
from .wrappers import get_list_of_friends
from .wrappers import get_list_of_friends_async
from .wrappers import get_outgoing_friend_requests
from .wrappers import get_outgoing_friend_requests_async
from .wrappers import get_user_friends_updated
from .wrappers import get_user_friends_updated_async
from .wrappers import get_user_friends_with_platform
from .wrappers import get_user_friends_with_platform_async
from .wrappers import get_user_incoming_friends
from .wrappers import get_user_incoming_friends_async
from .wrappers import get_user_incoming_friends_with_time
from .wrappers import get_user_incoming_friends_with_time_async
from .wrappers import get_user_outgoing_friends
from .wrappers import get_user_outgoing_friends_async
from .wrappers import get_user_outgoing_friends_with_time
from .wrappers import get_user_outgoing_friends_with_time_async
from .wrappers import sync_native_friends
from .wrappers import sync_native_friends_async
from .wrappers import user_accept_friend_request
from .wrappers import user_accept_friend_request_async
from .wrappers import user_cancel_friend_request
from .wrappers import user_cancel_friend_request_async
from .wrappers import user_get_friendship_status
from .wrappers import user_get_friendship_status_async
from .wrappers import user_reject_friend_request
from .wrappers import user_reject_friend_request_async
from .wrappers import user_request_friend
from .wrappers import user_request_friend_async
from .wrappers import user_unfriend_request
from .wrappers import user_unfriend_request_async

# lobby_operations
from .wrappers import admin_join_party_v1
from .wrappers import admin_join_party_v1_async
from .wrappers import admin_update_party_attributes_v1
from .wrappers import admin_update_party_attributes_v1_async
from .wrappers import public_get_messages
from .wrappers import public_get_messages_async

# notification
from .wrappers import create_notification_template_v1_admin
from .wrappers import create_notification_template_v1_admin_async
from .wrappers import create_notification_topic_v1_admin
from .wrappers import create_notification_topic_v1_admin_async
from .wrappers import create_topic
from .wrappers import create_topic_async
from .wrappers import delete_notification_template_slug_v1_admin
from .wrappers import delete_notification_template_slug_v1_admin_async
from .wrappers import delete_notification_topic_v1_admin
from .wrappers import delete_notification_topic_v1_admin_async
from .wrappers import delete_template_localization_v1_admin
from .wrappers import delete_template_localization_v1_admin_async
from .wrappers import delete_topic_by_topic_name
from .wrappers import delete_topic_by_topic_name_async
from .wrappers import free_form_notification_by_user_id
from .wrappers import free_form_notification_by_user_id_async
from .wrappers import get_all_notification_templates_v1_admin
from .wrappers import get_all_notification_templates_v1_admin_async
from .wrappers import get_all_notification_topics_v1_admin
from .wrappers import get_all_notification_topics_v1_admin_async
from .wrappers import get_my_notifications
from .wrappers import get_my_notifications_async
from .wrappers import get_notification_topic_v1_admin
from .wrappers import get_notification_topic_v1_admin_async
from .wrappers import get_single_template_localization_v1_admin
from .wrappers import get_single_template_localization_v1_admin_async
from .wrappers import get_template_slug_localizations_template_v1_admin
from .wrappers import get_template_slug_localizations_template_v1_admin_async
from .wrappers import get_topic_by_namespace
from .wrappers import get_topic_by_namespace_async
from .wrappers import get_topic_by_topic_name
from .wrappers import get_topic_by_topic_name_async
from .wrappers import notification_with_template_by_user_id
from .wrappers import notification_with_template_by_user_id_async
from .wrappers import publish_template_localization_v1_admin
from .wrappers import publish_template_localization_v1_admin_async
from .wrappers import send_multiple_users_freeform_notification_v1_admin
from .wrappers import send_multiple_users_freeform_notification_v1_admin_async
from .wrappers import send_party_freeform_notification_v1_admin
from .wrappers import send_party_freeform_notification_v1_admin_async
from .wrappers import send_party_templated_notification_v1_admin
from .wrappers import send_party_templated_notification_v1_admin_async
from .wrappers import send_specific_user_freeform_notification_v1_admin
from .wrappers import send_specific_user_freeform_notification_v1_admin_async
from .wrappers import send_specific_user_templated_notification_v1_admin
from .wrappers import send_specific_user_templated_notification_v1_admin_async
from .wrappers import send_users_freeform_notification_v1_admin
from .wrappers import send_users_freeform_notification_v1_admin_async
from .wrappers import send_users_templated_notification_v1_admin
from .wrappers import send_users_templated_notification_v1_admin_async
from .wrappers import update_notification_topic_v1_admin
from .wrappers import update_notification_topic_v1_admin_async
from .wrappers import update_template_localization_v1_admin
from .wrappers import update_template_localization_v1_admin_async
from .wrappers import update_topic_by_topic_name
from .wrappers import update_topic_by_topic_name_async

# party
from .wrappers import admin_get_party_data_v1
from .wrappers import admin_get_party_data_v1_async
from .wrappers import admin_get_user_party_v1
from .wrappers import admin_get_user_party_v1_async
from .wrappers import public_get_party_data_v1
from .wrappers import public_get_party_data_v1_async
from .wrappers import public_set_party_limit_v1
from .wrappers import public_set_party_limit_v1_async
from .wrappers import public_update_party_attributes_v1
from .wrappers import public_update_party_attributes_v1_async

# player
from .wrappers import admin_bulk_block_players_v1
from .wrappers import admin_bulk_block_players_v1_async
from .wrappers import admin_get_all_player_session_attribute
from .wrappers import admin_get_all_player_session_attribute_async
from .wrappers import admin_get_bulk_player_blocked_players_v1
from .wrappers import admin_get_bulk_player_blocked_players_v1_async
from .wrappers import admin_get_lobby_ccu
from .wrappers import admin_get_lobby_ccu_async
from .wrappers import admin_get_player_blocked_by_players_v1
from .wrappers import admin_get_player_blocked_by_players_v1_async
from .wrappers import admin_get_player_blocked_players_v1
from .wrappers import admin_get_player_blocked_players_v1_async
from .wrappers import admin_get_player_session_attribute
from .wrappers import admin_get_player_session_attribute_async
from .wrappers import admin_set_player_session_attribute
from .wrappers import admin_set_player_session_attribute_async
from .wrappers import public_get_player_blocked_by_players_v1
from .wrappers import public_get_player_blocked_by_players_v1_async
from .wrappers import public_get_player_blocked_players_v1
from .wrappers import public_get_player_blocked_players_v1_async
from .wrappers import public_player_block_players_v1
from .wrappers import public_player_block_players_v1_async
from .wrappers import public_unblock_player_v1
from .wrappers import public_unblock_player_v1_async

# presence
from .wrappers import users_presence_handler_v1
from .wrappers import users_presence_handler_v1_async

# profanity
from .wrappers import admin_add_profanity_filter_into_list
from .wrappers import admin_add_profanity_filter_into_list_async
from .wrappers import admin_add_profanity_filters
from .wrappers import admin_add_profanity_filters_async
from .wrappers import admin_create_profanity_list
from .wrappers import admin_create_profanity_list_async
from .wrappers import admin_debug_profanity_filters
from .wrappers import admin_debug_profanity_filters_async
from .wrappers import admin_delete_profanity_filter
from .wrappers import admin_delete_profanity_filter_async
from .wrappers import admin_delete_profanity_list
from .wrappers import admin_delete_profanity_list_async
from .wrappers import admin_get_profanity_list_filters_v1
from .wrappers import admin_get_profanity_list_filters_v1_async
from .wrappers import admin_get_profanity_lists
from .wrappers import admin_get_profanity_lists_async
from .wrappers import admin_get_profanity_rule
from .wrappers import admin_get_profanity_rule_async
from .wrappers import admin_import_profanity_filters_from_file
from .wrappers import admin_import_profanity_filters_from_file_async
from .wrappers import admin_set_profanity_rule_for_namespace
from .wrappers import admin_set_profanity_rule_for_namespace_async
from .wrappers import admin_update_profanity_list
from .wrappers import admin_update_profanity_list_async
from .wrappers import admin_verify_message_profanity_response
from .wrappers import admin_verify_message_profanity_response_async

# third_party
from .wrappers import admin_create_third_party_config
from .wrappers import admin_create_third_party_config_async
from .wrappers import admin_delete_third_party_config
from .wrappers import admin_delete_third_party_config_async
from .wrappers import admin_get_third_party_config
from .wrappers import admin_get_third_party_config_async
from .wrappers import admin_update_third_party_config
from .wrappers import admin_update_third_party_config_async
