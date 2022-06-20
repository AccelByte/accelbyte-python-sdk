# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-lobby-server (staging)

from ._get_user_friends_updated import get_user_friends_updated
from ._get_user_incoming_friends import get_user_incoming_friends
from ._get_user_outgoing_friends import get_user_outgoing_friends
from ._user_request_friend import user_request_friend
from ._user_accept_friend_request import user_accept_friend_request
from ._user_cancel_friend_request import user_cancel_friend_request
from ._user_reject_friend_request import user_reject_friend_request
from ._user_get_friendship_status import user_get_friendship_status
from ._user_unfriend_request import user_unfriend_request
from ._add_friends_without_confirmation import add_friends_without_confirmation
from ._personal_chat_history import personal_chat_history
from ._admin_chat_history import admin_chat_history
from ._admin_get_all_config_v1 import admin_get_all_config_v1
from ._admin_get_config_v1 import admin_get_config_v1
from ._admin_update_config_v1 import admin_update_config_v1
from ._admin_export_config_v1 import admin_export_config_v1
from ._admin_import_config_v1 import admin_import_config_v1
from ._get_list_of_friends import get_list_of_friends
from ._send_multiple_users_freeform_notification_v1_admin import send_multiple_users_freeform_notification_v1_admin
from ._send_users_freeform_notification_v1_admin import send_users_freeform_notification_v1_admin
from ._send_party_freeform_notification_v1_admin import send_party_freeform_notification_v1_admin
from ._send_party_templated_notification_v1_admin import send_party_templated_notification_v1_admin
from ._get_all_notification_templates_v1_admin import get_all_notification_templates_v1_admin
from ._create_notification_template_v1_admin import create_notification_template_v1_admin
from ._send_users_templated_notification_v1_admin import send_users_templated_notification_v1_admin
from ._get_template_slug_localizations_template_v1_admin import get_template_slug_localizations_template_v1_admin
from ._delete_notification_template_slug_v1_admin import delete_notification_template_slug_v1_admin
from ._get_single_template_localization_v1_admin import get_single_template_localization_v1_admin
from ._update_template_localization_v1_admin import update_template_localization_v1_admin
from ._delete_template_localization_v1_admin import delete_template_localization_v1_admin
from ._publish_template_localization_v1_admin import publish_template_localization_v1_admin
from ._get_all_notification_topics_v1_admin import get_all_notification_topics_v1_admin
from ._create_notification_topic_v1_admin import create_notification_topic_v1_admin
from ._get_notification_topic_v1_admin import get_notification_topic_v1_admin
from ._update_notification_topic_v1_admin import update_notification_topic_v1_admin
from ._delete_notification_topic_v1_admin import delete_notification_topic_v1_admin
from ._send_specific_user_freeform_notification_v1_admin import send_specific_user_freeform_notification_v1_admin
from ._send_specific_user_templated_notification_v1_admin import send_specific_user_templated_notification_v1_admin
from ._admin_get_party_data_v1 import admin_get_party_data_v1
from ._admin_update_party_attributes_v1 import admin_update_party_attributes_v1
from ._admin_join_party_v1 import admin_join_party_v1
from ._admin_get_user_party_v1 import admin_get_user_party_v1
from ._admin_get_lobby_ccu import admin_get_lobby_ccu
from ._admin_get_all_player_session_attribute import admin_get_all_player_session_attribute
from ._admin_set_player_session_attribute import admin_set_player_session_attribute
from ._admin_get_player_session_attribute import admin_get_player_session_attribute
from ._admin_get_player_blocked_players_v1 import admin_get_player_blocked_players_v1
from ._admin_get_player_blocked_by_players_v1 import admin_get_player_blocked_by_players_v1
from ._admin_bulk_block_players_v1 import admin_bulk_block_players_v1
from ._admin_debug_profanity_filters import admin_debug_profanity_filters
from ._admin_get_profanity_list_filters_v1 import admin_get_profanity_list_filters_v1
from ._admin_add_profanity_filter_into_list import admin_add_profanity_filter_into_list
from ._admin_add_profanity_filters import admin_add_profanity_filters
from ._admin_import_profanity_filters_from_file import admin_import_profanity_filters_from_file
from ._admin_delete_profanity_filter import admin_delete_profanity_filter
from ._admin_get_profanity_lists import admin_get_profanity_lists
from ._admin_create_profanity_list import admin_create_profanity_list
from ._admin_update_profanity_list import admin_update_profanity_list
from ._admin_delete_profanity_list import admin_delete_profanity_list
from ._admin_get_profanity_rule import admin_get_profanity_rule
from ._admin_set_profanity_rule_for_namespace import admin_set_profanity_rule_for_namespace
from ._admin_verify_message_profanity_response import admin_verify_message_profanity_response
from ._admin_get_third_party_config import admin_get_third_party_config
from ._admin_update_third_party_config import admin_update_third_party_config
from ._admin_create_third_party_config import admin_create_third_party_config
from ._admin_delete_third_party_config import admin_delete_third_party_config
from ._public_get_messages import public_get_messages
from ._get_personal_chat_history_v1_public import get_personal_chat_history_v1_public
from ._public_get_party_data_v1 import public_get_party_data_v1
from ._public_update_party_attributes_v1 import public_update_party_attributes_v1
from ._public_set_party_limit_v1 import public_set_party_limit_v1
from ._public_get_player_blocked_players_v1 import public_get_player_blocked_players_v1
from ._public_get_player_blocked_by_players_v1 import public_get_player_blocked_by_players_v1
from ._users_presence_handler_v1 import users_presence_handler_v1
from ._free_form_notification import free_form_notification
from ._notification_with_template import notification_with_template
from ._get_game_template import get_game_template
from ._create_template import create_template
from ._get_slug_template import get_slug_template
from ._delete_template_slug import delete_template_slug
from ._get_localization_template import get_localization_template
from ._update_localization_template import update_localization_template
from ._delete_template_localization import delete_template_localization
from ._publish_template import publish_template
from ._get_topic_by_namespace import get_topic_by_namespace
from ._create_topic import create_topic
from ._get_topic_by_topic_name import get_topic_by_topic_name
from ._update_topic_by_topic_name import update_topic_by_topic_name
from ._delete_topic_by_topic_name import delete_topic_by_topic_name
from ._free_form_notification_by_user_id import free_form_notification_by_user_id
from ._notification_with_template_by_user_id import notification_with_template_by_user_id


commands = [
    get_user_friends_updated,
    get_user_incoming_friends,
    get_user_outgoing_friends,
    user_request_friend,
    user_accept_friend_request,
    user_cancel_friend_request,
    user_reject_friend_request,
    user_get_friendship_status,
    user_unfriend_request,
    add_friends_without_confirmation,
    personal_chat_history,
    admin_chat_history,
    admin_get_all_config_v1,
    admin_get_config_v1,
    admin_update_config_v1,
    admin_export_config_v1,
    admin_import_config_v1,
    get_list_of_friends,
    send_multiple_users_freeform_notification_v1_admin,
    send_users_freeform_notification_v1_admin,
    send_party_freeform_notification_v1_admin,
    send_party_templated_notification_v1_admin,
    get_all_notification_templates_v1_admin,
    create_notification_template_v1_admin,
    send_users_templated_notification_v1_admin,
    get_template_slug_localizations_template_v1_admin,
    delete_notification_template_slug_v1_admin,
    get_single_template_localization_v1_admin,
    update_template_localization_v1_admin,
    delete_template_localization_v1_admin,
    publish_template_localization_v1_admin,
    get_all_notification_topics_v1_admin,
    create_notification_topic_v1_admin,
    get_notification_topic_v1_admin,
    update_notification_topic_v1_admin,
    delete_notification_topic_v1_admin,
    send_specific_user_freeform_notification_v1_admin,
    send_specific_user_templated_notification_v1_admin,
    admin_get_party_data_v1,
    admin_update_party_attributes_v1,
    admin_join_party_v1,
    admin_get_user_party_v1,
    admin_get_lobby_ccu,
    admin_get_all_player_session_attribute,
    admin_set_player_session_attribute,
    admin_get_player_session_attribute,
    admin_get_player_blocked_players_v1,
    admin_get_player_blocked_by_players_v1,
    admin_bulk_block_players_v1,
    admin_debug_profanity_filters,
    admin_get_profanity_list_filters_v1,
    admin_add_profanity_filter_into_list,
    admin_add_profanity_filters,
    admin_import_profanity_filters_from_file,
    admin_delete_profanity_filter,
    admin_get_profanity_lists,
    admin_create_profanity_list,
    admin_update_profanity_list,
    admin_delete_profanity_list,
    admin_get_profanity_rule,
    admin_set_profanity_rule_for_namespace,
    admin_verify_message_profanity_response,
    admin_get_third_party_config,
    admin_update_third_party_config,
    admin_create_third_party_config,
    admin_delete_third_party_config,
    public_get_messages,
    get_personal_chat_history_v1_public,
    public_get_party_data_v1,
    public_update_party_attributes_v1,
    public_set_party_limit_v1,
    public_get_player_blocked_players_v1,
    public_get_player_blocked_by_players_v1,
    users_presence_handler_v1,
    free_form_notification,
    notification_with_template,
    get_game_template,
    create_template,
    get_slug_template,
    delete_template_slug,
    get_localization_template,
    update_localization_template,
    delete_template_localization,
    publish_template,
    get_topic_by_namespace,
    create_topic,
    get_topic_by_topic_name,
    update_topic_by_topic_name,
    delete_topic_by_topic_name,
    free_form_notification_by_user_id,
    notification_with_template_by_user_id,
]
