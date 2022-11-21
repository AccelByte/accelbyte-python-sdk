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
lobby-user-request-friend '{"friendId": "lY35rwDu", "friendPublicId": "PVC7zVkh"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "keyoWqQF"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "CNSXJSHx"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "RFwpmNUR"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'mjGZiclk' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "E1UGthrU"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["ySA7caeI", "em0BEACT", "bVbKBk88"]}' 'Yrn4LCsw' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'RlIJ5r7T' '22WboF4v' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'FXznRwKA' 'Q10AMPDz' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 49, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 85, "chatRateLimitDuration": 69, "concurrentUsersLimit": 0, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "cLpB926F", "generalRateLimitBurst": 4, "generalRateLimitDuration": 57, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 20, "maxPartyMember": 36, "profanityFilter": true, "readyConsentTimeout": 1}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends '5ud2HU15' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "hidExC57", "topicName": "6GCSZtFI", "userIds": ["Q0GNG4FA", "vcvl1s8G", "SFk8s9sR"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "NLE0OwuI", "topicName": "ztjIEHJ4"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "C3nIQQUk", "topicName": "tmw5nrGn"}' 'GEbXe3Bm' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"ryJnOWwy": "522VAV3R", "mZhMkZUw": "BjZIcLkC", "BO0WPdBb": "doR4raLi"}, "templateLanguage": "rRpaDGO0", "templateSlug": "vM8eqAQW", "topicName": "1GMFay0P"}' 'fs0ZudUA' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "8vgGHbKW", "templateLanguage": "Yz8eJwi1", "templateSlug": "XVUePnbx"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"ic6wTqqA": "cQmIJkxt", "AkJRAwQF": "LmC9fDKi", "zoVFLhGQ": "W0uz2MtN"}, "templateLanguage": "qFBh2uIK", "templateSlug": "fSBU9eRV", "topicName": "CI0HdZXf"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'BaExxHjY' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin '2khUlJ4Y' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'b9Pogrhx' 'em1oNort' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "m8oFFh4W"}' 'vBtVXyrX' 'rqu0d9hF' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'MFZ2EOy2' '4Ak9sVc9' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'sxVprDZA' 'y6qJkPRp' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "z8IeDyjb", "topicName": "U67LU6ac"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'MXL3ljQG' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "qocaj9Id"}' 'fpMfK31v' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'muUu6OPB' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "TL3nXFzZ", "topicName": "uJIPPquc"}' 'LPZKobfs' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"EArDLj2e": "HZIm8qb2", "m7t61B0U": "KsEfkxht", "stEB5b24": "hrNDqYup"}, "templateLanguage": "o4RvzFed", "templateSlug": "zCyftqXr", "topicName": "NZBIL64R"}' 'Fia7M99h' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'dYA9pNvq' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"56Qzslz0": {}, "ouGsNUGQ": {}, "jVC7YXbE": {}}, "updatedAt": 79}' 'qT7YX5ym' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'pSuHacOT' 'njNK1Rhw' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 '30Jv4xC8' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute '3PpuV9a0' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"b2ISBlKw": "5QROEasU", "MPldjXS1": "kVhYQYDc", "HEX1POeG": "p6DaHmTL"}}' 'Gi122JPX' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'wyveV9jK' 'ijbPwUKS' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'OtDY42dz' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'ffl9EXdM' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["1ogd3ojl", "iFhG1O87", "0qFQ4mDb"]}' 'oB7W10vR' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "GsiNOt9W"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'SrQ0EyKT' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "EVVQbWwj", "note": "JyHW2Fmm"}' '61eWSPwS' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "cRKsyJZS", "note": "XYIjWFIk"}, {"filter": "zhtfMKcY", "note": "UDAHSH9G"}, {"filter": "ULaklhiN", "note": "Vy1C4U0H"}]}' 'XXc23G6p' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[60, 87, 75]' 'jj63zZp1' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "GbpcPOQh"}' 'jhzYnAFT' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "YVstEkzv"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": true, "newName": "l09p1XtJ"}' 'oy80h994' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list '7CeLtYjy' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "wLZpj0uG"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "sfiyzgKQ", "profanityLevel": "7uoOEbcc"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "7x8jtaT8"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "6W9OATPw"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'UP64DmSP' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 '9S8EWnfe' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"JmAQROAc": {}, "lZ9e4Cbk": {}, "YjgcrhiP": {}}, "updatedAt": 84}' 'D7HYsyjo' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 35}' '8wNXR495' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'IXlYY4cN' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "qGtM2xR6", "topic": "scqhslKr"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"oS5foB5b": "nOcOHZkt", "JZPnptzA": "QXOek3r2", "9oZpjFyh": "svPkMkwT"}, "templateLanguage": "i2s4ZCsn", "templateSlug": "alPx9dWA", "topic": "2ZIgMOBi"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "qR38nMgR", "templateLanguage": "GX3wEEur", "templateSlug": "xaJntogI"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '4o6ueQMo' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'DlDuSH3v' --login_with_auth "Bearer foo"
lobby-get-localization-template 'aabDcWGs' 'tz7Gxv2I' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "h8rBXKtr"}' 'Pgg1k8Ui' '4z7mmWYZ' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'YIirKM0G' 'P7rUQkUU' --login_with_auth "Bearer foo"
lobby-publish-template 'jN1VwvNs' 'y75pTZnd' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "FhDqywz9", "topic": "TosBYKsB"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name '3F2zp5fU' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "XbVZZMRK"}' 'Ut5V0SJs' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'J6wl659R' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "bbLRdxDM", "topic": "eyIj0Wkv"}' 'kmW2wmtn' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"k4rx1f9l": "F6FkXvjx", "zf1LAflU": "oPdyOmA6", "5CMYoSgI": "VAQ0UZbI"}, "templateLanguage": "0y9y64Fw", "templateSlug": "TSGf8wDW", "topic": "1A7a6I9f"}' '2LyzNJz3' --login_with_auth "Bearer foo"
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
    '{"friendId": "1QrSb05Z", "friendPublicId": "jbHlUuGK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "mgfQCrfn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "f1ihFlhi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "dTcGVER5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'JL6AENZk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "4WQAng3l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["XlJWsQlz", "EBs8unRD", "XoQTfJvS"]}' \
    'u0wiJJSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    '3845B5vq' \
    '6pVcJJZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'RWYUPASr' \
    'GjlObTMb' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 9, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 50, "chatRateLimitDuration": 96, "concurrentUsersLimit": 28, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "3LLgXlWu", "generalRateLimitBurst": 30, "generalRateLimitDuration": 35, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 82, "maxPartyMember": 79, "profanityFilter": false, "readyConsentTimeout": 31}' \
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
    'QR19xsuy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "JJW7qvpL", "topicName": "UFkYfmVB", "userIds": ["Hp6jnvhq", "o3bF5Ny9", "tRp7R8IK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "w5u77gaM", "topicName": "XyE3btck"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "bwXEasPK", "topicName": "gwouRS9m"}' \
    'cdNE9wdw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"H31DO4Z9": "OYP3hBDA", "glgKinkr": "FqAmikEU", "O2l8aoWP": "kTaLZYDT"}, "templateLanguage": "IuqhhRbV", "templateSlug": "7XXTkC8R", "topicName": "ziHmRbED"}' \
    'XUYBKxNm' \
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
    '{"templateContent": "67Ams8NM", "templateLanguage": "zYsjByXB", "templateSlug": "ktvuUkBC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"x1DbVk1r": "B8PwSHVq", "QAj3dHzx": "GDF6L34g", "QacibbgC": "ACNbP8Yc"}, "templateLanguage": "dT6u1uB7", "templateSlug": "xtFxwquo", "topicName": "qVSxTUkT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'M6oeJA3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'CFGGlT9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'c2I9worC' \
    'P5iu7roX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "NocGv30Z"}' \
    '80QLUjLE' \
    'ew2XoDWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    '5auegTcV' \
    'sZYLU1zg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'g8wZeuYS' \
    'aOzCqpO2' \
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
    '{"description": "I6hMmEnL", "topicName": "usGXYP2T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'soKOg24a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "wH0pRZl2"}' \
    'i08liGFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'Rq0mR2Lt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "OawX03xv", "topicName": "oAECyDFj"}' \
    'r1PJZ8rG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"4R1SrD6d": "plFl1TOK", "u1cctTOu": "cYOThjto", "aErRRwjs": "KtdUK3Qn"}, "templateLanguage": "modM0ptf", "templateSlug": "CWZzcRfn", "topicName": "9YywS08h"}' \
    'FvP6YqQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'himiZyyC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"soTwqhiL": {}, "fRxN1mk4": {}, "tYzpAlfq": {}}, "updatedAt": 16}' \
    'uoqW8CaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'lYThnZk2' \
    'I5VCLmNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'FVelX8FY' \
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
    'J2eA36IH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"vsKN0YkY": "uhKWPSgl", "08xrIEl9": "xF7usH8f", "dWb8iCjU": "NmuieFL1"}}' \
    'XewgjV6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'Vrw7PTmX' \
    'sqO22cO5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'bIMhNr6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'IaMsN5KZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["4FruaH3G", "HIF7COTw", "GhDeQtMW"]}' \
    'ilJHbw2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "gRavS49K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '3eaM8X6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "4PUBVlP1", "note": "tpGNXinH"}' \
    'oCxf3to7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "FxrdORxE", "note": "jeA9U0O9"}, {"filter": "IT6E5TLC", "note": "nFjoP6at"}, {"filter": "vCdPCF68", "note": "Y5x7cBgQ"}]}' \
    'arYo5Go0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[12, 6, 40]' \
    'HYmNvnhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "JmSiessw"}' \
    'ii2zYo7H' \
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
    '{"isEnabled": false, "isMandatory": false, "name": "cC6EFJa1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "VTwq3aLR"}' \
    'e6E1ttVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'qW0x3xH3' \
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
    '{"rule": "q7QawDrd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "vWv4FUCZ", "profanityLevel": "BKenP8il"}' \
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
    '{"apiKey": "Y9GUdvxa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "rEYxR07z"}' \
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
    'Zcrxwx4T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'S5N5djqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"isylrVLY": {}, "NvJRB1XU": {}, "PalIBsLP": {}}, "updatedAt": 79}' \
    'dbeySHg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 41}' \
    'kiXkqGa7' \
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
    'irWfJ4xu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "2si8anpo", "topic": "I4ptVJD0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"sXLKyRcZ": "0hoBtaO5", "R5CknQ6J": "diqQ03ZL", "qK90jut0": "pcqu9SeQ"}, "templateLanguage": "hPaHsT2y", "templateSlug": "T3UA9ObH", "topic": "4RsaxIxZ"}' \
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
    '{"templateContent": "uK2pOnrV", "templateLanguage": "vgimeAyr", "templateSlug": "4c1yYG1l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'eb6xzVVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'wEXEpkI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'EKjShuBt' \
    'Tsv3SObS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "R0kdhfiZ"}' \
    'l77sw4q9' \
    'v3e5ZM7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'OYmEOywU' \
    'YoR8W1rk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'xL0sgpjl' \
    'Dcs604VW' \
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
    '{"description": "70q4LmjO", "topic": "D4olIEj1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'CxzfKe24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "Zqqr2oJU"}' \
    'JRgDD7LH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    '6B5blMQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "j8jLkVbt", "topic": "1mNYnzXK"}' \
    'p4VdC03B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"4LUP4H7L": "kJb17cMm", "ggXkeVuu": "PJie1IVk", "oamC7n2S": "VLUowwep"}, "templateLanguage": "ZpPPvOUB", "templateSlug": "sNUnWgnH", "topic": "Wj1Ll0vm"}' \
    'VvCdkhpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
