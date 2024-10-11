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
lobby-bulk-delete-friends '{"friendIds": ["M4OI18mAQLnzjMf8", "GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i"]}' '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
lobby-sync-native-friends '[{"isLogin": false, "platformId": "9m0XcgGVbMqSszE8", "platformToken": "GHavj7AorKsxwkos", "psnEnv": "AVerXpc1C8XfwHuK"}, {"isLogin": false, "platformId": "LEzth6mXhzkzWkFe", "platformToken": "ZSoEAcBdW19m4eu6", "psnEnv": "d5tA5jUmiTqpyhPF"}, {"isLogin": false, "platformId": "qrhBRd8lDR6qVNPR", "platformToken": "ZYdFLIAjGGJddVCv", "psnEnv": "u9vx5KQ7KYnIuMBv"}]' --login_with_auth "Bearer foo"
lobby-sync-native-blocked-user '[{"platformId": "aO35llzQRaT5kPxU", "psnEnv": "fofvnnSuB0y5WUlr"}, {"platformId": "MdI4sNveabntBSxT", "psnEnv": "eIv53HGCiljvjKoy"}, {"platformId": "D6SCwGrncqmLtjQH", "psnEnv": "Af8TgoNm03VLisV6"}]' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-log-config --login_with_auth "Bearer foo"
lobby-admin-patch-update-log-config '{"logLevel": "info", "logLevelDB": "trace", "slowQueryThreshold": 46, "socketLogEnabled": false}' --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 47, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 42, "chatRateLimitDuration": 6, "concurrentUsersLimit": 80, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "6I3lMjGSWN2laRlx", "generalRateLimitBurst": 12, "generalRateLimitDuration": 82, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 10, "maxFriendsLimit": 20, "maxPartyMember": 71, "profanityFilter": true, "readyConsentTimeout": 11, "unregisterDelay": 85}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'YakUCTqGkE7wcWfD' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'slpJSqGAXQ0yYoNR' --login_with_auth "Bearer foo"
lobby-admin-list-friends-of-friends 'Kd3IL5TAQ6iiPlSC' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '2uE4o5Vwdo3fePqI' --login_with_auth "Bearer foo"
lobby-admin-get-global-config --login_with_auth "Bearer foo"
lobby-admin-update-global-config '{"regionRetryMapping": {"JA8IHtrkmu0hpDDW": ["VAla2l5BYNtIuS5S", "5XUdjsoqwGyzzWi9", "gwQYv7t1o7TTr1Dm"], "rhZv15T7quIOvBMc": ["aYmvCkGZ5dAgqxpB", "FmaLoxozr6wfNPX2", "bOItRMvqtlB2jJCS"], "QT279ZZPYGu0rdlg": ["dWyOtXi3choQrpOs", "DBU5SepjChB3V0v5", "2Dlym6puQ23xoJ8a"]}, "regionURLMapping": ["eCnaLpUKp44YUDja", "sWIPUvmEejtGeoyI", "Pa8ZRrvjj7il35MX"], "testGameMode": "bN9oCMNqq98SjTvh", "testRegionURLMapping": ["ZNkSQ70D0H6BXksU", "C9b6i5lZC9xv32e8", "c5csSovoqsZNBdte"], "testTargetUserIDs": ["9NDUPVJf6c2Z0QZx", "fgPubTDIHrvqAThu", "wjRHpKKTlmVr9Xuo"]}' --login_with_auth "Bearer foo"
lobby-admin-delete-global-config --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "JbRFQSKVPHbn4Xxt", "topicName": "u7LQRENjEEztx1Ws", "userIds": ["YSiZqan0nSBJroav", "91GXlvPG6bFYReVH", "QipcCx9Zw5D2L7vI"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "YhGGSyEW4ZJJ42d3", "topicName": "PBddN8S48l9lyNAp"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "flxqMrj3oZk03QXc", "topicName": "KMDYDDxHSZjtqXyJ"}' '58f7Gc26SaiGVkyd' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"wYWQG26yUZNmTBcv": "rbYCwZtxFHyPLtI8", "ilbyDPUIj88cekdq": "Ct81P1ktfIovmv9g", "sR5cJcHm3SZLxoRD": "FuuuySj29a9LJE8H"}, "templateLanguage": "oRS1X2PFAAMwzHPx", "templateSlug": "B1UskYs4Yw20DOqO", "topicName": "BSC2DKHRuPMMWH8Y"}' 'b33T5UBJCjfcnLRf' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "xeCSz9WEi8KlloeH", "templateLanguage": "0JT1yduat2vQR3bi", "templateSlug": "Bfsu4jmsRE2w1yEk"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"Lgh3tIYt4SqYUTLD": "x9gIiDandpGT2t24", "aOMh5eC3IHeHSKLC": "a3xreNDUWehwH3q3", "1A806DJgas4b6z3L": "NUj7fdgLA84Z8YYk"}, "templateLanguage": "6QEgJjBbEDoNf3n0", "templateSlug": "hEoRCAcf80zfFyab", "topicName": "WAgIUXiI07A68eaq"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'C2J9jyEW6GLbc0Na' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'KDUL3sa13lk1dQBH' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'O86IlBhnetU4RwTq' 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "yd4mbqoOfADMMAXF"}' 'aY9eKa699bRVhyaK' 'wwrAP2aMlu7WtjCt' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'oYetOO847g8OudOf' 'jnCuHZ3c46IjGa23' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'YvYmmDg7VYPXIuvU' 'YTZBRujIUE1Tq5jy' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "AZvkRCMNFIurjh2i", "topicName": "mdb4rbkXj0ZwsVC0"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'gL97ZVJSPqJiwv1q' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "lYB1RSKs6gQxC3Gb"}' '7S0o4zGYY7KQI1Ae' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'FgPqaOkvo1aolB4l' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "kKB4EYOkQ1jMD3cy", "topicName": "m8xIfkOVW2grREOL"}' 'x0KOww3HICQLfl7M' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"UBG7qtPu64yAtURK": "LRkb738HGS6rDgMd", "IIlhS1fSiM9331m7": "Ta1PsKc50Kv6ecnE", "evcAx2K2zkRenmPZ": "nGBt4P7WnbdSJtjX"}, "templateLanguage": "7ZshZyZl5x4bRXBH", "templateSlug": "UTrDzZSKscfOcYu3", "topicName": "dpCROYqUiGKXVFCm"}' 'po6sPwVOEDSJsEK5' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'QpNhlI2iS5EpGhhv' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"XYck0upMzUYnb76t": {}, "FkEORV3bu1bNCtX7": {}, "W40V6Do5sYadCCFr": {}}, "updatedAt": 69}' 't2ulIJzPyrVEiOG4' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'UcqsuGKHhMRWLVd3' 'DlhLuIpomM8sm1Mi' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'aI1mX2tJoARtdbBe' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["7udsMrok0WvGYYnx", "4V709xbnGezKsDwG", "2omOR2nvYI9TVqJd"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'vzcWbfUpaXp5JMl5' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"LL4bTxBmZjdrrIxs": "B0NRsB1fPqqRRulp", "qpymDkQhtrHWwRVn": "wVBOqOHi8pWGd1ju", "YhiqjRJOqB5F93zF": "QbJndUDpdONneAcz"}}' 'bBdHb2slt71B1SmZ' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'p2JZp50CnPb71ORY' 'cmQbTU5JX8ccLjMX' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'JRk0eaKQDOJvrTef' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'glSs6g4iY9u02aCN' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["YIWekp18lOC3mNqF", "7Bl0LcghVHfPEspx", "whRON0bc1eMbEIjo"]}' 'wLqc3ecjXJbZDKKo' --login_with_auth "Bearer foo"
lobby-admin-bulk-unblock-players-v1 '{"listUnblockUserId": ["xLE1Y3Dymtj3giPg", "4x4yiPX6ues1Hhhk", "g1yLVbLFzHEP8cM4"]}' 'NTwr0KHaAsmTej52' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "WKi6tArAURt9plCS"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'Vq8PdH6hJPUAc0RV' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "wXgAgntLMCuaXBWQ", "note": "i6BqPg4xr0lCancU"}' 'ZGCHsZYoLfR1KtOv' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "7Zy0b65uvuKNuy0y", "note": "tZQ7M6Nzy1adnSKO"}, {"filter": "LFKx1dX4LuWJu3pD", "note": "MUAeeZ97SBROPYuG"}, {"filter": "6XqP6oo7G73zdxTg", "note": "OfnwIdlNa29fDLh7"}]}' '41IslKHzGlLKWUtD' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[87, 23, 37]' '5LLLOexL4fZvWtND' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "2tcBFpX8lNtFEJ7t"}' 'nkY6Mca5afj12K2I' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": false, "name": "rBvvWm4udE0OXudX"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "Nne8kJATwlc6esUp"}' '6Sw1I98jeZQ7hfxn' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'hLd3Knaknoed9DHh' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "LOqQGhCUr6iTrjyE"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "garAdNJOIG36I6tR", "profanityLevel": "bRcrEveMdAdiPKDU"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "VSC00PYeDcagginx"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "nFIna3yddcbsPheT"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'H26IUJNvYuGRUvpZ' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"aHCuESOiIZsMfB4Z": {}, "H3mtgWgU4pCAKxeE": {}, "70CaunQNxot371W9": {}}, "updatedAt": 67}' 'aWcFX3SUBhyoTsMW' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 85}' 'UVmb8GEXFTlEMEsF' --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "zYqwgK1Np5nodqpL"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "m7FhJBNXzAFdO0Kh"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'qf6kiTdSGv2LFjAK' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v2 '{"userIDs": ["Y7CbgsWqFWZX7kPB", "om8F9GLLTG8phc3n", "4iLoIllKlpO2pqiX"]}' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "JF3WGRaoQomSJC4D", "topic": "drKF7SUQPLG59e0k"}' --login_with_auth "Bearer foo"
lobby-get-my-notifications --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"5ZtX6wK7PpUlcIW3": "2iK7MGt1ixY5rA1W", "oVeJIePF8ZrQzP4z": "vtdxdbZUpd6FJtHJ", "1pyVwyKQLY6FEO65": "Rb3z7CYLM8IlsHqf"}, "templateLanguage": "fnrfsGlfPaZKBwa3", "templateSlug": "Ddb60ufPpzwj1QGI", "topic": "FmlVf4jvapseE9LN"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "9bvhOrHflIOd6X3v", "templateLanguage": "iLvtEk4mTIpUA9gx", "templateSlug": "o8SV38nEhoXmM2W7"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'l6jHMA2rG3nakopA' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'ywelu01nryEJ0Nqo' --login_with_auth "Bearer foo"
lobby-get-localization-template 'Tow0qiOiC4j0iktm' '0ZPLkLOsp0LZ5njN' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "86Hl8kUXzt6bSc6b"}' 'WvgpVyW9dD1kOmvr' 'Aejcq2LgkQuaS7RB' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'x3vim02jBOxrZDyv' 'pcLYOWA8NjxOnaEo' --login_with_auth "Bearer foo"
lobby-publish-template 'k4nOOCzfsflhjbng' 'JOUn18G5MlfDTk8a' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "G40NlncceIZSwgAI", "topic": "kgzh4pTU0Am4DZhl"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name '0bQxFJ3sWCqQpQ2F' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "bKPFMycMSQ4qfAac"}' 'R0LgB5BUXvjcu2s6' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'w3VifnKqmTSoGH1X' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "EfY6QAYn6WQ5UBEU", "topic": "1QAOHfZiGhxOdcuD"}' 'XSxSc3aZPV87pna0' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"8gxefTYKhuxaEc7M": "4P7UckSC6ePeN8i4", "GrFES9z7xueHpATH": "ccee9GXhKcjmSEwd", "rkEnnqKzFsLfYalU": "lfwEQKjU7eHGebSV"}, "templateLanguage": "u0LQ40kepEaC4dfi", "templateSlug": "OMZfEhHr39pysFO3", "topic": "Zvc1BZG99LyvfvHE"}' 'sJKQQewVLMUoAnaR' --login_with_auth "Bearer foo"
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
echo "1..109"

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
    '{"friendId": "cYp7FUjfIGaffofl", "friendPublicId": "EIByYqeKN0meGelY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "F5wWaDhukU4khGG4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "vZFTYnPkmSu4PWam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "1jxR7SETWjteoc8f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'gvZDDhoO05oKqymx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "LD1Lcvw6T6mZEiwx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["xElpMYSWIeVzm7z9", "noowmlTIKVowi0RY", "2VN4ZONJREdUQ3z9"]}' \
    'F1BxNNgnke4akncw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["7wu9TmXfJWBPrx9N", "s8eLzYEvwSWTaLQj", "ctvrK2jhsYpKPlXn"]}' \
    '77AtYoFzLAATPY8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": true, "platformId": "3cfoivvQxevecWw7", "platformToken": "Rry0KK5rgAGO0dW8", "psnEnv": "rX2MVUGKSZ4GcLkt"}, {"isLogin": false, "platformId": "S3Uv1BpWoJBaqdg2", "platformToken": "FHcunsS1lnaO2m9v", "psnEnv": "qjhbeK2qN8g6x2Py"}, {"isLogin": true, "platformId": "yd9UuL02Le8HSCsl", "platformToken": "sDd4M1F5qRIblS7N", "psnEnv": "z81GRazPAANjfBol"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
$PYTHON -m $MODULE 'lobby-sync-native-blocked-user' \
    '[{"platformId": "dFOyqA2clJ5gEOaC", "psnEnv": "gM6Yn6RugbNEIpGB"}, {"platformId": "FUjOn5mM7k8nbLzv", "psnEnv": "tCIW5ynMKquUicAe"}, {"platformId": "IVXtoWAXhMlW4tLq", "psnEnv": "X7OICf5oD1e6oI9F"}]' \
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
    '{"logLevel": "error", "logLevelDB": "panic", "slowQueryThreshold": 67, "socketLogEnabled": false}' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 21, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 74, "chatRateLimitDuration": 42, "concurrentUsersLimit": 10, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "Zkgk0jS6rDWUwfhK", "generalRateLimitBurst": 44, "generalRateLimitDuration": 67, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 51, "maxFriendsLimit": 11, "maxPartyMember": 76, "profanityFilter": true, "readyConsentTimeout": 24, "unregisterDelay": 1}' \
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
    'xHv8SwyagYvDJ3w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'UNgIGj2jZtEYT8sI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'PSE1XXPzySa0sZoF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'S6xCOWMpyh9pMsQg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-get-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetGlobalConfig' test.out

#- 30 AdminUpdateGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-update-global-config' \
    '{"regionRetryMapping": {"b64ELbzDMwyo4nIR": ["ysQdbufXjYnSoIFe", "ouC2m38kXrDZWlGV", "E9sJ4NpUtKp6M9I6"], "nEwnZhsjwJeGwaPS": ["DMZz95OYKiqaZD63", "xe5rruJVfLGea0Zt", "lzUcuHAXz0UV31Mf"], "uGaXsAuGsZaSHevO": ["0TQNEI3kfabxJWWS", "I1ECUo1NPpeFhUzt", "XDgB7n4C97uAPP8P"]}, "regionURLMapping": ["ATLpUpxeJlsBJT6H", "h3OMjAjq2mK8lbSE", "Eelxnb5QxWG2HFnZ"], "testGameMode": "lA6HKWW4fI1IQcoB", "testRegionURLMapping": ["QELcNlZkqTZrKgXN", "wvm4e5GX6H742Oix", "htAoKiVm6URT95Xh"], "testTargetUserIDs": ["nUcvWB28MpusuhhD", "J5slzgiWZEtyd56L", "fxnbY97jjYgXchCb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGlobalConfig' test.out

#- 31 AdminDeleteGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-delete-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteGlobalConfig' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "kXX26uEdCfQaMAQu", "topicName": "TKfC0I2kNjCMDtDM", "userIds": ["rentgn3DhqciwIeS", "hF9RKb9vvxuJlhXb", "WhbwPwToC6knjVwV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "nzaqSfJiQFC2gXod", "topicName": "a0kg16yUSpSOAjHJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "WwfCjYwWkLob9gKL", "topicName": "qs2nEZhpByfHZinx"}' \
    'NfgPAwkMBsznlBUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'SendPartyFreeformNotificationV1Admin' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"nLT4AbGptKaWNvPb": "pg7yrRvXfZ6rvgvE", "Y3Hht1SwqTsKKKo3": "7NHDOQe91Ps3ztUI", "V0dS6hIH9c4Vfkyr": "wpuXxbaERbfgPmi0"}, "templateLanguage": "eHkt1mr9EOIFg0dn", "templateSlug": "WIYN2NVL70Iw157g", "topicName": "00jr9b8MuYmmeKTm"}' \
    'BNvGYxEQdf3ewoGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SendPartyTemplatedNotificationV1Admin' test.out

#- 36 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "oY7xmFNAmjDDCvs7", "templateLanguage": "8mcMdiS76YApGJ9u", "templateSlug": "fwLYkqIgLuZS6hsQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"ryiEtOAbpeUNf26U": "qkCfgCUYBn2xaOBd", "PF0JmX8qwU1cTuHH": "PB5S3DvPRCzBrVUx", "mDOj3cvRFaTC11W0": "TGTCm4fZWuk6pQxD"}, "templateLanguage": "QpKqxLGeMvr9Tsvc", "templateSlug": "MQ7dBsaIecRxIsZv", "topicName": "D6rmzVr5XT1Nxw0v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    '1dMQ9Rrbk6C2cVWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '6ttvbU1PO6ApCD2V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'XidT7w0Oc15N8WXB' \
    'Pp17PAewqSm5x3B4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "t7WQnp8jXZedgt5c"}' \
    'yNe27HLtwtVOaxgP' \
    '6Jbct8puMybYGxD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'IPmmsLmu3kaPj0O4' \
    'zd8Tb7cUNGPTBxiF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'FCrn7djjs69FTFVG' \
    'UVhvKhJCmeisql14' \
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
    '{"description": "mUHVbMPimNhcZsU3", "topicName": "VAdMDcb4qlkiFAam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'qvZI2KwjqPBiWXad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "e41s3rH34mB2yPlR"}' \
    'pWjmHZAAvKTH8Muq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'Ig0CzkguwuJCW7EE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "FB67AODbi9BzupBs", "topicName": "FpYc77GtRUcCFeY5"}' \
    'g4XgBsbfzqxBPNe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"ae1Il4aAtEbu4IjG": "dqthRxTjQ7gkZEY8", "rG0q0Q2Qd2JzRbkF": "2I03dIjvBbA6bfbY", "aJCJjfk2TUvn95Fh": "O7VW3mbDVMDu87t0"}, "templateLanguage": "ldWf7iSGIiKFtWtn", "templateSlug": "4Yr2svKM6pqLGZ0T", "topicName": "BujELAUK6mQ5iZgb"}' \
    'wwm5iGzXtcknrgid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'KupvXO6aj4hCmTC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPartyDataV1' test.out

#- 53 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"4jxW4pIDwdqXpmRm": {}, "ut9H9XyWI8bp8fQx": {}, "RuX91uYmtrHJbEGT": {}}, "updatedAt": 96}' \
    '84CVhziXV8HwSmvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdatePartyAttributesV1' test.out

#- 54 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'vcDKF19yVRafCjOu' \
    'SYht83AdvBaagTiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminJoinPartyV1' test.out

#- 55 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'J8daGTVX3Bb7jlz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetUserPartyV1' test.out

#- 56 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["IfHgKjI9mwJSrN8j", "kIykR2zbaI6PD7fE", "scShnGUGUtV9GJ27"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    '9GDbLNwjm3FK0nnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetAllPlayerSessionAttribute' test.out

#- 59 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"2poMfZ1hDHtbh4Ht": "MlFgvh2Dp2SoiIPp", "1yvfAHS0VgLu11A3": "HTovFi4tPAGfleyC", "A6jEtcqsnzoVILjk": "wW61duF87aUyrdt4"}}' \
    'XSpWBAetsanzqP8o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminSetPlayerSessionAttribute' test.out

#- 60 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'xfrtbECD1CYPwaiB' \
    'AxfYL8Avt70ZUT2f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerSessionAttribute' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'Sk3LL0calqxEewuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'S469k2hG0WKt4sUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["anYxM0UHZVNYzGMN", "IpWoSLkUrfuf4U3W", "eYeA9t2ENKKWrFtH"]}' \
    'Ii1CMgKAOG5iDcCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-unblock-players-v1' \
    '{"listUnblockUserId": ["5PbCvDLil8wj9cKM", "3Ar6MF35hCER4nGm", "WGgTJfHlJl4tHGa4"]}' \
    'XfZcd9CVnGqMX9Fi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "eeEssWEUl07bhwnt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminDebugProfanityFilters' test.out

#- 66 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'CVqiYOJf5KwMZQjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityListFiltersV1' test.out

#- 67 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "vjSozv6CTRDl0zp9", "note": "CzHFwinkBNi4gvqg"}' \
    'l6TZ9TGVPmv34h6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminAddProfanityFilterIntoList' test.out

#- 68 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "7EsufmfxKYB4LM6H", "note": "6QXmpZ9X3fUSR1l9"}, {"filter": "xLPBsmAUrD9L1IiD", "note": "6MlcEPhMDFzjHZ3s"}, {"filter": "IhzOx2CXKlvIomU3", "note": "pIxM9n8D2eLMe3lt"}]}' \
    '9qfx2UDcgVE7L9FK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminAddProfanityFilters' test.out

#- 69 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[39, 9, 21]' \
    '0MrPc4vtxk9hVKlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminImportProfanityFiltersFromFile' test.out

#- 70 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "56HlzGr7XjdyRJun"}' \
    'ZPkp6ccIBnWyPw8m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminDeleteProfanityFilter' test.out

#- 71 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminGetProfanityLists' test.out

#- 72 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "name": "D2xnik42miteR5eQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateProfanityList' test.out

#- 73 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "e1rzmmgqBPRmd6mO"}' \
    '4oI8KDqebm83raNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminUpdateProfanityList' test.out

#- 74 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'J5y7axEkvI4oxZED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'AdminDeleteProfanityList' test.out

#- 75 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AdminGetProfanityRule' test.out

#- 76 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "xGiBnNbn0zaf7CaO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'AdminSetProfanityRuleForNamespace' test.out

#- 77 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "SlHXrUSA6sMJzA5m", "profanityLevel": "tqISQ83TTbtefXWz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'AdminVerifyMessageProfanityResponse' test.out

#- 78 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AdminGetThirdPartyConfig' test.out

#- 79 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "nDe4LQdXfFBii2RA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'AdminUpdateThirdPartyConfig' test.out

#- 80 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "MEX5RMjBFVZGYzQq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'AdminCreateThirdPartyConfig' test.out

#- 81 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'AdminDeleteThirdPartyConfig' test.out

#- 82 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'V8d9mDdUIoiIJFNx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPartyDataV1' test.out

#- 84 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"uNOmUSWw18T1IxVW": {}, "CxdvPL9e4P01vxP8": {}, "xj1LyEirURERnEMz": {}}, "updatedAt": 31}' \
    'BJWodpdwsX1jorcy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdatePartyAttributesV1' test.out

#- 85 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 89}' \
    'GBrkzUvck3xTtmOF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicSetPartyLimitV1' test.out

#- 86 PublicPlayerBlockPlayersV1
$PYTHON -m $MODULE 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "MebS4AdlNzwog2Ih"}' \
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
    '{"userId": "ErkNhNcECWwchW6z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'L9SkbLlrNXnGanMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
$PYTHON -m $MODULE 'lobby-users-presence-handler-v2' \
    '{"userIDs": ["zb8jvRWenURH48aJ", "uALEcSqcE15u6D31", "DjOsrs3CUYATdqnQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "GbqiqOkNeATj7eGj", "topic": "odd7CcJUrI6MAugK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
$PYTHON -m $MODULE 'lobby-get-my-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"5kypNrp2nFe9FmN8": "6sK5LOq4ft5jGcMI", "CPUYnfG6jl9U4jRe": "teIMgzISomCsodJr", "hQW41q2OspCZbt3U": "ta5I0uGcL1koyHjC"}, "templateLanguage": "H5olYLETRpABAmO2", "templateSlug": "EGvJ4UMS93yOxNIn", "topic": "DByhnoluO6ti0QP2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplate' test.out

#- 95 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetGameTemplate' test.out

#- 96 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "ssiJ66OzOj84O6tg", "templateLanguage": "ohjtC7bzjPpucddX", "templateSlug": "J5zifF8y959anrNS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'CreateTemplate' test.out

#- 97 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'leywHbHig6IKWVZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetSlugTemplate' test.out

#- 98 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    '7KeRWdECaFGzfZ2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteTemplateSlug' test.out

#- 99 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'xcJ2Fnemn7M23SzU' \
    'o4hNBDh9ZFP1OW0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetLocalizationTemplate' test.out

#- 100 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "XOErQPS4VsRoYIK6"}' \
    '9yg9ADCGiXaLs2xj' \
    'HkinOD975nARHCmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateLocalizationTemplate' test.out

#- 101 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'NHSXuqIHsxvaUoXD' \
    'mwWsukxncuD3QxCX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteTemplateLocalization' test.out

#- 102 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'Md00YBWCaVVmM45m' \
    'fIZsWhkS476dGGJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublishTemplate' test.out

#- 103 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetTopicByNamespace' test.out

#- 104 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "J00UH197MJ6zU7JL", "topic": "MQyMWzYQCAaPJgox"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'CreateTopic' test.out

#- 105 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'GJoJaSzUtY4ZD0Xt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetTopicByTopicName' test.out

#- 106 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "b0U4pH16NUsVY21N"}' \
    'VIs7NRen2Y3Ns0QJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'UpdateTopicByTopicName' test.out

#- 107 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'QeaWytPfds1BYx0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'DeleteTopicByTopicName' test.out

#- 108 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "aURydf8ZyyZeHAWG", "topic": "gJUbUJRMbkcTglbU"}' \
    '86FyOjApNHBVfNOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'FreeFormNotificationByUserID' test.out

#- 109 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"RcjY3YYT9oTynmfI": "uBWgJTNFfM8M0IW4", "oe8KDgy0xZfAcNg1": "4Ws8TIP1LKiFQoLD", "vumfqrgSfnx2h61X": "9dN1MGRXBJ6mVV7J"}, "templateLanguage": "S9qjNLwvI8JdiY3R", "templateSlug": "RiLilmOGF6dLLIeI", "topic": "VIjMcdlbdRXTGIrd"}' \
    'NL5gJPqTAjgqaTHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
