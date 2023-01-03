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
lobby-user-request-friend '{"friendId": "wgCCaEYh", "friendPublicId": "TeRQ91rD"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "WlNXElsE"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "GVbCxhMx"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "8LTGMnB0"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'T5PeAJa4' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "mhvUjIy0"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["IQ68jecD", "bbB63dX3", "VFjvO7J4"]}' '4TVp5lTj' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'PMYZB8Sq' 'tutbnyTm' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'q5cr6NCL' 'pCIZ1lXu' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 77, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 88, "chatRateLimitDuration": 8, "concurrentUsersLimit": 73, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "rzt5rEfF", "generalRateLimitBurst": 85, "generalRateLimitDuration": 87, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 39, "maxPartyMember": 6, "profanityFilter": true, "readyConsentTimeout": 90}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'BB9Kz6Ew' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "LPuJdNlc", "topicName": "0FAdqxWU", "userIds": ["4Ga6AgIe", "eCU9syyU", "OtI4Vlct"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "ryp9pznb", "topicName": "e0AZ7fJY"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "KVzxlaOv", "topicName": "mYuRKvQ3"}' 'QvHJAn3k' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"VApJYMLR": "cjmJYQIs", "SNqzGO28": "SvtZK4XG", "dDPay7LC": "6H2bNDzF"}, "templateLanguage": "yT5E2sRJ", "templateSlug": "XNwMDHej", "topicName": "s80Dcjf7"}' '18hZrjui' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "chBXHvMy", "templateLanguage": "15pfhkOa", "templateSlug": "LDC9zNZg"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"nXhZKo82": "8hb0rfN8", "ILY1FJmL": "H738WK6W", "VgwRqgHW": "KKYeJHxL"}, "templateLanguage": "XclZJTzU", "templateSlug": "ufBpFss5", "topicName": "GzsYiOdQ"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'buLzV8MI' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin '9ktBPpum' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'Oo9sNY4X' 'bJQuTLLR' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "81vxqdwp"}' 'pqkb6MeK' 'u4IrPc4U' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'vPKvGEtP' 'W0kBKKuF' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'qQui9DbI' 'v0kJ1lsx' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "c6Kj0K4Z", "topicName": "queqDsPg"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'fwBGXmAP' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "yJcd6uIs"}' '8vWvUQTS' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'L37Fdytg' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "xbMnDrxI", "topicName": "Ga1izPlj"}' 'RDYoCDJM' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"cPCKhkkG": "JwLXjAMu", "RsdRAot5": "s3iQb10u", "TDxLR6El": "hPAR8wkn"}, "templateLanguage": "OUYhg1hk", "templateSlug": "rN560hjZ", "topicName": "cTKZqnxz"}' 'ER0IxuTN' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 '44qONh61' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"OCfGTow5": {}, "j4RfG9yW": {}, "h5cUJGiO": {}}, "updatedAt": 29}' '9fQIxiFM' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'IQ908enx' 'vIsFpnVY' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'viDWpBMl' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'xH3zjKwT' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"Yt7wR3HP": "3SPb41EG", "jkXyylB7": "NAWBG8Ry", "S2jAGU4E": "jHMxd1h0"}}' 'KgkcUAXy' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'QK66SdIi' 'EzcTgezd' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'ktHjGSd3' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'wBptA9cE' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["JQd6yP0k", "HHqffpbx", "417d8f9h"]}' '2I57pFuo' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "6flGjH2S"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'D53mfPCc' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "prwJglAF", "note": "66e1rL8Y"}' 'FWRV9wjG' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "D4mvv68O", "note": "fRmRdasY"}, {"filter": "jEJZsJqG", "note": "e9EcrGN0"}, {"filter": "E9jWVxX2", "note": "76ky1tk3"}]}' 'yK0bBus9' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[54, 70, 88]' '4QJATLs2' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "JV4oUCiq"}' 'SzdDREKb' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "smcKziV4"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": true, "newName": "lus4RSby"}' 'CpSVjwBQ' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'DUo7wE6N' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "tz6MfKp7"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "i2f0f36g", "profanityLevel": "Dhpv6dPF"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "vKM3f0Hz"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "dooBzo8n"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'j19YoYRr' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'REpQ4ko4' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"ZxHmVtzt": {}, "0QPTKC55": {}, "VrKojTCl": {}}, "updatedAt": 65}' 'wazpLh18' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 46}' 'ZVitTHCs' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 '0r8iyiZT' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "1l6IzM0F", "topic": "NbYided2"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"Djb12b3I": "e2764ApZ", "ZwJBPFPc": "CwFvDoXP", "z087WuDn": "WyMwIZwE"}, "templateLanguage": "40iivdnI", "templateSlug": "tQARG3aE", "topic": "izlgOLIt"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "ME6lNCZN", "templateLanguage": "dHqmqAV9", "templateSlug": "9mRnaSD5"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'rywNLv0g' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'ApUAk6lO' --login_with_auth "Bearer foo"
lobby-get-localization-template 'WtqVplTP' 'uTqksylm' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "v9B35MTI"}' 'v2U3Nikt' 'uj9jCq0C' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'BhVBJzAA' 'I3k9Mjvf' --login_with_auth "Bearer foo"
lobby-publish-template 'PcitUXPv' 'VI5gmwyc' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "dXwTGhpK", "topic": "t0yeYMsv"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'tJ5nOPhi' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "i3PG44TI"}' '5xOHGrvS' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name '5SOl4nkt' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "EGIV2ZYS", "topic": "RC9WbGCu"}' 'TJNv9ja9' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"emj2v5jJ": "HsyEbSz4", "TctN5gSw": "wPZRuE1c", "yZi59jOD": "Y7ZgrHb6"}, "templateLanguage": "P0wQnjup", "templateSlug": "rt0Rcwrc", "topic": "ER3VYItB"}' 'jpIDvUW3' --login_with_auth "Bearer foo"
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
    '{"friendId": "73eFvEKP", "friendPublicId": "0MZMgabG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "E1EpCxRL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "zEhTR4tj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "KgehqBEP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'CuGEukHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "pPwmau1T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["1in3wMhV", "Ullex0BI", "hYXLRR3w"]}' \
    'RUuAMQU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'Ye7jvRrp' \
    'jNgdo5CW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    '5LcXKzic' \
    'hUAlfyY6' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 68, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 92, "chatRateLimitDuration": 39, "concurrentUsersLimit": 10, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "M6lX1QTG", "generalRateLimitBurst": 85, "generalRateLimitDuration": 48, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 13, "maxPartyMember": 42, "profanityFilter": false, "readyConsentTimeout": 31}' \
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
    'cNr5Vlaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "emv4xhV3", "topicName": "qPxoqcP8", "userIds": ["4qYsiP2G", "tpduOc3Z", "L6Dfr0pW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "GwnRMmwK", "topicName": "iYc8eEDT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "M4zh7yju", "topicName": "5b77FYDS"}' \
    'u20Tp5Ch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"WvXPWkVJ": "aepPbVSR", "o30JwjI5": "7zjGCGAW", "q3GiGsk3": "hcgox9Ai"}, "templateLanguage": "4dRU2H7x", "templateSlug": "auT8uQRv", "topicName": "4Zgy1RWZ"}' \
    'EPulXioD' \
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
    '{"templateContent": "ZOMxFG0y", "templateLanguage": "nqw18DUG", "templateSlug": "kaw4M2k2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"r1Ih4AmX": "IpPdGYA7", "aWAKAE2M": "4ebowwzp", "TqiKryF3": "XFmqVfmH"}, "templateLanguage": "fdwaAAkm", "templateSlug": "jQ9b4vxX", "topicName": "yBI1bAwh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'KDxXChkj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '6Kiph4aB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    't3JCRkSj' \
    '6gYz53OY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "qNlTLKvH"}' \
    'fgGknTgE' \
    'eg6pcTrW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'ksYfADFs' \
    'vTEUIajp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'OKMKSoqQ' \
    'LjNS12MS' \
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
    '{"description": "0yrRCJS0", "topicName": "PEbO1vCi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'fq1qy1jU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "oRapW8wB"}' \
    'M0vn6BB9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'LGtl9JEI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "Pk0eBbmN", "topicName": "VBfOBwBR"}' \
    'lywhp6D2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"48Nz6HxC": "Gnh3CFQm", "icDJH5qZ": "c9Ui2Shb", "Z2KlWWif": "RXJeLzY0"}, "templateLanguage": "S0oXaSkw", "templateSlug": "wUHQi74M", "topicName": "rssbEk71"}' \
    'wSOC2On8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'Yy6NXGiM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"Xqf8i8T5": {}, "F01jsk93": {}, "noRqyeXI": {}}, "updatedAt": 78}' \
    '32WDYWwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'efskNlGq' \
    'cysL9GrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'sEg7MR8M' \
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
    'oFUUGb1b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"7pJg2HyH": "Lzwu7qKH", "sWJtyDRP": "bQSBehwY", "amUo8idr": "dXKbbDSb"}}' \
    '04EjbhYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    '91kDZJiw' \
    'u4uWeZbZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    '8dPYBEmc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'rvcM7Usf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["Xg4ExRO3", "4ikadkbN", "wtawbPZm"]}' \
    'R1rvHk0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "jorMAE7o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '8VSkEcO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "06uBvohB", "note": "Zu5Mekcs"}' \
    'VYCbJcNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "bNtHtXKK", "note": "n3bINScN"}, {"filter": "nwV4ORse", "note": "4By5ZBfj"}, {"filter": "PQvXKTpU", "note": "EkFn2kkt"}]}' \
    'kNZj78Dk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[37, 58, 100]' \
    'hAVXgiDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "NbQOFAz0"}' \
    'ANFHDVGB' \
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
    '{"isEnabled": true, "isMandatory": true, "name": "tUsyit5A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "newName": "k1pUseDJ"}' \
    'zNlT6kO4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'raLxxEmA' \
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
    '{"rule": "KGOMjhI5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "ZYDUL4uo", "profanityLevel": "aiARMkZk"}' \
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
    '{"apiKey": "SfxGSWCN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "rA7IQrFW"}' \
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
    'ss1AEZDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'AVsaxIrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"Ps9OOJ9b": {}, "Yj32gCgk": {}, "wgRBpo5v": {}}, "updatedAt": 79}' \
    'jCXhVOqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 83}' \
    '3ndBXRJd' \
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
    '17z4eMAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "ryx0U6fu", "topic": "DNjPMvBW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"dXvEl6XA": "J40O94U4", "apjeglqH": "fE2Bp8Ec", "xquzbfe0": "sWnb8ULU"}, "templateLanguage": "tR2HOLgU", "templateSlug": "9Up2ydxf", "topic": "wMW7DXog"}' \
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
    '{"templateContent": "Z0bcDXxx", "templateLanguage": "mIJn5awf", "templateSlug": "DASXI0wG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'dAisGzZD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'yVbI9huw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'caaMpY5K' \
    'odd3LSRd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "GZk5Un4x"}' \
    '1KrTqf5B' \
    'aaEnRcH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '43XlPy3B' \
    'DoyIvUTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'DjexI4kO' \
    '1ulFc7X4' \
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
    '{"description": "0dPK0Ybk", "topic": "LUiMh4oZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'iyNFo8ZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "K4MMhMVt"}' \
    'OvKRcFUs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'I4fGSkiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "lOPmCs8t", "topic": "d697QrT9"}' \
    'P5m247KR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"90pGa7mK": "zom5Oibd", "BY01WjOW": "vPyqTsXi", "htQimAFi": "xWCNtPAL"}, "templateLanguage": "uMCIcAbK", "templateSlug": "JsuJUICq", "topic": "Ln79mMAi"}' \
    'Se3qDaQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
