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
lobby-admin-list-friends-of-friends 'tPYokahFjkQsfCaT' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests 'mt1d67FXGk2s9Q0m' --login_with_auth "Bearer foo"
lobby-admin-get-global-config --login_with_auth "Bearer foo"
lobby-admin-update-global-config '{"regionRetryMapping": {"PVo3twu0MesTCf9x": ["4rt69lna7qxNeIxP", "z6MbwL6IY69z1UaL", "qYSYWytLPziZMdjx"], "cBZufQxGiHPllG4c": ["YEzfTD1ZBm3MqHcU", "mLZZbSqb8RwNmn9H", "rNQy4uZAAiE0mit9"], "RGCCHYzUOcEdscKH": ["PEqgA8yu7Vk6Jt4Y", "mos9Jcdos4fYcTVU", "6RBt0zYoMcHyCUEX"]}, "regionURLMapping": ["lAvxJMdalwSyliWM", "NW5NyLu0M3VHh2EI", "8JlDbPWbQ6Q9lNmq"], "testGameMode": "RBaAkLnvxkT1X68c", "testRegionURLMapping": ["mDc3fxU8MyKrQpM4", "hkkK6KKXNB3Gv0Iq", "mF51TkhjYnaq6foW"], "testTargetUserIDs": ["vXa3bMrXsDr6kILs", "SSyDdmykmoPYgc2L", "4jk4Lo0LSP0pf4Ix"]}' --login_with_auth "Bearer foo"
lobby-admin-delete-global-config --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "jUkl535X3ateEKDp", "topicName": "ADz1x3poD3Qgb3bo", "userIds": ["LQQ1MzH7Qm8bwbmX", "gdAPh1EThG96gAFK", "K2WDgCcxvONZm3Ee"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "ERmDnyeFoF7VSZ6p", "topicName": "f3vneSD2Tb3g7mSQ"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "UhAEtrmjqU6YE3p4", "topicName": "lSck0ZHn5GI39YBH"}' 'qaTHeKtW18iGeUlc' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"9d9sogWa24CKNS0G": "qVvUfHQvsHXNUNe4", "mhgo5QB65lSAiYnN": "jkfZrQvGgbLdLsFz", "HkBMr1yrOMlNFSrU": "EirnjX9fDmIbeZxz"}, "templateLanguage": "fTcyiuATus9hsfpF", "templateSlug": "DcSDG8aMVGLiBNrD", "topicName": "jqoxcwgGLXpUL4pp"}' '2ncYAHdNzDmeIP6r' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "OvDz9KOsb392k6Ym", "templateLanguage": "JFfRByjlBiuFM3FI", "templateSlug": "oVk8T3GpAnkCmBUq"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"g2SCnqntX9y1aZSW": "MiVi10sG6vxkfUcm", "qRRbceJ5i0EeDxOg": "BnhhqElIaDml48wd", "NFLTm5T50x9WT0Gf": "H2rtOa4EXsXzOXQA"}, "templateLanguage": "k4mqrxzTtuLl4Xlb", "templateSlug": "GL8QOxtjzm8y2wNh", "topicName": "mwoYZyI4EFZKBcYr"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'CEAE7WIsfmx40NLR' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'c6m8heKnWhzfe2Nu' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'beoKFeIaFQCYoDPI' 'CpnduEEQlULdJz4m' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "nRBkMNxvvKgAT8mJ"}' 'rYq6hRkloqxM3gpw' 'xcfMy9XzjjI5YbsK' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'oADkzJEN2VHzih3b' 'it0VWn3CO39PXDNx' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'tXgeO3FgkXhjDzaQ' 'Y3snn2ZkP7cFdP43' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "e5dC9XIBudfZgrbH", "topicName": "DIDm4hMzF4Txoden"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'SrUTvfqU0bfoMm5c' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "TtFWbotQyXJRcQWs"}' 'mqPNs92epxk0i8Vx' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'sZNereSvf9699mCE' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "HThUJkETAsSp7gh4", "topicName": "TeUTkOkAYfJB8AT9"}' 't4Tv207Y2QD3oD5f' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"LCr3OOlXVv8ZGF7u": "YnGzpipNDigNJma1", "MbqqZtfNWql4nmwA": "ft4gqkNNlWkD9eOz", "iYRFOn0jJLHC9Lxh": "vNXTwGBCtohLtl9Z"}, "templateLanguage": "uhytm5UDrT6QXCs5", "templateSlug": "SPBbRPZTF6oQAXVG", "topicName": "7tnsZg5QgXjvyGJP"}' 'N4eXbJE5Vs2Gcyom' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'QoIXimBJehyxlNsj' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"UgxBkF6wFPoJeQed": {}, "iogEhhM2rIizGdKv": {}, "OPdq5xrgxSmy1DN9": {}}, "updatedAt": 77}' 'pCROYqUiGKXVFCmp' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'o6sPwVOEDSJsEK5Q' 'pNhlI2iS5EpGhhvX' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'Yck0upMzUYnb76tF' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["kEORV3bu1bNCtX7W", "40V6Do5sYadCCFrH", "HC3DpZxkrQDXuNFv"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'iMarv8mnfHK8CCmE' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"2lPnsbD3SGEdlwuU": "ccE536ugBp3HBvep", "nDCjgyJlXe36mgWj": "LfFmteue9nzJ6fH2", "4T805tVg8JqU0jZp": "jvsugAOS7u8RiWye"}}' 'rCSa8SRgwsAj1ik1' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'jglaDXTvKCWwNTAh' 'd2wrS0uPdjhdinpn' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'g5BLy8wbhMssAHja' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'pIkY9Rf4wP57dBZN' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["R88YbCtmKy8M9zVr", "jfGXZnqAQUoY1Gjl", "IIk0iKoTTS1j02o7"]}' 'JjTXAQN0qdskdQV0' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "TqI8EFnmDbxIxi4Y"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'KlONk2Q5Y4Jvaizw' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "iilatuUjjt9lIMGq", "note": "l5ElEa9EIIlGcHB3"}' 'CfR3ncDlwi3v3MFF' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "J1KesKoELCpobBEG", "note": "8X645xpdXpai0rYa"}, {"filter": "T5hOPjaf3H0tYigh", "note": "U0VUfcYHJbBfAKSi"}, {"filter": "PW3VgsZXiR1DJ7HV", "note": "WqMkNSawQUWDFJvJ"}]}' 'BWic7UkBeIXuqDuA' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[70, 14, 54]' '6bQ71w0deoV9Lx5R' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "DA1l2XcrciYNEzvS"}' 'ZIPkhSgORcz5S5Bv' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "gBLxh4ijFnE3Tam6"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": true, "newName": "Z7PC6f6QkmZXElW9"}' 'YfRSse6AAz3S4czz' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list '0QKFlAVmVLu4AOec' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "0z8eBeeoip68J1ns"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "v4W2OJhtafxMSJlH", "profanityLevel": "eb34sZKHcl5LLLOe"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "xL4fZvWtND2tcBFp"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "X8lNtFEJ7tnkY6Mc"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'a5afj12K2IzrBvvW' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"m4udE0OXudXgNne8": {}, "kJATwlc6esUp6Sw1": {}, "I98jeZQ7hfxnhLd3": {}}, "updatedAt": 75}' 'G8SWP3glU6muswVJ' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 28}' 'hCUr6iTrjyEgarAd' --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "NJOIG36I6tRbRcrE"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "veMdAdiPKDUVSC00"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'PYeDcagginxnFIna' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "3yddcbsPheTH26IU", "topic": "JNvYuGRUvpZaHCuE"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"SOiIZsMfB4ZH3mtg": "WgU4pCAKxeE70Cau", "nQNxot371W9G4AvQ": "kqsGnmyo5JJTUVmb", "8GEXFTlEMEsFzYqw": "gK1Np5nodqpLm7Fh"}, "templateLanguage": "JBNXzAFdO0Khqf6k", "templateSlug": "iTdSGv2LFjAKY7Cb", "topic": "gsWqFWZX7kPBom8F"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "9GLLTG8phc3n4iLo", "templateLanguage": "IllKlpO2pqiXJF3W", "templateSlug": "GRaoQomSJC4DdrKF"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '7SUQPLG59e0k5ZtX' --login_with_auth "Bearer foo"
lobby-delete-template-slug '6wK7PpUlcIW32iK7' --login_with_auth "Bearer foo"
lobby-get-localization-template 'MGt1ixY5rA1WoVeJ' 'IePF8ZrQzP4zvtdx' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "dbZUpd6FJtHJ1pyV"}' 'wyKQLY6FEO65Rb3z' '7CYLM8IlsHqffnrf' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'sGlfPaZKBwa3Ddb6' '0ufPpzwj1QGIFmlV' --login_with_auth "Bearer foo"
lobby-publish-template 'f4jvapseE9LN9bvh' 'OrHflIOd6X3viLvt' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "Ek4mTIpUA9gxo8SV", "topic": "38nEhoXmM2W7l6jH"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'MA2rG3nakopAywel' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "u01nryEJ0NqoTow0"}' 'qiOiC4j0iktm0ZPL' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'kLOsp0LZ5njN86Hl' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "8kUXzt6bSc6bWvgp", "topic": "VyW9dD1kOmvrAejc"}' 'q2LgkQuaS7RBx3vi' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"m02jBOxrZDyvpcLY": "OWA8NjxOnaEok4nO", "OCzfsflhjbngJOUn": "18G5MlfDTk8aG40N", "lncceIZSwgAIkgzh": "4pTU0Am4DZhl0bQx"}, "templateLanguage": "FJ3sWCqQpQ2FbKPF", "templateSlug": "MycMSQ4qfAacR0Lg", "topic": "B5BUXvjcu2s6w3Vi"}' 'fnKqmTSoGH1XEfY6' --login_with_auth "Bearer foo"
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
echo "1..103"

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
    '{"friendId": "QAYn6WQ5UBEU1QAO", "friendPublicId": "HfZiGhxOdcuDXSxS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "c3aZPV87pna08gxe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "fTYKhuxaEc7M4P7U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "ckSC6ePeN8i4GrFE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'S9z7xueHpATHccee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "9GXhKcjmSEwdrkEn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["nqKzFsLfYalUlfwE", "QKjU7eHGebSVu0LQ", "40kepEaC4dfiOMZf"]}' \
    'EhHr39pysFO3Zvc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["BZG99LyvfvHEsJKQ", "QewVLMUoAnaRcYp7", "FUjfIGaffoflEIBy"]}' \
    'YqeKN0meGelYF5wW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": false, "platformId": "8alncV7vWgSHdfo0", "platformToken": "7UctPErqxyMyOK06", "psnEnv": "MqQBErxgjVBycvU4"}, {"isLogin": false, "platformId": "bmRDcrg0DjQjBECX", "platformToken": "vea7H1m2lJFRZ3Zp", "psnEnv": "rZ60zMjhTHeh94TS"}, {"isLogin": false, "platformId": "TIKVowi0RY2VN4ZO", "platformToken": "NJREdUQ3z9F1BxNN", "psnEnv": "gnke4akncw7wu9Tm"}]' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 36, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 64, "chatRateLimitDuration": 49, "concurrentUsersLimit": 14, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "DkdZ9bpjb1tdA3Qh", "generalRateLimitBurst": 18, "generalRateLimitDuration": 40, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 43, "maxFriendsLimit": 78, "maxPartyMember": 35, "profanityFilter": false, "readyConsentTimeout": 10, "unregisterDelay": 14}' \
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
    '4XhIjSoTB2NMKtez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'apPr2QEPx3zTxBGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'EJIYppuUSsKoHw2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminListFriendsOfFriends' test.out

#- 25 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'yd12uSE7BEv3aevq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetOutgoingFriendRequests' test.out

#- 26 AdminGetGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-get-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetGlobalConfig' test.out

#- 27 AdminUpdateGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-update-global-config' \
    '{"regionRetryMapping": {"6iohU1cg4W1IS3Uv": ["1BpWoJBaqdg2FHcu", "nsS1lnaO2m9vqjhb", "eK2qN8g6x2PyYDo5"], "R3hLiD5sf5y1JsxJ": ["NGmyt0SQDUDoWBZV", "GLlkUetzCAWc9x1a", "MjgGim51T107XIZR"], "Z7tZdIs0xf4czdt7": ["zqmSKxOEQlVcx6Gq", "sBq8vdhWVnuYLgpZ", "ehK0G2nmyuViB9kR"]}, "regionURLMapping": ["TcSQdTnNYGeAfYFG", "3wSkHKufBdS3ZOok", "ZB4cXnAXyuGz6Llx"], "testGameMode": "Hv8SwyagYvDJ3w3U", "testRegionURLMapping": ["NgIGj2jZtEYT8sIP", "SE1XXPzySa0sZoFS", "6xCOWMpyh9pMsQgb"], "testTargetUserIDs": ["64ELbzDMwyo4nIRy", "sQdbufXjYnSoIFeo", "uC2m38kXrDZWlGVE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGlobalConfig' test.out

#- 28 AdminDeleteGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-delete-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteGlobalConfig' test.out

#- 29 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "9sJ4NpUtKp6M9I6n", "topicName": "EwnZhsjwJeGwaPSD", "userIds": ["MZz95OYKiqaZD63x", "e5rruJVfLGea0Ztl", "zUcuHAXz0UV31Mfu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 30 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "GaXsAuGsZaSHevO0", "topicName": "TQNEI3kfabxJWWSI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'SendUsersFreeformNotificationV1Admin' test.out

#- 31 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "1ECUo1NPpeFhUztX", "topicName": "DgB7n4C97uAPP8PA"}' \
    'TLpUpxeJlsBJT6Hh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SendPartyFreeformNotificationV1Admin' test.out

#- 32 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"3OMjAjq2mK8lbSEE": "elxnb5QxWG2HFnZl", "A6HKWW4fI1IQcoBQ": "ELcNlZkqTZrKgXNw", "vm4e5GX6H742Oixh": "tAoKiVm6URT95Xhn"}, "templateLanguage": "UcvWB28MpusuhhDJ", "templateSlug": "5slzgiWZEtyd56Lf", "topicName": "xnbY97jjYgXchCbk"}' \
    'XX26uEdCfQaMAQuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendPartyTemplatedNotificationV1Admin' test.out

#- 33 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTemplatesV1Admin' test.out

#- 34 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "KfC0I2kNjCMDtDMr", "templateLanguage": "entgn3DhqciwIeSh", "templateSlug": "F9RKb9vvxuJlhXbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTemplateV1Admin' test.out

#- 35 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"hbwPwToC6knjVwVn": "zaqSfJiQFC2gXoda", "0kg16yUSpSOAjHJW": "wfCjYwWkLob9gKLq", "s2nEZhpByfHZinxN": "fgPAwkMBsznlBUqn"}, "templateLanguage": "LT4AbGptKaWNvPbp", "templateSlug": "g7yrRvXfZ6rvgvEY", "topicName": "3Hht1SwqTsKKKo37"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SendUsersTemplatedNotificationV1Admin' test.out

#- 36 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'NHDOQe91Ps3ztUIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 37 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '0dS6hIH9c4Vfkyrw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 38 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'puXxbaERbfgPmi0e' \
    'Hkt1mr9EOIFg0dnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetSingleTemplateLocalizationV1Admin' test.out

#- 39 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "IYN2NVL70Iw157g0"}' \
    '0jr9b8MuYmmeKTmB' \
    'NvGYxEQdf3ewoGGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateTemplateLocalizationV1Admin' test.out

#- 40 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'Y7xmFNAmjDDCvs78' \
    'mcMdiS76YApGJ9uf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTemplateLocalizationV1Admin' test.out

#- 41 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'wLYkqIgLuZS6hsQr' \
    'yiEtOAbpeUNf26Uq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublishTemplateLocalizationV1Admin' test.out

#- 42 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetAllNotificationTopicsV1Admin' test.out

#- 43 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "kCfgCUYBn2xaOBdP", "topicName": "F0JmX8qwU1cTuHHP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'CreateNotificationTopicV1Admin' test.out

#- 44 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'B5S3DvPRCzBrVUxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetNotificationTopicV1Admin' test.out

#- 45 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "DOj3cvRFaTC11W0T"}' \
    'GTCm4fZWuk6pQxDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateNotificationTopicV1Admin' test.out

#- 46 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'pKqxLGeMvr9TsvcM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DeleteNotificationTopicV1Admin' test.out

#- 47 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "Q7dBsaIecRxIsZvD", "topicName": "6rmzVr5XT1Nxw0v1"}' \
    'dMQ9Rrbk6C2cVWf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 48 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"ttvbU1PO6ApCD2VX": "idT7w0Oc15N8WXBP", "p17PAewqSm5x3B4t": "7WQnp8jXZedgt5cy", "Ne27HLtwtVOaxgP6": "Jbct8puMybYGxD9I"}, "templateLanguage": "PmmsLmu3kaPj0O4z", "templateSlug": "d8Tb7cUNGPTBxiFF", "topicName": "Crn7djjs69FTFVGU"}' \
    'VhvKhJCmeisql14m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 49 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'UHVbMPimNhcZsU3V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPartyDataV1' test.out

#- 50 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"AdMDcb4qlkiFAamq": {}, "vZI2KwjqPBiWXade": {}, "41s3rH34mB2yPlRp": {}}, "updatedAt": 100}' \
    'oJHbiQ5duE5p4cfs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdatePartyAttributesV1' test.out

#- 51 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    '2E41cK8QTwiIAvxS' \
    'vNDlmM5nQFMGzs7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminJoinPartyV1' test.out

#- 52 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'zjgyc44mEh9tRk8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetUserPartyV1' test.out

#- 53 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetLobbyCCU' test.out

#- 54 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["nYSV30lnroQehMDl", "i6t9unQLYXxm09wp", "GAbpEmDY9vLh3u6E"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 55 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'DsUmrV6kH4OotKwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetAllPlayerSessionAttribute' test.out

#- 56 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"3UC6XCnnZxF8CmQr": "17W65br34rBBN9tU", "6TDm5GloFSKWM1ey": "m5ydC6p25xCWTqUO", "YZENJ1QHZQxPRXH7": "uxBJEECQE1li3Bg7"}}' \
    'Jxc9pUnZmvhidwCk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminSetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'ZwqjYLfTiCO1NDBv' \
    'QvRPnAz4VzW0CpoB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'CbyJsF5IjF1c0W33' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedPlayersV1' test.out

#- 59 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    '8HS6CBgVRyihYNZ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 60 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["4CVhziXV8HwSmvcv", "cDKF19yVRafCjOuS", "Yht83AdvBaagTiRJ"]}' \
    '8daGTVX3Bb7jlz5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminBulkBlockPlayersV1' test.out

#- 61 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "fHgKjI9mwJSrN8jk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminDebugProfanityFilters' test.out

#- 62 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'IykR2zbaI6PD7fEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityListFiltersV1' test.out

#- 63 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "cShnGUGUtV9GJ279", "note": "GDbLNwjm3FK0nnX2"}' \
    'poMfZ1hDHtbh4HtM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilterIntoList' test.out

#- 64 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "lFgvh2Dp2SoiIPp1", "note": "yvfAHS0VgLu11A3H"}, {"filter": "TovFi4tPAGfleyCA", "note": "6jEtcqsnzoVILjkw"}, {"filter": "W61duF87aUyrdt4X", "note": "SpWBAetsanzqP8ox"}]}' \
    'frtbECD1CYPwaiBA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilters' test.out

#- 65 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[47, 72, 10]' \
    'NPXppPNO3AfmXcgw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminImportProfanityFiltersFromFile' test.out

#- 66 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "C3IN6tvKgLB9QmJI"}' \
    'Oq9dP5szG71utjsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminDeleteProfanityFilter' test.out

#- 67 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminGetProfanityLists' test.out

#- 68 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "name": "M0UHZVNYzGMNIpWo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminCreateProfanityList' test.out

#- 69 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "newName": "kUrfuf4U3WeYeA9t"}' \
    '2ENKKWrFtHIi1CMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateProfanityList' test.out

#- 70 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'KAOG5iDcCR5PbCvD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminDeleteProfanityList' test.out

#- 71 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminGetProfanityRule' test.out

#- 72 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "Lil8wj9cKM3Ar6MF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminSetProfanityRuleForNamespace' test.out

#- 73 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "35hCER4nGmWGgTJf", "profanityLevel": "HlJl4tHGa4XfZcd9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminVerifyMessageProfanityResponse' test.out

#- 74 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'AdminGetThirdPartyConfig' test.out

#- 75 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "CVnGqMX9FieeEssW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AdminUpdateThirdPartyConfig' test.out

#- 76 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "EUl07bhwntCVqiYO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'AdminCreateThirdPartyConfig' test.out

#- 77 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'AdminDeleteThirdPartyConfig' test.out

#- 78 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetMessages' test.out

#- 79 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'Jf5KwMZQjzvjSozv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPartyDataV1' test.out

#- 80 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"6CTRDl0zp9CzHFwi": {}, "nkBNi4gvqgl6TZ9T": {}, "GVPmv34h6T7Esufm": {}}, "updatedAt": 11}' \
    'uWYvE3fsNy9Z9Ohx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdatePartyAttributesV1' test.out

#- 81 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 44}' \
    '3fUSR1l9xLPBsmAU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicSetPartyLimitV1' test.out

#- 82 PublicPlayerBlockPlayersV1
$PYTHON -m $MODULE 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "rD9L1IiD6MlcEPhM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPlayerBlockPlayersV1' test.out

#- 83 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPlayerBlockedPlayersV1' test.out

#- 84 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 85 PublicUnblockPlayerV1
$PYTHON -m $MODULE 'lobby-public-unblock-player-v1' \
    '{"userId": "DFzjHZ3sIhzOx2CX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicUnblockPlayerV1' test.out

#- 86 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'KlvIomU3pIxM9n8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UsersPresenceHandlerV1' test.out

#- 87 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "2eLMe3lt9qfx2UDc", "topic": "gVE7L9FK6e0MrPc4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'FreeFormNotification' test.out

#- 88 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"vtxk9hVKlG56HlzG": "r7XjdyRJunZPkp6c", "cIBnWyPw8mj7gyQ7": "XdIszGRj46COPipH", "1MWVTHG0qHJCWEfO": "JpZm9yEYWNGMy2pg"}, "templateLanguage": "SGSUOK68eqGJtWf1", "templateSlug": "Ybgg8rdwY9bmrvHm", "topic": "O07KNqX9LM2IwEsd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'NotificationWithTemplate' test.out

#- 89 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetGameTemplate' test.out

#- 90 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "OGBXBwnzDX8v3xgC", "templateLanguage": "1Ge9PdbTTAJ2Gp1r", "templateSlug": "0sVZ6LJAOddIL2l3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'CreateTemplate' test.out

#- 91 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'hPjNDKv2LWfXqjr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetSlugTemplate' test.out

#- 92 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'fS79En3wYowBdkaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateSlug' test.out

#- 93 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    '3y6i38XQjLDRqkpi' \
    'FK5BtiQ272Uo9UBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetLocalizationTemplate' test.out

#- 94 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "WodpdwsX1jorcyR0"}' \
    'x3YiHF8ITGPRQBCg' \
    'Is1Q2lzxl0yF5m77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateLocalizationTemplate' test.out

#- 95 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'TTh4gUoj8u2WRcLi' \
    'EtzVlnkflfn7pHY4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteTemplateLocalization' test.out

#- 96 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '8F1dl1q92m3iRlfn' \
    'BAk0CwiAsR65yQ9s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublishTemplate' test.out

#- 97 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetTopicByNamespace' test.out

#- 98 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "suHdGmxncCEr0Kcg", "topic": "eqzGbruNB72HHMkj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'CreateTopic' test.out

#- 99 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'zyBB4UFKiaoV0VOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByTopicName' test.out

#- 100 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "m2yqPsMFxKybPkbu"}' \
    'S6x9cLJ1APnNlsa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateTopicByTopicName' test.out

#- 101 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'bRBr27fVMWuAfDqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteTopicByTopicName' test.out

#- 102 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "MR919IZPKOKiAVQX", "topic": "XOmqFHLbyXmgCNiX"}' \
    'H8uenbC5CphgMwee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'FreeFormNotificationByUserID' test.out

#- 103 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"xsIAP5vHLjBJ9iqM": "cBL4BzhDUjhKPwbw", "cvQU5kG8bXGFmPAn": "OkDiJq4xQye7HqnV", "K3YVeOWs9mfVQh3j": "LBtn9pxpE7BYtzB0"}, "templateLanguage": "B4CxyQrUpIFvORxT", "templateSlug": "i79DpSjb39ukcR6c", "topic": "2E2r3vk3IfAKEbqc"}' \
    'NXSGCCvNowNmdpcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
