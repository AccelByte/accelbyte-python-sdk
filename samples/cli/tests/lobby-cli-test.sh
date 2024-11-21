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
lobby-sync-native-friends '[{"isLogin": false, "platformId": "FdxLzFQN05MYzYiK", "platformToken": "We5dNRljv7IPrDQQ", "psnEnv": "Rgat0SevkLGMS0ly"}, {"isLogin": true, "platformId": "vaO35llzQRaT5kPx", "platformToken": "UfofvnnSuB0y5WUl", "psnEnv": "rMdI4sNveabntBSx"}, {"isLogin": false, "platformId": "kgghGoYupD391C2q", "platformToken": "tPYokahFjkQsfCaT", "psnEnv": "mt1d67FXGk2s9Q0m"}]' --login_with_auth "Bearer foo"
lobby-sync-native-blocked-user '[{"platformId": "PVo3twu0MesTCf9x", "psnEnv": "4rt69lna7qxNeIxP"}, {"platformId": "z6MbwL6IY69z1UaL", "psnEnv": "qYSYWytLPziZMdjx"}, {"platformId": "cBZufQxGiHPllG4c", "psnEnv": "YEzfTD1ZBm3MqHcU"}]' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-log-config --login_with_auth "Bearer foo"
lobby-admin-patch-update-log-config '{"logLevel": "error", "logLevelDB": "info", "slowQueryThreshold": 76, "socketLogEnabled": false}' --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 21, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 25, "chatRateLimitDuration": 41, "concurrentUsersLimit": 90, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "mn9HrNQy4uZAAiE0", "generalRateLimitBurst": 25, "generalRateLimitDuration": 91, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 39, "maxFriendsLimit": 91, "maxPartyMember": 90, "profanityFilter": true, "readyConsentTimeout": 6, "requestMetadataMaxSize": 57, "unregisterDelay": 20}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'HYzUOcEdscKHPEqg' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'A8yu7Vk6Jt4Ymos9' --login_with_auth "Bearer foo"
lobby-admin-list-friends-of-friends 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
lobby-admin-get-global-config --login_with_auth "Bearer foo"
lobby-admin-update-global-config '{"regionRetryMapping": {"JMdalwSyliWMNW5N": ["yLu0M3VHh2EI8JlD", "bPWbQ6Q9lNmqRBaA", "kLnvxkT1X68cmDc3"], "fxU8MyKrQpM4hkkK": ["6KKXNB3Gv0IqmF51", "TkhjYnaq6foWvXa3", "bMrXsDr6kILsSSyD"], "dmykmoPYgc2L4jk4": ["Lo0LSP0pf4IxjUkl", "535X3ateEKDpADz1", "x3poD3Qgb3boLQQ1"]}, "regionURLMapping": ["MzH7Qm8bwbmXgdAP", "h1EThG96gAFKK2WD", "gCcxvONZm3EeERmD"], "testGameMode": "nyeFoF7VSZ6pf3vn", "testRegionURLMapping": ["eSD2Tb3g7mSQUhAE", "trmjqU6YE3p4lSck", "0ZHn5GI39YBHqaTH"], "testTargetUserIDs": ["eKtW18iGeUlc9d9s", "ogWa24CKNS0GqVvU", "fHQvsHXNUNe4mhgo"]}' --login_with_auth "Bearer foo"
lobby-admin-delete-global-config --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "5QB65lSAiYnNjkfZ", "topicName": "rQvGgbLdLsFzHkBM", "userIds": ["r1yrOMlNFSrUEirn", "jX9fDmIbeZxzfTcy", "iuATus9hsfpFDcSD"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "G8aMVGLiBNrDjqox", "topicName": "cwgGLXpUL4pp2ncY"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "AHdNzDmeIP6rOvDz", "topicName": "9KOsb392k6YmJFfR"}' 'ByjlBiuFM3FIoVk8' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"T3GpAnkCmBUqg2SC": "nqntX9y1aZSWMiVi", "10sG6vxkfUcmqRRb": "ceJ5i0EeDxOgBnhh", "qElIaDml48wdNFLT": "m5T50x9WT0GfH2rt"}, "templateLanguage": "Oa4EXsXzOXQAk4mq", "templateSlug": "rxzTtuLl4XlbGL8Q", "topicName": "Oxtjzm8y2wNhmwoY"}' 'ZyI4EFZKBcYrCEAE' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "7WIsfmx40NLRc6m8", "templateLanguage": "heKnWhzfe2NubeoK", "templateSlug": "FeIaFQCYoDPICpnd"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"uEEQlULdJz4mnRBk": "MNxvvKgAT8mJrYq6", "hRkloqxM3gpwxcfM": "y9XzjjI5YbsKoADk", "zJEN2VHzih3bit0V": "Wn3CO39PXDNxtXge"}, "templateLanguage": "O3FgkXhjDzaQY3sn", "templateSlug": "n2ZkP7cFdP43e5dC", "topicName": "9XIBudfZgrbHDIDm"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin '4hMzF4TxodenSrUT' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'vfqU0bfoMm5cTtFW' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'botQyXJRcQWsmqPN' 's92epxk0i8VxsZNe' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "reSvf9699mCEHThU"}' 'JkETAsSp7gh4TeUT' 'kOkAYfJB8AT9t4Tv' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin '207Y2QD3oD5fLCr3' 'OOlXVv8ZGF7uYnGz' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'pipNDigNJma1Mbqq' 'ZtfNWql4nmwAft4g' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "qkNNlWkD9eOziYRF", "topicName": "On0jJLHC9LxhvNXT"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'wGBCtohLtl9Zuhyt' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "m5UDrT6QXCs5SPBb"}' 'RPZTF6oQAXVG7tns' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'Zg5QgXjvyGJPN4eX' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "bJE5Vs2GcyomQoIX", "topicName": "imBJehyxlNsjUgxB"}' 'kF6wFPoJeQediogE' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"hhM2rIizGdKvOPdq": "5xrgxSmy1DN9LFkY", "W5DQyj4bj5Ro2oga": "Kt2ujQSa3Zdb65UX", "my0Zp6iIaTIKUkmk": "k9QM0NBMA9ORxpzw"}, "templateLanguage": "LR2AK6eXUGPJsw1f", "templateSlug": "iP80G9Pclxcft2ul", "topicName": "IJzPyrVEiOG4Ucqs"}' 'uGKHhMRWLVd3DlhL' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'uIpomM8sm1MiaI1m' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"X2tJoARtdbBe7uds": {}, "Mrok0WvGYYnx4V70": {}, "9xbnGezKsDwG2omO": {}}, "updatedAt": 89}' '5tVg8JqU0jZpjvsu' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'gAOS7u8RiWyerCSa' '8SRgwsAj1ik1jgla' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'DXTvKCWwNTAhd2wr' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["S0uPdjhdinpng5BL", "y8wbhMssAHjapIkY", "9Rf4wP57dBZNR88Y"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'bCtmKy8M9zVrjfGX' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"ZnqAQUoY1GjlIIk0": "iKoTTS1j02o7JjTX", "AQN0qdskdQV0TqI8": "EFnmDbxIxi4YKlON", "k2Q5Y4Jvaizwiila": "tuUjjt9lIMGql5El"}}' 'Ea9EIIlGcHB3CfR3' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'ncDlwi3v3MFFJ1Ke' 'sKoELCpobBEG8X64' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 '5xpdXpai0rYaT5hO' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'Pjaf3H0tYighU0VU' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["fcYHJbBfAKSiPW3V", "gsZXiR1DJ7HVWqMk", "NSawQUWDFJvJBWic"]}' '7UkBeIXuqDuAXI66' --login_with_auth "Bearer foo"
lobby-admin-bulk-unblock-players-v1 '{"listUnblockUserId": ["bQ71w0deoV9Lx5RD", "A1l2XcrciYNEzvSZ", "IPkhSgORcz5S5Bvm"]}' 'gBLxh4ijFnE3Tam6' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "9qSZ7PC6f6QkmZXE"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'lW9YfRSse6AAz3S4' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "czz0QKFlAVmVLu4A", "note": "Oec0z8eBeeoip68J"}' '1nsv4W2OJhtafxMS' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "JlHeb34sZKHcl5LL", "note": "LOexL4fZvWtND2tc"}, {"filter": "BFpX8lNtFEJ7tnkY", "note": "6Mca5afj12K2IzrB"}, {"filter": "vvWm4udE0OXudXgN", "note": "ne8kJATwlc6esUp6"}]}' 'Sw1I98jeZQ7hfxnh' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[76, 59, 7]' 'WVG8SWP3glU6musw' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "VJnNnN7kAa7j0riF"}' 'c5HTHQIoVsGo7dwV' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": true, "name": "EveMdAdiPKDUVSC0"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "eDcagginxnFIna3y"}' 'ddcbsPheTH26IUJN' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'vYuGRUvpZaHCuESO' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "iIZsMfB4ZH3mtgWg"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "U4pCAKxeE70CaunQ", "profanityLevel": "Nxot371W9G4AvQkq"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "sGnmyo5JJTUVmb8G"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "EXFTlEMEsFzYqwgK"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 '1Np5nodqpLm7FhJB' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"NXzAFdO0Khqf6kiT": {}, "dSGv2LFjAKY7Cbgs": {}, "WqFWZX7kPBom8F9G": {}}, "updatedAt": 78}' 'T7DROCjtuzFMbAG9' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 75}' 'I89hmguB8FOTjMLo' --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "4b9rIzqYkEpstyVT"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "BcrM8rG0rH0zcsww"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'VeMK6MbGIVIu8vvw' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v2 '{"userIDs": ["Lc7KY3uVoJXTIMtp", "gkieDyF97lGdMiHK", "xbWCYzo8yO2KTK9t"]}' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "mmOnYnOpas6ghP1y", "topic": "4Zi7s7QBlk44Z44B"}' --login_with_auth "Bearer foo"
lobby-get-my-notifications --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"1GZgKg4uKxaCgcGL": "uC3brWdTYCfHkIyS", "ok5DiXZtLW87rGys": "ryod3dNQrmsApRA6", "HX3RwrKt2ecozL0T": "Og54vCE48L5oLF6M"}, "templateLanguage": "4lNa4JUMSHNgqRqC", "templateSlug": "V7usamANkZlOX9Sf", "topic": "o95HgXqKhTPkwfLM"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "9uSybRzWek2gZvRr", "templateLanguage": "vr0n9d9lvccKMLhr", "templateSlug": "TrcBE2ItBS3KtKZW"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'e8aoFzAyBME74HUt' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'ipUWYhWV1qx8CzPM' --login_with_auth "Bearer foo"
lobby-get-localization-template 'L52faXUr9Sk4lq2f' 'aBcAXXKlhvyH8paO' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "JtxqMPpcVfRwNj54"}' '7fH0XrKEDpEY8Vno' 'cGAjci0V3tBf2jnH' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'GKXphn50c9tNLDlj' 'hZ2jxLRX3z46OCaG' --login_with_auth "Bearer foo"
lobby-publish-template 'BeMfPlNos4yBRjrE' 'RHEonAZR8GmEu0q1' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "p6QCyY6vSkVFWdsb", "topic": "YuVEGVxYheR3j5mN"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'Z6vwv7K8Asvt1j1R' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "x59hesNWy2NvZ85D"}' 'DKDAF8KDsBZOuYQJ' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name '03BAHZ7c53q7akMp' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "cmnnx6RVBrop9v7a", "topic": "ZK3h65hbN15zfQSf"}' 'QrtfF3TQN0OcNDLr' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"36vzohZyjMQAg5mP": "YhrLTyU8OhgfY9JQ", "YGF4bYXEcENx9xZl": "Achob44lONDDwMvg", "I0HlyPR7wZNiVsF6": "xG2mXEQdbzIVy8al"}, "templateLanguage": "ncV7vWgSHdfo07Uc", "templateSlug": "tPErqxyMyOK06MqQ", "topic": "BErxgjVBycvU4Pbm"}' 'RDcrg0DjQjBECXve' --login_with_auth "Bearer foo"
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
    '{"friendId": "a7H1m2lJFRZ3ZprZ", "friendPublicId": "60zMjhTHeh94TSen", "metadata": {"E5hCFkIf5weqZ18M": "H57l2Zsrh90ETtYm", "Gukz3MnlrjcHp6B8": "Vj7rXFgDnDkdZ9bp", "jb1tdA3QhjCMW64f": "4XhIjSoTB2NMKtez"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "apPr2QEPx3zTxBGt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "EJIYppuUSsKoHw2h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "yd12uSE7BEv3aevq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '6iohU1cg4W1IS3Uv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "1BpWoJBaqdg2FHcu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["nsS1lnaO2m9vqjhb", "eK2qN8g6x2PyYDo5", "R3hLiD5sf5y1JsxJ"]}' \
    'NGmyt0SQDUDoWBZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["GLlkUetzCAWc9x1a", "MjgGim51T107XIZR", "Z7tZdIs0xf4czdt7"]}' \
    'zqmSKxOEQlVcx6Gq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": true, "platformId": "W5ynMKquUicAeIVX", "platformToken": "toWAXhMlW4tLqX7O", "psnEnv": "ICf5oD1e6oI9FmYe"}, {"isLogin": false, "platformId": "wSkHKufBdS3ZOokZ", "platformToken": "B4cXnAXyuGz6LlxH", "psnEnv": "v8SwyagYvDJ3w3UN"}, {"isLogin": false, "platformId": "3rzH5NvAtcvNedgS", "platformToken": "1fUfKmihDbmu8ePW", "psnEnv": "lQMVDXEHeiGTnwyE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
$PYTHON -m $MODULE 'lobby-sync-native-blocked-user' \
    '[{"platformId": "w6hIWDZrpP7rz3IS", "psnEnv": "W510kHr4isTKWjmv"}, {"platformId": "67nuHCXWfwnwGioV", "psnEnv": "wVzmmBVVFfpqx1Ae"}, {"platformId": "LtzcPJ3jtDYBo4FU", "psnEnv": "TH7CGfKSyxgRR1Di"}]' \
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
    '{"logLevel": "info", "logLevelDB": "fatal", "slowQueryThreshold": 33, "socketLogEnabled": true}' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 10, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 77, "chatRateLimitDuration": 70, "concurrentUsersLimit": 66, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "ZtlzUcuHAXz0UV31", "generalRateLimitBurst": 80, "generalRateLimitDuration": 66, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 17, "maxFriendsLimit": 41, "maxPartyMember": 66, "profanityFilter": true, "readyConsentTimeout": 1, "requestMetadataMaxSize": 72, "unregisterDelay": 77}' \
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
    'sAuGsZaSHevO0TQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'EI3kfabxJWWSI1EC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'Uo1NPpeFhUztXDgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    '7n4C97uAPP8PATLp' \
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
    '{"regionRetryMapping": {"UpxeJlsBJT6Hh3OM": ["jAjq2mK8lbSEEelx", "nb5QxWG2HFnZlA6H", "KWW4fI1IQcoBQELc"], "NlZkqTZrKgXNwvm4": ["e5GX6H742OixhtAo", "KiVm6URT95XhnUcv", "WB28MpusuhhDJ5sl"], "zgiWZEtyd56Lfxnb": ["Y97jjYgXchCbkXX2", "6uEdCfQaMAQuTKfC", "0I2kNjCMDtDMrent"]}, "regionURLMapping": ["gn3DhqciwIeShF9R", "Kb9vvxuJlhXbWhbw", "PwToC6knjVwVnzaq"], "testGameMode": "SfJiQFC2gXoda0kg", "testRegionURLMapping": ["16yUSpSOAjHJWwfC", "jYwWkLob9gKLqs2n", "EZhpByfHZinxNfgP"], "testTargetUserIDs": ["AwkMBsznlBUqnLT4", "AbGptKaWNvPbpg7y", "rRvXfZ6rvgvEY3Hh"]}' \
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
    '{"message": "t1SwqTsKKKo37NHD", "topicName": "OQe91Ps3ztUIV0dS", "userIds": ["6hIH9c4VfkyrwpuX", "xbaERbfgPmi0eHkt", "1mr9EOIFg0dnWIYN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "2NVL70Iw157g00jr", "topicName": "9b8MuYmmeKTmBNvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "YxEQdf3ewoGGoY7x", "topicName": "mFNAmjDDCvs78mcM"}' \
    'diS76YApGJ9ufwLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'SendPartyFreeformNotificationV1Admin' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"kqIgLuZS6hsQryiE": "tOAbpeUNf26UqkCf", "gCUYBn2xaOBdPF0J": "mX8qwU1cTuHHPB5S", "3DvPRCzBrVUxmDOj": "3cvRFaTC11W0TGTC"}, "templateLanguage": "m4fZWuk6pQxDQpKq", "templateSlug": "xLGeMvr9TsvcMQ7d", "topicName": "BsaIecRxIsZvD6rm"}' \
    'zVr5XT1Nxw0v1dMQ' \
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
    '{"templateContent": "9Rrbk6C2cVWf6ttv", "templateLanguage": "bU1PO6ApCD2VXidT", "templateSlug": "7w0Oc15N8WXBPp17"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"PAewqSm5x3B4t7WQ": "np8jXZedgt5cyNe2", "7HLtwtVOaxgP6Jbc": "t8puMybYGxD9IPmm", "sLmu3kaPj0O4zd8T": "b7cUNGPTBxiFFCrn"}, "templateLanguage": "7djjs69FTFVGUVhv", "templateSlug": "KhJCmeisql14mUHV", "topicName": "bMPimNhcZsU3VAdM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'Dcb4qlkiFAamqvZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '2KwjqPBiWXade41s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    '3rH34mB2yPlRpWjm' \
    'HZAAvKTH8MuqIg0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "zkguwuJCW7EEFB67"}' \
    'AODbi9BzupBsFpYc' \
    '77GtRUcCFeY5g4Xg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'BsbfzqxBPNe8ae1I' \
    'l4aAtEbu4IjGdqth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'RxTjQ7gkZEY8rG0q' \
    '0Q2Qd2JzRbkF2I03' \
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
    '{"description": "dIjvBbA6bfbYaJCJ", "topicName": "jfk2TUvn95FhO7VW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    '3mbDVMDu87t0ldWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "7iSGIiKFtWtn4Yr2"}' \
    'svKM6pqLGZ0TBujE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'LAUK6mQ5iZgbwwm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "iGzXtcknrgidKupv", "topicName": "XO6aj4hCmTC34jxW"}' \
    '4pIDwdqXpmRmut9H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"9XyWI8bp8fQxRuX9": "1uYmtrHJbEGTUj7Y", "jERL1rEQG02zccA8": "wvLsWUNd6lPKvqDe", "jvqklTSvDwuOrP9l": "zpiX0VuFpZum7izx"}, "templateLanguage": "e7NPzjOa8E7wY76P", "templateSlug": "xLv9HBEUe89AwEw1", "topicName": "HO4FnKtx4XLKAmlD"}' \
    'r19uJ3nq6VerzVCc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'I8y3Cz0YqCKUh5RD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPartyDataV1' test.out

#- 53 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"9vNAp4jinFpnQ5xF": {}, "9wwbvMZyeDeRnVfP": {}, "Ua6xVVBcq3wZpFIY": {}}, "updatedAt": 9}' \
    'tcqsnzoVILjkwW61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdatePartyAttributesV1' test.out

#- 54 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'duF87aUyrdt4XSpW' \
    'BAetsanzqP8oxfrt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminJoinPartyV1' test.out

#- 55 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'bECD1CYPwaiBAxfY' \
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
    '{"listBlockedUserId": ["L8Avt70ZUT2fSk3L", "L0calqxEewuGS469", "k2hG0WKt4sUmanYx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'M0UHZVNYzGMNIpWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetAllPlayerSessionAttribute' test.out

#- 59 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"SLkUrfuf4U3WeYeA": "9t2ENKKWrFtHIi1C", "MgKAOG5iDcCR5PbC": "vDLil8wj9cKM3Ar6", "MF35hCER4nGmWGgT": "JfHlJl4tHGa4XfZc"}}' \
    'd9CVnGqMX9FieeEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminSetPlayerSessionAttribute' test.out

#- 60 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'sWEUl07bhwntCVqi' \
    'YOJf5KwMZQjzvjSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerSessionAttribute' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'zv6CTRDl0zp9CzHF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'winkBNi4gvqgl6TZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["9TGVPmv34h6T7Esu", "fmfxKYB4LM6H6QXm", "pZ9X3fUSR1l9xLPB"]}' \
    'smAUrD9L1IiD6Mlc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-unblock-players-v1' \
    '{"listUnblockUserId": ["EPhMDFzjHZ3sIhzO", "x2CXKlvIomU3pIxM", "9n8D2eLMe3lt9qfx"]}' \
    '2UDcgVE7L9FK6e0M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "rPc4vtxk9hVKlG56"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminDebugProfanityFilters' test.out

#- 66 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'HlzGr7XjdyRJunZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityListFiltersV1' test.out

#- 67 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "kp6ccIBnWyPw8mj7", "note": "gyQ7XdIszGRj46CO"}' \
    'PipH1MWVTHG0qHJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminAddProfanityFilterIntoList' test.out

#- 68 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "WEfOJpZm9yEYWNGM", "note": "y2pgSGSUOK68eqGJ"}, {"filter": "tWf1Ybgg8rdwY9bm", "note": "rvHmO07KNqX9LM2I"}, {"filter": "wEsdOGBXBwnzDX8v", "note": "3xgC1Ge9PdbTTAJ2"}]}' \
    'Gp1r0sVZ6LJAOddI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminAddProfanityFilters' test.out

#- 69 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[77, 33, 98]' \
    'l3hPjNDKv2LWfXqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminImportProfanityFiltersFromFile' test.out

#- 70 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "r8fS79En3wYowBdk"}' \
    'aZ3y6i38XQjLDRqk' \
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
    '{"isEnabled": false, "isMandatory": false, "name": "iFK5BtiQ272Uo9UB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateProfanityList' test.out

#- 73 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "newName": "6sjAHyCK5tNanGBr"}' \
    'kzUvck3xTtmOFMeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminUpdateProfanityList' test.out

#- 74 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'S4AdlNzwog2IhErk' \
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
    '{"rule": "NhNcECWwchW6zL9S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'AdminSetProfanityRuleForNamespace' test.out

#- 77 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "kbLlrNXnGanMazb8", "profanityLevel": "jvRWenURH48aJuAL"}' \
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
    '{"apiKey": "EcSqcE15u6D31DjO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'AdminUpdateThirdPartyConfig' test.out

#- 80 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "srs3CUYATdqnQGbq"}' \
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
    'iqOkNeATj7eGjodd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPartyDataV1' test.out

#- 84 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"7CcJUrI6MAugK5ky": {}, "pNrp2nFe9FmN86sK": {}, "5LOq4ft5jGcMICPU": {}}, "updatedAt": 57}' \
    'nfG6jl9U4jReteIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdatePartyAttributesV1' test.out

#- 85 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 13}' \
    '19IZPKOKiAVQXXOm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicSetPartyLimitV1' test.out

#- 86 PublicPlayerBlockPlayersV1
$PYTHON -m $MODULE 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "qFHLbyXmgCNiXH8u"}' \
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
    '{"userId": "enbC5CphgMweexsI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'AP5vHLjBJ9iqMcBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
$PYTHON -m $MODULE 'lobby-users-presence-handler-v2' \
    '{"userIDs": ["4BzhDUjhKPwbwcvQ", "U5kG8bXGFmPAnOkD", "iJq4xQye7HqnVK3Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "VeOWs9mfVQh3jLBt", "topic": "n9pxpE7BYtzB0B4C"}' \
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
    '{"templateContext": {"xyQrUpIFvORxTi79": "DpSjb39ukcR6c2E2", "r3vk3IfAKEbqcNXS": "GCCvNowNmdpcJgF8", "8ySNq4Mj7mulP4tQ": "6R1OqKVOTniBgLsN"}, "templateLanguage": "hdgQ0JWZjNRSzOTq", "templateSlug": "cVNX3ahvxw9gwwhT", "topic": "njN6wKZGW4y3f0R9"}' \
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
    '{"templateContent": "s2kndhhZhwAiLsZs", "templateLanguage": "4pmLDIQch4IjDq9a", "templateSlug": "T3qZyI0rYsWucAkX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'CreateTemplate' test.out

#- 97 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'sVJbXi7eRZa7WwIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetSlugTemplate' test.out

#- 98 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    '895ImqK6tVsaUq3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteTemplateSlug' test.out

#- 99 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'tUh5J5Z9GiBiSAyl' \
    'X5cS0IeHpWCugmfO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetLocalizationTemplate' test.out

#- 100 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "L0QQpxsuD8PGqku5"}' \
    '9eFJrOXyDYz9vMUO' \
    'PG0iHDT8QbF7gHPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateLocalizationTemplate' test.out

#- 101 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'PQbvLt2NRqJGIKzL' \
    'yH1y72L13Ornyx34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteTemplateLocalization' test.out

#- 102 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'luLdvtsTKXMjiw6g' \
    'YPvfn2Qt9iyq3Nyk' \
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
    '{"description": "8ncu2Z3eDHH9WaVO", "topic": "4iKhDcJ7TCcNIsQ3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'CreateTopic' test.out

#- 105 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'PuppUxDSK8aOTGMu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetTopicByTopicName' test.out

#- 106 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "dcxlCV4cNbJGQ57l"}' \
    'PdinpjS2DRfGt9Gl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'UpdateTopicByTopicName' test.out

#- 107 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'yZVQ4X67tPZSTpPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'DeleteTopicByTopicName' test.out

#- 108 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "3xjrElvvDgw0ag7k", "topic": "SWE0Hiqm5IuLryiE"}' \
    'XqvUWDjU1G0EVjVZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'FreeFormNotificationByUserID' test.out

#- 109 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"w1ToLuPakQN1MpOs": "1RVFrcg2CXxepx78", "fvsyhE2BKtyTDSIM": "7mkmvZ7Cmsh4US8o", "4jfMANPpmZDdMiCx": "muCCVuFjS1GC1d2b"}, "templateLanguage": "92B4vEgj3HOmhcWm", "templateSlug": "428XejRF94NIY9nM", "topic": "rBZo0lNUBDShHD32"}' \
    'vvL28FPwTiXfLcxD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
