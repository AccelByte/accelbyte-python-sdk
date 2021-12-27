[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-lobby-server Index (staging)


## Operations

### chat
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId} | GET | adminChatHistory | [AdminChatHistory](../accelbyte_py_sdk/api/lobby/operations/chat/admin_chat_history.py) | [admin_chat_history](../accelbyte_py_sdk/api/lobby/wrappers/_chat.py) |
| /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId} | GET | getPersonalChatHistoryV1Public | [GetPersonalChatHistoryV1Public](../accelbyte_py_sdk/api/lobby/operations/chat/get_personal_chat_history_v1_public.py) | [get_personal_chat_history_v1_public](../accelbyte_py_sdk/api/lobby/wrappers/_chat.py) |
| /chat/namespaces/{namespace}/users/{userId}/friend/{friendId} | GET | personalChatHistory | [PersonalChatHistory](../accelbyte_py_sdk/api/lobby/operations/chat/personal_chat_history.py) | [personal_chat_history](../accelbyte_py_sdk/api/lobby/wrappers/_chat.py) |

### config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/config | GET | adminGetAllConfigV1 | [AdminGetAllConfigV1](../accelbyte_py_sdk/api/lobby/operations/config/admin_get_all_config_v1.py) | [admin_get_all_config_v1](../accelbyte_py_sdk/api/lobby/wrappers/_config.py) |
| /lobby/v1/admin/config/namespaces/{namespace} | GET | adminGetConfigV1 | [AdminGetConfigV1](../accelbyte_py_sdk/api/lobby/operations/config/admin_get_config_v1.py) | [admin_get_config_v1](../accelbyte_py_sdk/api/lobby/wrappers/_config.py) |
| /lobby/v1/admin/config/namespaces/{namespace} | PUT | adminUpdateConfigV1 | [AdminUpdateConfigV1](../accelbyte_py_sdk/api/lobby/operations/config/admin_update_config_v1.py) | [admin_update_config_v1](../accelbyte_py_sdk/api/lobby/wrappers/_config.py) |
| /lobby/v1/admin/config/namespaces/{namespace}/export | GET | ExportConfig | [ExportConfig](../accelbyte_py_sdk/api/lobby/operations/config/export_config.py) | [export_config](../accelbyte_py_sdk/api/lobby/wrappers/_config.py) |
| /lobby/v1/admin/config/namespaces/{namespace}/import | POST | ImportConfig | [ImportConfig](../accelbyte_py_sdk/api/lobby/operations/config/import_config.py) | [import_config](../accelbyte_py_sdk/api/lobby/wrappers/_config.py) |

### friends
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /friends/namespaces/{namespace}/users/{userId}/add/bulk | POST | addFriendsWithoutConfirmation | [AddFriendsWithoutConfirmation](../accelbyte_py_sdk/api/lobby/operations/friends/add_friends_without_confirmation.py) | [add_friends_without_confirmation](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId} | GET | get list of friends | [GetListOfFriends](../accelbyte_py_sdk/api/lobby/operations/friends/get_list_of_friends.py) | [get_list_of_friends](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me | GET | getUserFriendsUpdated | [GetUserFriendsUpdated](../accelbyte_py_sdk/api/lobby/operations/friends/get_user_friends_updated.py) | [get_user_friends_updated](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/incoming | GET | getUserIncomingFriends | [GetUserIncomingFriends](../accelbyte_py_sdk/api/lobby/operations/friends/get_user_incoming_friends.py) | [get_user_incoming_friends](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/outgoing | GET | getUserOutgoingFriends | [GetUserOutgoingFriends](../accelbyte_py_sdk/api/lobby/operations/friends/get_user_outgoing_friends.py) | [get_user_outgoing_friends](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/request/accept | POST | userAcceptFriendRequest | [UserAcceptFriendRequest](../accelbyte_py_sdk/api/lobby/operations/friends/user_accept_friend_request.py) | [user_accept_friend_request](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/request/cancel | POST | userCancelFriendRequest | [UserCancelFriendRequest](../accelbyte_py_sdk/api/lobby/operations/friends/user_cancel_friend_request.py) | [user_cancel_friend_request](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/status/{friendId} | GET | userGetFriendshipStatus | [UserGetFriendshipStatus](../accelbyte_py_sdk/api/lobby/operations/friends/user_get_friendship_status.py) | [user_get_friendship_status](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/request/reject | POST | userRejectFriendRequest | [UserRejectFriendRequest](../accelbyte_py_sdk/api/lobby/operations/friends/user_reject_friend_request.py) | [user_reject_friend_request](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/request | POST | userRequestFriend | [UserRequestFriend](../accelbyte_py_sdk/api/lobby/operations/friends/user_request_friend.py) | [user_request_friend](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |
| /friends/namespaces/{namespace}/me/unfriend | POST | userUnfriendRequest | [UserUnfriendRequest](../accelbyte_py_sdk/api/lobby/operations/friends/user_unfriend_request.py) | [user_unfriend_request](../accelbyte_py_sdk/api/lobby/wrappers/_friends.py) |

### notification
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/notification/namespaces/{namespace}/templates | POST | createNotificationTemplateV1Admin | [CreateNotificationTemplateV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/create_notification_template_v1_admin.py) | [create_notification_template_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/topics | POST | createNotificationTopicV1Admin | [CreateNotificationTopicV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/create_notification_topic_v1_admin.py) | [create_notification_topic_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates | POST | createTemplate | [CreateTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/create_template.py) | [create_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/topics | POST | createTopic | [CreateTopic](../accelbyte_py_sdk/api/lobby/operations/notification/create_topic.py) | [create_topic](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug} | DELETE | deleteNotificationTemplateSlugV1Admin | [DeleteNotificationTemplateSlugV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/delete_notification_template_slug_v1_admin.py) | [delete_notification_template_slug_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName} | DELETE | deleteNotificationTopicV1Admin | [DeleteNotificationTopicV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/delete_notification_topic_v1_admin.py) | [delete_notification_topic_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | DELETE | deleteTemplateLocalization | [DeleteTemplateLocalization](../accelbyte_py_sdk/api/lobby/operations/notification/delete_template_localization.py) | [delete_template_localization](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | DELETE | deleteTemplateLocalizationV1Admin | [DeleteTemplateLocalizationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/delete_template_localization_v1_admin.py) | [delete_template_localization_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug} | DELETE | deleteTemplateSlug | [DeleteTemplateSlug](../accelbyte_py_sdk/api/lobby/operations/notification/delete_template_slug.py) | [delete_template_slug](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/topics/{topic} | DELETE | deleteTopicByTopicName | [DeleteTopicByTopicName](../accelbyte_py_sdk/api/lobby/operations/notification/delete_topic_by_topic_name.py) | [delete_topic_by_topic_name](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/freeform | POST | freeFormNotification | [FreeFormNotification](../accelbyte_py_sdk/api/lobby/operations/notification/free_form_notification.py) | [free_form_notification](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/users/{userId}/freeform | POST | freeFormNotificationByUserID | [FreeFormNotificationByUserID](../accelbyte_py_sdk/api/lobby/operations/notification/free_form_notification_by_user_id.py) | [free_form_notification_by_user_id](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates | GET | getAllNotificationTemplatesV1Admin | [GetAllNotificationTemplatesV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/get_all_notification_templates_v1_admin.py) | [get_all_notification_templates_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/topics | GET | getAllNotificationTopicsV1Admin | [GetAllNotificationTopicsV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/get_all_notification_topics_v1_admin.py) | [get_all_notification_topics_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates | GET | getGameTemplate | [GetGameTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/get_game_template.py) | [get_game_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | GET | getLocalizationTemplate | [GetLocalizationTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/get_localization_template.py) | [get_localization_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName} | GET | getNotificationTopicV1Admin | [GetNotificationTopicV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/get_notification_topic_v1_admin.py) | [get_notification_topic_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | GET | getSingleTemplateLocalizationV1Admin | [GetSingleTemplateLocalizationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/get_single_template_localization_v1_admin.py) | [get_single_template_localization_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug} | GET | getSlugTemplate | [GetSlugTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/get_slug_template.py) | [get_slug_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug} | GET | getTemplateSlugLocalizationsTemplateV1Admin | [GetTemplateSlugLocalizationsTemplateV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/get_template_slug_localizations_template_v1_admin.py) | [get_template_slug_localizations_template_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/topics | GET | getTopicByNamespace | [GetTopicByNamespace](../accelbyte_py_sdk/api/lobby/operations/notification/get_topic_by_namespace.py) | [get_topic_by_namespace](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/topics/{topic} | GET | getTopicByTopicName | [GetTopicByTopicName](../accelbyte_py_sdk/api/lobby/operations/notification/get_topic_by_topic_name.py) | [get_topic_by_topic_name](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templated | POST | notificationWithTemplate | [NotificationWithTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/notification_with_template.py) | [notification_with_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/users/{userId}/templated | POST | notificationWithTemplateByUserID | [NotificationWithTemplateByUserID](../accelbyte_py_sdk/api/lobby/operations/notification/notification_with_template_by_user_id.py) | [notification_with_template_by_user_id](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish | POST | publishTemplate | [PublishTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/publish_template.py) | [publish_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish | POST | publishTemplateLocalizationV1Admin | [PublishTemplateLocalizationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/publish_template_localization_v1_admin.py) | [publish_template_localization_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify | POST | sendMultipleUsersFreeformNotificationV1Admin | [SendMultipleUsersFreeformNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_multiple_users_freeform_notification_v1_admin.py) | [send_multiple_users_freeform_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify | POST | sendPartyFreeformNotificationV1Admin | [SendPartyFreeformNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_party_freeform_notification_v1_admin.py) | [send_party_freeform_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify | POST | sendPartyTemplatedNotificationV1Admin | [SendPartyTemplatedNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_party_templated_notification_v1_admin.py) | [send_party_templated_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify | POST | sendSpecificUserFreeformNotificationV1Admin | [SendSpecificUserFreeformNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_specific_user_freeform_notification_v1_admin.py) | [send_specific_user_freeform_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify | POST | sendSpecificUserTemplatedNotificationV1Admin | [SendSpecificUserTemplatedNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_specific_user_templated_notification_v1_admin.py) | [send_specific_user_templated_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify | POST | sendUsersFreeformNotificationV1Admin | [SendUsersFreeformNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_users_freeform_notification_v1_admin.py) | [send_users_freeform_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify | POST | sendUsersTemplatedNotificationV1Admin | [SendUsersTemplatedNotificationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/send_users_templated_notification_v1_admin.py) | [send_users_templated_notification_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | PUT | updateLocalizationTemplate | [UpdateLocalizationTemplate](../accelbyte_py_sdk/api/lobby/operations/notification/update_localization_template.py) | [update_localization_template](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName} | PUT | updateNotificationTopicV1Admin | [UpdateNotificationTopicV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/update_notification_topic_v1_admin.py) | [update_notification_topic_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} | PUT | updateTemplateLocalizationV1Admin | [UpdateTemplateLocalizationV1Admin](../accelbyte_py_sdk/api/lobby/operations/notification/update_template_localization_v1_admin.py) | [update_template_localization_v1_admin](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |
| /notification/namespaces/{namespace}/topics/{topic} | PUT | updateTopicByTopicName | [UpdateTopicByTopicName](../accelbyte_py_sdk/api/lobby/operations/notification/update_topic_by_topic_name.py) | [update_topic_by_topic_name](../accelbyte_py_sdk/api/lobby/wrappers/_notification.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes | PUT | adminUpdatePartyAttributesV1 | [AdminUpdatePartyAttributesV1](../accelbyte_py_sdk/api/lobby/operations/operations/admin_update_party_attributes_v1.py) | [admin_update_party_attributes_v1](../accelbyte_py_sdk/api/lobby/wrappers/_operations.py) |
| /lobby/v1/messages | GET | publicGetMessages | [PublicGetMessages](../accelbyte_py_sdk/api/lobby/operations/operations/public_get_messages.py) | [public_get_messages](../accelbyte_py_sdk/api/lobby/wrappers/_operations.py) |

### party
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId} | GET | adminGetPartyDataV1 | [AdminGetPartyDataV1](../accelbyte_py_sdk/api/lobby/operations/party/admin_get_party_data_v1.py) | [admin_get_party_data_v1](../accelbyte_py_sdk/api/lobby/wrappers/_party.py) |
| /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party | GET | adminGetUserPartyV1 | [AdminGetUserPartyV1](../accelbyte_py_sdk/api/lobby/operations/party/admin_get_user_party_v1.py) | [admin_get_user_party_v1](../accelbyte_py_sdk/api/lobby/wrappers/_party.py) |
| /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId} | GET | publicGetPartyDataV1 | [PublicGetPartyDataV1](../accelbyte_py_sdk/api/lobby/operations/party/public_get_party_data_v1.py) | [public_get_party_data_v1](../accelbyte_py_sdk/api/lobby/wrappers/_party.py) |
| /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes | PUT | publicUpdatePartyAttributesV1 | [PublicUpdatePartyAttributesV1](../accelbyte_py_sdk/api/lobby/operations/party/public_update_party_attributes_v1.py) | [public_update_party_attributes_v1](../accelbyte_py_sdk/api/lobby/wrappers/_party.py) |

### player
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block | POST | adminBulkBlockPlayersV1 | [AdminBulkBlockPlayersV1](../accelbyte_py_sdk/api/lobby/operations/player/admin_bulk_block_players_v1.py) | [admin_bulk_block_players_v1](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes | GET | adminGetAllPlayerSessionAttribute | [AdminGetAllPlayerSessionAttribute](../accelbyte_py_sdk/api/lobby/operations/player/admin_get_all_player_session_attribute.py) | [admin_get_all_player_session_attribute](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/ccu | GET | adminGetLobbyCCU | [AdminGetLobbyCCU](../accelbyte_py_sdk/api/lobby/operations/player/admin_get_lobby_ccu.py) | [admin_get_lobby_ccu](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by | GET | adminGetPlayerBlockedByPlayersV1 | [AdminGetPlayerBlockedByPlayersV1](../accelbyte_py_sdk/api/lobby/operations/player/admin_get_player_blocked_by_players_v1.py) | [admin_get_player_blocked_by_players_v1](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked | GET | adminGetPlayerBlockedPlayersV1 | [AdminGetPlayerBlockedPlayersV1](../accelbyte_py_sdk/api/lobby/operations/player/admin_get_player_blocked_players_v1.py) | [admin_get_player_blocked_players_v1](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute} | GET | adminGetPlayerSessionAttribute | [AdminGetPlayerSessionAttribute](../accelbyte_py_sdk/api/lobby/operations/player/admin_get_player_session_attribute.py) | [admin_get_player_session_attribute](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes | PUT | adminSetPlayerSessionAttribute | [AdminSetPlayerSessionAttribute](../accelbyte_py_sdk/api/lobby/operations/player/admin_set_player_session_attribute.py) | [admin_set_player_session_attribute](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by | GET | publicGetPlayerBlockedByPlayersV1 | [PublicGetPlayerBlockedByPlayersV1](../accelbyte_py_sdk/api/lobby/operations/player/public_get_player_blocked_by_players_v1.py) | [public_get_player_blocked_by_players_v1](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |
| /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked | GET | publicGetPlayerBlockedPlayersV1 | [PublicGetPlayerBlockedPlayersV1](../accelbyte_py_sdk/api/lobby/operations/player/public_get_player_blocked_players_v1.py) | [public_get_player_blocked_players_v1](../accelbyte_py_sdk/api/lobby/wrappers/_player.py) |

### presence
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/public/presence/namespaces/{namespace}/users/presence | GET | UsersPresenceHandlerV1 | [UsersPresenceHandlerV1](../accelbyte_py_sdk/api/lobby/operations/presence/users_presence_handler_v1.py) | [users_presence_handler_v1](../accelbyte_py_sdk/api/lobby/wrappers/_presence.py) |

### profanity
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters | POST | adminAddProfanityFilterIntoList | [AdminAddProfanityFilterIntoList](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_add_profanity_filter_into_list.py) | [admin_add_profanity_filter_into_list](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk | POST | adminAddProfanityFilters | [AdminAddProfanityFilters](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_add_profanity_filters.py) | [admin_add_profanity_filters](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/lists | POST | adminCreateProfanityList | [AdminCreateProfanityList](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_create_profanity_list.py) | [admin_create_profanity_list](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug | POST | adminDebugProfanityFilters | [AdminDebugProfanityFilters](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_debug_profanity_filters.py) | [admin_debug_profanity_filters](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete | POST | adminDeleteProfanityFilter | [AdminDeleteProfanityFilter](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_delete_profanity_filter.py) | [admin_delete_profanity_filter](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list} | DELETE | adminDeleteProfanityList | [AdminDeleteProfanityList](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_delete_profanity_list.py) | [admin_delete_profanity_list](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters | GET | adminGetProfanityListFiltersV1 | [AdminGetProfanityListFiltersV1](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_get_profanity_list_filters_v1.py) | [admin_get_profanity_list_filters_v1](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/lists | GET | adminGetProfanityLists | [AdminGetProfanityLists](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_get_profanity_lists.py) | [admin_get_profanity_lists](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/rule | GET | adminGetProfanityRule | [AdminGetProfanityRule](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_get_profanity_rule.py) | [admin_get_profanity_rule](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file | POST | adminImportProfanityFiltersFromFile | [AdminImportProfanityFiltersFromFile](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_import_profanity_filters_from_file.py) | [admin_import_profanity_filters_from_file](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/rule | POST | adminSetProfanityRuleForNamespace | [AdminSetProfanityRuleForNamespace](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_set_profanity_rule_for_namespace.py) | [admin_set_profanity_rule_for_namespace](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list} | POST | adminUpdateProfanityList | [AdminUpdateProfanityList](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_update_profanity_list.py) | [admin_update_profanity_list](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |
| /lobby/v1/admin/profanity/namespaces/{namespace}/verify | POST | adminVerifyMessageProfanityResponse | [AdminVerifyMessageProfanityResponse](../accelbyte_py_sdk/api/lobby/operations/profanity/admin_verify_message_profanity_response.py) | [admin_verify_message_profanity_response](../accelbyte_py_sdk/api/lobby/wrappers/_profanity.py) |

### thirdParty
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam | POST | adminCreateThirdPartyConfig | [AdminCreateThirdPartyConfig](../accelbyte_py_sdk/api/lobby/operations/third_party/admin_create_third_party_config.py) | [admin_create_third_party_config](../accelbyte_py_sdk/api/lobby/wrappers/_third_party.py) |
| /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam | DELETE | adminDeleteThirdPartyConfig | [AdminDeleteThirdPartyConfig](../accelbyte_py_sdk/api/lobby/operations/third_party/admin_delete_third_party_config.py) | [admin_delete_third_party_config](../accelbyte_py_sdk/api/lobby/wrappers/_third_party.py) |
| /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam | GET | adminGetThirdPartyConfig | [AdminGetThirdPartyConfig](../accelbyte_py_sdk/api/lobby/operations/third_party/admin_get_third_party_config.py) | [admin_get_third_party_config](../accelbyte_py_sdk/api/lobby/wrappers/_third_party.py) |
| /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam | PUT | adminUpdateThirdPartyConfig | [AdminUpdateThirdPartyConfig](../accelbyte_py_sdk/api/lobby/operations/third_party/admin_update_third_party_config.py) | [admin_update_third_party_config](../accelbyte_py_sdk/api/lobby/wrappers/_third_party.py) |


## Models
| Model | Class |
|---|---|
| handlers.GetUsersPresenceResponse | [HandlersGetUsersPresenceResponse](../accelbyte_py_sdk/api/lobby/models/handlers_get_users_presence_response.py) |
| handlers.UserPresence | [HandlersUserPresence](../accelbyte_py_sdk/api/lobby/models/handlers_user_presence.py) |
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../accelbyte_py_sdk/api/lobby/models/log_app_message_declaration.py) |
| model.BulkAddFriendsRequest | [ModelBulkAddFriendsRequest](../accelbyte_py_sdk/api/lobby/models/model_bulk_add_friends_request.py) |
| model.BulkUsersFreeFormNotificationRequestV1 | [ModelBulkUsersFreeFormNotificationRequestV1](../accelbyte_py_sdk/api/lobby/models/model_bulk_users_free_form_notification_request_v1.py) |
| model.ChatMessageResponse | [ModelChatMessageResponse](../accelbyte_py_sdk/api/lobby/models/model_chat_message_response.py) |
| model.CreateTemplateRequest | [ModelCreateTemplateRequest](../accelbyte_py_sdk/api/lobby/models/model_create_template_request.py) |
| model.CreateTopicRequest | [ModelCreateTopicRequest](../accelbyte_py_sdk/api/lobby/models/model_create_topic_request.py) |
| model.CreateTopicRequestV1 | [ModelCreateTopicRequestV1](../accelbyte_py_sdk/api/lobby/models/model_create_topic_request_v1.py) |
| model.FreeFormNotificationRequest | [ModelFreeFormNotificationRequest](../accelbyte_py_sdk/api/lobby/models/model_free_form_notification_request.py) |
| model.FreeFormNotificationRequestV1 | [ModelFreeFormNotificationRequestV1](../accelbyte_py_sdk/api/lobby/models/model_free_form_notification_request_v1.py) |
| model.GetAllNotificationTemplateSlugResp | [ModelGetAllNotificationTemplateSlugResp](../accelbyte_py_sdk/api/lobby/models/model_get_all_notification_template_slug_resp.py) |
| model.GetAllNotificationTopicsResponse | [ModelGetAllNotificationTopicsResponse](../accelbyte_py_sdk/api/lobby/models/model_get_all_notification_topics_response.py) |
| model.GetFriendsResponse | [ModelGetFriendsResponse](../accelbyte_py_sdk/api/lobby/models/model_get_friends_response.py) |
| model.GetUserFriendsResponse | [ModelGetUserFriendsResponse](../accelbyte_py_sdk/api/lobby/models/model_get_user_friends_response.py) |
| model.GetUserIncomingFriendsResponse | [ModelGetUserIncomingFriendsResponse](../accelbyte_py_sdk/api/lobby/models/model_get_user_incoming_friends_response.py) |
| model.GetUserOutgoingFriendsResponse | [ModelGetUserOutgoingFriendsResponse](../accelbyte_py_sdk/api/lobby/models/model_get_user_outgoing_friends_response.py) |
| model.Localization | [ModelLocalization](../accelbyte_py_sdk/api/lobby/models/model_localization.py) |
| model.NotificationTemplateResponse | [ModelNotificationTemplateResponse](../accelbyte_py_sdk/api/lobby/models/model_notification_template_response.py) |
| model.NotificationTopicResponse | [ModelNotificationTopicResponse](../accelbyte_py_sdk/api/lobby/models/model_notification_topic_response.py) |
| model.NotificationTopicResponseV1 | [ModelNotificationTopicResponseV1](../accelbyte_py_sdk/api/lobby/models/model_notification_topic_response_v1.py) |
| model.NotificationWithTemplateRequest | [ModelNotificationWithTemplateRequest](../accelbyte_py_sdk/api/lobby/models/model_notification_with_template_request.py) |
| model.NotificationWithTemplateRequestV1 | [ModelNotificationWithTemplateRequestV1](../accelbyte_py_sdk/api/lobby/models/model_notification_with_template_request_v1.py) |
| model.Pagination | [ModelPagination](../accelbyte_py_sdk/api/lobby/models/model_pagination.py) |
| model.RequestFriendsRequest | [ModelRequestFriendsRequest](../accelbyte_py_sdk/api/lobby/models/model_request_friends_request.py) |
| model.TemplateContent | [ModelTemplateContent](../accelbyte_py_sdk/api/lobby/models/model_template_content.py) |
| model.TemplateLocalization | [ModelTemplateLocalization](../accelbyte_py_sdk/api/lobby/models/model_template_localization.py) |
| model.TemplateLocalizationResponse | [ModelTemplateLocalizationResponse](../accelbyte_py_sdk/api/lobby/models/model_template_localization_response.py) |
| model.TemplateResponse | [ModelTemplateResponse](../accelbyte_py_sdk/api/lobby/models/model_template_response.py) |
| model.TopicByNamespacesResponse | [ModelTopicByNamespacesResponse](../accelbyte_py_sdk/api/lobby/models/model_topic_by_namespaces_response.py) |
| model.UpdateTemplateRequest | [ModelUpdateTemplateRequest](../accelbyte_py_sdk/api/lobby/models/model_update_template_request.py) |
| model.UpdateTopicRequest | [ModelUpdateTopicRequest](../accelbyte_py_sdk/api/lobby/models/model_update_topic_request.py) |
| model.UserAcceptFriendRequest | [ModelUserAcceptFriendRequest](../accelbyte_py_sdk/api/lobby/models/model_user_accept_friend_request.py) |
| model.UserCancelFriendRequest | [ModelUserCancelFriendRequest](../accelbyte_py_sdk/api/lobby/models/model_user_cancel_friend_request.py) |
| model.UserGetFriendshipStatusResponse | [ModelUserGetFriendshipStatusResponse](../accelbyte_py_sdk/api/lobby/models/model_user_get_friendship_status_response.py) |
| model.UserRejectFriendRequest | [ModelUserRejectFriendRequest](../accelbyte_py_sdk/api/lobby/models/model_user_reject_friend_request.py) |
| model.UserUnfriendRequest | [ModelUserUnfriendRequest](../accelbyte_py_sdk/api/lobby/models/model_user_unfriend_request.py) |
| models.AdminAddProfanityFilterIntoListRequest | [ModelsAdminAddProfanityFilterIntoListRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_add_profanity_filter_into_list_request.py) |
| models.AdminAddProfanityFiltersFilterRequest | [ModelsAdminAddProfanityFiltersFilterRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_add_profanity_filters_filter_request.py) |
| models.AdminAddProfanityFiltersRequest | [ModelsAdminAddProfanityFiltersRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_add_profanity_filters_request.py) |
| models.AdminCreateProfanityListRequest | [ModelsAdminCreateProfanityListRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_create_profanity_list_request.py) |
| models.AdminDeleteProfanityFilterRequest | [ModelsAdminDeleteProfanityFilterRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_delete_profanity_filter_request.py) |
| models.AdminGetProfanityListFiltersV1Response | [ModelsAdminGetProfanityListFiltersV1Response](../accelbyte_py_sdk/api/lobby/models/models_admin_get_profanity_list_filters_v1_response.py) |
| models.AdminGetProfanityListsListResponse | [ModelsAdminGetProfanityListsListResponse](../accelbyte_py_sdk/api/lobby/models/models_admin_get_profanity_lists_list_response.py) |
| models.AdminSetProfanityRuleForNamespaceRequest | [ModelsAdminSetProfanityRuleForNamespaceRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_set_profanity_rule_for_namespace_request.py) |
| models.AdminUpdateProfanityList | [ModelsAdminUpdateProfanityList](../accelbyte_py_sdk/api/lobby/models/models_admin_update_profanity_list.py) |
| models.AdminVerifyMessageProfanityRequest | [ModelsAdminVerifyMessageProfanityRequest](../accelbyte_py_sdk/api/lobby/models/models_admin_verify_message_profanity_request.py) |
| models.AdminVerifyMessageProfanityResponse | [ModelsAdminVerifyMessageProfanityResponse](../accelbyte_py_sdk/api/lobby/models/models_admin_verify_message_profanity_response.py) |
| models.BlockedByPlayerData | [ModelsBlockedByPlayerData](../accelbyte_py_sdk/api/lobby/models/models_blocked_by_player_data.py) |
| models.BlockedPlayerData | [ModelsBlockedPlayerData](../accelbyte_py_sdk/api/lobby/models/models_blocked_player_data.py) |
| models.Config | [ModelsConfig](../accelbyte_py_sdk/api/lobby/models/models_config.py) |
| models.ConfigExport | [ModelsConfigExport](../accelbyte_py_sdk/api/lobby/models/models_config_export.py) |
| models.ConfigList | [ModelsConfigList](../accelbyte_py_sdk/api/lobby/models/models_config_list.py) |
| models.ConfigReq | [ModelsConfigReq](../accelbyte_py_sdk/api/lobby/models/models_config_req.py) |
| models.CreateConfigRequest | [ModelsCreateConfigRequest](../accelbyte_py_sdk/api/lobby/models/models_create_config_request.py) |
| models.CreateConfigResponse | [ModelsCreateConfigResponse](../accelbyte_py_sdk/api/lobby/models/models_create_config_response.py) |
| models.DebugProfanityFilterRequest | [ModelsDebugProfanityFilterRequest](../accelbyte_py_sdk/api/lobby/models/models_debug_profanity_filter_request.py) |
| models.GetAllPlayerBlockedByUsersResponse | [ModelsGetAllPlayerBlockedByUsersResponse](../accelbyte_py_sdk/api/lobby/models/models_get_all_player_blocked_by_users_response.py) |
| models.GetAllPlayerBlockedUsersResponse | [ModelsGetAllPlayerBlockedUsersResponse](../accelbyte_py_sdk/api/lobby/models/models_get_all_player_blocked_users_response.py) |
| models.GetAllPlayerSessionAttributeResponse | [ModelsGetAllPlayerSessionAttributeResponse](../accelbyte_py_sdk/api/lobby/models/models_get_all_player_session_attribute_response.py) |
| models.GetConfigResponse | [ModelsGetConfigResponse](../accelbyte_py_sdk/api/lobby/models/models_get_config_response.py) |
| models.GetLobbyCcuResponse | [ModelsGetLobbyCcuResponse](../accelbyte_py_sdk/api/lobby/models/models_get_lobby_ccu_response.py) |
| models.GetPlayerSessionAttributeResponse | [ModelsGetPlayerSessionAttributeResponse](../accelbyte_py_sdk/api/lobby/models/models_get_player_session_attribute_response.py) |
| models.ImportConfigResponse | [ModelsImportConfigResponse](../accelbyte_py_sdk/api/lobby/models/models_import_config_response.py) |
| models.ListBlockedPlayerRequest | [ModelsListBlockedPlayerRequest](../accelbyte_py_sdk/api/lobby/models/models_list_blocked_player_request.py) |
| models.PartyData | [ModelsPartyData](../accelbyte_py_sdk/api/lobby/models/models_party_data.py) |
| models.PartyPUTCustomAttributesRequest | [ModelsPartyPUTCustomAttributesRequest](../accelbyte_py_sdk/api/lobby/models/models_party_put_custom_attributes_request.py) |
| models.ProfanityFilter | [ModelsProfanityFilter](../accelbyte_py_sdk/api/lobby/models/models_profanity_filter.py) |
| models.ProfanityRule | [ModelsProfanityRule](../accelbyte_py_sdk/api/lobby/models/models_profanity_rule.py) |
| models.SetPlayerSessionAttributeRequest | [ModelsSetPlayerSessionAttributeRequest](../accelbyte_py_sdk/api/lobby/models/models_set_player_session_attribute_request.py) |
| models.UpdateConfigRequest | [ModelsUpdateConfigRequest](../accelbyte_py_sdk/api/lobby/models/models_update_config_request.py) |
| models.UpdateConfigResponse | [ModelsUpdateConfigResponse](../accelbyte_py_sdk/api/lobby/models/models_update_config_response.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/lobby/models/response_error.py) |
| restapi.ErrorResponseBody | [RestapiErrorResponseBody](../accelbyte_py_sdk/api/lobby/models/restapi_error_response_body.py) |
| restapi.ErrorResponseV1 | [RestapiErrorResponseV1](../accelbyte_py_sdk/api/lobby/models/restapi_error_response_v1.py) |
