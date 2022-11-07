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
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "tYldgl0x", "friendPublicId": "VKRBsEQQ"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "coWgOzjS"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "Uv8FMD2P"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "sWmEQ9mH"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status '1vt1ncX1' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "KtUxI7AO"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["RWEWauhn", "IULROXEB", "LE8QLuoN"]}' 'JELsxpU9' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'awT5TPI6' 'QzN997Tw' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'INgnOGUM' 'QkXnO03h' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 62, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 79, "chatRateLimitDuration": 35, "concurrentUsersLimit": 64, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "S8oKam4z", "generalRateLimitBurst": 82, "generalRateLimitDuration": 76, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 26, "maxPartyMember": 93, "profanityFilter": false, "readyConsentTimeout": 18}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'u6WJ2VFO' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "JdKFnqJw", "topicName": "UF0fV3zt", "userIds": ["3Fl4TBAC", "3n4edkBQ", "p5b3LFNp"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "Q5gJskpn", "topicName": "nwPkXIDz"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "xuscYuiu", "topicName": "eTXajdYW"}' 'mljvfIS5' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"MCKSaZbQ": "QlyqePaY", "gDttAmeq": "FSw5FUDC", "yBfUvzyJ": "Jubpg7MZ"}, "templateLanguage": "YVZhNVlR", "templateSlug": "a9ABUwKy", "topicName": "PNdDTrFW"}' 'dWrMxK2J' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "2f7VSV5g", "templateLanguage": "02huX42v", "templateSlug": "ZK4OYm9m"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"qyn5Zldx": "oYEZNgWe", "PS15hlMN": "EcAzJZiK", "cRSH0ESh": "SYzSX5Ej"}, "templateLanguage": "2GPQBAC9", "templateSlug": "AiC4hGfH", "topicName": "9ss8LbL2"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'WO9mcPxo' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'lbBoVSjJ' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'iF7O18rX' 'ToU42YlW' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "q0fu0nwh"}' 'pLa1iIU1' 'MKZmKvT1' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'JInjevUB' 'qAS3W7xL' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'aVI1OwSr' 'M22LrU7X' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "AUhdOKQ8", "topicName": "MCUBPUdm"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'PrCCjzRs' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "oeKXnG5r"}' 'EM9GDrkX' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'Snfu0FOm' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "kWPrDR0m", "topicName": "B4wrkFdk"}' 'qEIwkbDW' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"1jYiHYJk": "BQD7CNQR", "aNQpZXdD": "OMiBnviu", "qwLndO2u": "QQKk4d4K"}, "templateLanguage": "mSNlwx0x", "templateSlug": "awluPr6G", "topicName": "P7rpubl2"}' 'UEvDoL8t' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'Wgw6xv4j' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"56yS9y7t": {}, "MIx2ETwk": {}, "B349oqPN": {}}, "updatedAt": 47}' 'huYRoaIn' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'GQfcIRnl' 'uWWXbs6d' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'BMZtIKbR' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'ZL2sXxVv' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"9UZblwT9": "rDQKVY4J", "RLadwxks": "tncvKryg", "XimRKjvM": "KGviHaYk"}}' 'S76nQCx6' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'ZKuP3ez0' 'fpuZYKLf' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'wTaiGBcl' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 '71bGIW36' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["WMWw4GDg", "QMOxtE04", "A9qSqt9Y"]}' 'mwR8FsH0' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "8xQqlMzL"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'NRg7oPIk' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "eWzqx8Qy", "note": "UMiIG4zN"}' 'ChiTaTad' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "256ouBsx", "note": "dol2Tc63"}, {"filter": "uU6cRiJq", "note": "UGqtS7ce"}, {"filter": "2uuPMbgO", "note": "fI30Cu5t"}]}' 'yfCZFcZd' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[97, 55, 60]' 'eWEcdvVA' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "wfPnEjJS"}' 'YPL4YWFp' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "iyr1tttv"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": true, "newName": "SGPxZG2G"}' '5FLBtlX8' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'kDlMqeMS' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "gmf6y9pc"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "5W2sNw2y", "profanityLevel": "8cEajLPq"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "qQ7wTuKA"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "GblU7aWg"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'mU2PIPpI' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 't44kLnD9' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"1VAlsbFU": {}, "VTvXzzXD": {}, "mN6zQE5y": {}}, "updatedAt": 35}' 'IsNraBah' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 54}' 'kgda8pZ6' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'Yrxxtro7' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "tCx61RJq", "topic": "EWDKAJCr"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"9da4pf3s": "1cezNehk", "TMnDsc88": "HCwlRwF2", "rS2nnggv": "BYQI3MHa"}, "templateLanguage": "ROC9iFHj", "templateSlug": "1Wi5yT5S", "topic": "UWV6Ys75"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "jQWllzg5", "templateLanguage": "r62IQ5z6", "templateSlug": "GZp4Uy6B"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'rIWLqiBy' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'YP87XsEl' --login_with_auth "Bearer foo"
lobby-get-localization-template 'IfvI7Hjc' 'RmjZRGd0' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "wvknAVug"}' '5Y66AiMM' 'mF900UyI' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'uCD9w2tb' 'AzZJ5bbZ' --login_with_auth "Bearer foo"
lobby-publish-template 'i49uT6mk' 'birpaJil' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "y07no7E7", "topic": "at2wMvwo"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'YPwuhPTW' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "LjPM7ELv"}' '7cHEaNK7' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name '50S9ZRKJ' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "JejrR0Ys", "topic": "yCjbOuAX"}' '8gxZnzIt' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"85zMhU0X": "nMf7CMZ5", "r0RrCwdp": "dbRGF01i", "WfH3FHin": "SxiK0zMv"}, "templateLanguage": "Z2QtO4lM", "templateSlug": "FzrcVBwG", "topic": "wTiYmbxE"}' 'AJTvJLWR' --login_with_auth "Bearer foo"
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
echo "1..92"

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

#- 4 GetUserOutgoingFriends
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetUserOutgoingFriends' test.out

#- 5 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "EEsj5Wds", "friendPublicId": "8cTZyKJI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "jqdeTodF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "VbSSX6Nx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "KzvNAgab"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'FuT7gvb7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "jlYL4dqu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["E946KBeu", "zqcowLRx", "Bcxs0Daq"]}' \
    'LoBkjFn9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'b3fqdHjD' \
    'aFaQinu7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'wxRyBGXY' \
    'R7uqf8vP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminChatHistory' test.out

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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 34, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 19, "chatRateLimitDuration": 52, "concurrentUsersLimit": 41, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "Aec0av8k", "generalRateLimitBurst": 70, "generalRateLimitDuration": 19, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 24, "maxPartyMember": 21, "profanityFilter": true, "readyConsentTimeout": 10}' \
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
    'u6HUcAbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "T3VimglJ", "topicName": "IUmAMSMH", "userIds": ["EaMxpWD1", "3qbPjPfU", "VenSie61"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "KM7z90ed", "topicName": "uPnGUQYp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "S7txBfXK", "topicName": "yXOtLAc7"}' \
    'VivYn5ZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"dJWUcTPq": "tQmGLs32", "ZlszggGX": "hQ3WYBPB", "1f6q0uqK": "X0zOn4mo"}, "templateLanguage": "dRilv8LY", "templateSlug": "UeefvL77", "topicName": "edG69Suf"}' \
    'z3XL4rAy' \
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
    '{"templateContent": "VRKruD2F", "templateLanguage": "rtWECuEn", "templateSlug": "zb1FqnCT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"4PjryExN": "fozI4SB1", "WzzAVZ50": "bFTjAPpD", "5gJyp4Ap": "vuVHEQLk"}, "templateLanguage": "RIMzL9IO", "templateSlug": "L8zcN7Yi", "topicName": "OC8HQ96M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'wYVlsjt3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'yw1dnNyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'GBn9brQU' \
    'hvqhpw0D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "Vsze3iZ6"}' \
    'rgytPErA' \
    'LemZr4yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    '8Kc3zDQP' \
    'LXkMyD2Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'X2m1OQzl' \
    'VEUJMrGd' \
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
    '{"description": "pLuZry9T", "topicName": "I7vSoR30"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'J9nxDB3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "yHebyy01"}' \
    'og6WCjJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'L3H2re1V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "kgCiTlef", "topicName": "wmSGWITL"}' \
    'GUv6KgCT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"Ft6LvAL0": "Dv3UHRo8", "fbXF2MUQ": "7upohuxh", "r7n4gI6B": "npQNt5o6"}, "templateLanguage": "zjTdAZVJ", "templateSlug": "voExRD3E", "topicName": "BefXSVD5"}' \
    'evnkwmhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'mcht62Tz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"uhOMYfLM": {}, "NNowuWiE": {}, "mDxV0J6U": {}}, "updatedAt": 65}' \
    'bEd2Mlov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'uJqIVHC9' \
    'Iy5VTlTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'FuYamVex' \
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
    'Y0yhyKG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"3zQIHHOQ": "2T4y01jN", "ZB7wBjGH": "a4CxUgfc", "8dIqPnzl": "L3iLHaTR"}}' \
    'fLmdXxIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'wMCwGEjk' \
    'c8WpLAV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'KSDd3vjA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'mveS6H8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["ZGU2bycR", "oB99syLT", "V1AM8MIt"]}' \
    'yMSd9bsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "WRnZgMbD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'PyVGThxr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "47DELelV", "note": "wma5hBaP"}' \
    'LeNYrupn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "ECQIcv8G", "note": "d6pxwdBI"}, {"filter": "SiCVcVDJ", "note": "EZkVHckH"}, {"filter": "fD0UXzZq", "note": "Obvzm5wL"}]}' \
    'qDcINKVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[4, 7, 80]' \
    'DFqjCN1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "TdY62IUD"}' \
    '922GD2G9' \
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
    '{"isEnabled": false, "isMandatory": true, "name": "deGkfMPK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "newName": "NKky7mkL"}' \
    'wkWqJYYW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'erFjKD20' \
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
    '{"rule": "SlF2i6oS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "KXpvgRWq", "profanityLevel": "5TfTDDuF"}' \
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
    '{"apiKey": "zkPx2AAg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "RrcP6CfF"}' \
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

#- 69 GetPersonalChatHistoryV1Public
$PYTHON -m $MODULE 'lobby-get-personal-chat-history-v1-public' \
    'k35gvTll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'YG7rSUXU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"PK94I6us": {}, "RJG7PddJ": {}, "JidbAoqG": {}}, "updatedAt": 28}' \
    'WupWE3lZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 63}' \
    'vrz67LCs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicSetPartyLimitV1' test.out

#- 73 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerBlockedPlayersV1' test.out

#- 74 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 75 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'NpXf89O7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "JDazRpI0", "topic": "9yqEEeL6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"C6PYzggw": "YM9mOZiq", "BPphtdO0": "GQgtY5z2", "mLDDu0Xf": "wO5N0aIE"}, "templateLanguage": "8H6wVtGR", "templateSlug": "SDRCaJFn", "topic": "jLoJOpXe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'NotificationWithTemplate' test.out

#- 78 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetGameTemplate' test.out

#- 79 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "Lyfdwmu3", "templateLanguage": "86PWSyIO", "templateSlug": "oxSTnLtY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'CLBaoD7b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'zfC5V68C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    '4qZBnTXi' \
    'qlLLERsL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "yHcEfIwR"}' \
    'ZBWiQw6m' \
    'S51mQCpR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '6cZqoMuA' \
    'J3S0gbP3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'H7FyI8Nq' \
    'hCJ9sM81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublishTemplate' test.out

#- 86 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetTopicByNamespace' test.out

#- 87 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "kKP4aHR4", "topic": "fDkJHdBp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'iOzAlVkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "C1rXyyrB"}' \
    'H4HnTWyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'y9EYzK7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "hlHDKdvC", "topic": "y9hAoaTU"}' \
    'XyJlPSJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"msYEt9c4": "ZvXyvwFm", "HpuErbEJ": "AzbZQpXs", "JILb9iun": "gl6faSfu"}, "templateLanguage": "WDwzMAxV", "templateSlug": "bjLWo182", "topic": "5FhMW6oz"}' \
    'VDmw3gyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
