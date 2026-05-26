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
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 21, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 25, "chatRateLimitDuration": 41, "concurrentUsersLimit": 90, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "mn9HrNQy4uZAAiE0", "generalRateLimitBurst": 25, "generalRateLimitDuration": 91, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 39, "maxFriendsLimit": 91, "maxPartyMember": 90, "profanityFilter": true, "readyConsentTimeout": 6, "requestMetadataMaxSize": 57, "unregisterDelay": 20, "wsReadTimeout": 69}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'soqwGyzzWi9gwQYv' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests '7t1o7TTr1DmrhZv1' --login_with_auth "Bearer foo"
lobby-admin-list-friends-of-friends '5T7quIOvBMcaYmvC' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests 'kGZ5dAgqxpBFmaLo' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "xozr6wfNPX2bOItR", "topicName": "MvqtlB2jJCSQT279", "userIds": ["ZZPYGu0rdlgdWyOt", "Xi3choQrpOsDBU5S", "epjChB3V0v52Dlym"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "6puQ23xoJ8aeCnaL", "topicName": "pUKp44YUDjasWIPU"}' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "vmEejtGeoyIPa8ZR", "templateLanguage": "rvjj7il35MXbN9oC", "templateSlug": "MNqq98SjTvhZNkSQ"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"70D0H6BXksUC9b6i": "5lZC9xv32e8c5csS", "ovoqsZNBdte9NDUP": "VJf6c2Z0QZxfgPub", "TDIHrvqAThuwjRHp": "KKTlmVr9XuoJbRFQ"}, "templateLanguage": "SKVPHbn4Xxtu7LQR", "templateSlug": "ENjEEztx1WsYSiZq", "topicName": "an0nSBJroav91GXl"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'x9Zw5D2L7vIYhGGS' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'yEW4ZJJ42d3PBddN' '8S48l9lyNApflxqM' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "rj3oZk03QXcKMDYD"}' 'DxHSZjtqXyJ58f7G' 'c26SaiGVkydwYWQG' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin '26yUZNmTBcvrbYCw' 'ZtxFHyPLtI8ilbyD' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'PUIj88cekdqCt81P' '1ktfIovmv9gsR5cJ' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "cHm3SZLxoRDFuuuy", "topicName": "Sj29a9LJE8HoRS1X"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin '2PFAAMwzHPxB1Usk' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "Ys4Yw20DOqOBSC2D"}' 'KHRuPMMWH8Yb33T5' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'UBJCjfcnLRfxeCSz' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "9WEi8KlloeH0JT1y", "topicName": "duat2vQR3biBfsu4"}' 'jmsRE2w1yEkLgh3t' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"IYt4SqYUTLDx9gIi": "DandpGT2t24aOMh5", "eC3IHeHSKLCa3xre": "NDUWehwH3q31A806", "DJgas4b6z3LNUj7f": "dgLA84Z8YYk6QEgJ"}, "templateLanguage": "jBbEDoNf3n0hEoRC", "templateSlug": "Acf80zfFyabWAgIU", "topicName": "XiI07A68eaqC2J9j"}' 'yEW6GLbc0NaKDUL3' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["sa13lk1dQBHO86Il", "BhnetU4RwTqUXlTD", "BzOuYsaZA2yyd4mb"]}' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'qoOfADMMAXFaY9eK' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'a699bRVhyaKwwrAP' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["2aMlu7WtjCtoYetO", "O847g8OudOfjnCuH", "Z3c46IjGa23YvYmm"]}' 'Dg7VYPXIuvUYTZBR' --login_with_auth "Bearer foo"
lobby-admin-bulk-unblock-players-v1 '{"listUnblockUserId": ["ujIUE1Tq5jyAZvkR", "CMNFIurjh2imdb4r", "bkXj0ZwsVC0gL97Z"]}' 'VJSPqJiwv1qlYB1R' --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "SKs6gQxC3Gb7S0o4"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "zGYY7KQI1AeFgPqa"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'Okvo1aolB4lkKB4E' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v2 '{"userIDs": ["YOkQ1jMD3cym8xIf", "kOVW2grREOLx0KOw", "w3HICQLfl7MUBG7q"]}' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "tPu64yAtURKLRkb7", "topic": "38HGS6rDgMdIIlhS"}' --login_with_auth "Bearer foo"
lobby-get-my-notifications --login_with_auth "Bearer foo"
lobby-get-my-offline-notifications --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"1fSiM9331m7Ta1Ps": "Kc50Kv6ecnEevcAx", "2K2zkRenmPZnGBt4": "P7WnbdSJtjX7ZshZ", "yZl5x4bRXBHUTrDz": "ZSKscfOcYu3dpCRO"}, "templateLanguage": "YqUiGKXVFCmpo6sP", "templateSlug": "wVOEDSJsEK5QpNhl", "topic": "I2iS5EpGhhvXYck0"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "upMzUYnb76tFkEOR", "templateLanguage": "V3bu1bNCtX7W40V6", "templateSlug": "Do5sYadCCFrHHC3D"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'pZxkrQDXuNFviMar' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'v8mnfHK8CCmE2lPn' --login_with_auth "Bearer foo"
lobby-get-localization-template 'sbD3SGEdlwuUccE5' '36ugBp3HBvepnDCj' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "gyJlXe36mgWjLfFm"}' 'teue9nzJ6fH24T80' '5tVg8JqU0jZpjvsu' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'gAOS7u8RiWyerCSa' '8SRgwsAj1ik1jgla' --login_with_auth "Bearer foo"
lobby-publish-template 'DXTvKCWwNTAhd2wr' 'S0uPdjhdinpng5BL' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "y8wbhMssAHjapIkY", "topic": "9Rf4wP57dBZNR88Y"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'bCtmKy8M9zVrjfGX' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "ZnqAQUoY1GjlIIk0"}' 'iKoTTS1j02o7JjTX' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'AQN0qdskdQV0TqI8' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "EFnmDbxIxi4YKlON", "topic": "k2Q5Y4Jvaizwiila"}' 'tuUjjt9lIMGql5El' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"Ea9EIIlGcHB3CfR3": "ncDlwi3v3MFFJ1Ke", "sKoELCpobBEG8X64": "5xpdXpai0rYaT5hO", "Pjaf3H0tYighU0VU": "fcYHJbBfAKSiPW3V"}, "templateLanguage": "gsZXiR1DJ7HVWqMk", "templateSlug": "NSawQUWDFJvJBWic", "topic": "7UkBeIXuqDuAXI66"}' 'bQ71w0deoV9Lx5RD' --login_with_auth "Bearer foo"
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
    '{"friendId": "A1l2XcrciYNEzvSZ", "friendPublicId": "IPkhSgORcz5S5Bvm", "metadata": {"gBLxh4ijFnE3Tam6": "9qSZ7PC6f6QkmZXE", "lW9YfRSse6AAz3S4": "czz0QKFlAVmVLu4A", "Oec0z8eBeeoip68J": "1nsv4W2OJhtafxMS"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "JlHeb34sZKHcl5LL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "LOexL4fZvWtND2tc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "BFpX8lNtFEJ7tnkY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '6Mca5afj12K2IzrB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "vvWm4udE0OXudXgN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["ne8kJATwlc6esUp6", "Sw1I98jeZQ7hfxnh", "Ld3Knaknoed9DHhL"]}' \
    'OqQGhCUr6iTrjyEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["arAdNJOIG36I6tRb", "RcrEveMdAdiPKDUV", "SC00PYeDcagginxn"]}' \
    'FIna3yddcbsPheTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": false, "platformId": "6IUJNvYuGRUvpZaH", "platformToken": "CuESOiIZsMfB4ZH3", "psnEnv": "mtgWgU4pCAKxeE70", "syncDeletedFriend": true}, {"isLogin": true, "platformId": "aunQNxot371W9G4A", "platformToken": "vQkqsGnmyo5JJTUV", "psnEnv": "mb8GEXFTlEMEsFzY", "syncDeletedFriend": true}, {"isLogin": true, "platformId": "BOdkocVTd4BxqGWV", "platformToken": "6mTJ0sQs6XNbjvqh", "psnEnv": "nUVLWu8olKdxL6oz", "syncDeletedFriend": false}]' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 48, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 55, "chatRateLimitDuration": 41, "concurrentUsersLimit": 98, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "TIMtpgkieDyF97lG", "generalRateLimitBurst": 7, "generalRateLimitDuration": 48, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 16, "maxFriendsLimit": 2, "maxPartyMember": 68, "profanityFilter": true, "readyConsentTimeout": 32, "requestMetadataMaxSize": 3, "unregisterDelay": 7, "wsReadTimeout": 100}' \
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
    '6FJtHJ1pyVwyKQLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    '6FEO65Rb3z7CYLM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'IlsHqffnrfsGlfPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'ZKBwa3Ddb60ufPpz' \
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
    '{"message": "wj1QGIFmlVf4jvap", "topicName": "seE9LN9bvhOrHflI", "userIds": ["Od6X3viLvtEk4mTI", "pUA9gxo8SV38nEho", "XmM2W7l6jHMA2rG3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "nakopAywelu01nry", "topicName": "EJ0NqoTow0qiOiC4"}' \
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
    '{"templateContent": "j0iktm0ZPLkLOsp0", "templateLanguage": "LZ5njN86Hl8kUXzt", "templateSlug": "6bSc6bWvgpVyW9dD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"1kOmvrAejcq2LgkQ": "uaS7RBx3vim02jBO", "xrZDyvpcLYOWA8Nj": "xOnaEok4nOOCzfsf", "lhjbngJOUn18G5Ml": "fDTk8aG40NlncceI"}, "templateLanguage": "ZSwgAIkgzh4pTU0A", "templateSlug": "m4DZhl0bQxFJ3sWC", "topicName": "qQpQ2FbKPFMycMSQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    '4qfAacR0LgB5BUXv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'jcu2s6w3VifnKqmT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'SoGH1XEfY6QAYn6W' \
    'Q5UBEU1QAOHfZiGh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "xOdcuDXSxSc3aZPV"}' \
    '87pna08gxefTYKhu' \
    'xaEc7M4P7UckSC6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'PeN8i4GrFES9z7xu' \
    'eHpATHccee9GXhKc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'jmSEwdrkEnnqKzFs' \
    'LfYalUlfwEQKjU7e' \
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
    '{"description": "HGebSVu0LQ40kepE", "topicName": "aC4dfiOMZfEhHr39"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'pysFO3Zvc1BZG99L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "yvfvHEsJKQQewVLM"}' \
    'UoAnaRcYp7FUjfIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'affoflEIByYqeKN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "meGelYF5wWaDhukU", "topicName": "4khGG4vZFTYnPkmS"}' \
    'u4PWam1jxR7SETWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"teoc8fgvZDDhoO05": "oKqymxLD1Lcvw6T6", "mZEiwxxElpMYSWIe": "Vzm7z9noowmlTIKV", "owi0RY2VN4ZONJRE": "dUQ3z9F1BxNNgnke"}, "templateLanguage": "4akncw7wu9TmXfJW", "templateSlug": "BPrx9Ns8eLzYEvwS", "topicName": "WTaLQjctvrK2jhsY"}' \
    'pKPlXn77AtYoFzLA' \
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
    '{"listBlockedUserId": ["ATPY8P8P3cfoivvQ", "xevecWw7Rry0KK5r", "gAGO0dW8rX2MVUGK"]}' \
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
    'SZ4GcLkt4pK32sJx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'lZcCTpTdRtCHvuk6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["B6XTmSLyn50sigBV", "ZxiKdV57GvRyd9Uu", "L02Le8HSCslsDd4M"]}' \
    '1F5qRIblS7Nz81GR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-unblock-players-v1' \
    '{"listUnblockUserId": ["azPAANjfBoldFOyq", "A2clJ5gEOaCgM6Yn", "6RugbNEIpGBFUjOn"]}' \
    '5mM7k8nbLzvtCIW5' \
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
    '{"blockedUserId": "ynMKquUicAeIVXto"}' \
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
    '{"userId": "WAXhMlW4tLqX7OIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'f5oD1e6oI9FmYel0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
$PYTHON -m $MODULE 'lobby-users-presence-handler-v2' \
    '{"userIDs": ["kOw72o8Zkgk0jS6r", "DWUwfhKvrf2AaH4y", "CWrHSppnIZkNnTn3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "rzH5NvAtcvNedgS1", "topic": "fUfKmihDbmu8ePWl"}' \
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
    '{"templateContext": {"QMVDXEHeiGTnwyEw": "6hIWDZrpP7rz3ISW", "510kHr4isTKWjmv6": "7nuHCXWfwnwGioVw", "VzmmBVVFfpqx1AeL": "tzcPJ3jtDYBo4FUT"}, "templateLanguage": "H7CGfKSyxgRR1DiC", "templateSlug": "qSMzpqIFGLkDs7AC", "topic": "C1RgBfoNrHlFi2qJ"}' \
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
    '{"templateContent": "LgmBLE35YhyiDV90", "templateLanguage": "SeI5yppBHoytVznC", "templateSlug": "gNyx9fbT63ShEh8P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'CreateTemplate' test.out

#- 98 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'bGikLjgjcj34uulU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetSlugTemplate' test.out

#- 99 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    '6FYBZsWFbr3RSP0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteTemplateSlug' test.out

#- 100 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    '9nBhvhf8Q0DtJMcY' \
    'QdN66bswAgt65X4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetLocalizationTemplate' test.out

#- 101 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "1LQZmB61JMdtwCVU"}' \
    'rYQue84dwmbwFEnA' \
    'ZaWsQJtRYoagRJK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateLocalizationTemplate' test.out

#- 102 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'PX9UcOvhPyE11TRT' \
    '2SKseoe8VLie0LBa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteTemplateLocalization' test.out

#- 103 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '36KNzjf005CXNGeh' \
    'Q2aTjTDfKFDXC7eG' \
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
    '{"description": "L5YhJDWh9YWqc0qg", "topic": "V6d9yOfIMLds2DbP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'CreateTopic' test.out

#- 106 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'caoMdtRLTmSvTkQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetTopicByTopicName' test.out

#- 107 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "gB7exYvmHMxr5hPC"}' \
    'JJztJBg0tTJg46Ie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'UpdateTopicByTopicName' test.out

#- 108 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'wOXE2AkCh3QIZsUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'DeleteTopicByTopicName' test.out

#- 109 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "8lGFXcmwTERHclOd", "topic": "xIwqejxe18rNdb8O"}' \
    'tq6j1mqUav7k05HA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'FreeFormNotificationByUserID' test.out

#- 110 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"QltnSojV4jT65ycl": "X2FtAz0vJjFIYWOa", "NdsimmkW2miH3xRH": "AKy4QxZkaXZ7vmiE", "d0JPxVyQpshaDwNq": "TbbFMXAMfVXe0GZe"}, "templateLanguage": "MgsRsmH1EQrYmkPK", "templateSlug": "TPOlhTtSiZNCxuog", "topic": "FteTHJe4BhSSQkQD"}' \
    '6WmOt6D7ufFVTOhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
