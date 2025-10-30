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
lobby-get-user-incoming-friends-with-time --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends-with-time --login_with_auth "Bearer foo"
lobby-get-user-friends-with-platform --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "EAxcVpFrttufHIRd", "friendPublicId": "H9UzVRiXbqlAw7r6", "metadata": {"W2ktQG0h5JAav5kR": "a62WopBJHPtcDs8b", "BZLCXLx8bbgorQeF": "bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z": "QVqGj6oDLjWjkY1a"}}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "XlFcDtgOjchIua5t"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "WEIC32ogW7olvbTg"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "rhRTcPiSuL0Sly6X"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "GZ2WBZqxYG3aREAu"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["2D6QVKNCWP75TB0i", "7pKxR8dl0zRVW4EZ", "G9m0XcgGVbMqSszE"]}' '8GHavj7AorKsxwko' --login_with_auth "Bearer foo"
lobby-bulk-delete-friends '{"friendIds": ["sAVerXpc1C8XfwHu", "Keb9l3rGN9A3sNm8", "4hddSpHt0P7MIIR7"]}' 'CkyF6C7duuyZ0GhD' --login_with_auth "Bearer foo"
lobby-sync-native-friends '[{"isLogin": false, "platformId": "FdxLzFQN05MYzYiK", "platformToken": "We5dNRljv7IPrDQQ", "psnEnv": "Rgat0SevkLGMS0ly", "syncDeletedFriend": true}, {"isLogin": true, "platformId": "I9a2I9u6Vpbsx5w8", "platformToken": "hqUI06UpOXGSLmCV", "psnEnv": "uHOPlLlkvR8sKgnu", "syncDeletedFriend": false}, {"isLogin": false, "platformId": "Iv53HGCiljvjKoyD", "platformToken": "6SCwGrncqmLtjQHA", "psnEnv": "f8TgoNm03VLisV6z", "syncDeletedFriend": true}]' --login_with_auth "Bearer foo"
lobby-sync-native-blocked-user '[{"platformId": "Vo3twu0MesTCf9x4", "psnEnv": "rt69lna7qxNeIxPz"}, {"platformId": "6MbwL6IY69z1UaLq", "psnEnv": "YSYWytLPziZMdjxc"}, {"platformId": "BZufQxGiHPllG4cY", "psnEnv": "EzfTD1ZBm3MqHcUm"}]' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-log-config --login_with_auth "Bearer foo"
lobby-admin-patch-update-log-config '{"logLevel": "panic", "logLevelDB": "warning", "slowQueryThreshold": 70, "socketLogEnabled": false}' --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 21, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 25, "chatRateLimitDuration": 41, "concurrentUsersLimit": 90, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "mn9HrNQy4uZAAiE0", "generalRateLimitBurst": 25, "generalRateLimitDuration": 91, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 39, "maxFriendsLimit": 91, "maxPartyMember": 90, "profanityFilter": true, "readyConsentTimeout": 6, "requestMetadataMaxSize": 57, "unregisterDelay": 20}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'HYzUOcEdscKHPEqg' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'A8yu7Vk6Jt4Ymos9' --login_with_auth "Bearer foo"
lobby-admin-list-friends-of-friends 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "JMdalwSyliWMNW5N", "topicName": "yLu0M3VHh2EI8JlD", "userIds": ["bPWbQ6Q9lNmqRBaA", "kLnvxkT1X68cmDc3", "fxU8MyKrQpM4hkkK"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "6KKXNB3Gv0IqmF51", "topicName": "TkhjYnaq6foWvXa3"}' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "bMrXsDr6kILsSSyD", "templateLanguage": "dmykmoPYgc2L4jk4", "templateSlug": "Lo0LSP0pf4IxjUkl"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"535X3ateEKDpADz1": "x3poD3Qgb3boLQQ1", "MzH7Qm8bwbmXgdAP": "h1EThG96gAFKK2WD", "gCcxvONZm3EeERmD": "nyeFoF7VSZ6pf3vn"}, "templateLanguage": "eSD2Tb3g7mSQUhAE", "templateSlug": "trmjqU6YE3p4lSck", "topicName": "0ZHn5GI39YBHqaTH"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'eKtW18iGeUlc9d9s' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'ogWa24CKNS0GqVvU' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'fHQvsHXNUNe4mhgo' '5QB65lSAiYnNjkfZ' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "rQvGgbLdLsFzHkBM"}' 'r1yrOMlNFSrUEirn' 'jX9fDmIbeZxzfTcy' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'iuATus9hsfpFDcSD' 'G8aMVGLiBNrDjqox' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'cwgGLXpUL4pp2ncY' 'AHdNzDmeIP6rOvDz' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "9KOsb392k6YmJFfR", "topicName": "ByjlBiuFM3FIoVk8"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'T3GpAnkCmBUqg2SC' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "nqntX9y1aZSWMiVi"}' '10sG6vxkfUcmqRRb' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'ceJ5i0EeDxOgBnhh' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "qElIaDml48wdNFLT", "topicName": "m5T50x9WT0GfH2rt"}' 'Oa4EXsXzOXQAk4mq' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"rxzTtuLl4XlbGL8Q": "Oxtjzm8y2wNhmwoY", "ZyI4EFZKBcYrCEAE": "7WIsfmx40NLRc6m8", "heKnWhzfe2NubeoK": "FeIaFQCYoDPICpnd"}, "templateLanguage": "uEEQlULdJz4mnRBk", "templateSlug": "MNxvvKgAT8mJrYq6", "topicName": "hRkloqxM3gpwxcfM"}' 'y9XzjjI5YbsKoADk' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge", "O3FgkXhjDzaQY3sn"]}' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'n2ZkP7cFdP43e5dC' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 '9XIBudfZgrbHDIDm' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["4hMzF4TxodenSrUT", "vfqU0bfoMm5cTtFW", "botQyXJRcQWsmqPN"]}' 's92epxk0i8VxsZNe' --login_with_auth "Bearer foo"
lobby-admin-bulk-unblock-players-v1 '{"listUnblockUserId": ["reSvf9699mCEHThU", "JkETAsSp7gh4TeUT", "kOkAYfJB8AT9t4Tv"]}' '207Y2QD3oD5fLCr3' --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "OOlXVv8ZGF7uYnGz"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "pipNDigNJma1Mbqq"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'ZtfNWql4nmwAft4g' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v2 '{"userIDs": ["qkNNlWkD9eOziYRF", "On0jJLHC9LxhvNXT", "wGBCtohLtl9Zuhyt"]}' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "m5UDrT6QXCs5SPBb", "topic": "RPZTF6oQAXVG7tns"}' --login_with_auth "Bearer foo"
lobby-get-my-notifications --login_with_auth "Bearer foo"
lobby-get-my-offline-notifications --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"Zg5QgXjvyGJPN4eX": "bJE5Vs2GcyomQoIX", "imBJehyxlNsjUgxB": "kF6wFPoJeQediogE", "hhM2rIizGdKvOPdq": "5xrgxSmy1DN9LFkY"}, "templateLanguage": "W5DQyj4bj5Ro2oga", "templateSlug": "Kt2ujQSa3Zdb65UX", "topic": "my0Zp6iIaTIKUkmk"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "k9QM0NBMA9ORxpzw", "templateLanguage": "LR2AK6eXUGPJsw1f", "templateSlug": "iP80G9Pclxcft2ul"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'IJzPyrVEiOG4Ucqs' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'uGKHhMRWLVd3DlhL' --login_with_auth "Bearer foo"
lobby-get-localization-template 'uIpomM8sm1MiaI1m' 'X2tJoARtdbBe7uds' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "Mrok0WvGYYnx4V70"}' '9xbnGezKsDwG2omO' 'R2nvYI9TVqJdvzcW' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'bfUpaXp5JMl5LL4b' 'TxBmZjdrrIxsB0NR' --login_with_auth "Bearer foo"
lobby-publish-template 'sB1fPqqRRulpqpym' 'DkQhtrHWwRVnwVBO' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "qOHi8pWGd1juYhiq", "topic": "jRJOqB5F93zFQbJn"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'dUDpdONneAczbBdH' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "b2slt71B1SmZp2JZ"}' 'p50CnPb71ORYcmQb' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'TU5JX8ccLjMXJRk0' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "eaKQDOJvrTefglSs", "topic": "6g4iY9u02aCNYIWe"}' 'kp18lOC3mNqF7Bl0' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"LcghVHfPEspxwhRO": "N0bc1eMbEIjowLqc", "3ecjXJbZDKKoxLE1": "Y3Dymtj3giPg4x4y", "iPX6ues1Hhhkg1yL": "VbLFzHEP8cM4NTwr"}, "templateLanguage": "0KHaAsmTej52WKi6", "templateSlug": "tArAURt9plCSVq8P", "topic": "dH6hJPUAc0RVwXgA"}' 'gntLMCuaXBWQi6Bq' --login_with_auth "Bearer foo"
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
echo "1..110"

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

#- 4 GetUserIncomingFriendsWithTime
$PYTHON -m $MODULE 'lobby-get-user-incoming-friends-with-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends-with-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
$PYTHON -m $MODULE 'lobby-get-user-friends-with-platform' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "Pg4xr0lCancUZGCH", "friendPublicId": "sZYoLfR1KtOv7Zy0", "metadata": {"b65uvuKNuy0ytZQ7": "M6Nzy1adnSKOLFKx", "1dX4LuWJu3pDMUAe": "eZ97SBROPYuG6XqP", "6oo7G73zdxTgOfnw": "IdlNa29fDLh741Is"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "lKHzGlLKWUtDQs61"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "OQAoxyyQpRWCiiPD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "GQhNPEwiJCf2XJVr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'lzqQls1ozhLVA3kE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "8jKvgatOEBM70Tdl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["NBJYOmpu1VCarzBs", "V6xnZ5Jrzzjrcaug", "6CWVG8SWP3glU6mu"]}' \
    'swVJnNnN7kAa7j0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["iFc5HTHQIoVsGo7d", "wV9DBqFKHQkETJyT", "lUrwDTnoujQD4IEi"]}' \
    'H9Z5qXn3aoRtlqOE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": true, "platformId": "26IUJNvYuGRUvpZa", "platformToken": "HCuESOiIZsMfB4ZH", "psnEnv": "3mtgWgU4pCAKxeE7", "syncDeletedFriend": true}, {"isLogin": true, "platformId": "aunQNxot371W9G4A", "platformToken": "vQkqsGnmyo5JJTUV", "psnEnv": "mb8GEXFTlEMEsFzY", "syncDeletedFriend": true}, {"isLogin": true, "platformId": "BOdkocVTd4BxqGWV", "platformToken": "6mTJ0sQs6XNbjvqh", "psnEnv": "nUVLWu8olKdxL6oz", "syncDeletedFriend": false}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
$PYTHON -m $MODULE 'lobby-sync-native-blocked-user' \
    '[{"platformId": "mDD0jJvlfV5OemPY", "psnEnv": "dYT7DROCjtuzFMbA"}, {"platformId": "G9YI89hmguB8FOTj", "psnEnv": "MLo4b9rIzqYkEpst"}, {"platformId": "yVTBcrM8rG0rH0zc", "psnEnv": "swwVeMK6MbGIVIu8"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetLogConfig
$PYTHON -m $MODULE 'lobby-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetLogConfig' test.out

#- 20 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'lobby-admin-patch-update-log-config' \
    '{"logLevel": "fatal", "logLevelDB": "panic", "slowQueryThreshold": 44, "socketLogEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminPatchUpdateLogConfig' test.out

#- 21 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetConfigV1' test.out

#- 22 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 48, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 55, "chatRateLimitDuration": 41, "concurrentUsersLimit": 98, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "TIMtpgkieDyF97lG", "generalRateLimitBurst": 7, "generalRateLimitDuration": 48, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 16, "maxFriendsLimit": 2, "maxPartyMember": 68, "profanityFilter": true, "readyConsentTimeout": 32, "requestMetadataMaxSize": 3, "unregisterDelay": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdateConfigV1' test.out

#- 23 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminExportConfigV1' test.out

#- 24 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminImportConfigV1' test.out

#- 25 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'WCYzo8yO2KTK9tmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'OnYnOpas6ghP1y4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'i7s7QBlk44Z44B1G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'ZgKg4uKxaCgcGLuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
eval_tap 0 29 'AdminGetGlobalConfig # SKIP deprecated' test.out

#- 30 AdminUpdateGlobalConfig
eval_tap 0 30 'AdminUpdateGlobalConfig # SKIP deprecated' test.out

#- 31 AdminDeleteGlobalConfig
eval_tap 0 31 'AdminDeleteGlobalConfig # SKIP deprecated' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "3brWdTYCfHkIySok", "topicName": "5DiXZtLW87rGysry", "userIds": ["od3dNQrmsApRA6HX", "3RwrKt2ecozL0TOg", "54vCE48L5oLF6M4l"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "Na4JUMSHNgqRqCV7", "topicName": "usamANkZlOX9Sfo9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
eval_tap 0 34 'SendPartyFreeformNotificationV1Admin # SKIP deprecated' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
eval_tap 0 35 'SendPartyTemplatedNotificationV1Admin # SKIP deprecated' test.out

#- 36 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "5HgXqKhTPkwfLM9u", "templateLanguage": "SybRzWek2gZvRrvr", "templateSlug": "0n9d9lvccKMLhrTr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"cBE2ItBS3KtKZWe8": "aoFzAyBME74HUtip", "UWYhWV1qx8CzPML5": "2faXUr9Sk4lq2faB", "cAXXKlhvyH8paOJt": "xqMPpcVfRwNj547f"}, "templateLanguage": "H0XrKEDpEY8VnocG", "templateSlug": "Ajci0V3tBf2jnHGK", "topicName": "Xphn50c9tNLDljhZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    '2jxLRX3z46OCaGBe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'MfPlNos4yBRjrERH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'EonAZR8GmEu0q1p6' \
    'QCyY6vSkVFWdsbYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "VEGVxYheR3j5mNZ6"}' \
    'vwv7K8Asvt1j1Rx5' \
    '9hesNWy2NvZ85DDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'DAF8KDsBZOuYQJ03' \
    'BAHZ7c53q7akMpcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'nnx6RVBrop9v7aZK' \
    '3h65hbN15zfQSfQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "tfF3TQN0OcNDLr36", "topicName": "vzohZyjMQAg5mPYh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'rLTyU8OhgfY9JQYG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "F4bYXEcENx9xZlAc"}' \
    'hob44lONDDwMvgI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'HlyPR7wZNiVsF6xG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "2mXEQdbzIVy8alnc", "topicName": "V7vWgSHdfo07UctP"}' \
    'ErqxyMyOK06MqQBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"rxgjVBycvU4PbmRD": "crg0DjQjBECXvea7", "H1m2lJFRZ3ZprZ60": "zMjhTHeh94TSenE5", "hCFkIf5weqZ18MH5": "7l2Zsrh90ETtYmGu"}, "templateLanguage": "kz3MnlrjcHp6B8Vj", "templateSlug": "7rXFgDnDkdZ9bpjb", "topicName": "1tdA3QhjCMW64f4X"}' \
    'hIjSoTB2NMKtezap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
eval_tap 0 52 'AdminGetPartyDataV1 # SKIP deprecated' test.out

#- 53 AdminUpdatePartyAttributesV1
eval_tap 0 53 'AdminUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 54 AdminJoinPartyV1
eval_tap 0 54 'AdminJoinPartyV1 # SKIP deprecated' test.out

#- 55 AdminGetUserPartyV1
eval_tap 0 55 'AdminGetUserPartyV1 # SKIP deprecated' test.out

#- 56 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["Pr2QEPx3zTxBGtEJ", "IYppuUSsKoHw2hyd", "12uSE7BEv3aevq6i"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
eval_tap 0 58 'AdminGetAllPlayerSessionAttribute # SKIP deprecated' test.out

#- 59 AdminSetPlayerSessionAttribute
eval_tap 0 59 'AdminSetPlayerSessionAttribute # SKIP deprecated' test.out

#- 60 AdminGetPlayerSessionAttribute
eval_tap 0 60 'AdminGetPlayerSessionAttribute # SKIP deprecated' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'ohU1cg4W1IS3Uv1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'pWoJBaqdg2FHcuns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["S1lnaO2m9vqjhbeK", "2qN8g6x2PyYDo5R3", "hLiD5sf5y1JsxJNG"]}' \
    'myt0SQDUDoWBZVGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-unblock-players-v1' \
    '{"listUnblockUserId": ["lkUetzCAWc9x1aMj", "gGim51T107XIZRZ7", "tZdIs0xf4czdt7zq"]}' \
    'mSKxOEQlVcx6GqsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
eval_tap 0 65 'AdminDebugProfanityFilters # SKIP deprecated' test.out

#- 66 AdminGetProfanityListFiltersV1
eval_tap 0 66 'AdminGetProfanityListFiltersV1 # SKIP deprecated' test.out

#- 67 AdminAddProfanityFilterIntoList
eval_tap 0 67 'AdminAddProfanityFilterIntoList # SKIP deprecated' test.out

#- 68 AdminAddProfanityFilters
eval_tap 0 68 'AdminAddProfanityFilters # SKIP deprecated' test.out

#- 69 AdminImportProfanityFiltersFromFile
eval_tap 0 69 'AdminImportProfanityFiltersFromFile # SKIP deprecated' test.out

#- 70 AdminDeleteProfanityFilter
eval_tap 0 70 'AdminDeleteProfanityFilter # SKIP deprecated' test.out

#- 71 AdminGetProfanityLists
eval_tap 0 71 'AdminGetProfanityLists # SKIP deprecated' test.out

#- 72 AdminCreateProfanityList
eval_tap 0 72 'AdminCreateProfanityList # SKIP deprecated' test.out

#- 73 AdminUpdateProfanityList
eval_tap 0 73 'AdminUpdateProfanityList # SKIP deprecated' test.out

#- 74 AdminDeleteProfanityList
eval_tap 0 74 'AdminDeleteProfanityList # SKIP deprecated' test.out

#- 75 AdminGetProfanityRule
eval_tap 0 75 'AdminGetProfanityRule # SKIP deprecated' test.out

#- 76 AdminSetProfanityRuleForNamespace
eval_tap 0 76 'AdminSetProfanityRuleForNamespace # SKIP deprecated' test.out

#- 77 AdminVerifyMessageProfanityResponse
eval_tap 0 77 'AdminVerifyMessageProfanityResponse # SKIP deprecated' test.out

#- 78 AdminGetThirdPartyConfig
eval_tap 0 78 'AdminGetThirdPartyConfig # SKIP deprecated' test.out

#- 79 AdminUpdateThirdPartyConfig
eval_tap 0 79 'AdminUpdateThirdPartyConfig # SKIP deprecated' test.out

#- 80 AdminCreateThirdPartyConfig
eval_tap 0 80 'AdminCreateThirdPartyConfig # SKIP deprecated' test.out

#- 81 AdminDeleteThirdPartyConfig
eval_tap 0 81 'AdminDeleteThirdPartyConfig # SKIP deprecated' test.out

#- 82 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
eval_tap 0 83 'PublicGetPartyDataV1 # SKIP deprecated' test.out

#- 84 PublicUpdatePartyAttributesV1
eval_tap 0 84 'PublicUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 85 PublicSetPartyLimitV1
eval_tap 0 85 'PublicSetPartyLimitV1 # SKIP deprecated' test.out

#- 86 PublicPlayerBlockPlayersV1
$PYTHON -m $MODULE 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "q8vdhWVnuYLgpZeh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicPlayerBlockPlayersV1' test.out

#- 87 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicGetPlayerBlockedPlayersV1' test.out

#- 88 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 89 PublicUnblockPlayerV1
$PYTHON -m $MODULE 'lobby-public-unblock-player-v1' \
    '{"userId": "K0G2nmyuViB9kRTc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'SQdTnNYGeAfYFG3w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
$PYTHON -m $MODULE 'lobby-users-presence-handler-v2' \
    '{"userIDs": ["SkHKufBdS3ZOokZB", "4cXnAXyuGz6LlxHv", "8SwyagYvDJ3w3UNg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "IGj2jZtEYT8sIPSE", "topic": "1XXPzySa0sZoFS6x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
$PYTHON -m $MODULE 'lobby-get-my-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 GetMyOfflineNotifications
$PYTHON -m $MODULE 'lobby-get-my-offline-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetMyOfflineNotifications' test.out

#- 95 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"COWMpyh9pMsQgb64": "ELbzDMwyo4nIRysQ", "dbufXjYnSoIFeouC": "2m38kXrDZWlGVE9s", "J4NpUtKp6M9I6nEw": "nZhsjwJeGwaPSDMZ"}, "templateLanguage": "z95OYKiqaZD63xe5", "templateSlug": "rruJVfLGea0ZtlzU", "topic": "cuHAXz0UV31MfuGa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'NotificationWithTemplate' test.out

#- 96 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetGameTemplate' test.out

#- 97 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "XsAuGsZaSHevO0TQ", "templateLanguage": "NEI3kfabxJWWSI1E", "templateSlug": "CUo1NPpeFhUztXDg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'CreateTemplate' test.out

#- 98 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'B7n4C97uAPP8PATL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetSlugTemplate' test.out

#- 99 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'pUpxeJlsBJT6Hh3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteTemplateSlug' test.out

#- 100 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'MjAjq2mK8lbSEEel' \
    'xnb5QxWG2HFnZlA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetLocalizationTemplate' test.out

#- 101 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "HKWW4fI1IQcoBQEL"}' \
    'cNlZkqTZrKgXNwvm' \
    '4e5GX6H742OixhtA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateLocalizationTemplate' test.out

#- 102 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'oKiVm6URT95XhnUc' \
    'vWB28MpusuhhDJ5s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteTemplateLocalization' test.out

#- 103 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'lzgiWZEtyd56Lfxn' \
    'bY97jjYgXchCbkXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'PublishTemplate' test.out

#- 104 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetTopicByNamespace' test.out

#- 105 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "26uEdCfQaMAQuTKf", "topic": "C0I2kNjCMDtDMren"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateTopic' test.out

#- 106 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'tgn3DhqciwIeShF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetTopicByTopicName' test.out

#- 107 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "RKb9vvxuJlhXbWhb"}' \
    'wPwToC6knjVwVnza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'UpdateTopicByTopicName' test.out

#- 108 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'qSfJiQFC2gXoda0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'DeleteTopicByTopicName' test.out

#- 109 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "g16yUSpSOAjHJWwf", "topic": "CjYwWkLob9gKLqs2"}' \
    'nEZhpByfHZinxNfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'FreeFormNotificationByUserID' test.out

#- 110 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"PAwkMBsznlBUqnLT": "4AbGptKaWNvPbpg7", "yrRvXfZ6rvgvEY3H": "ht1SwqTsKKKo37NH", "DOQe91Ps3ztUIV0d": "S6hIH9c4Vfkyrwpu"}, "templateLanguage": "XxbaERbfgPmi0eHk", "templateSlug": "t1mr9EOIFg0dnWIY", "topic": "N2NVL70Iw157g00j"}' \
    'r9b8MuYmmeKTmBNv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
