#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

EXIT_CODE=0
PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

touch "tmp.dat"

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
lobby-get-user-friends-updated --login_with_auth "Bearer foo"
lobby-get-user-incoming-friends --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "eTwDh6f1", "friendPublicId": "WpMdlYXL"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "kteVZNrg"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "JwpdQD8Q"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "7bImMHlb"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'jyAV0XH2' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "gwRWNyhR"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["Nz6rxtci", "loxCVB3S", "3S5kJ57N"]}' 'nuLDKnI0' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'lLoFrJij' 'D6Fqzdn3' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'bLiDgbZI' 'VJi6dXZv' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 32, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 26, "chatRateLimitDuration": 52, "concurrentUsersLimit": 5, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "jRSsa7Ui", "generalRateLimitBurst": 79, "generalRateLimitDuration": 89, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 54, "maxPartyMember": 25, "profanityFilter": true, "readyConsentTimeout": 62}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'ExnHuQvY' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "NTguayHs", "topicName": "332qoIiL", "userIds": ["biqZ2sVl", "cA2Gn3nb", "rbtArgLw"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "cYV4aGnu", "topicName": "YhYgUhMV"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "BTUet6z7", "topicName": "hmlPo2JG"}' '04uWaDxr' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"vqBHD14s": "BQDuTLKj", "UXdpyBAf": "dPZKrC5G", "X2FJLtUd": "DjiiCcRm"}, "templateLanguage": "RQU8hcZz", "templateSlug": "LdGodvkC", "topicName": "OkIBLGxr"}' 'L2FgPlpQ' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "wEhM9BIx", "templateLanguage": "j8eDKzxi", "templateSlug": "s2Hp1gSb"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"SmL0YiXr": "3dJsBzDs", "pOgt9ZOO": "CxTkoOxX", "1TQ9lxCi": "7gml9JMi"}, "templateLanguage": "ZHf6rxsL", "templateSlug": "W6FoIh3l", "topicName": "nyKXbAUI"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'G7xuWgFQ' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'e0SAuGXv' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'LE5aiQ6x' 'Lrd21Fgs' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "Tlx4Ur6T"}' 'pYNPkSWr' 'PfmRbcfx' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin '8pXYdyCo' 'fSTmuc1N' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'FWi2UK1i' 'jWVBNJxA' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "y3jL7GTf", "topicName": "IhJQPriR"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'DV7Go3Yl' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "nm1693gE"}' 'QpkrUATr' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'kVG4GBfY' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "6rz85lKK", "topicName": "gqvL5XUL"}' 'yqO3Uypr' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"6GZXmCzH": "IywnsTPn", "FlXI3GZO": "u39rHFFE", "SWmrP7xu": "I083LEFY"}, "templateLanguage": "r7TXfz5a", "templateSlug": "PF5UQrtN", "topicName": "T31J4tp1"}' 'Ryndoef3' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 '4QA3VUJo' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"2hU3ryfL": {}, "QEmXELzW": {}, "IhzFeY0A": {}}, "updatedAt": 80}' 'tt874uyQ' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 '4odSvIyC' 'OCMlr2H0' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'TQRva7wO' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'PpnkXizn' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"ggkAMvNP": "ZsWGQR4n", "NQ19r6re": "XfaEbOLQ", "8jE6uIi2": "c02VhKsl"}}' 'Wi5wgoTK' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'r00bWI57' 'duHKFzik' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'Hflzb8cc' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'DbRScAnj' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["khMN9HLi", "BpgNmjZA", "zq3xNr86"]}' 'kMtgqh0d' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "49PD0UMd"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'Ig7GKc4H' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "9E4pSDPp", "note": "UFEcCQjE"}' '0BuiyvRo' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "pU6TEej1", "note": "SIsV8ljT"}, {"filter": "wznaITJG", "note": "pyr5312z"}, {"filter": "ew59PNBc", "note": "Pv6ZVjG7"}]}' 'ldZdJKKi' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[28, 14, 72]' 'Spxl01bl' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "xkqTuMGU"}' 'v1V4WNfN' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": true, "name": "CKykfCMg"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": true, "newName": "yaAvT8cM"}' 'rwWN3bYr' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'jKq0BBUm' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "ub9GocRj"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "C5SXZeMV", "profanityLevel": "KV0NOYjc"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "727dJaHJ"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "JUsyR0LW"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'wNyOEBMV' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'BzCSQ2LG' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"DmBJfPwZ": {}, "2WQwh8t3": {}, "X6rYkEO4": {}}, "updatedAt": 17}' 'aGTxGbPR' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 55}' '6GqiDQcD' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 '6CWicjNO' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "Ify3Lqkd", "topic": "IsH6DuOz"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"WkSaEC87": "b7VX41iT", "BzLMPRoE": "1YVditxB", "ZVrlzzOX": "UDk0lUIu"}, "templateLanguage": "pvhAtu3M", "templateSlug": "UFvHIm7y", "topic": "HG2rW1cz"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "GGz7isF1", "templateLanguage": "L5NIsPEG", "templateSlug": "SBt8a3th"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'GZm2bcmL' --login_with_auth "Bearer foo"
lobby-delete-template-slug '9KJb0lkO' --login_with_auth "Bearer foo"
lobby-get-localization-template 'NzURLeeY' '2FRZNcKJ' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "CvwqhqOb"}' 'F6JuNrwp' 'p3N0LZ49' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'nHsBi2uv' '6I22WHKn' --login_with_auth "Bearer foo"
lobby-publish-template 'n9eKDETd' '1rfaDa5o' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "B9Wiy4Vr", "topic": "5TPzPMYL"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name '5UxUXXfD' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "tcjgAbhW"}' 'nouG3fmc' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'yf8MAWKG' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "m6cH1nEj", "topic": "XY8KyizI"}' 'nykzyQvy' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"PzyT5qBY": "0cz8IYHc", "wdOX7hDK": "jDgc7KzC", "68ihodIT": "pyDhKfD2"}, "templateLanguage": "q4asLmdL", "templateSlug": "yJ5kO48u", "topic": "523cWC72"}' 'fT647ckg' --login_with_auth "Bearer foo"
exit()
END

EXIT_CODE=$?

else

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..92"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetUserFriendsUpdated
$PYTHON -m $MODULE 'lobby-get-user-friends-updated' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
$PYTHON -m $MODULE 'lobby-get-user-incoming-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserOutgoingFriends
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetUserOutgoingFriends' test.out

#- 5 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "T0EuwPZs", "friendPublicId": "p26bPVRt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "A2Ax6ZRK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "5ccKDKOq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "XfbLCO5V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'rdFy8CiG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "a2F5c4BL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["3RLMvOEi", "JVYQkYnN", "zPhC4q1W"]}' \
    'FUWXqVCb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'f74gUPUK' \
    'FKPD0a5j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'JRLijvId' \
    'ZfVJ7dtr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminChatHistory' test.out

#- 14 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigV1' test.out

#- 15 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigV1' test.out

#- 16 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 84, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 97, "chatRateLimitDuration": 100, "concurrentUsersLimit": 55, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "cLEUhi3B", "generalRateLimitBurst": 6, "generalRateLimitDuration": 65, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 86, "maxPartyMember": 14, "profanityFilter": true, "readyConsentTimeout": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigV1' test.out

#- 17 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminExportConfigV1' test.out

#- 18 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminImportConfigV1' test.out

#- 19 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'UCfCUZiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "Zu1ffmWx", "topicName": "dvF8e3jo", "userIds": ["bXMcVaw2", "GoNiEZ1w", "8tVFbjRH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "nBHOC4LJ", "topicName": "hqOzbxkr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "c7uVjtfX", "topicName": "Yj8I8d5r"}' \
    'rtkET1pP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"wgynHxD2": "wG5F9p6X", "3ZrOzKX1": "sRSLJPSI", "7JFH9s19": "eRvLQeqU"}, "templateLanguage": "6RBirLqU", "templateSlug": "94BWjoRT", "topicName": "3YvilYit"}' \
    'NCsyMSRh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SendPartyTemplatedNotificationV1Admin' test.out

#- 24 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetAllNotificationTemplatesV1Admin' test.out

#- 25 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "ku8cr3A9", "templateLanguage": "1hEPCG0F", "templateSlug": "irjahaFm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"0ftoP0Pk": "enMLC69C", "HstbozS0": "eRC5fuwy", "SZ2FGfkE": "Bzu9KNS1"}, "templateLanguage": "uDcCLutS", "templateSlug": "isw3N1dd", "topicName": "Rieyy6b2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'DPFp24bU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'R7uz0JBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'JiHy9U5E' \
    'ePwdyMZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "iznNum06"}' \
    'eEVxYJt0' \
    'ISkyA8gI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'DnHleEx1' \
    '4WTLeclh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    '1Bs2tVjp' \
    'l0s2i4ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublishTemplateLocalizationV1Admin' test.out

#- 33 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTopicsV1Admin' test.out

#- 34 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "6ThtkyHh", "topicName": "HC7bOJuS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'ERE8a8eb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "9uTNenjH"}' \
    'jIi2Go7m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'JQt3IlPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "5w0THCla", "topicName": "Fg0f6aFH"}' \
    'cUAvcUPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"CIwa1cay": "446sYly3", "HYzKTnAD": "qFWLOOuo", "KqmBWxBB": "ktYjxH7u"}, "templateLanguage": "DtE687US", "templateSlug": "99IiYSff", "topicName": "NCUFXw3U"}' \
    'pyycaedX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    '6AQ1ViGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"QRhd7PSJ": {}, "d7SRL38i": {}, "Y63c7sXc": {}}, "updatedAt": 88}' \
    'sbvqbgEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'wqQNiCGq' \
    'NZux5m2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'QHLRNS1S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetUserPartyV1' test.out

#- 44 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetLobbyCCU' test.out

#- 45 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'vzWiQt9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"VRmPYJVN": "EsU47dgi", "AVQOn03q": "5T9fl6Vl", "5Kyn2efT": "IbWJikgG"}}' \
    'Grcm2D0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'nUNQKw1p' \
    '4DxS78GU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'xQwOGjnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'iKWHWOio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["FORoz7dc", "5GsAW5uc", "EZFcVpaK"]}' \
    'xwHsoWPp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "c8BQsOxE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'tQfHeS8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "CCJhGHKn", "note": "Dbr4wncf"}' \
    'RkZYcx1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "yWHyyiQ5", "note": "tU9lxwx6"}, {"filter": "CPEMVKun", "note": "gvqIcWDE"}, {"filter": "zwaf9uHn", "note": "47YB9AVh"}]}' \
    'E4EwUAiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[6, 62, 9]' \
    'Fz8zn5tF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "T8K22lWU"}' \
    'RHIfS9zx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteProfanityFilter' test.out

#- 57 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityLists' test.out

#- 58 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "name": "32wt4pXp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "t2CiwVFo"}' \
    'E7MbmEWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'n7FK816P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityList' test.out

#- 61 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityRule' test.out

#- 62 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "Lti5Ol3n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "LuiMjspp", "profanityLevel": "cecxqeP8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminVerifyMessageProfanityResponse' test.out

#- 64 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminGetThirdPartyConfig' test.out

#- 65 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "lMSLs3Kf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "TKpxjbYo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminCreateThirdPartyConfig' test.out

#- 67 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteThirdPartyConfig' test.out

#- 68 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out

#- 69 GetPersonalChatHistoryV1Public
$PYTHON -m $MODULE 'lobby-get-personal-chat-history-v1-public' \
    'v6cnKgP9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'UyMDbxET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"DKqkltND": {}, "vlRt1vYM": {}, "9jWHSvlQ": {}}, "updatedAt": 78}' \
    'JD9aLmpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 22}' \
    'NkcW0tNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicSetPartyLimitV1' test.out

#- 73 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedPlayersV1' test.out

#- 74 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 75 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'a3TQ7ZZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "rbW3I2ze", "topic": "tpqRjZCo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"9ZiYTeQa": "k6Wx850f", "i9AujvCz": "1OaC8ONg", "9irHIHuH": "Bjp1sTCS"}, "templateLanguage": "OIJIdmcZ", "templateSlug": "nqFxXz2D", "topic": "rqlQowGi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'NotificationWithTemplate' test.out

#- 78 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetGameTemplate' test.out

#- 79 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "8wjrE6dV", "templateLanguage": "Q3670GkH", "templateSlug": "LJmUCXli"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'aGQ35Zuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'paxzH0pP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'wNxpsKEU' \
    'TXe8QR3r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "MAx3QZyb"}' \
    '38aoTlXr' \
    'fO1pVLEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'pnV0sXfl' \
    'Eqr0WQ7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'ksAqABML' \
    'pCAn75A3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublishTemplate' test.out

#- 86 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetTopicByNamespace' test.out

#- 87 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "t2tFB8jk", "topic": "pTg9FbsY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'fyobuxSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "Ux2wld7w"}' \
    'KrZLgVnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'WYiSf50U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "jypklUX2", "topic": "20goBxai"}' \
    'IQIDY9Tn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"WqYX6AmT": "m4QjPtSe", "V3pu2ckm": "WCsYoOpq", "Uznzvaw3": "1tQfiqGy"}, "templateLanguage": "NuBXSzeQ", "templateSlug": "1vNizxDl", "topic": "hKupBXOF"}' \
    'AUSRqdgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
