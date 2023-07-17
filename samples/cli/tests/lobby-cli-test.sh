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
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 71, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 45, "chatRateLimitDuration": 25, "concurrentUsersLimit": 50, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "nzjMf8GZ2WBZqxYG", "generalRateLimitBurst": 83, "generalRateLimitDuration": 0, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 84, "maxFriendsLimit": 55, "maxPartyMember": 38, "profanityFilter": true, "readyConsentTimeout": 86, "unregisterDelay": 61}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'XhT5FvdiRilZ7oFg' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'x4c8OumKtPDKJDXn' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '7Z4U68su8XfqlqNi' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "TvB6SdAdIhUDrwoZ", "topicName": "5MecdKi5r6QEa1ys", "userIds": ["LEzth6mXhzkzWkFe", "ZSoEAcBdW19m4eu6", "d5tA5jUmiTqpyhPF"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "dxLzFQN05MYzYiKW", "topicName": "e5dNRljv7IPrDQQR"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "gat0SevkLGMS0lyu", "topicName": "I9a2I9u6Vpbsx5w8"}' 'hqUI06UpOXGSLmCV' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"uHOPlLlkvR8sKgnu": "RkgghGoYupD391C2", "qtPYokahFjkQsfCa": "Tmt1d67FXGk2s9Q0", "mPVo3twu0MesTCf9": "x4rt69lna7qxNeIx"}, "templateLanguage": "Pz6MbwL6IY69z1Ua", "templateSlug": "LqYSYWytLPziZMdj", "topicName": "xcBZufQxGiHPllG4"}' 'cYEzfTD1ZBm3MqHc' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "UmLZZbSqb8RwNmn9", "templateLanguage": "HrNQy4uZAAiE0mit", "templateSlug": "9RGCCHYzUOcEdscK"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"HPEqgA8yu7Vk6Jt4": "Ymos9Jcdos4fYcTV", "U6RBt0zYoMcHyCUE": "XlAvxJMdalwSyliW", "MNW5NyLu0M3VHh2E": "I8JlDbPWbQ6Q9lNm"}, "templateLanguage": "qRBaAkLnvxkT1X68", "templateSlug": "cmDc3fxU8MyKrQpM", "topicName": "4hkkK6KKXNB3Gv0I"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'qmF51TkhjYnaq6fo' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'WvXa3bMrXsDr6kIL' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'sSSyDdmykmoPYgc2' 'L4jk4Lo0LSP0pf4I' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "xjUkl535X3ateEKD"}' 'pADz1x3poD3Qgb3b' 'oLQQ1MzH7Qm8bwbm' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'XgdAPh1EThG96gAF' 'KK2WDgCcxvONZm3E' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'eERmDnyeFoF7VSZ6' 'pf3vneSD2Tb3g7mS' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "QUhAEtrmjqU6YE3p", "topicName": "4lSck0ZHn5GI39YB"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'HqaTHeKtW18iGeUl' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "c9d9sogWa24CKNS0"}' 'GqVvUfHQvsHXNUNe' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin '4mhgo5QB65lSAiYn' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "NjkfZrQvGgbLdLsF", "topicName": "zHkBMr1yrOMlNFSr"}' 'UEirnjX9fDmIbeZx' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"zfTcyiuATus9hsfp": "FDcSDG8aMVGLiBNr", "DjqoxcwgGLXpUL4p": "p2ncYAHdNzDmeIP6", "rOvDz9KOsb392k6Y": "mJFfRByjlBiuFM3F"}, "templateLanguage": "IoVk8T3GpAnkCmBU", "templateSlug": "qg2SCnqntX9y1aZS", "topicName": "WMiVi10sG6vxkfUc"}' 'mqRRbceJ5i0EeDxO' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'gBnhhqElIaDml48w' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"dNFLTm5T50x9WT0G": {}, "fH2rtOa4EXsXzOXQ": {}, "Ak4mqrxzTtuLl4Xl": {}}, "updatedAt": 2}' 'x9gIiDandpGT2t24' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'aOMh5eC3IHeHSKLC' 'a3xreNDUWehwH3q3' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 '1A806DJgas4b6z3L' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["NUj7fdgLA84Z8YYk", "6QEgJjBbEDoNf3n0", "hEoRCAcf80zfFyab"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'WAgIUXiI07A68eaq' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"C2J9jyEW6GLbc0Na": "KDUL3sa13lk1dQBH", "O86IlBhnetU4RwTq": "UXlTDBzOuYsaZA2y", "yd4mbqoOfADMMAXF": "aY9eKa699bRVhyaK"}}' 'wwrAP2aMlu7WtjCt' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'oYetOO847g8OudOf' 'jnCuHZ3c46IjGa23' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'YvYmmDg7VYPXIuvU' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'YTZBRujIUE1Tq5jy' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["AZvkRCMNFIurjh2i", "mdb4rbkXj0ZwsVC0", "gL97ZVJSPqJiwv1q"]}' 'lYB1RSKs6gQxC3Gb' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "7S0o4zGYY7KQI1Ae"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'FgPqaOkvo1aolB4l' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "kKB4EYOkQ1jMD3cy", "note": "m8xIfkOVW2grREOL"}' 'x0KOww3HICQLfl7M' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "UBG7qtPu64yAtURK", "note": "LRkb738HGS6rDgMd"}, {"filter": "IIlhS1fSiM9331m7", "note": "Ta1PsKc50Kv6ecnE"}, {"filter": "evcAx2K2zkRenmPZ", "note": "nGBt4P7WnbdSJtjX"}]}' '7ZshZyZl5x4bRXBH' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[96, 83, 94]' 'Pdq5xrgxSmy1DN9L' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "FkYW5DQyj4bj5Ro2"}' 'ogaKt2ujQSa3Zdb6' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "my0Zp6iIaTIKUkmk"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": true, "newName": "9QM0NBMA9ORxpzwL"}' 'R2AK6eXUGPJsw1fi' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'P80G9Pclxcft2ulI' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "JzPyrVEiOG4Ucqsu"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "GKHhMRWLVd3DlhLu", "profanityLevel": "IpomM8sm1MiaI1mX"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "2tJoARtdbBe7udsM"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "rok0WvGYYnx4V709"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'xbnGezKsDwG2omOR' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"2nvYI9TVqJdvzcWb": {}, "fUpaXp5JMl5LL4bT": {}, "xBmZjdrrIxsB0NRs": {}}, "updatedAt": 56}' 'XTvKCWwNTAhd2wrS' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 88}' 'uPdjhdinpng5BLy8' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'wbhMssAHjapIkY9R' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "f4wP57dBZNR88YbC", "topic": "tmKy8M9zVrjfGXZn"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"qAQUoY1GjlIIk0iK": "oTTS1j02o7JjTXAQ", "N0qdskdQV0TqI8EF": "nmDbxIxi4YKlONk2", "Q5Y4Jvaizwiilatu": "Ujjt9lIMGql5ElEa"}, "templateLanguage": "9EIIlGcHB3CfR3nc", "templateSlug": "Dlwi3v3MFFJ1KesK", "topic": "oELCpobBEG8X645x"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "pdXpai0rYaT5hOPj", "templateLanguage": "af3H0tYighU0VUfc", "templateSlug": "YHJbBfAKSiPW3Vgs"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'ZXiR1DJ7HVWqMkNS' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'awQUWDFJvJBWic7U' --login_with_auth "Bearer foo"
lobby-get-localization-template 'kBeIXuqDuAXI66bQ' '71w0deoV9Lx5RDA1' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "l2XcrciYNEzvSZIP"}' 'khSgORcz5S5BvmgB' 'Lxh4ijFnE3Tam69q' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'SZ7PC6f6QkmZXElW' '9YfRSse6AAz3S4cz' --login_with_auth "Bearer foo"
lobby-publish-template 'z0QKFlAVmVLu4AOe' 'c0z8eBeeoip68J1n' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "sv4W2OJhtafxMSJl", "topic": "Heb34sZKHcl5LLLO"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'exL4fZvWtND2tcBF' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "pX8lNtFEJ7tnkY6M"}' 'ca5afj12K2IzrBvv' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'Wm4udE0OXudXgNne' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "8kJATwlc6esUp6Sw", "topic": "1I98jeZQ7hfxnhLd"}' '3Knaknoed9DHhLOq' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"QGhCUr6iTrjyEgar": "AdNJOIG36I6tRbRc", "rEveMdAdiPKDUVSC": "00PYeDcagginxnFI", "na3yddcbsPheTH26": "IUJNvYuGRUvpZaHC"}, "templateLanguage": "uESOiIZsMfB4ZH3m", "templateSlug": "tgWgU4pCAKxeE70C", "topic": "aunQNxot371W9G4A"}' 'vQkqsGnmyo5JJTUV' --login_with_auth "Bearer foo"
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
    '{"friendId": "mb8GEXFTlEMEsFzY", "friendPublicId": "qwgK1Np5nodqpLm7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "FhJBNXzAFdO0Khqf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "6kiTdSGv2LFjAKY7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "CbgsWqFWZX7kPBom"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '8F9GLLTG8phc3n4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "LoIllKlpO2pqiXJF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["3WGRaoQomSJC4Ddr", "KF7SUQPLG59e0k5Z", "tX6wK7PpUlcIW32i"]}' \
    'K7MGt1ixY5rA1WoV' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 86, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 65, "chatRateLimitDuration": 13, "concurrentUsersLimit": 21, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "QzP4zvtdxdbZUpd6", "generalRateLimitBurst": 65, "generalRateLimitDuration": 73, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 40, "maxFriendsLimit": 29, "maxPartyMember": 69, "profanityFilter": true, "readyConsentTimeout": 83, "unregisterDelay": 31}' \
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
