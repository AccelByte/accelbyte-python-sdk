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
lobby-admin-get-global-config --login_with_auth "Bearer foo"
lobby-admin-update-global-config '{"regionRetryMapping": {"mt1d67FXGk2s9Q0m": ["PVo3twu0MesTCf9x", "4rt69lna7qxNeIxP", "z6MbwL6IY69z1UaL"], "qYSYWytLPziZMdjx": ["cBZufQxGiHPllG4c", "YEzfTD1ZBm3MqHcU", "mLZZbSqb8RwNmn9H"], "rNQy4uZAAiE0mit9": ["RGCCHYzUOcEdscKH", "PEqgA8yu7Vk6Jt4Y", "mos9Jcdos4fYcTVU"]}, "regionURLMapping": ["6RBt0zYoMcHyCUEX", "lAvxJMdalwSyliWM", "NW5NyLu0M3VHh2EI"], "testGameMode": "8JlDbPWbQ6Q9lNmq", "testRegionURLMapping": ["RBaAkLnvxkT1X68c", "mDc3fxU8MyKrQpM4", "hkkK6KKXNB3Gv0Iq"], "testTargetUserIDs": ["mF51TkhjYnaq6foW", "vXa3bMrXsDr6kILs", "SSyDdmykmoPYgc2L"]}' --login_with_auth "Bearer foo"
lobby-admin-delete-global-config --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "4jk4Lo0LSP0pf4Ix", "topicName": "jUkl535X3ateEKDp", "userIds": ["ADz1x3poD3Qgb3bo", "LQQ1MzH7Qm8bwbmX", "gdAPh1EThG96gAFK"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "K2WDgCcxvONZm3Ee", "topicName": "ERmDnyeFoF7VSZ6p"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "f3vneSD2Tb3g7mSQ", "topicName": "UhAEtrmjqU6YE3p4"}' 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"qaTHeKtW18iGeUlc": "9d9sogWa24CKNS0G", "qVvUfHQvsHXNUNe4": "mhgo5QB65lSAiYnN", "jkfZrQvGgbLdLsFz": "HkBMr1yrOMlNFSrU"}, "templateLanguage": "EirnjX9fDmIbeZxz", "templateSlug": "fTcyiuATus9hsfpF", "topicName": "DcSDG8aMVGLiBNrD"}' 'jqoxcwgGLXpUL4pp' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "2ncYAHdNzDmeIP6r", "templateLanguage": "OvDz9KOsb392k6Ym", "templateSlug": "JFfRByjlBiuFM3FI"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"oVk8T3GpAnkCmBUq": "g2SCnqntX9y1aZSW", "MiVi10sG6vxkfUcm": "qRRbceJ5i0EeDxOg", "BnhhqElIaDml48wd": "NFLTm5T50x9WT0Gf"}, "templateLanguage": "H2rtOa4EXsXzOXQA", "templateSlug": "k4mqrxzTtuLl4Xlb", "topicName": "GL8QOxtjzm8y2wNh"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'mwoYZyI4EFZKBcYr' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'CEAE7WIsfmx40NLR' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'c6m8heKnWhzfe2Nu' 'beoKFeIaFQCYoDPI' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "CpnduEEQlULdJz4m"}' 'nRBkMNxvvKgAT8mJ' 'rYq6hRkloqxM3gpw' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'xcfMy9XzjjI5YbsK' 'oADkzJEN2VHzih3b' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'it0VWn3CO39PXDNx' 'tXgeO3FgkXhjDzaQ' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "Y3snn2ZkP7cFdP43", "topicName": "e5dC9XIBudfZgrbH"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'DIDm4hMzF4Txoden' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "SrUTvfqU0bfoMm5c"}' 'TtFWbotQyXJRcQWs' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'mqPNs92epxk0i8Vx' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "sZNereSvf9699mCE", "topicName": "HThUJkETAsSp7gh4"}' 'TeUTkOkAYfJB8AT9' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"t4Tv207Y2QD3oD5f": "LCr3OOlXVv8ZGF7u", "YnGzpipNDigNJma1": "MbqqZtfNWql4nmwA", "ft4gqkNNlWkD9eOz": "iYRFOn0jJLHC9Lxh"}, "templateLanguage": "vNXTwGBCtohLtl9Z", "templateSlug": "uhytm5UDrT6QXCs5", "topicName": "SPBbRPZTF6oQAXVG"}' '7tnsZg5QgXjvyGJP' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'N4eXbJE5Vs2Gcyom' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"QoIXimBJehyxlNsj": {}, "UgxBkF6wFPoJeQed": {}, "iogEhhM2rIizGdKv": {}}, "updatedAt": 83}' 'TrDzZSKscfOcYu3d' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'pCROYqUiGKXVFCmp' 'o6sPwVOEDSJsEK5Q' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'pNhlI2iS5EpGhhvX' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["Yck0upMzUYnb76tF", "kEORV3bu1bNCtX7W", "40V6Do5sYadCCFrH"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'HC3DpZxkrQDXuNFv' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"iMarv8mnfHK8CCmE": "2lPnsbD3SGEdlwuU", "ccE536ugBp3HBvep": "nDCjgyJlXe36mgWj", "LfFmteue9nzJ6fH2": "4T805tVg8JqU0jZp"}}' 'jvsugAOS7u8RiWye' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'rCSa8SRgwsAj1ik1' 'jglaDXTvKCWwNTAh' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'd2wrS0uPdjhdinpn' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'g5BLy8wbhMssAHja' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["pIkY9Rf4wP57dBZN", "R88YbCtmKy8M9zVr", "jfGXZnqAQUoY1Gjl"]}' 'IIk0iKoTTS1j02o7' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "JjTXAQN0qdskdQV0"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'TqI8EFnmDbxIxi4Y' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "KlONk2Q5Y4Jvaizw", "note": "iilatuUjjt9lIMGq"}' 'l5ElEa9EIIlGcHB3' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "CfR3ncDlwi3v3MFF", "note": "J1KesKoELCpobBEG"}, {"filter": "8X645xpdXpai0rYa", "note": "T5hOPjaf3H0tYigh"}, {"filter": "U0VUfcYHJbBfAKSi", "note": "PW3VgsZXiR1DJ7HV"}]}' 'WqMkNSawQUWDFJvJ' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[55, 34, 99]' '8PdH6hJPUAc0RVwX' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "gAgntLMCuaXBWQi6"}' 'BqPg4xr0lCancUZG' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": true, "name": "IPkhSgORcz5S5Bvm"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": true, "newName": "5uvuKNuy0ytZQ7M6"}' 'Nzy1adnSKOLFKx1d' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'X4LuWJu3pDMUAeeZ' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "97SBROPYuG6XqP6o"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "o7G73zdxTgOfnwId", "profanityLevel": "lNa29fDLh741IslK"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "HzGlLKWUtDQs61OQ"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "AoxyyQpRWCiiPDGQ"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'hNPEwiJCf2XJVrlz' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"qQls1ozhLVA3kE8j": {}, "KvgatOEBM70TdlNB": {}, "JYOmpu1VCarzBsV6": {}}, "updatedAt": 48}' '1I98jeZQ7hfxnhLd' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 97}' 'Knaknoed9DHhLOqQ' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'GhCUr6iTrjyEgarA' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "dNJOIG36I6tRbRcr", "topic": "EveMdAdiPKDUVSC0"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"0PYeDcagginxnFIn": "a3yddcbsPheTH26I", "UJNvYuGRUvpZaHCu": "ESOiIZsMfB4ZH3mt", "gWgU4pCAKxeE70Ca": "unQNxot371W9G4Av"}, "templateLanguage": "QkqsGnmyo5JJTUVm", "templateSlug": "b8GEXFTlEMEsFzYq", "topic": "wgK1Np5nodqpLm7F"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "hJBNXzAFdO0Khqf6", "templateLanguage": "kiTdSGv2LFjAKY7C", "templateSlug": "bgsWqFWZX7kPBom8"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'F9GLLTG8phc3n4iL' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'oIllKlpO2pqiXJF3' --login_with_auth "Bearer foo"
lobby-get-localization-template 'WGRaoQomSJC4DdrK' 'F7SUQPLG59e0k5Zt' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "X6wK7PpUlcIW32iK"}' '7MGt1ixY5rA1WoVe' 'JIePF8ZrQzP4zvtd' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'xdbZUpd6FJtHJ1py' 'VwyKQLY6FEO65Rb3' --login_with_auth "Bearer foo"
lobby-publish-template 'z7CYLM8IlsHqffnr' 'fsGlfPaZKBwa3Ddb' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "60ufPpzwj1QGIFml", "topic": "Vf4jvapseE9LN9bv"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'hOrHflIOd6X3viLv' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "tEk4mTIpUA9gxo8S"}' 'V38nEhoXmM2W7l6j' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'HMA2rG3nakopAywe' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "lu01nryEJ0NqoTow", "topic": "0qiOiC4j0iktm0ZP"}' 'LkLOsp0LZ5njN86H' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"l8kUXzt6bSc6bWvg": "pVyW9dD1kOmvrAej", "cq2LgkQuaS7RBx3v": "im02jBOxrZDyvpcL", "YOWA8NjxOnaEok4n": "OOCzfsflhjbngJOU"}, "templateLanguage": "n18G5MlfDTk8aG40", "templateSlug": "NlncceIZSwgAIkgz", "topic": "h4pTU0Am4DZhl0bQ"}' 'xFJ3sWCqQpQ2FbKP' --login_with_auth "Bearer foo"
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
echo "1..100"

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
    '{"friendId": "FMycMSQ4qfAacR0L", "friendPublicId": "gB5BUXvjcu2s6w3V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "ifnKqmTSoGH1XEfY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "6QAYn6WQ5UBEU1QA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "OHfZiGhxOdcuDXSx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'Sc3aZPV87pna08gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "efTYKhuxaEc7M4P7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["UckSC6ePeN8i4GrF", "ES9z7xueHpATHcce", "e9GXhKcjmSEwdrkE"]}' \
    'nnqKzFsLfYalUlfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["EQKjU7eHGebSVu0L", "Q40kepEaC4dfiOMZ", "fEhHr39pysFO3Zvc"]}' \
    '1BZG99LyvfvHEsJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": true, "platformId": "ewVLMUoAnaRcYp7F", "platformToken": "UjfIGaffoflEIByY", "psnEnv": "qeKN0meGelYF5wWa"}, {"isLogin": true, "platformId": "alncV7vWgSHdfo07", "platformToken": "UctPErqxyMyOK06M", "psnEnv": "qQBErxgjVBycvU4P"}, {"isLogin": false, "platformId": "oO05oKqymxLD1Lcv", "platformToken": "w6T6mZEiwxxElpMY", "psnEnv": "SWIeVzm7z9noowml"}]' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 29, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 47, "chatRateLimitDuration": 64, "concurrentUsersLimit": 16, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "VN4ZONJREdUQ3z9F", "generalRateLimitBurst": 56, "generalRateLimitDuration": 61, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 93, "maxFriendsLimit": 81, "maxPartyMember": 40, "profanityFilter": false, "readyConsentTimeout": 25, "unregisterDelay": 27}' \
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
    'Gukz3MnlrjcHp6B8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'Vj7rXFgDnDkdZ9bp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'jb1tdA3QhjCMW64f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 AdminGetGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-get-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetGlobalConfig' test.out

#- 26 AdminUpdateGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-update-global-config' \
    '{"regionRetryMapping": {"4XhIjSoTB2NMKtez": ["apPr2QEPx3zTxBGt", "EJIYppuUSsKoHw2h", "yd12uSE7BEv3aevq"], "6iohU1cg4W1IS3Uv": ["1BpWoJBaqdg2FHcu", "nsS1lnaO2m9vqjhb", "eK2qN8g6x2PyYDo5"], "R3hLiD5sf5y1JsxJ": ["NGmyt0SQDUDoWBZV", "GLlkUetzCAWc9x1a", "MjgGim51T107XIZR"]}, "regionURLMapping": ["Z7tZdIs0xf4czdt7", "zqmSKxOEQlVcx6Gq", "sBq8vdhWVnuYLgpZ"], "testGameMode": "ehK0G2nmyuViB9kR", "testRegionURLMapping": ["TcSQdTnNYGeAfYFG", "3wSkHKufBdS3ZOok", "ZB4cXnAXyuGz6Llx"], "testTargetUserIDs": ["Hv8SwyagYvDJ3w3U", "NgIGj2jZtEYT8sIP", "SE1XXPzySa0sZoFS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdateGlobalConfig' test.out

#- 27 AdminDeleteGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-delete-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGlobalConfig' test.out

#- 28 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "6xCOWMpyh9pMsQgb", "topicName": "64ELbzDMwyo4nIRy", "userIds": ["sQdbufXjYnSoIFeo", "uC2m38kXrDZWlGVE", "9sJ4NpUtKp6M9I6n"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 29 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "EwnZhsjwJeGwaPSD", "topicName": "MZz95OYKiqaZD63x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SendUsersFreeformNotificationV1Admin' test.out

#- 30 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "e5rruJVfLGea0Ztl", "topicName": "zUcuHAXz0UV31Mfu"}' \
    'GaXsAuGsZaSHevO0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'SendPartyFreeformNotificationV1Admin' test.out

#- 31 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"TQNEI3kfabxJWWSI": "1ECUo1NPpeFhUztX", "DgB7n4C97uAPP8PA": "TLpUpxeJlsBJT6Hh", "3OMjAjq2mK8lbSEE": "elxnb5QxWG2HFnZl"}, "templateLanguage": "A6HKWW4fI1IQcoBQ", "templateSlug": "ELcNlZkqTZrKgXNw", "topicName": "vm4e5GX6H742Oixh"}' \
    'tAoKiVm6URT95Xhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SendPartyTemplatedNotificationV1Admin' test.out

#- 32 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetAllNotificationTemplatesV1Admin' test.out

#- 33 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "UcvWB28MpusuhhDJ", "templateLanguage": "5slzgiWZEtyd56Lf", "templateSlug": "xnbY97jjYgXchCbk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateNotificationTemplateV1Admin' test.out

#- 34 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"XX26uEdCfQaMAQuT": "KfC0I2kNjCMDtDMr", "entgn3DhqciwIeSh": "F9RKb9vvxuJlhXbW", "hbwPwToC6knjVwVn": "zaqSfJiQFC2gXoda"}, "templateLanguage": "0kg16yUSpSOAjHJW", "templateSlug": "wfCjYwWkLob9gKLq", "topicName": "s2nEZhpByfHZinxN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'SendUsersTemplatedNotificationV1Admin' test.out

#- 35 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'fgPAwkMBsznlBUqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 36 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'LT4AbGptKaWNvPbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 37 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'g7yrRvXfZ6rvgvEY' \
    '3Hht1SwqTsKKKo37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetSingleTemplateLocalizationV1Admin' test.out

#- 38 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "NHDOQe91Ps3ztUIV"}' \
    '0dS6hIH9c4Vfkyrw' \
    'puXxbaERbfgPmi0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateTemplateLocalizationV1Admin' test.out

#- 39 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'Hkt1mr9EOIFg0dnW' \
    'IYN2NVL70Iw157g0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteTemplateLocalizationV1Admin' test.out

#- 40 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    '0jr9b8MuYmmeKTmB' \
    'NvGYxEQdf3ewoGGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublishTemplateLocalizationV1Admin' test.out

#- 41 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetAllNotificationTopicsV1Admin' test.out

#- 42 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "Y7xmFNAmjDDCvs78", "topicName": "mcMdiS76YApGJ9uf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CreateNotificationTopicV1Admin' test.out

#- 43 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'wLYkqIgLuZS6hsQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetNotificationTopicV1Admin' test.out

#- 44 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "yiEtOAbpeUNf26Uq"}' \
    'kCfgCUYBn2xaOBdP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdateNotificationTopicV1Admin' test.out

#- 45 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'F0JmX8qwU1cTuHHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'DeleteNotificationTopicV1Admin' test.out

#- 46 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "B5S3DvPRCzBrVUxm", "topicName": "DOj3cvRFaTC11W0T"}' \
    'GTCm4fZWuk6pQxDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 47 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"pKqxLGeMvr9TsvcM": "Q7dBsaIecRxIsZvD", "6rmzVr5XT1Nxw0v1": "dMQ9Rrbk6C2cVWf6", "ttvbU1PO6ApCD2VX": "idT7w0Oc15N8WXBP"}, "templateLanguage": "p17PAewqSm5x3B4t", "templateSlug": "7WQnp8jXZedgt5cy", "topicName": "Ne27HLtwtVOaxgP6"}' \
    'Jbct8puMybYGxD9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 48 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'PmmsLmu3kaPj0O4z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPartyDataV1' test.out

#- 49 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"d8Tb7cUNGPTBxiFF": {}, "Crn7djjs69FTFVGU": {}, "VhvKhJCmeisql14m": {}}, "updatedAt": 96}' \
    'cokKwcQ0baDT9OyJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdatePartyAttributesV1' test.out

#- 50 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    '2h23GUS2amU7syGl' \
    'ElXdEAOrVSnLocLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminJoinPartyV1' test.out

#- 51 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'VYamQc4wcG5nDBLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetUserPartyV1' test.out

#- 52 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetLobbyCCU' test.out

#- 53 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["oJHbiQ5duE5p4cfs", "2E41cK8QTwiIAvxS", "vNDlmM5nQFMGzs7f"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 54 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'zjgyc44mEh9tRk8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetAllPlayerSessionAttribute' test.out

#- 55 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"nYSV30lnroQehMDl": "i6t9unQLYXxm09wp", "GAbpEmDY9vLh3u6E": "DsUmrV6kH4OotKwG", "3UC6XCnnZxF8CmQr": "17W65br34rBBN9tU"}}' \
    '6TDm5GloFSKWM1ey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminSetPlayerSessionAttribute' test.out

#- 56 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'm5ydC6p25xCWTqUO' \
    'YZENJ1QHZQxPRXH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'uxBJEECQE1li3Bg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerBlockedPlayersV1' test.out

#- 58 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'Jxc9pUnZmvhidwCk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 59 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["ZwqjYLfTiCO1NDBv", "QvRPnAz4VzW0CpoB", "CbyJsF5IjF1c0W33"]}' \
    '8HS6CBgVRyihYNZ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminBulkBlockPlayersV1' test.out

#- 60 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "4CVhziXV8HwSmvcv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminDebugProfanityFilters' test.out

#- 61 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'cDKF19yVRafCjOuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityListFiltersV1' test.out

#- 62 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "Yht83AdvBaagTiRJ", "note": "8daGTVX3Bb7jlz5I"}' \
    'fHgKjI9mwJSrN8jk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminAddProfanityFilterIntoList' test.out

#- 63 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "IykR2zbaI6PD7fEs", "note": "cShnGUGUtV9GJ279"}, {"filter": "GDbLNwjm3FK0nnX2", "note": "poMfZ1hDHtbh4HtM"}, {"filter": "lFgvh2Dp2SoiIPp1", "note": "yvfAHS0VgLu11A3H"}]}' \
    'TovFi4tPAGfleyCA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilters' test.out

#- 64 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[71, 19, 63]' \
    'eAg79HcLJXJ7mpVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminImportProfanityFiltersFromFile' test.out

#- 65 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "6eTYAjdPlCiQQC35"}' \
    'cj4KyOVgvnWbfRJt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityFilter' test.out

#- 66 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityLists' test.out

#- 67 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "name": "B7cUQZ2QUAxJrINP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminCreateProfanityList' test.out

#- 68 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "newName": "pPNO3AfmXcgwC3IN"}' \
    '6tvKgLB9QmJIOq9d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminUpdateProfanityList' test.out

#- 69 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'P5szG71utjsQ4CrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminDeleteProfanityList' test.out

#- 70 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminGetProfanityRule' test.out

#- 71 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "b9gUCeVz7fWbZIdh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminSetProfanityRuleForNamespace' test.out

#- 72 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "evfZvyV7AcodcZwK", "profanityLevel": "jYDdmJOlzwm9Su4F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminVerifyMessageProfanityResponse' test.out

#- 73 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminGetThirdPartyConfig' test.out

#- 74 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "nS98QqftSjq7sn8y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'AdminUpdateThirdPartyConfig' test.out

#- 75 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "reciPLfkVyyJsbGp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AdminCreateThirdPartyConfig' test.out

#- 76 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'AdminDeleteThirdPartyConfig' test.out

#- 77 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetMessages' test.out

#- 78 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'O6JgehDJxEN7JlZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPartyDataV1' test.out

#- 79 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"8LMq1o2jZWu4yA3r": {}, "0u4q1bTHXIjfJKyF": {}, "lM0u1uuoVdn9yVoS": {}}, "updatedAt": 23}' \
    'f5KwMZQjzvjSozv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdatePartyAttributesV1' test.out

#- 80 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 59}' \
    'GdqLE8SohhhuiTnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicSetPartyLimitV1' test.out

#- 81 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicGetPlayerBlockedPlayersV1' test.out

#- 82 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 83 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'arYYkHBDdSzBXdxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UsersPresenceHandlerV1' test.out

#- 84 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "pwhd5IQYBQuxLvPu", "topic": "WYvE3fsNy9Z9OhxX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'FreeFormNotification' test.out

#- 85 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"vCp9y7fLD2qfCXnl": "UnqxT1WsRNMZcA92", "hzC7MNa8vVe4MHX6": "AgMep90AyyUJyAK5", "PRMRMwdvl0hv6g62": "GxBW2tQF5tkTjgJa"}, "templateLanguage": "MYvNQOsDa4bkcgep", "templateSlug": "qtxjbrztee7QLTGA", "topic": "ak7Kaol01DK97D2x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'NotificationWithTemplate' test.out

#- 86 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetGameTemplate' test.out

#- 87 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "nik42miteR5eQAe1", "templateLanguage": "rzmmgqBPRmd6mO4o", "templateSlug": "I8KDqebm83raNBJ5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTemplate' test.out

#- 88 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'y7axEkvI4oxZEDxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetSlugTemplate' test.out

#- 89 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'iBnNbn0zaf7CaOSl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateSlug' test.out

#- 90 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'HXrUSA6sMJzA5mtq' \
    'ISQ83TTbtefXWznD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetLocalizationTemplate' test.out

#- 91 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "e4LQdXfFBii2RAME"}' \
    'X5RMjBFVZGYzQqV8' \
    'd9mDdUIoiIJFNxuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateLocalizationTemplate' test.out

#- 92 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'OmUSWw18T1IxVWCx' \
    'dvPL9e4P01vxP8xj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateLocalization' test.out

#- 93 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '1LyEirURERnEMzpI' \
    'mW6sjAHyCK5tNanG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublishTemplate' test.out

#- 94 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetTopicByNamespace' test.out

#- 95 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "BrkzUvck3xTtmOFM", "topic": "ebS4AdlNzwog2IhE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'CreateTopic' test.out

#- 96 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'rkNhNcECWwchW6zL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetTopicByTopicName' test.out

#- 97 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "9SkbLlrNXnGanMaz"}' \
    'b8jvRWenURH48aJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateTopicByTopicName' test.out

#- 98 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'ALEcSqcE15u6D31D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteTopicByTopicName' test.out

#- 99 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "jOsrs3CUYATdqnQG", "topic": "bqiqOkNeATj7eGjo"}' \
    'dd7CcJUrI6MAugK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'FreeFormNotificationByUserID' test.out

#- 100 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"kypNrp2nFe9FmN86": "sK5LOq4ft5jGcMIC", "PUYnfG6jl9U4jRet": "eIMgzISomCsodJrh", "QW41q2OspCZbt3Ut": "a5I0uGcL1koyHjCH"}, "templateLanguage": "5olYLETRpABAmO2E", "templateSlug": "GvJ4UMS93yOxNInD", "topic": "ByhnoluO6ti0QP2s"}' \
    'siJ66OzOj84O6tgo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
