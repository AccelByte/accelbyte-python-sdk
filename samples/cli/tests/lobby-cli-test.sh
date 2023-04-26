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
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "pKxR8dl0zRVW4EZG", "topicName": "9m0XcgGVbMqSszE8", "userIds": ["GHavj7AorKsxwkos", "AVerXpc1C8XfwHuK", "eb9l3rGN9A3sNm84"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "hddSpHt0P7MIIR7C", "topicName": "kyF6C7duuyZ0GhDo"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "gqrhBRd8lDR6qVNP", "topicName": "RZYdFLIAjGGJddVC"}' 'vu9vx5KQ7KYnIuMB' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"vaO35llzQRaT5kPx": "UfofvnnSuB0y5WUl", "rMdI4sNveabntBSx": "TeIv53HGCiljvjKo", "yD6SCwGrncqmLtjQ": "HAf8TgoNm03VLisV"}, "templateLanguage": "6zwPuo3td6TC6I3l", "templateSlug": "MjGSWN2laRlxfcjH", "topicName": "fYakUCTqGkE7wcWf"}' 'DslpJSqGAXQ0yYoN' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "RKd3IL5TAQ6iiPlS", "templateLanguage": "C2uE4o5Vwdo3fePq", "templateSlug": "IJA8IHtrkmu0hpDD"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"WVAla2l5BYNtIuS5": "S5XUdjsoqwGyzzWi", "9gwQYv7t1o7TTr1D": "mrhZv15T7quIOvBM", "caYmvCkGZ5dAgqxp": "BFmaLoxozr6wfNPX"}, "templateLanguage": "2bOItRMvqtlB2jJC", "templateSlug": "SQT279ZZPYGu0rdl", "topicName": "gdWyOtXi3choQrpO"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'sDBU5SepjChB3V0v' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin '52Dlym6puQ23xoJ8' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'aeCnaLpUKp44YUDj' 'asWIPUvmEejtGeoy' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "IPa8ZRrvjj7il35M"}' 'XbN9oCMNqq98SjTv' 'hZNkSQ70D0H6BXks' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'UC9b6i5lZC9xv32e' '8c5csSovoqsZNBdt' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'e9NDUPVJf6c2Z0QZ' 'xfgPubTDIHrvqATh' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "uwjRHpKKTlmVr9Xu", "topicName": "oJbRFQSKVPHbn4Xx"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'tu7LQRENjEEztx1W' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "sYSiZqan0nSBJroa"}' 'v91GXlvPG6bFYReV' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'HQipcCx9Zw5D2L7v' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "IYhGGSyEW4ZJJ42d", "topicName": "3PBddN8S48l9lyNA"}' 'pflxqMrj3oZk03QX' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"cKMDYDDxHSZjtqXy": "J58f7Gc26SaiGVky", "dwYWQG26yUZNmTBc": "vrbYCwZtxFHyPLtI", "8ilbyDPUIj88cekd": "qCt81P1ktfIovmv9"}, "templateLanguage": "gsR5cJcHm3SZLxoR", "templateSlug": "DFuuuySj29a9LJE8", "topicName": "HoRS1X2PFAAMwzHP"}' 'xB1UskYs4Yw20DOq' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'OBSC2DKHRuPMMWH8' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"Yb33T5UBJCjfcnLR": {}, "fxeCSz9WEi8Klloe": {}, "H0JT1yduat2vQR3b": {}}, "updatedAt": 16}' 'fH2rtOa4EXsXzOXQ' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'Ak4mqrxzTtuLl4Xl' 'bGL8QOxtjzm8y2wN' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'hmwoYZyI4EFZKBcY' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'rCEAE7WIsfmx40NL' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"Rc6m8heKnWhzfe2N": "ubeoKFeIaFQCYoDP", "ICpnduEEQlULdJz4": "mnRBkMNxvvKgAT8m", "JrYq6hRkloqxM3gp": "wxcfMy9XzjjI5Ybs"}}' 'KoADkzJEN2VHzih3' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'bit0VWn3CO39PXDN' 'xtXgeO3FgkXhjDza' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'QY3snn2ZkP7cFdP4' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 '3e5dC9XIBudfZgrb' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["HDIDm4hMzF4Txode", "nSrUTvfqU0bfoMm5", "cTtFWbotQyXJRcQW"]}' 'smqPNs92epxk0i8V' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "xsZNereSvf9699mC"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'EHThUJkETAsSp7gh' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "4TeUTkOkAYfJB8AT", "note": "9t4Tv207Y2QD3oD5"}' 'fLCr3OOlXVv8ZGF7' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "uYnGzpipNDigNJma", "note": "1MbqqZtfNWql4nmw"}, {"filter": "Aft4gqkNNlWkD9eO", "note": "ziYRFOn0jJLHC9Lx"}, {"filter": "hvNXTwGBCtohLtl9", "note": "Zuhytm5UDrT6QXCs"}]}' '5SPBbRPZTF6oQAXV' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[66, 70, 70]' 'tnsZg5QgXjvyGJPN' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "4eXbJE5Vs2GcyomQ"}' 'oIXimBJehyxlNsjU' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "xBkF6wFPoJeQedio"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "EhhM2rIizGdKvOPd"}' 'q5xrgxSmy1DN9LFk' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'YW5DQyj4bj5Ro2og' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "aKt2ujQSa3Zdb65U"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "Xmy0Zp6iIaTIKUkm", "profanityLevel": "kk9QM0NBMA9ORxpz"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "wLR2AK6eXUGPJsw1"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "fiP80G9Pclxcft2u"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'lIJzPyrVEiOG4Ucq' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"suGKHhMRWLVd3Dlh": {}, "LuIpomM8sm1MiaI1": {}, "mX2tJoARtdbBe7ud": {}}, "updatedAt": 39}' 'jgyJlXe36mgWjLfF' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 26}' '9xbnGezKsDwG2omO' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'R2nvYI9TVqJdvzcW' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "bfUpaXp5JMl5LL4b", "topic": "TxBmZjdrrIxsB0NR"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"sB1fPqqRRulpqpym": "DkQhtrHWwRVnwVBO", "qOHi8pWGd1juYhiq": "jRJOqB5F93zFQbJn", "dUDpdONneAczbBdH": "b2slt71B1SmZp2JZ"}, "templateLanguage": "p50CnPb71ORYcmQb", "templateSlug": "TU5JX8ccLjMXJRk0", "topic": "eaKQDOJvrTefglSs"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "6g4iY9u02aCNYIWe", "templateLanguage": "kp18lOC3mNqF7Bl0", "templateSlug": "LcghVHfPEspxwhRO"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'N0bc1eMbEIjowLqc' --login_with_auth "Bearer foo"
lobby-delete-template-slug '3ecjXJbZDKKoxLE1' --login_with_auth "Bearer foo"
lobby-get-localization-template 'Y3Dymtj3giPg4x4y' 'iPX6ues1Hhhkg1yL' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "VbLFzHEP8cM4NTwr"}' '0KHaAsmTej52WKi6' 'tArAURt9plCSVq8P' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'dH6hJPUAc0RVwXgA' 'gntLMCuaXBWQi6Bq' --login_with_auth "Bearer foo"
lobby-publish-template 'Pg4xr0lCancUZGCH' 'sZYoLfR1KtOv7Zy0' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "b65uvuKNuy0ytZQ7", "topic": "M6Nzy1adnSKOLFKx"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name '1dX4LuWJu3pDMUAe' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "eZ97SBROPYuG6XqP"}' '6oo7G73zdxTgOfnw' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'IdlNa29fDLh741Is' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "lKHzGlLKWUtDQs61", "topic": "OQAoxyyQpRWCiiPD"}' 'GQhNPEwiJCf2XJVr' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"lzqQls1ozhLVA3kE": "8jKvgatOEBM70Tdl", "NBJYOmpu1VCarzBs": "V6xnZ5Jrzzjrcaug", "6CWVG8SWP3glU6mu": "swVJnNnN7kAa7j0r"}, "templateLanguage": "iFc5HTHQIoVsGo7d", "templateSlug": "wV9DBqFKHQkETJyT", "topic": "lUrwDTnoujQD4IEi"}' 'H9Z5qXn3aoRtlqOE' --login_with_auth "Bearer foo"
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
echo "1..91"

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

#- 7 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "CohViHA5CzgFSy8X", "friendPublicId": "1A3PrIfapq5AAeMe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserRequestFriend' test.out

#- 8 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "4L3mDWORBVXTIIJM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserAcceptFriendRequest' test.out

#- 9 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "9XsYIIZxiXNMR9Bg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserCancelFriendRequest' test.out

#- 10 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "aWcFX3SUBhyoTsMW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserRejectFriendRequest' test.out

#- 11 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'PAxUMkawaGpAyrIw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserGetFriendshipStatus' test.out

#- 12 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "Mif3BOdkocVTd4Bx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserUnfriendRequest' test.out

#- 13 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["qGWV6mTJ0sQs6XNb", "jvqhnUVLWu8olKdx", "L6ozRmDD0jJvlfV5"]}' \
    'OemPYdYT7DROCjtu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AddFriendsWithoutConfirmation' test.out

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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 29, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 71, "chatRateLimitDuration": 67, "concurrentUsersLimit": 24, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "9hmguB8FOTjMLo4b", "generalRateLimitBurst": 26, "generalRateLimitDuration": 37, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 58, "maxPartyMember": 34, "profanityFilter": true, "readyConsentTimeout": 21, "unregisterDelay": 6}' \
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
    'EpstyVTBcrM8rG0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "H0zcswwVeMK6MbGI", "topicName": "VIu8vvwLc7KY3uVo", "userIds": ["JXTIMtpgkieDyF97", "lGdMiHKxbWCYzo8y", "O2KTK9tmmOnYnOpa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "s6ghP1y4Zi7s7QBl", "topicName": "k44Z44B1GZgKg4uK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "xaCgcGLuC3brWdTY", "topicName": "CfHkIySok5DiXZtL"}' \
    'W87rGysryod3dNQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"msApRA6HX3RwrKt2": "ecozL0TOg54vCE48", "L5oLF6M4lNa4JUMS": "HNgqRqCV7usamANk", "ZlOX9Sfo95HgXqKh": "TPkwfLM9uSybRzWe"}, "templateLanguage": "k2gZvRrvr0n9d9lv", "templateSlug": "ccKMLhrTrcBE2ItB", "topicName": "S3KtKZWe8aoFzAyB"}' \
    'ME74HUtipUWYhWV1' \
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
    '{"templateContent": "qx8CzPML52faXUr9", "templateLanguage": "Sk4lq2faBcAXXKlh", "templateSlug": "vyH8paOJtxqMPpcV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"fRwNj547fH0XrKED": "pEY8VnocGAjci0V3", "tBf2jnHGKXphn50c": "9tNLDljhZ2jxLRX3", "z46OCaGBeMfPlNos": "4yBRjrERHEonAZR8"}, "templateLanguage": "GmEu0q1p6QCyY6vS", "templateSlug": "kVFWdsbYuVEGVxYh", "topicName": "eR3j5mNZ6vwv7K8A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'svt1j1Rx59hesNWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '2NvZ85DDKDAF8KDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'BZOuYQJ03BAHZ7c5' \
    '3q7akMpcmnnx6RVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "rop9v7aZK3h65hbN"}' \
    '15zfQSfQrtfF3TQN' \
    '0OcNDLr36vzohZyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'MQAg5mPYhrLTyU8O' \
    'hgfY9JQYGF4bYXEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'ENx9xZlAchob44lO' \
    'NDDwMvgI0HlyPR7w' \
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
    '{"description": "ZNiVsF6xG2mXEQdb", "topicName": "zIVy8alncV7vWgSH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'dfo07UctPErqxyMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "OK06MqQBErxgjVBy"}' \
    'cvU4PbmRDcrg0DjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'jBECXvea7H1m2lJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "RZ3ZprZ60zMjhTHe", "topicName": "h94TSenE5hCFkIf5"}' \
    'weqZ18MH57l2Zsrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"90ETtYmGukz3Mnlr": "jcHp6B8Vj7rXFgDn", "DkdZ9bpjb1tdA3Qh": "jCMW64f4XhIjSoTB", "2NMKtezapPr2QEPx": "3zTxBGtEJIYppuUS"}, "templateLanguage": "sKoHw2hyd12uSE7B", "templateSlug": "Ev3aevq6iohU1cg4", "topicName": "W1IS3Uv1BpWoJBaq"}' \
    'dg2FHcunsS1lnaO2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'm9vqjhbeK2qN8g6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"2PyYDo5R3hLiD5sf": {}, "5y1JsxJNGmyt0SQD": {}, "UDoWBZVGLlkUetzC": {}}, "updatedAt": 55}' \
    'fBoldFOyqA2clJ5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'EOaCgM6Yn6RugbNE' \
    'IpGBFUjOn5mM7k8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'bLzvtCIW5ynMKquU' \
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
    'icAeIVXtoWAXhMlW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"4tLqX7OICf5oD1e6": "oI9FmYel0kOw72o8", "Zkgk0jS6rDWUwfhK": "vrf2AaH4yCWrHSpp", "nIZkNnTn3rzH5NvA": "tcvNedgS1fUfKmih"}}' \
    'Dbmu8ePWlQMVDXEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'eiGTnwyEw6hIWDZr' \
    'pP7rz3ISW510kHr4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'isTKWjmv67nuHCXW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'fwnwGioVwVzmmBVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["Ffpqx1AeLtzcPJ3j", "tDYBo4FUTH7CGfKS", "yxgRR1DiCqSMzpqI"]}' \
    'FGLkDs7ACC1RgBfo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "NrHlFi2qJLgmBLE3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '5YhyiDV90SeI5ypp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "BHoytVznCgNyx9fb", "note": "T63ShEh8PbGikLjg"}' \
    'jcj34uulU6FYBZsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "Fbr3RSP0W9nBhvhf", "note": "8Q0DtJMcYQdN66bs"}, {"filter": "wAgt65X4N1LQZmB6", "note": "1JMdtwCVUrYQue84"}, {"filter": "dwmbwFEnAZaWsQJt", "note": "RYoagRJK5PX9UcOv"}]}' \
    'hPyE11TRT2SKseoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[37, 97, 42]' \
    'Lie0LBa36KNzjf00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "5CXNGehQ2aTjTDfK"}' \
    'FDXC7eGL5YhJDWh9' \
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
    '{"isEnabled": true, "isMandatory": true, "name": "uTKfC0I2kNjCMDtD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "entgn3DhqciwIeSh"}' \
    'F9RKb9vvxuJlhXbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'hbwPwToC6knjVwVn' \
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
    '{"rule": "zaqSfJiQFC2gXoda"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "0kg16yUSpSOAjHJW", "profanityLevel": "wfCjYwWkLob9gKLq"}' \
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
    '{"apiKey": "s2nEZhpByfHZinxN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "fgPAwkMBsznlBUqn"}' \
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

#- 69 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'LT4AbGptKaWNvPbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetPartyDataV1' test.out

#- 70 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"g7yrRvXfZ6rvgvEY": {}, "3Hht1SwqTsKKKo37": {}, "NHDOQe91Ps3ztUIV": {}}, "updatedAt": 81}' \
    'dS6hIH9c4Vfkyrwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdatePartyAttributesV1' test.out

#- 71 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 41}' \
    'eMgsRsmH1EQrYmkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicSetPartyLimitV1' test.out

#- 72 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerBlockedPlayersV1' test.out

#- 73 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 74 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'KTPOlhTtSiZNCxuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UsersPresenceHandlerV1' test.out

#- 75 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "gFteTHJe4BhSSQkQ", "topic": "D6WmOt6D7ufFVTOh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'FreeFormNotification' test.out

#- 76 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"vQpfbBke8aEdd36x": "j6wySoltDxsbzxrl", "aKEfkoYjY2o6ouRW": "9UtNquwC3WgumrIz", "4NhGztZpr4U4fwQI": "iLXgmRasvjO4lj8m"}, "templateLanguage": "3XEwP2b4gd3xOeii", "templateSlug": "8Jnmssep2xD2NY0k", "topic": "ABeGs9yxahld1pO0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'NotificationWithTemplate' test.out

#- 77 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetGameTemplate' test.out

#- 78 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "Gyf5PO3COyMvczgE", "templateLanguage": "pzZ3FbtxfhcRC7IV", "templateSlug": "Ya6iZ5uFRYNn3SHi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CreateTemplate' test.out

#- 79 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'WxF0YbuU5ar5qTLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetSlugTemplate' test.out

#- 80 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'UCy0Afgc050XIZRW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteTemplateSlug' test.out

#- 81 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    '491e94mQjVOOBnIW' \
    'hunElqZUodp3IhtC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetLocalizationTemplate' test.out

#- 82 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "SHy1ei1fIrPvfHnR"}' \
    'N06EjRwEQlNapJRf' \
    'k4f9Zcw1pEHAyNFx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateLocalizationTemplate' test.out

#- 83 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'cVTKuAQTGh5BxjWO' \
    'ozGoDtsUuYo5p8ED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateLocalization' test.out

#- 84 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '5QZAufwNa8lzfjv9' \
    'oYMXMjlVHY1AHwF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublishTemplate' test.out

#- 85 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetTopicByNamespace' test.out

#- 86 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "vGoav7MK0PcLnEkc", "topic": "okKwcQ0baDT9OyJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateTopic' test.out

#- 87 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'h23GUS2amU7syGlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetTopicByTopicName' test.out

#- 88 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "lXdEAOrVSnLocLVV"}' \
    'YamQc4wcG5nDBLJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateTopicByTopicName' test.out

#- 89 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'JHbiQ5duE5p4cfs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteTopicByTopicName' test.out

#- 90 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "E41cK8QTwiIAvxSv", "topic": "NDlmM5nQFMGzs7fz"}' \
    'jgyc44mEh9tRk8kn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'FreeFormNotificationByUserID' test.out

#- 91 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"YSV30lnroQehMDli": "6t9unQLYXxm09wpG", "AbpEmDY9vLh3u6ED": "sUmrV6kH4OotKwG3", "UC6XCnnZxF8CmQr1": "7W65br34rBBN9tU6"}, "templateLanguage": "TDm5GloFSKWM1eym", "templateSlug": "5ydC6p25xCWTqUOY", "topic": "ZENJ1QHZQxPRXH7u"}' \
    'xBJEECQE1li3Bg7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
