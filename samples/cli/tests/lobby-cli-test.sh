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
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 23, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 52, "chatRateLimitDuration": 86, "concurrentUsersLimit": 97, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "T5kPxUfofvnnSuB0", "generalRateLimitBurst": 50, "generalRateLimitDuration": 91, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 96, "maxFriendsLimit": 59, "maxPartyMember": 23, "profanityFilter": true, "readyConsentTimeout": 41, "unregisterDelay": 79}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'HOPlLlkvR8sKgnuR' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'kgghGoYupD391C2q' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests 'tPYokahFjkQsfCaT' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "mt1d67FXGk2s9Q0m", "topicName": "PVo3twu0MesTCf9x", "userIds": ["4rt69lna7qxNeIxP", "z6MbwL6IY69z1UaL", "qYSYWytLPziZMdjx"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "cBZufQxGiHPllG4c", "topicName": "YEzfTD1ZBm3MqHcU"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "mLZZbSqb8RwNmn9H", "topicName": "rNQy4uZAAiE0mit9"}' 'RGCCHYzUOcEdscKH' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"PEqgA8yu7Vk6Jt4Y": "mos9Jcdos4fYcTVU", "6RBt0zYoMcHyCUEX": "lAvxJMdalwSyliWM", "NW5NyLu0M3VHh2EI": "8JlDbPWbQ6Q9lNmq"}, "templateLanguage": "RBaAkLnvxkT1X68c", "templateSlug": "mDc3fxU8MyKrQpM4", "topicName": "hkkK6KKXNB3Gv0Iq"}' 'mF51TkhjYnaq6foW' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "vXa3bMrXsDr6kILs", "templateLanguage": "SSyDdmykmoPYgc2L", "templateSlug": "4jk4Lo0LSP0pf4Ix"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"jUkl535X3ateEKDp": "ADz1x3poD3Qgb3bo", "LQQ1MzH7Qm8bwbmX": "gdAPh1EThG96gAFK", "K2WDgCcxvONZm3Ee": "ERmDnyeFoF7VSZ6p"}, "templateLanguage": "f3vneSD2Tb3g7mSQ", "templateSlug": "UhAEtrmjqU6YE3p4", "topicName": "lSck0ZHn5GI39YBH"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'qaTHeKtW18iGeUlc' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin '9d9sogWa24CKNS0G' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'qVvUfHQvsHXNUNe4' 'mhgo5QB65lSAiYnN' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "jkfZrQvGgbLdLsFz"}' 'HkBMr1yrOMlNFSrU' 'EirnjX9fDmIbeZxz' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'fTcyiuATus9hsfpF' 'DcSDG8aMVGLiBNrD' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'jqoxcwgGLXpUL4pp' '2ncYAHdNzDmeIP6r' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "OvDz9KOsb392k6Ym", "topicName": "JFfRByjlBiuFM3FI"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'oVk8T3GpAnkCmBUq' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "g2SCnqntX9y1aZSW"}' 'MiVi10sG6vxkfUcm' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'qRRbceJ5i0EeDxOg' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "BnhhqElIaDml48wd", "topicName": "NFLTm5T50x9WT0Gf"}' 'H2rtOa4EXsXzOXQA' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"k4mqrxzTtuLl4Xlb": "GL8QOxtjzm8y2wNh", "mwoYZyI4EFZKBcYr": "CEAE7WIsfmx40NLR", "c6m8heKnWhzfe2Nu": "beoKFeIaFQCYoDPI"}, "templateLanguage": "CpnduEEQlULdJz4m", "templateSlug": "nRBkMNxvvKgAT8mJ", "topicName": "rYq6hRkloqxM3gpw"}' 'xcfMy9XzjjI5YbsK' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'oADkzJEN2VHzih3b' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"it0VWn3CO39PXDNx": {}, "tXgeO3FgkXhjDzaQ": {}, "Y3snn2ZkP7cFdP43": {}}, "updatedAt": 9}' 'Y9eKa699bRVhyaKw' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'wrAP2aMlu7WtjCto' 'YetOO847g8OudOfj' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'nCuHZ3c46IjGa23Y' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["vYmmDg7VYPXIuvUY", "TZBRujIUE1Tq5jyA", "ZvkRCMNFIurjh2im"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'db4rbkXj0ZwsVC0g' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"L97ZVJSPqJiwv1ql": "YB1RSKs6gQxC3Gb7", "S0o4zGYY7KQI1AeF": "gPqaOkvo1aolB4lk", "KB4EYOkQ1jMD3cym": "8xIfkOVW2grREOLx"}}' '0KOww3HICQLfl7MU' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'BG7qtPu64yAtURKL' 'Rkb738HGS6rDgMdI' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'IlhS1fSiM9331m7T' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'a1PsKc50Kv6ecnEe' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["vcAx2K2zkRenmPZn", "GBt4P7WnbdSJtjX7", "ZshZyZl5x4bRXBHU"]}' 'TrDzZSKscfOcYu3d' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "pCROYqUiGKXVFCmp"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'o6sPwVOEDSJsEK5Q' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "pNhlI2iS5EpGhhvX", "note": "Yck0upMzUYnb76tF"}' 'kEORV3bu1bNCtX7W' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "40V6Do5sYadCCFrH", "note": "HC3DpZxkrQDXuNFv"}, {"filter": "iMarv8mnfHK8CCmE", "note": "2lPnsbD3SGEdlwuU"}, {"filter": "ccE536ugBp3HBvep", "note": "nDCjgyJlXe36mgWj"}]}' 'LfFmteue9nzJ6fH2' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[29, 93, 26]' '805tVg8JqU0jZpjv' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "sugAOS7u8RiWyerC"}' 'Sa8SRgwsAj1ik1jg' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "sB1fPqqRRulpqpym"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "0uPdjhdinpng5BLy"}' '8wbhMssAHjapIkY9' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'Rf4wP57dBZNR88Yb' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "CtmKy8M9zVrjfGXZ"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "nqAQUoY1GjlIIk0i", "profanityLevel": "KoTTS1j02o7JjTXA"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "QN0qdskdQV0TqI8E"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "FnmDbxIxi4YKlONk"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 '2Q5Y4Jvaizwiilat' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"uUjjt9lIMGql5ElE": {}, "a9EIIlGcHB3CfR3n": {}, "cDlwi3v3MFFJ1Kes": {}}, "updatedAt": 74}' 'cjXJbZDKKoxLE1Y3' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 60}' 'pdXpai0rYaT5hOPj' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'af3H0tYighU0VUfc' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "YHJbBfAKSiPW3Vgs", "topic": "ZXiR1DJ7HVWqMkNS"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"awQUWDFJvJBWic7U": "kBeIXuqDuAXI66bQ", "71w0deoV9Lx5RDA1": "l2XcrciYNEzvSZIP", "khSgORcz5S5BvmgB": "Lxh4ijFnE3Tam69q"}, "templateLanguage": "SZ7PC6f6QkmZXElW", "templateSlug": "9YfRSse6AAz3S4cz", "topic": "z0QKFlAVmVLu4AOe"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "c0z8eBeeoip68J1n", "templateLanguage": "sv4W2OJhtafxMSJl", "templateSlug": "Heb34sZKHcl5LLLO"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'exL4fZvWtND2tcBF' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'pX8lNtFEJ7tnkY6M' --login_with_auth "Bearer foo"
lobby-get-localization-template 'ca5afj12K2IzrBvv' 'Wm4udE0OXudXgNne' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "8kJATwlc6esUp6Sw"}' '1I98jeZQ7hfxnhLd' '3Knaknoed9DHhLOq' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'QGhCUr6iTrjyEgar' 'AdNJOIG36I6tRbRc' --login_with_auth "Bearer foo"
lobby-publish-template 'rEveMdAdiPKDUVSC' '00PYeDcagginxnFI' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "na3yddcbsPheTH26", "topic": "IUJNvYuGRUvpZaHC"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'uESOiIZsMfB4ZH3m' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "tgWgU4pCAKxeE70C"}' 'aunQNxot371W9G4A' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'vQkqsGnmyo5JJTUV' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "mb8GEXFTlEMEsFzY", "topic": "qwgK1Np5nodqpLm7"}' 'FhJBNXzAFdO0Khqf' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"6kiTdSGv2LFjAKY7": "CbgsWqFWZX7kPBom", "8F9GLLTG8phc3n4i": "LoIllKlpO2pqiXJF", "3WGRaoQomSJC4Ddr": "KF7SUQPLG59e0k5Z"}, "templateLanguage": "tX6wK7PpUlcIW32i", "templateSlug": "K7MGt1ixY5rA1WoV", "topic": "eJIePF8ZrQzP4zvt"}' 'dxdbZUpd6FJtHJ1p' --login_with_auth "Bearer foo"
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
echo "1..97"

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
    '{"friendId": "yVwyKQLY6FEO65Rb", "friendPublicId": "3z7CYLM8IlsHqffn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "rfsGlfPaZKBwa3Dd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "b60ufPpzwj1QGIFm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "lVf4jvapseE9LN9b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'vhOrHflIOd6X3viL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "vtEk4mTIpUA9gxo8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["SV38nEhoXmM2W7l6", "jHMA2rG3nakopAyw", "elu01nryEJ0NqoTo"]}' \
    'w0qiOiC4j0iktm0Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["PLkLOsp0LZ5njN86", "Hl8kUXzt6bSc6bWv", "gpVyW9dD1kOmvrAe"]}' \
    'jcq2LgkQuaS7RBx3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": true, "platformId": "74HUtipUWYhWV1qx", "platformToken": "8CzPML52faXUr9Sk", "psnEnv": "4lq2faBcAXXKlhvy"}, {"isLogin": false, "platformId": "8paOJtxqMPpcVfRw", "platformToken": "Nj547fH0XrKEDpEY", "psnEnv": "8VnocGAjci0V3tBf"}, {"isLogin": false, "platformId": "J3sWCqQpQ2FbKPFM", "platformToken": "ycMSQ4qfAacR0LgB", "psnEnv": "5BUXvjcu2s6w3Vif"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigV1' test.out

#- 18 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigV1' test.out

#- 19 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 33, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 69, "chatRateLimitDuration": 93, "concurrentUsersLimit": 63, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "GH1XEfY6QAYn6WQ5", "generalRateLimitBurst": 95, "generalRateLimitDuration": 56, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 43, "maxFriendsLimit": 95, "maxPartyMember": 92, "profanityFilter": false, "readyConsentTimeout": 86, "unregisterDelay": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigV1' test.out

#- 20 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminExportConfigV1' test.out

#- 21 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminImportConfigV1' test.out

#- 22 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'AOHfZiGhxOdcuDXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'xSc3aZPV87pna08g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'xefTYKhuxaEc7M4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "7UckSC6ePeN8i4Gr", "topicName": "FES9z7xueHpATHcc", "userIds": ["ee9GXhKcjmSEwdrk", "EnnqKzFsLfYalUlf", "wEQKjU7eHGebSVu0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 26 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "LQ40kepEaC4dfiOM", "topicName": "ZfEhHr39pysFO3Zv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersFreeformNotificationV1Admin' test.out

#- 27 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "c1BZG99LyvfvHEsJ", "topicName": "KQQewVLMUoAnaRcY"}' \
    'p7FUjfIGaffoflEI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SendPartyFreeformNotificationV1Admin' test.out

#- 28 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"ByYqeKN0meGelYF5": "wWaDhukU4khGG4vZ", "FTYnPkmSu4PWam1j": "xR7SETWjteoc8fgv", "ZDDhoO05oKqymxLD": "1Lcvw6T6mZEiwxxE"}, "templateLanguage": "lpMYSWIeVzm7z9no", "templateSlug": "owmlTIKVowi0RY2V", "topicName": "N4ZONJREdUQ3z9F1"}' \
    'BxNNgnke4akncw7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SendPartyTemplatedNotificationV1Admin' test.out

#- 29 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetAllNotificationTemplatesV1Admin' test.out

#- 30 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "u9TmXfJWBPrx9Ns8", "templateLanguage": "eLzYEvwSWTaLQjct", "templateSlug": "vrK2jhsYpKPlXn77"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateNotificationTemplateV1Admin' test.out

#- 31 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"AtYoFzLAATPY8P8P": "3cfoivvQxevecWw7", "Rry0KK5rgAGO0dW8": "rX2MVUGKSZ4GcLkt", "4pK32sJxlZcCTpTd": "RtCHvuk6B6XTmSLy"}, "templateLanguage": "n50sigBVZxiKdV57", "templateSlug": "GvRyd9UuL02Le8HS", "topicName": "CslsDd4M1F5qRIbl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SendUsersTemplatedNotificationV1Admin' test.out

#- 32 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'S7Nz81GRazPAANjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 33 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'BoldFOyqA2clJ5gE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 34 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'OaCgM6Yn6RugbNEI' \
    'pGBFUjOn5mM7k8nb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetSingleTemplateLocalizationV1Admin' test.out

#- 35 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "LzvtCIW5ynMKquUi"}' \
    'cAeIVXtoWAXhMlW4' \
    'tLqX7OICf5oD1e6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateTemplateLocalizationV1Admin' test.out

#- 36 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'I9FmYel0kOw72o8Z' \
    'kgk0jS6rDWUwfhKv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteTemplateLocalizationV1Admin' test.out

#- 37 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'rf2AaH4yCWrHSppn' \
    'IZkNnTn3rzH5NvAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublishTemplateLocalizationV1Admin' test.out

#- 38 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetAllNotificationTopicsV1Admin' test.out

#- 39 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "cvNedgS1fUfKmihD", "topicName": "bmu8ePWlQMVDXEHe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'CreateNotificationTopicV1Admin' test.out

#- 40 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'iGTnwyEw6hIWDZrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetNotificationTopicV1Admin' test.out

#- 41 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "P7rz3ISW510kHr4i"}' \
    'sTKWjmv67nuHCXWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateNotificationTopicV1Admin' test.out

#- 42 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'wnwGioVwVzmmBVVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteNotificationTopicV1Admin' test.out

#- 43 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "fpqx1AeLtzcPJ3jt", "topicName": "DYBo4FUTH7CGfKSy"}' \
    'xgRR1DiCqSMzpqIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 44 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"GLkDs7ACC1RgBfoN": "rHlFi2qJLgmBLE35", "YhyiDV90SeI5yppB": "HoytVznCgNyx9fbT", "63ShEh8PbGikLjgj": "cj34uulU6FYBZsWF"}, "templateLanguage": "br3RSP0W9nBhvhf8", "templateSlug": "Q0DtJMcYQdN66bsw", "topicName": "Agt65X4N1LQZmB61"}' \
    'JMdtwCVUrYQue84d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 45 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'wmbwFEnAZaWsQJtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPartyDataV1' test.out

#- 46 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"YoagRJK5PX9UcOvh": {}, "PyE11TRT2SKseoe8": {}, "VLie0LBa36KNzjf0": {}}, "updatedAt": 7}' \
    '5CXNGehQ2aTjTDfK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdatePartyAttributesV1' test.out

#- 47 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'FDXC7eGL5YhJDWh9' \
    'YWqc0qgV6d9yOfIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminJoinPartyV1' test.out

#- 48 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'Lds2DbPcaoMdtRLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserPartyV1' test.out

#- 49 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetLobbyCCU' test.out

#- 50 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["mSvTkQQgB7exYvmH", "Mxr5hPCJJztJBg0t", "TJg46IewOXE2AkCh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 51 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    '3QIZsUf8lGFXcmwT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetAllPlayerSessionAttribute' test.out

#- 52 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"ERHclOdxIwqejxe1": "8rNdb8Otq6j1mqUa", "v7k05HAQltnSojV4": "jT65yclX2FtAz0vJ", "jFIYWOaNdsimmkW2": "miH3xRHAKy4QxZka"}}' \
    'XZ7vmiEd0JPxVyQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminSetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'shaDwNqTbbFMXAMf' \
    'VXe0GZeMgsRsmH1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerSessionAttribute' test.out

#- 54 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'QrYmkPKTPOlhTtSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedPlayersV1' test.out

#- 55 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'ZNCxuogFteTHJe4B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 56 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["hSSQkQD6WmOt6D7u", "fFVTOhvQpfbBke8a", "Edd36xj6wySoltDx"]}' \
    'sbzxrlaKEfkoYjY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminBulkBlockPlayersV1' test.out

#- 57 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "o6ouRW9UtNquwC3W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminDebugProfanityFilters' test.out

#- 58 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'gumrIz4NhGztZpr4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetProfanityListFiltersV1' test.out

#- 59 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "U4fwQIiLXgmRasvj", "note": "O4lj8m3XEwP2b4gd"}' \
    '3xOeii8Jnmssep2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilterIntoList' test.out

#- 60 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "D2NY0kABeGs9yxah", "note": "ld1pO0Gyf5PO3COy"}, {"filter": "MvczgEpzZ3Fbtxfh", "note": "cRC7IVYa6iZ5uFRY"}, {"filter": "Nn3SHiWxF0YbuU5a", "note": "r5qTLWUCy0Afgc05"}]}' \
    '0XIZRW491e94mQjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminAddProfanityFilters' test.out

#- 61 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[83, 61, 82]' \
    '2VXidT7w0Oc15N8W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminImportProfanityFiltersFromFile' test.out

#- 62 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "XBPp17PAewqSm5x3"}' \
    'B4t7WQnp8jXZedgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminDeleteProfanityFilter' test.out

#- 63 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityLists' test.out

#- 64 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "name": "JRfk4f9Zcw1pEHAy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminCreateProfanityList' test.out

#- 65 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "cVTKuAQTGh5BxjWO"}' \
    'ozGoDtsUuYo5p8ED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateProfanityList' test.out

#- 66 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    '5QZAufwNa8lzfjv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminDeleteProfanityList' test.out

#- 67 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminGetProfanityRule' test.out

#- 68 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "oYMXMjlVHY1AHwF3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminSetProfanityRuleForNamespace' test.out

#- 69 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "vGoav7MK0PcLnEkc", "profanityLevel": "okKwcQ0baDT9OyJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminVerifyMessageProfanityResponse' test.out

#- 70 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminGetThirdPartyConfig' test.out

#- 71 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "h23GUS2amU7syGlE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminUpdateThirdPartyConfig' test.out

#- 72 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "lXdEAOrVSnLocLVV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateThirdPartyConfig' test.out

#- 73 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminDeleteThirdPartyConfig' test.out

#- 74 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetMessages' test.out

#- 75 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'YamQc4wcG5nDBLJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPartyDataV1' test.out

#- 76 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"JHbiQ5duE5p4cfs2": {}, "E41cK8QTwiIAvxSv": {}, "NDlmM5nQFMGzs7fz": {}}, "updatedAt": 18}' \
    'c77GtRUcCFeY5g4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdatePartyAttributesV1' test.out

#- 77 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 12}' \
    'SV30lnroQehMDli6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicSetPartyLimitV1' test.out

#- 78 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedPlayersV1' test.out

#- 79 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 80 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    't9unQLYXxm09wpGA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UsersPresenceHandlerV1' test.out

#- 81 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "bpEmDY9vLh3u6EDs", "topic": "UmrV6kH4OotKwG3U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'FreeFormNotification' test.out

#- 82 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"C6XCnnZxF8CmQr17": "W65br34rBBN9tU6T", "Dm5GloFSKWM1eym5": "ydC6p25xCWTqUOYZ", "ENJ1QHZQxPRXH7ux": "BJEECQE1li3Bg7Jx"}, "templateLanguage": "c9pUnZmvhidwCkZw", "templateSlug": "qjYLfTiCO1NDBvQv", "topic": "RPnAz4VzW0CpoBCb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'NotificationWithTemplate' test.out

#- 83 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetGameTemplate' test.out

#- 84 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "yJsF5IjF1c0W338H", "templateLanguage": "S6CBgVRyihYNZ84C", "templateSlug": "VhziXV8HwSmvcvcD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'CreateTemplate' test.out

#- 85 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'KF19yVRafCjOuSYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetSlugTemplate' test.out

#- 86 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    't83AdvBaagTiRJ8d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateSlug' test.out

#- 87 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'aGTVX3Bb7jlz5IfH' \
    'gKjI9mwJSrN8jkIy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetLocalizationTemplate' test.out

#- 88 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "kR2zbaI6PD7fEscS"}' \
    'hnGUGUtV9GJ279GD' \
    'bLNwjm3FK0nnX2po' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateLocalizationTemplate' test.out

#- 89 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'MfZ1hDHtbh4HtMlF' \
    'gvh2Dp2SoiIPp1yv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateLocalization' test.out

#- 90 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'fAHS0VgLu11A3HTo' \
    'vFi4tPAGfleyCA6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublishTemplate' test.out

#- 91 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByNamespace' test.out

#- 92 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "EtcqsnzoVILjkwW6", "topic": "1duF87aUyrdt4XSp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'CreateTopic' test.out

#- 93 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'WBAetsanzqP8oxfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetTopicByTopicName' test.out

#- 94 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "tbECD1CYPwaiBAxf"}' \
    'YL8Avt70ZUT2fSk3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateTopicByTopicName' test.out

#- 95 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'LL0calqxEewuGS46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteTopicByTopicName' test.out

#- 96 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "9k2hG0WKt4sUmanY", "topic": "xM0UHZVNYzGMNIpW"}' \
    'oSLkUrfuf4U3WeYe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'FreeFormNotificationByUserID' test.out

#- 97 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"A9t2ENKKWrFtHIi1": "CMgKAOG5iDcCR5Pb", "CvDLil8wj9cKM3Ar": "6MF35hCER4nGmWGg", "TJfHlJl4tHGa4XfZ": "cd9CVnGqMX9FieeE"}, "templateLanguage": "ssWEUl07bhwntCVq", "templateSlug": "iYOJf5KwMZQjzvjS", "topic": "ozv6CTRDl0zp9CzH"}' \
    'FwinkBNi4gvqgl6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
