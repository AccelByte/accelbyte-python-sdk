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
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 14, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 97, "chatRateLimitDuration": 43, "concurrentUsersLimit": 3, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "szE8GHavj7AorKsx", "generalRateLimitBurst": 46, "generalRateLimitDuration": 35, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 46, "maxFriendsLimit": 29, "maxPartyMember": 29, "profanityFilter": true, "readyConsentTimeout": 54, "unregisterDelay": 97}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'MecdKi5r6QEa1ysL' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'Ezth6mXhzkzWkFeZ' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests 'SoEAcBdW19m4eu6d' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "5tA5jUmiTqpyhPFd", "topicName": "xLzFQN05MYzYiKWe", "userIds": ["5dNRljv7IPrDQQRg", "at0SevkLGMS0lyuI", "9a2I9u6Vpbsx5w8h"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "qUI06UpOXGSLmCVu", "topicName": "HOPlLlkvR8sKgnuR"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "kgghGoYupD391C2q", "topicName": "tPYokahFjkQsfCaT"}' 'mt1d67FXGk2s9Q0m' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"PVo3twu0MesTCf9x": "4rt69lna7qxNeIxP", "z6MbwL6IY69z1UaL": "qYSYWytLPziZMdjx", "cBZufQxGiHPllG4c": "YEzfTD1ZBm3MqHcU"}, "templateLanguage": "mLZZbSqb8RwNmn9H", "templateSlug": "rNQy4uZAAiE0mit9", "topicName": "RGCCHYzUOcEdscKH"}' 'PEqgA8yu7Vk6Jt4Y' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "mos9Jcdos4fYcTVU", "templateLanguage": "6RBt0zYoMcHyCUEX", "templateSlug": "lAvxJMdalwSyliWM"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"NW5NyLu0M3VHh2EI": "8JlDbPWbQ6Q9lNmq", "RBaAkLnvxkT1X68c": "mDc3fxU8MyKrQpM4", "hkkK6KKXNB3Gv0Iq": "mF51TkhjYnaq6foW"}, "templateLanguage": "vXa3bMrXsDr6kILs", "templateSlug": "SSyDdmykmoPYgc2L", "topicName": "4jk4Lo0LSP0pf4Ix"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'jUkl535X3ateEKDp' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'ADz1x3poD3Qgb3bo' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'LQQ1MzH7Qm8bwbmX' 'gdAPh1EThG96gAFK' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "K2WDgCcxvONZm3Ee"}' 'ERmDnyeFoF7VSZ6p' 'f3vneSD2Tb3g7mSQ' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'UhAEtrmjqU6YE3p4' 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'qaTHeKtW18iGeUlc' '9d9sogWa24CKNS0G' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "qVvUfHQvsHXNUNe4", "topicName": "mhgo5QB65lSAiYnN"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'jkfZrQvGgbLdLsFz' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "HkBMr1yrOMlNFSrU"}' 'EirnjX9fDmIbeZxz' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'fTcyiuATus9hsfpF' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "DcSDG8aMVGLiBNrD", "topicName": "jqoxcwgGLXpUL4pp"}' '2ncYAHdNzDmeIP6r' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"OvDz9KOsb392k6Ym": "JFfRByjlBiuFM3FI", "oVk8T3GpAnkCmBUq": "g2SCnqntX9y1aZSW", "MiVi10sG6vxkfUcm": "qRRbceJ5i0EeDxOg"}, "templateLanguage": "BnhhqElIaDml48wd", "templateSlug": "NFLTm5T50x9WT0Gf", "topicName": "H2rtOa4EXsXzOXQA"}' 'k4mqrxzTtuLl4Xlb' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'GL8QOxtjzm8y2wNh' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"mwoYZyI4EFZKBcYr": {}, "CEAE7WIsfmx40NLR": {}, "c6m8heKnWhzfe2Nu": {}}, "updatedAt": 3}' 'Uj7fdgLA84Z8YYk6' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'QEgJjBbEDoNf3n0h' 'EoRCAcf80zfFyabW' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'AgIUXiI07A68eaqC' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["2J9jyEW6GLbc0NaK", "DUL3sa13lk1dQBHO", "86IlBhnetU4RwTqU"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'XlTDBzOuYsaZA2yy' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"d4mbqoOfADMMAXFa": "Y9eKa699bRVhyaKw", "wrAP2aMlu7WtjCto": "YetOO847g8OudOfj", "nCuHZ3c46IjGa23Y": "vYmmDg7VYPXIuvUY"}}' 'TZBRujIUE1Tq5jyA' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'ZvkRCMNFIurjh2im' 'db4rbkXj0ZwsVC0g' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'L97ZVJSPqJiwv1ql' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'YB1RSKs6gQxC3Gb7' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["S0o4zGYY7KQI1AeF", "gPqaOkvo1aolB4lk", "KB4EYOkQ1jMD3cym"]}' '8xIfkOVW2grREOLx' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "0KOww3HICQLfl7MU"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'BG7qtPu64yAtURKL' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "Rkb738HGS6rDgMdI", "note": "IlhS1fSiM9331m7T"}' 'a1PsKc50Kv6ecnEe' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "vcAx2K2zkRenmPZn", "note": "GBt4P7WnbdSJtjX7"}, {"filter": "ZshZyZl5x4bRXBHU", "note": "TrDzZSKscfOcYu3d"}, {"filter": "pCROYqUiGKXVFCmp", "note": "o6sPwVOEDSJsEK5Q"}]}' 'pNhlI2iS5EpGhhvX' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[20, 6, 25]' 'k0upMzUYnb76tFkE' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "ORV3bu1bNCtX7W40"}' 'V6Do5sYadCCFrHHC' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "IJzPyrVEiOG4Ucqs"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": true, "newName": "GKHhMRWLVd3DlhLu"}' 'IpomM8sm1MiaI1mX' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list '2tJoARtdbBe7udsM' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "rok0WvGYYnx4V709"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "xbnGezKsDwG2omOR", "profanityLevel": "2nvYI9TVqJdvzcWb"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "fUpaXp5JMl5LL4bT"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "xBmZjdrrIxsB0NRs"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'B1fPqqRRulpqpymD' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"kQhtrHWwRVnwVBOq": {}, "OHi8pWGd1juYhiqj": {}, "RJOqB5F93zFQbJnd": {}}, "updatedAt": 96}' 'CtmKy8M9zVrjfGXZ' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 28}' 'slt71B1SmZp2JZp5' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 '0CnPb71ORYcmQbTU' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "5JX8ccLjMXJRk0ea", "topic": "KQDOJvrTefglSs6g"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"4iY9u02aCNYIWekp": "18lOC3mNqF7Bl0Lc", "ghVHfPEspxwhRON0": "bc1eMbEIjowLqc3e", "cjXJbZDKKoxLE1Y3": "Dymtj3giPg4x4yiP"}, "templateLanguage": "X6ues1Hhhkg1yLVb", "templateSlug": "LFzHEP8cM4NTwr0K", "topic": "HaAsmTej52WKi6tA"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "rAURt9plCSVq8PdH", "templateLanguage": "6hJPUAc0RVwXgAgn", "templateSlug": "tLMCuaXBWQi6BqPg"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '4xr0lCancUZGCHsZ' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'YoLfR1KtOv7Zy0b6' --login_with_auth "Bearer foo"
lobby-get-localization-template '5uvuKNuy0ytZQ7M6' 'Nzy1adnSKOLFKx1d' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "X4LuWJu3pDMUAeeZ"}' '97SBROPYuG6XqP6o' 'o7G73zdxTgOfnwId' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'lNa29fDLh741IslK' 'HzGlLKWUtDQs61OQ' --login_with_auth "Bearer foo"
lobby-publish-template 'AoxyyQpRWCiiPDGQ' 'hNPEwiJCf2XJVrlz' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "qQls1ozhLVA3kE8j", "topic": "KvgatOEBM70TdlNB"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'JYOmpu1VCarzBsV6' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "xnZ5Jrzzjrcaug6C"}' 'WVG8SWP3glU6musw' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'VJnNnN7kAa7j0riF' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "c5HTHQIoVsGo7dwV", "topic": "9DBqFKHQkETJyTlU"}' 'rwDTnoujQD4IEiH9' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"Z5qXn3aoRtlqOECo": "hViHA5CzgFSy8X1A", "3PrIfapq5AAeMe4L": "3mDWORBVXTIIJM9X", "sYIIZxiXNMR9BgaW": "cFX3SUBhyoTsMWPA"}, "templateLanguage": "xUMkawaGpAyrIwMi", "templateSlug": "f3BOdkocVTd4BxqG", "topic": "WV6mTJ0sQs6XNbjv"}' 'qhnUVLWu8olKdxL6' --login_with_auth "Bearer foo"
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
echo "1..96"

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
    '{"friendId": "ozRmDD0jJvlfV5Oe", "friendPublicId": "mPYdYT7DROCjtuzF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "MbAG9YI89hmguB8F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "OTjMLo4b9rIzqYkE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "pstyVTBcrM8rG0rH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '0zcswwVeMK6MbGIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "Iu8vvwLc7KY3uVoJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["XTIMtpgkieDyF97l", "GdMiHKxbWCYzo8yO", "2KTK9tmmOnYnOpas"]}' \
    '6ghP1y4Zi7s7QBlk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["44Z44B1GZgKg4uKx", "aCgcGLuC3brWdTYC", "fHkIySok5DiXZtLW"]}' \
    '87rGysryod3dNQrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetAllConfigV1' test.out

#- 17 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetConfigV1' test.out

#- 18 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 39, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 62, "chatRateLimitDuration": 88, "concurrentUsersLimit": 21, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "RwrKt2ecozL0TOg5", "generalRateLimitBurst": 25, "generalRateLimitDuration": 44, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 63, "maxFriendsLimit": 100, "maxPartyMember": 24, "profanityFilter": false, "readyConsentTimeout": 29, "unregisterDelay": 70}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateConfigV1' test.out

#- 19 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminExportConfigV1' test.out

#- 20 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminImportConfigV1' test.out

#- 21 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'LF6M4lNa4JUMSHNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'qRqCV7usamANkZlO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetIncomingFriendRequests' test.out

#- 23 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'X9Sfo95HgXqKhTPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetOutgoingFriendRequests' test.out

#- 24 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "wfLM9uSybRzWek2g", "topicName": "ZvRrvr0n9d9lvccK", "userIds": ["MLhrTrcBE2ItBS3K", "tKZWe8aoFzAyBME7", "4HUtipUWYhWV1qx8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 25 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "CzPML52faXUr9Sk4", "topicName": "lq2faBcAXXKlhvyH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SendUsersFreeformNotificationV1Admin' test.out

#- 26 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "8paOJtxqMPpcVfRw", "topicName": "Nj547fH0XrKEDpEY"}' \
    '8VnocGAjci0V3tBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendPartyFreeformNotificationV1Admin' test.out

#- 27 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"2jnHGKXphn50c9tN": "LDljhZ2jxLRX3z46", "OCaGBeMfPlNos4yB": "RjrERHEonAZR8GmE", "u0q1p6QCyY6vSkVF": "WdsbYuVEGVxYheR3"}, "templateLanguage": "j5mNZ6vwv7K8Asvt", "templateSlug": "1j1Rx59hesNWy2Nv", "topicName": "Z85DDKDAF8KDsBZO"}' \
    'uYQJ03BAHZ7c53q7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SendPartyTemplatedNotificationV1Admin' test.out

#- 28 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllNotificationTemplatesV1Admin' test.out

#- 29 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "akMpcmnnx6RVBrop", "templateLanguage": "9v7aZK3h65hbN15z", "templateSlug": "fQSfQrtfF3TQN0Oc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateNotificationTemplateV1Admin' test.out

#- 30 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"NDLr36vzohZyjMQA": "g5mPYhrLTyU8Ohgf", "Y9JQYGF4bYXEcENx": "9xZlAchob44lONDD", "wMvgI0HlyPR7wZNi": "VsF6xG2mXEQdbzIV"}, "templateLanguage": "y8alncV7vWgSHdfo", "templateSlug": "07UctPErqxyMyOK0", "topicName": "6MqQBErxgjVBycvU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'SendUsersTemplatedNotificationV1Admin' test.out

#- 31 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    '4PbmRDcrg0DjQjBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 32 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'CXvea7H1m2lJFRZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 33 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'ZprZ60zMjhTHeh94' \
    'TSenE5hCFkIf5weq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetSingleTemplateLocalizationV1Admin' test.out

#- 34 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "Z18MH57l2Zsrh90E"}' \
    'TtYmGukz3MnlrjcH' \
    'p6B8Vj7rXFgDnDkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateTemplateLocalizationV1Admin' test.out

#- 35 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'Z9bpjb1tdA3QhjCM' \
    'W64f4XhIjSoTB2NM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteTemplateLocalizationV1Admin' test.out

#- 36 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'KtezapPr2QEPx3zT' \
    'xBGtEJIYppuUSsKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublishTemplateLocalizationV1Admin' test.out

#- 37 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetAllNotificationTopicsV1Admin' test.out

#- 38 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "Hw2hyd12uSE7BEv3", "topicName": "aevq6iohU1cg4W1I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateNotificationTopicV1Admin' test.out

#- 39 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'S3Uv1BpWoJBaqdg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetNotificationTopicV1Admin' test.out

#- 40 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "FHcunsS1lnaO2m9v"}' \
    'qjhbeK2qN8g6x2Py' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateNotificationTopicV1Admin' test.out

#- 41 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'YDo5R3hLiD5sf5y1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteNotificationTopicV1Admin' test.out

#- 42 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "JsxJNGmyt0SQDUDo", "topicName": "WBZVGLlkUetzCAWc"}' \
    '9x1aMjgGim51T107' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 43 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"XIZRZ7tZdIs0xf4c": "zdt7zqmSKxOEQlVc", "x6GqsBq8vdhWVnuY": "LgpZehK0G2nmyuVi", "B9kRTcSQdTnNYGeA": "fYFG3wSkHKufBdS3"}, "templateLanguage": "ZOokZB4cXnAXyuGz", "templateSlug": "6LlxHv8SwyagYvDJ", "topicName": "3w3UNgIGj2jZtEYT"}' \
    '8sIPSE1XXPzySa0s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 44 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'ZoFS6xCOWMpyh9pM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPartyDataV1' test.out

#- 45 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"sQgb64ELbzDMwyo4": {}, "nIRysQdbufXjYnSo": {}, "IFeouC2m38kXrDZW": {}}, "updatedAt": 23}' \
    'wGioVwVzmmBVVFfp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePartyAttributesV1' test.out

#- 46 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'qx1AeLtzcPJ3jtDY' \
    'Bo4FUTH7CGfKSyxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminJoinPartyV1' test.out

#- 47 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'RR1DiCqSMzpqIFGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetUserPartyV1' test.out

#- 48 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetLobbyCCU' test.out

#- 49 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["kDs7ACC1RgBfoNrH", "lFi2qJLgmBLE35Yh", "yiDV90SeI5yppBHo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 50 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'ytVznCgNyx9fbT63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllPlayerSessionAttribute' test.out

#- 51 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"ShEh8PbGikLjgjcj": "34uulU6FYBZsWFbr", "3RSP0W9nBhvhf8Q0": "DtJMcYQdN66bswAg", "t65X4N1LQZmB61JM": "dtwCVUrYQue84dwm"}}' \
    'bwFEnAZaWsQJtRYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminSetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'agRJK5PX9UcOvhPy' \
    'E11TRT2SKseoe8VL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'ie0LBa36KNzjf005' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedPlayersV1' test.out

#- 54 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'CXNGehQ2aTjTDfKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 55 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["DXC7eGL5YhJDWh9Y", "Wqc0qgV6d9yOfIML", "ds2DbPcaoMdtRLTm"]}' \
    'SvTkQQgB7exYvmHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminBulkBlockPlayersV1' test.out

#- 56 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "xr5hPCJJztJBg0tT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDebugProfanityFilters' test.out

#- 57 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'Jg46IewOXE2AkCh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityListFiltersV1' test.out

#- 58 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "QIZsUf8lGFXcmwTE", "note": "RHclOdxIwqejxe18"}' \
    'rNdb8Otq6j1mqUav' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilterIntoList' test.out

#- 59 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "7k05HAQltnSojV4j", "note": "T65yclX2FtAz0vJj"}, {"filter": "FIYWOaNdsimmkW2m", "note": "iH3xRHAKy4QxZkaX"}, {"filter": "Z7vmiEd0JPxVyQps", "note": "haDwNqTbbFMXAMfV"}]}' \
    'Xe0GZeMgsRsmH1EQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilters' test.out

#- 60 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[36, 17, 25]' \
    'eHkt1mr9EOIFg0dn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminImportProfanityFiltersFromFile' test.out

#- 61 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "WIYN2NVL70Iw157g"}' \
    '00jr9b8MuYmmeKTm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminDeleteProfanityFilter' test.out

#- 62 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityLists' test.out

#- 63 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "name": "vGYxEQdf3ewoGGoY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminCreateProfanityList' test.out

#- 64 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "newName": "6wySoltDxsbzxrla"}' \
    'KEfkoYjY2o6ouRW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminUpdateProfanityList' test.out

#- 65 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'UtNquwC3WgumrIz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityList' test.out

#- 66 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityRule' test.out

#- 67 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "NhGztZpr4U4fwQIi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminSetProfanityRuleForNamespace' test.out

#- 68 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "LXgmRasvjO4lj8m3", "profanityLevel": "XEwP2b4gd3xOeii8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminVerifyMessageProfanityResponse' test.out

#- 69 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminGetThirdPartyConfig' test.out

#- 70 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "Jnmssep2xD2NY0kA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateThirdPartyConfig' test.out

#- 71 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "BeGs9yxahld1pO0G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminCreateThirdPartyConfig' test.out

#- 72 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminDeleteThirdPartyConfig' test.out

#- 73 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetMessages' test.out

#- 74 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'yf5PO3COyMvczgEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPartyDataV1' test.out

#- 75 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"zZ3FbtxfhcRC7IVY": {}, "a6iZ5uFRYNn3SHiW": {}, "xF0YbuU5ar5qTLWU": {}}, "updatedAt": 58}' \
    '9Rrbk6C2cVWf6ttv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicUpdatePartyAttributesV1' test.out

#- 76 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 2}' \
    '1e94mQjVOOBnIWhu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicSetPartyLimitV1' test.out

#- 77 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedPlayersV1' test.out

#- 78 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 79 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'nElqZUodp3IhtCSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UsersPresenceHandlerV1' test.out

#- 80 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "y1ei1fIrPvfHnRN0", "topic": "6EjRwEQlNapJRfk4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'FreeFormNotification' test.out

#- 81 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"f9Zcw1pEHAyNFxcV": "TKuAQTGh5BxjWOoz", "GoDtsUuYo5p8ED5Q": "ZAufwNa8lzfjv9oY", "MXMjlVHY1AHwF3vG": "oav7MK0PcLnEkcok"}, "templateLanguage": "KwcQ0baDT9OyJ2h2", "templateSlug": "3GUS2amU7syGlElX", "topic": "dEAOrVSnLocLVVYa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'NotificationWithTemplate' test.out

#- 82 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetGameTemplate' test.out

#- 83 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "mQc4wcG5nDBLJoJH", "templateLanguage": "biQ5duE5p4cfs2E4", "templateSlug": "1cK8QTwiIAvxSvND"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateTemplate' test.out

#- 84 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'lmM5nQFMGzs7fzjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetSlugTemplate' test.out

#- 85 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'yc44mEh9tRk8knYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteTemplateSlug' test.out

#- 86 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'V30lnroQehMDli6t' \
    '9unQLYXxm09wpGAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetLocalizationTemplate' test.out

#- 87 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "pEmDY9vLh3u6EDsU"}' \
    'mrV6kH4OotKwG3UC' \
    '6XCnnZxF8CmQr17W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateLocalizationTemplate' test.out

#- 88 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '65br34rBBN9tU6TD' \
    'm5GloFSKWM1eym5y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteTemplateLocalization' test.out

#- 89 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'dC6p25xCWTqUOYZE' \
    'NJ1QHZQxPRXH7uxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublishTemplate' test.out

#- 90 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByNamespace' test.out

#- 91 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "JEECQE1li3Bg7Jxc", "topic": "9pUnZmvhidwCkZwq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'CreateTopic' test.out

#- 92 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'jYLfTiCO1NDBvQvR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetTopicByTopicName' test.out

#- 93 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "PnAz4VzW0CpoBCby"}' \
    'JsF5IjF1c0W338HS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'UpdateTopicByTopicName' test.out

#- 94 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    '6CBgVRyihYNZ84CV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteTopicByTopicName' test.out

#- 95 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "hziXV8HwSmvcvcDK", "topic": "F19yVRafCjOuSYht"}' \
    '83AdvBaagTiRJ8da' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'FreeFormNotificationByUserID' test.out

#- 96 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"GTVX3Bb7jlz5IfHg": "KjI9mwJSrN8jkIyk", "R2zbaI6PD7fEscSh": "nGUGUtV9GJ279GDb", "LNwjm3FK0nnX2poM": "fZ1hDHtbh4HtMlFg"}, "templateLanguage": "vh2Dp2SoiIPp1yvf", "templateSlug": "AHS0VgLu11A3HTov", "topic": "Fi4tPAGfleyCA6jE"}' \
    'tcqsnzoVILjkwW61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
