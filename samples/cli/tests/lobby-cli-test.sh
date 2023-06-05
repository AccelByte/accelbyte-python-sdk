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
lobby-user-request-friend '{"friendId": "EAxcVpFrttufHIRd", "friendPublicId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "a62WopBJHPtcDs8b"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "BZLCXLx8bbgorQeF"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "odwpzS6DaDpv8N7Z"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["QVqGj6oDLjWjkY1a", "XlFcDtgOjchIua5t", "WEIC32ogW7olvbTg"]}' 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 71, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 45, "chatRateLimitDuration": 25, "concurrentUsersLimit": 50, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "nzjMf8GZ2WBZqxYG", "generalRateLimitBurst": 83, "generalRateLimitDuration": 0, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 84, "maxPartyMember": 55, "profanityFilter": true, "readyConsentTimeout": 41, "unregisterDelay": 86}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'D6QVKNCWP75TB0i7' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'pKxR8dl0zRVW4EZG' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '9m0XcgGVbMqSszE8' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "GHavj7AorKsxwkos", "topicName": "AVerXpc1C8XfwHuK", "userIds": ["eb9l3rGN9A3sNm84", "hddSpHt0P7MIIR7C", "kyF6C7duuyZ0GhDo"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "gqrhBRd8lDR6qVNP", "topicName": "RZYdFLIAjGGJddVC"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "vu9vx5KQ7KYnIuMB", "topicName": "vaO35llzQRaT5kPx"}' 'UfofvnnSuB0y5WUl' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"rMdI4sNveabntBSx": "TeIv53HGCiljvjKo", "yD6SCwGrncqmLtjQ": "HAf8TgoNm03VLisV", "6zwPuo3td6TC6I3l": "MjGSWN2laRlxfcjH"}, "templateLanguage": "fYakUCTqGkE7wcWf", "templateSlug": "DslpJSqGAXQ0yYoN", "topicName": "RKd3IL5TAQ6iiPlS"}' 'C2uE4o5Vwdo3fePq' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "IJA8IHtrkmu0hpDD", "templateLanguage": "WVAla2l5BYNtIuS5", "templateSlug": "S5XUdjsoqwGyzzWi"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"9gwQYv7t1o7TTr1D": "mrhZv15T7quIOvBM", "caYmvCkGZ5dAgqxp": "BFmaLoxozr6wfNPX", "2bOItRMvqtlB2jJC": "SQT279ZZPYGu0rdl"}, "templateLanguage": "gdWyOtXi3choQrpO", "templateSlug": "sDBU5SepjChB3V0v", "topicName": "52Dlym6puQ23xoJ8"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'aeCnaLpUKp44YUDj' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'asWIPUvmEejtGeoy' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'IPa8ZRrvjj7il35M' 'XbN9oCMNqq98SjTv' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "hZNkSQ70D0H6BXks"}' 'UC9b6i5lZC9xv32e' '8c5csSovoqsZNBdt' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'e9NDUPVJf6c2Z0QZ' 'xfgPubTDIHrvqATh' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'uwjRHpKKTlmVr9Xu' 'oJbRFQSKVPHbn4Xx' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "tu7LQRENjEEztx1W", "topicName": "sYSiZqan0nSBJroa"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'v91GXlvPG6bFYReV' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "HQipcCx9Zw5D2L7v"}' 'IYhGGSyEW4ZJJ42d' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin '3PBddN8S48l9lyNA' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "pflxqMrj3oZk03QX", "topicName": "cKMDYDDxHSZjtqXy"}' 'J58f7Gc26SaiGVky' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"dwYWQG26yUZNmTBc": "vrbYCwZtxFHyPLtI", "8ilbyDPUIj88cekd": "qCt81P1ktfIovmv9", "gsR5cJcHm3SZLxoR": "DFuuuySj29a9LJE8"}, "templateLanguage": "HoRS1X2PFAAMwzHP", "templateSlug": "xB1UskYs4Yw20DOq", "topicName": "OBSC2DKHRuPMMWH8"}' 'Yb33T5UBJCjfcnLR' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'fxeCSz9WEi8Klloe' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"H0JT1yduat2vQR3b": {}, "iBfsu4jmsRE2w1yE": {}, "kLgh3tIYt4SqYUTL": {}}, "updatedAt": 61}' 'bGL8QOxtjzm8y2wN' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'hmwoYZyI4EFZKBcY' 'rCEAE7WIsfmx40NL' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'Rc6m8heKnWhzfe2N' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["ubeoKFeIaFQCYoDP", "ICpnduEEQlULdJz4", "mnRBkMNxvvKgAT8m"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'JrYq6hRkloqxM3gp' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"wxcfMy9XzjjI5Ybs": "KoADkzJEN2VHzih3", "bit0VWn3CO39PXDN": "xtXgeO3FgkXhjDza", "QY3snn2ZkP7cFdP4": "3e5dC9XIBudfZgrb"}}' 'HDIDm4hMzF4Txode' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'nSrUTvfqU0bfoMm5' 'cTtFWbotQyXJRcQW' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'smqPNs92epxk0i8V' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'xsZNereSvf9699mC' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["EHThUJkETAsSp7gh", "4TeUTkOkAYfJB8AT", "9t4Tv207Y2QD3oD5"]}' 'fLCr3OOlXVv8ZGF7' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "uYnGzpipNDigNJma"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 '1MbqqZtfNWql4nmw' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "Aft4gqkNNlWkD9eO", "note": "ziYRFOn0jJLHC9Lx"}' 'hvNXTwGBCtohLtl9' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "Zuhytm5UDrT6QXCs", "note": "5SPBbRPZTF6oQAXV"}, {"filter": "G7tnsZg5QgXjvyGJ", "note": "PN4eXbJE5Vs2Gcyo"}, {"filter": "mQoIXimBJehyxlNs", "note": "jUgxBkF6wFPoJeQe"}]}' 'diogEhhM2rIizGdK' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[43, 96, 83]' 'TrDzZSKscfOcYu3d' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "pCROYqUiGKXVFCmp"}' 'o6sPwVOEDSJsEK5Q' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": false, "name": "Xmy0Zp6iIaTIKUkm"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "upMzUYnb76tFkEOR"}' 'V3bu1bNCtX7W40V6' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'Do5sYadCCFrHHC3D' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "pZxkrQDXuNFviMar"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "v8mnfHK8CCmE2lPn", "profanityLevel": "sbD3SGEdlwuUccE5"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "36ugBp3HBvepnDCj"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "gyJlXe36mgWjLfFm"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'teue9nzJ6fH24T80' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"5tVg8JqU0jZpjvsu": {}, "gAOS7u8RiWyerCSa": {}, "8SRgwsAj1ik1jgla": {}}, "updatedAt": 60}' 'B1fPqqRRulpqpymD' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 22}' '0uPdjhdinpng5BLy' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 '8wbhMssAHjapIkY9' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "Rf4wP57dBZNR88Yb", "topic": "CtmKy8M9zVrjfGXZ"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"nqAQUoY1GjlIIk0i": "KoTTS1j02o7JjTXA", "QN0qdskdQV0TqI8E": "FnmDbxIxi4YKlONk", "2Q5Y4Jvaizwiilat": "uUjjt9lIMGql5ElE"}, "templateLanguage": "a9EIIlGcHB3CfR3n", "templateSlug": "cDlwi3v3MFFJ1Kes", "topic": "KoELCpobBEG8X645"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "xpdXpai0rYaT5hOP", "templateLanguage": "jaf3H0tYighU0VUf", "templateSlug": "cYHJbBfAKSiPW3Vg"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'sZXiR1DJ7HVWqMkN' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'SawQUWDFJvJBWic7' --login_with_auth "Bearer foo"
lobby-get-localization-template 'UkBeIXuqDuAXI66b' 'Q71w0deoV9Lx5RDA' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "1l2XcrciYNEzvSZI"}' 'PkhSgORcz5S5Bvmg' 'BLxh4ijFnE3Tam69' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'qSZ7PC6f6QkmZXEl' 'W9YfRSse6AAz3S4c' --login_with_auth "Bearer foo"
lobby-publish-template 'zz0QKFlAVmVLu4AO' 'ec0z8eBeeoip68J1' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "nsv4W2OJhtafxMSJ", "topic": "lHeb34sZKHcl5LLL"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'OexL4fZvWtND2tcB' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "FpX8lNtFEJ7tnkY6"}' 'Mca5afj12K2IzrBv' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'vWm4udE0OXudXgNn' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "e8kJATwlc6esUp6S", "topic": "w1I98jeZQ7hfxnhL"}' 'd3Knaknoed9DHhLO' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"qQGhCUr6iTrjyEga": "rAdNJOIG36I6tRbR", "crEveMdAdiPKDUVS": "C00PYeDcagginxnF", "Ina3yddcbsPheTH2": "6IUJNvYuGRUvpZaH"}, "templateLanguage": "CuESOiIZsMfB4ZH3", "templateSlug": "mtgWgU4pCAKxeE70", "topic": "CaunQNxot371W9G4"}' 'AvQkqsGnmyo5JJTU' --login_with_auth "Bearer foo"
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
echo "1..95"

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
    '{"friendId": "Vmb8GEXFTlEMEsFz", "friendPublicId": "YqwgK1Np5nodqpLm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "7FhJBNXzAFdO0Khq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "f6kiTdSGv2LFjAKY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "7CbgsWqFWZX7kPBo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'm8F9GLLTG8phc3n4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "iLoIllKlpO2pqiXJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["F3WGRaoQomSJC4Dd", "rKF7SUQPLG59e0k5", "ZtX6wK7PpUlcIW32"]}' \
    'iK7MGt1ixY5rA1Wo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigV1' test.out

#- 16 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigV1' test.out

#- 17 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 86, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 65, "chatRateLimitDuration": 13, "concurrentUsersLimit": 21, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "QzP4zvtdxdbZUpd6", "generalRateLimitBurst": 65, "generalRateLimitDuration": 73, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 40, "maxPartyMember": 29, "profanityFilter": true, "readyConsentTimeout": 83, "unregisterDelay": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigV1' test.out

#- 18 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminExportConfigV1' test.out

#- 19 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminImportConfigV1' test.out

#- 20 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    '2KTK9tmmOnYnOpas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetListOfFriends' test.out

#- 21 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    '6ghP1y4Zi7s7QBlk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetIncomingFriendRequests' test.out

#- 22 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    '44Z44B1GZgKg4uKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetOutgoingFriendRequests' test.out

#- 23 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "aCgcGLuC3brWdTYC", "topicName": "fHkIySok5DiXZtLW", "userIds": ["87rGysryod3dNQrm", "sApRA6HX3RwrKt2e", "cozL0TOg54vCE48L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 24 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "5oLF6M4lNa4JUMSH", "topicName": "NgqRqCV7usamANkZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SendUsersFreeformNotificationV1Admin' test.out

#- 25 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "lOX9Sfo95HgXqKhT", "topicName": "PkwfLM9uSybRzWek"}' \
    '2gZvRrvr0n9d9lvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SendPartyFreeformNotificationV1Admin' test.out

#- 26 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"cKMLhrTrcBE2ItBS": "3KtKZWe8aoFzAyBM", "E74HUtipUWYhWV1q": "x8CzPML52faXUr9S", "k4lq2faBcAXXKlhv": "yH8paOJtxqMPpcVf"}, "templateLanguage": "RwNj547fH0XrKEDp", "templateSlug": "EY8VnocGAjci0V3t", "topicName": "Bf2jnHGKXphn50c9"}' \
    'tNLDljhZ2jxLRX3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendPartyTemplatedNotificationV1Admin' test.out

#- 27 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllNotificationTemplatesV1Admin' test.out

#- 28 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "46OCaGBeMfPlNos4", "templateLanguage": "yBRjrERHEonAZR8G", "templateSlug": "mEu0q1p6QCyY6vSk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateNotificationTemplateV1Admin' test.out

#- 29 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"VFWdsbYuVEGVxYhe": "R3j5mNZ6vwv7K8As", "vt1j1Rx59hesNWy2": "NvZ85DDKDAF8KDsB", "ZOuYQJ03BAHZ7c53": "q7akMpcmnnx6RVBr"}, "templateLanguage": "op9v7aZK3h65hbN1", "templateSlug": "5zfQSfQrtfF3TQN0", "topicName": "OcNDLr36vzohZyjM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SendUsersTemplatedNotificationV1Admin' test.out

#- 30 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'QAg5mPYhrLTyU8Oh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 31 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'gfY9JQYGF4bYXEcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 32 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'Nx9xZlAchob44lON' \
    'DDwMvgI0HlyPR7wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetSingleTemplateLocalizationV1Admin' test.out

#- 33 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "NiVsF6xG2mXEQdbz"}' \
    'IVy8alncV7vWgSHd' \
    'fo07UctPErqxyMyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateTemplateLocalizationV1Admin' test.out

#- 34 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'K06MqQBErxgjVByc' \
    'vU4PbmRDcrg0DjQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteTemplateLocalizationV1Admin' test.out

#- 35 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'BECXvea7H1m2lJFR' \
    'Z3ZprZ60zMjhTHeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublishTemplateLocalizationV1Admin' test.out

#- 36 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTopicsV1Admin' test.out

#- 37 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "94TSenE5hCFkIf5w", "topicName": "eqZ18MH57l2Zsrh9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTopicV1Admin' test.out

#- 38 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    '0ETtYmGukz3Mnlrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetNotificationTopicV1Admin' test.out

#- 39 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "cHp6B8Vj7rXFgDnD"}' \
    'kdZ9bpjb1tdA3Qhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateNotificationTopicV1Admin' test.out

#- 40 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'CMW64f4XhIjSoTB2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTopicV1Admin' test.out

#- 41 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "NMKtezapPr2QEPx3", "topicName": "zTxBGtEJIYppuUSs"}' \
    'KoHw2hyd12uSE7BE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 42 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"v3aevq6iohU1cg4W": "1IS3Uv1BpWoJBaqd", "g2FHcunsS1lnaO2m": "9vqjhbeK2qN8g6x2", "PyYDo5R3hLiD5sf5": "y1JsxJNGmyt0SQDU"}, "templateLanguage": "DoWBZVGLlkUetzCA", "templateSlug": "Wc9x1aMjgGim51T1", "topicName": "07XIZRZ7tZdIs0xf"}' \
    '4czdt7zqmSKxOEQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 43 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'Vcx6GqsBq8vdhWVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetPartyDataV1' test.out

#- 44 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"uYLgpZehK0G2nmyu": {}, "ViB9kRTcSQdTnNYG": {}, "eAfYFG3wSkHKufBd": {}}, "updatedAt": 92}' \
    'kgk0jS6rDWUwfhKv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminUpdatePartyAttributesV1' test.out

#- 45 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'rf2AaH4yCWrHSppn' \
    'IZkNnTn3rzH5NvAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminJoinPartyV1' test.out

#- 46 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'cvNedgS1fUfKmihD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetUserPartyV1' test.out

#- 47 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetLobbyCCU' test.out

#- 48 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["bmu8ePWlQMVDXEHe", "iGTnwyEw6hIWDZrp", "P7rz3ISW510kHr4i"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 49 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'sTKWjmv67nuHCXWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetAllPlayerSessionAttribute' test.out

#- 50 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"wnwGioVwVzmmBVVF": "fpqx1AeLtzcPJ3jt", "DYBo4FUTH7CGfKSy": "xgRR1DiCqSMzpqIF", "GLkDs7ACC1RgBfoN": "rHlFi2qJLgmBLE35"}}' \
    'YhyiDV90SeI5yppB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminSetPlayerSessionAttribute' test.out

#- 51 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'HoytVznCgNyx9fbT' \
    '63ShEh8PbGikLjgj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'cj34uulU6FYBZsWF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerBlockedPlayersV1' test.out

#- 53 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'br3RSP0W9nBhvhf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 54 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["Q0DtJMcYQdN66bsw", "Agt65X4N1LQZmB61", "JMdtwCVUrYQue84d"]}' \
    'wmbwFEnAZaWsQJtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminBulkBlockPlayersV1' test.out

#- 55 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "YoagRJK5PX9UcOvh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminDebugProfanityFilters' test.out

#- 56 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'PyE11TRT2SKseoe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetProfanityListFiltersV1' test.out

#- 57 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "VLie0LBa36KNzjf0", "note": "05CXNGehQ2aTjTDf"}' \
    'KFDXC7eGL5YhJDWh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminAddProfanityFilterIntoList' test.out

#- 58 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "9YWqc0qgV6d9yOfI", "note": "MLds2DbPcaoMdtRL"}, {"filter": "TmSvTkQQgB7exYvm", "note": "HMxr5hPCJJztJBg0"}, {"filter": "tTJg46IewOXE2AkC", "note": "h3QIZsUf8lGFXcmw"}]}' \
    'TERHclOdxIwqejxe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilters' test.out

#- 59 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[12, 36, 76]' \
    'Ndb8Otq6j1mqUav7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminImportProfanityFiltersFromFile' test.out

#- 60 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "k05HAQltnSojV4jT"}' \
    '65yclX2FtAz0vJjF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityFilter' test.out

#- 61 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityLists' test.out

#- 62 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "name": "WOaNdsimmkW2miH3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminCreateProfanityList' test.out

#- 63 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "AKy4QxZkaXZ7vmiE"}' \
    'd0JPxVyQpshaDwNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminUpdateProfanityList' test.out

#- 64 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'TbbFMXAMfVXe0GZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminDeleteProfanityList' test.out

#- 65 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminGetProfanityRule' test.out

#- 66 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "MgsRsmH1EQrYmkPK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminSetProfanityRuleForNamespace' test.out

#- 67 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "TPOlhTtSiZNCxuog", "profanityLevel": "FteTHJe4BhSSQkQD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminVerifyMessageProfanityResponse' test.out

#- 68 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminGetThirdPartyConfig' test.out

#- 69 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "6WmOt6D7ufFVTOhv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateThirdPartyConfig' test.out

#- 70 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "QpfbBke8aEdd36xj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminCreateThirdPartyConfig' test.out

#- 71 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteThirdPartyConfig' test.out

#- 72 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetMessages' test.out

#- 73 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    '6wySoltDxsbzxrla' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPartyDataV1' test.out

#- 74 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"KEfkoYjY2o6ouRW9": {}, "UtNquwC3WgumrIz4": {}, "NhGztZpr4U4fwQIi": {}}, "updatedAt": 78}' \
    'gCUYBn2xaOBdPF0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdatePartyAttributesV1' test.out

#- 75 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 25}' \
    'EwP2b4gd3xOeii8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicSetPartyLimitV1' test.out

#- 76 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerBlockedPlayersV1' test.out

#- 77 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 78 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'nmssep2xD2NY0kAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UsersPresenceHandlerV1' test.out

#- 79 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "eGs9yxahld1pO0Gy", "topic": "f5PO3COyMvczgEpz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'FreeFormNotification' test.out

#- 80 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"Z3FbtxfhcRC7IVYa": "6iZ5uFRYNn3SHiWx", "F0YbuU5ar5qTLWUC": "y0Afgc050XIZRW49", "1e94mQjVOOBnIWhu": "nElqZUodp3IhtCSH"}, "templateLanguage": "y1ei1fIrPvfHnRN0", "templateSlug": "6EjRwEQlNapJRfk4", "topic": "f9Zcw1pEHAyNFxcV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'NotificationWithTemplate' test.out

#- 81 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetGameTemplate' test.out

#- 82 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "TKuAQTGh5BxjWOoz", "templateLanguage": "GoDtsUuYo5p8ED5Q", "templateSlug": "ZAufwNa8lzfjv9oY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'CreateTemplate' test.out

#- 83 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'MXMjlVHY1AHwF3vG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetSlugTemplate' test.out

#- 84 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'oav7MK0PcLnEkcok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateSlug' test.out

#- 85 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'KwcQ0baDT9OyJ2h2' \
    '3GUS2amU7syGlElX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetLocalizationTemplate' test.out

#- 86 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "dEAOrVSnLocLVVYa"}' \
    'mQc4wcG5nDBLJoJH' \
    'biQ5duE5p4cfs2E4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateLocalizationTemplate' test.out

#- 87 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '1cK8QTwiIAvxSvND' \
    'lmM5nQFMGzs7fzjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteTemplateLocalization' test.out

#- 88 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'yc44mEh9tRk8knYS' \
    'V30lnroQehMDli6t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublishTemplate' test.out

#- 89 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetTopicByNamespace' test.out

#- 90 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "9unQLYXxm09wpGAb", "topic": "pEmDY9vLh3u6EDsU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'CreateTopic' test.out

#- 91 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'mrV6kH4OotKwG3UC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByTopicName' test.out

#- 92 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "6XCnnZxF8CmQr17W"}' \
    '65br34rBBN9tU6TD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateTopicByTopicName' test.out

#- 93 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'm5GloFSKWM1eym5y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteTopicByTopicName' test.out

#- 94 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "dC6p25xCWTqUOYZE", "topic": "NJ1QHZQxPRXH7uxB"}' \
    'JEECQE1li3Bg7Jxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'FreeFormNotificationByUserID' test.out

#- 95 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"9pUnZmvhidwCkZwq": "jYLfTiCO1NDBvQvR", "PnAz4VzW0CpoBCby": "JsF5IjF1c0W338HS", "6CBgVRyihYNZ84CV": "hziXV8HwSmvcvcDK"}, "templateLanguage": "F19yVRafCjOuSYht", "templateSlug": "83AdvBaagTiRJ8da", "topic": "GTVX3Bb7jlz5IfHg"}' \
    'KjI9mwJSrN8jkIyk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
