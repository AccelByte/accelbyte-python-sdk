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
lobby-user-request-friend '{"friendId": "EAxcVpFr", "friendPublicId": "ttufHIRd"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "H9UzVRiX"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "bqlAw7r6"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "W2ktQG0h"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status '5JAav5kR' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "a62WopBJ"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["HPtcDs8b", "BZLCXLx8", "bbgorQeF"]}' 'bQ1g7qbP' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'ngUNB1vR' 'odwpzS6D' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'aDpv8N7Z' 'QVqGj6oD' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 99, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 31, "chatRateLimitDuration": 21, "concurrentUsersLimit": 95, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "lFcDtgOj", "generalRateLimitBurst": 5, "generalRateLimitDuration": 16, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 42, "maxPartyMember": 69, "profanityFilter": false, "readyConsentTimeout": 37}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends '5tWEIC32' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "ogW7olvb", "topicName": "TgrhRTcP", "userIds": ["iSuL0Sly", "6XM4OI18", "mAQLnzjM"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "f8GZ2WBZ", "topicName": "qxYG3aRE"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "Au2D6QVK", "topicName": "NCWP75TB"}' '0i7pKxR8' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"dl0zRVW4": "EZG9m0Xc", "gGVbMqSs": "zE8GHavj", "7AorKsxw": "kosAVerX"}, "templateLanguage": "pc1C8Xfw", "templateSlug": "HuKeb9l3", "topicName": "rGN9A3sN"}' 'm84hddSp' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "Ht0P7MII", "templateLanguage": "R7CkyF6C", "templateSlug": "7duuyZ0G"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"hDogqrhB": "Rd8lDR6q", "VNPRZYdF": "LIAjGGJd", "dVCvu9vx": "5KQ7KYnI"}, "templateLanguage": "uMBvaO35", "templateSlug": "llzQRaT5", "topicName": "kPxUfofv"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'nnSuB0y5' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'WUlrMdI4' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'sNveabnt' 'BSxTeIv5' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "3HGCiljv"}' 'jKoyD6SC' 'wGrncqmL' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'tjQHAf8T' 'goNm03VL' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'isV6zwPu' 'o3td6TC6' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "I3lMjGSW", "topicName": "N2laRlxf"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'cjHfYakU' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "CTqGkE7w"}' 'cWfDslpJ' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'SqGAXQ0y' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "YoNRKd3I", "topicName": "L5TAQ6ii"}' 'PlSC2uE4' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"o5Vwdo3f": "ePqIJA8I", "Htrkmu0h": "pDDWVAla", "2l5BYNtI": "uS5S5XUd"}, "templateLanguage": "jsoqwGyz", "templateSlug": "zWi9gwQY", "topicName": "v7t1o7TT"}' 'r1DmrhZv' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 '15T7quIO' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"vBMcaYmv": {}, "CkGZ5dAg": {}, "qxpBFmaL": {}}, "updatedAt": 29}' 'JMdalwSy' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'liWMNW5N' 'yLu0M3VH' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'h2EI8JlD' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'bPWbQ6Q9' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"lNmqRBaA": "kLnvxkT1", "X68cmDc3": "fxU8MyKr", "QpM4hkkK": "6KKXNB3G"}}' 'v0IqmF51' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'TkhjYnaq' '6foWvXa3' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'bMrXsDr6' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'kILsSSyD' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["dmykmoPY", "gc2L4jk4", "Lo0LSP0p"]}' 'f4IxjUkl' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "535X3ate"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'EKDpADz1' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "x3poD3Qg", "note": "b3boLQQ1"}' 'MzH7Qm8b' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "wbmXgdAP", "note": "h1EThG96"}, {"filter": "gAFKK2WD", "note": "gCcxvONZ"}, {"filter": "m3EeERmD", "note": "nyeFoF7V"}]}' 'SZ6pf3vn' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[8, 92, 92]' 'KVPHbn4X' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "xtu7LQRE"}' 'NjEEztx1' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "4lSck0ZH"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "5GI39YBH"}' 'qaTHeKtW' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list '18iGeUlc' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "9d9sogWa"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "24CKNS0G", "profanityLevel": "qVvUfHQv"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "sHXNUNe4"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "mhgo5QB6"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public '5lSAiYnN' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'jkfZrQvG' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"gbLdLsFz": {}, "HkBMr1yr": {}, "OMlNFSrU": {}}, "updatedAt": 63}' '8f7Gc26S' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 0}' 'mIbeZxzf' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'TcyiuATu' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "s9hsfpFD", "topic": "cSDG8aMV"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"GLiBNrDj": "qoxcwgGL", "XpUL4pp2": "ncYAHdNz", "DmeIP6rO": "vDz9KOsb"}, "templateLanguage": "392k6YmJ", "templateSlug": "FfRByjlB", "topic": "iuFM3FIo"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "Vk8T3GpA", "templateLanguage": "nkCmBUqg", "templateSlug": "2SCnqntX"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '9y1aZSWM' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'iVi10sG6' --login_with_auth "Bearer foo"
lobby-get-localization-template 'vxkfUcmq' 'RRbceJ5i' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "0EeDxOgB"}' 'nhhqElIa' 'Dml48wdN' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'FLTm5T50' 'x9WT0GfH' --login_with_auth "Bearer foo"
lobby-publish-template '2rtOa4EX' 'sXzOXQAk' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "4mqrxzTt", "topic": "uLl4XlbG"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'L8QOxtjz' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "m8y2wNhm"}' 'woYZyI4E' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'FZKBcYrC' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "EAE7WIsf", "topic": "mx40NLRc"}' '6m8heKnW' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"hzfe2Nub": "eoKFeIaF", "QCYoDPIC": "pnduEEQl", "ULdJz4mn": "RBkMNxvv"}, "templateLanguage": "KgAT8mJr", "templateSlug": "Yq6hRklo", "topic": "qxM3gpwx"}' 'cfMy9Xzj' --login_with_auth "Bearer foo"
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
    '{"friendId": "jI5YbsKo", "friendPublicId": "ADkzJEN2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "VHzih3bi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "t0VWn3CO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "39PXDNxt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'XgeO3Fgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "XhjDzaQY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["3snn2ZkP", "7cFdP43e", "5dC9XIBu"]}' \
    'dfZgrbHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'IDm4hMzF' \
    '4TxodenS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'rUTvfqU0' \
    'bfoMm5cT' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 100, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 30, "chatRateLimitDuration": 39, "concurrentUsersLimit": 4, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "a23YvYmm", "generalRateLimitBurst": 61, "generalRateLimitDuration": 13, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 98, "maxPartyMember": 31, "profanityFilter": true, "readyConsentTimeout": 85}' \
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
    'k0i8VxsZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "NereSvf9", "topicName": "699mCEHT", "userIds": ["hUJkETAs", "Sp7gh4Te", "UTkOkAYf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "JB8AT9t4", "topicName": "Tv207Y2Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "D3oD5fLC", "topicName": "r3OOlXVv"}' \
    '8ZGF7uYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"GzpipNDi": "gNJma1Mb", "qqZtfNWq": "l4nmwAft", "4gqkNNlW": "kD9eOziY"}, "templateLanguage": "RFOn0jJL", "templateSlug": "HC9LxhvN", "topicName": "XTwGBCto"}' \
    'hLtl9Zuh' \
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
    '{"templateContent": "ytm5UDrT", "templateLanguage": "6QXCs5SP", "templateSlug": "BbRPZTF6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"oQAXVG7t": "nsZg5QgX", "jvyGJPN4": "eXbJE5Vs", "2GcyomQo": "IXimBJeh"}, "templateLanguage": "yxlNsjUg", "templateSlug": "xBkF6wFP", "topicName": "oJeQedio"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'gEhhM2rI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'izGdKvOP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'dq5xrgxS' \
    'my1DN9LF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "kYW5DQyj"}' \
    '4bj5Ro2o' \
    'gaKt2ujQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'Sa3Zdb65' \
    'UXmy0Zp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'iIaTIKUk' \
    'mkk9QM0N' \
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
    '{"description": "BMA9ORxp", "topicName": "zwLR2AK6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'eXUGPJsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "1fiP80G9"}' \
    'Pclxcft2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'ulIJzPyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "VEiOG4Uc", "topicName": "qsuGKHhM"}' \
    'RWLVd3Dl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"hLuIpomM": "8sm1MiaI", "1mX2tJoA": "RtdbBe7u", "dsMrok0W": "vGYYnx4V"}, "templateLanguage": "709xbnGe", "templateSlug": "zKsDwG2o", "topicName": "mOR2nvYI"}' \
    '9TVqJdvz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'cWbfUpaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"p5JMl5LL": {}, "4bTxBmZj": {}, "drrIxsB0": {}}, "updatedAt": 80}' \
    'laDXTvKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'WwNTAhd2' \
    'wrS0uPdj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'hdinpng5' \
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
    'BLy8wbhM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"ssAHjapI": "kY9Rf4wP", "57dBZNR8": "8YbCtmKy", "8M9zVrjf": "GXZnqAQU"}}' \
    'oY1GjlII' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'k0iKoTTS' \
    '1j02o7Jj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'TXAQN0qd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'skdQV0Tq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["I8EFnmDb", "xIxi4YKl", "ONk2Q5Y4"]}' \
    'Jvaizwii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "latuUjjt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '9lIMGql5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "ElEa9EII", "note": "lGcHB3Cf"}' \
    'R3ncDlwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "3v3MFFJ1", "note": "KesKoELC"}, {"filter": "pobBEG8X", "note": "645xpdXp"}, {"filter": "ai0rYaT5", "note": "hOPjaf3H"}]}' \
    '0tYighU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[98, 76, 96]' \
    'VbLFzHEP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "8cM4NTwr"}' \
    '0KHaAsmT' \
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
    '{"isEnabled": false, "isMandatory": false, "name": "7HVWqMkN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "AURt9plC"}' \
    'SVq8PdH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'hJPUAc0R' \
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
    '{"rule": "VwXgAgnt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "LMCuaXBW", "profanityLevel": "Qi6BqPg4"}' \
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
    '{"apiKey": "xr0lCanc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "UZGCHsZY"}' \
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
    'oLfR1KtO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'v7Zy0b65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"uvuKNuy0": {}, "ytZQ7M6N": {}, "zy1adnSK": {}}, "updatedAt": 84}' \
    'kmZXElW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 77}' \
    'fRSse6AA' \
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
    'z3S4czz0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "QKFlAVmV", "topic": "Lu4AOec0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"z8eBeeoi": "p68J1nsv", "4W2OJhta": "fxMSJlHe", "b34sZKHc": "l5LLLOex"}, "templateLanguage": "L4fZvWtN", "templateSlug": "D2tcBFpX", "topic": "8lNtFEJ7"}' \
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
    '{"templateContent": "tnkY6Mca", "templateLanguage": "5afj12K2", "templateSlug": "IzrBvvWm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    '4udE0OXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'dXgNne8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'JATwlc6e' \
    'sUp6Sw1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "98jeZQ7h"}' \
    'fxnhLd3K' \
    'naknoed9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'DHhLOqQG' \
    'hCUr6iTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'jyEgarAd' \
    'NJOIG36I' \
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
    '{"description": "6tRbRcrE", "topic": "veMdAdiP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'KDUVSC00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "PYeDcagg"}' \
    'inxnFIna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    '3yddcbsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "heTH26IU", "topic": "JNvYuGRU"}' \
    'vpZaHCuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"SOiIZsMf": "B4ZH3mtg", "WgU4pCAK": "xeE70Cau", "nQNxot37": "1W9G4AvQ"}, "templateLanguage": "kqsGnmyo", "templateSlug": "5JJTUVmb", "topic": "8GEXFTlE"}' \
    'MEsFzYqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
