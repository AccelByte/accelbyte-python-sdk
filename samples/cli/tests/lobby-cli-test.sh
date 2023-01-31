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
lobby-user-request-friend '{"friendId": "ihKbYMbO", "friendPublicId": "RggjOM9p"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "RLquTJ4z"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "hwoASLfv"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "gtQRTPh0"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'io2e2i1u' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "NF4R6x04"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["7UfEH7X3", "ezbNUavE", "9L0MfR3j"]}' 'bwLQsOSn' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'Idu9e5yX' 'EHXo0c4i' --login_with_auth "Bearer foo"
lobby-admin-chat-history '0AC7Z0s0' 'yT6cESW0' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 52, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 86, "chatRateLimitDuration": 72, "concurrentUsersLimit": 66, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "qIPmUHvG", "generalRateLimitBurst": 84, "generalRateLimitDuration": 87, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 68, "maxPartyMember": 91, "profanityFilter": true, "readyConsentTimeout": 62}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'wXYD23a0' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "55JP61pU", "topicName": "bwOfGJjN", "userIds": ["5PQxADPU", "eZAFeWZi", "mq9aAlIL"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "UMvYBiWY", "topicName": "ZO46OaFZ"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "Kooz97Sr", "topicName": "Ncj5n1BY"}' 'aElfJfFW' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"SJ43wuQX": "3RjNaHrE", "nU7vO0gJ": "TxbBscjx", "7rkWpjFO": "oxaLlQqj"}, "templateLanguage": "iHXG3IJu", "templateSlug": "sMyDILZ2", "topicName": "11AClKMS"}' 'qRIWGR4O' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "ufBhzZWZ", "templateLanguage": "u443xh0c", "templateSlug": "JYLxcjag"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"T0NBlgDw": "g8QfXDSR", "BeFXwKk3": "5FzECcZc", "ZvgtkhH4": "JfD9hSHt"}, "templateLanguage": "gqSCvjd7", "templateSlug": "Plw8t01F", "topicName": "SErh25Jx"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'xcgBWD5j' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin '2A7H9CHk' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'cuFVO8eB' 'Qn21FExV' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "0lXq46rR"}' '8N0xwnZu' 'PIxuCTLk' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'Uv3dmPGy' '2N2muSCk' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'FLdGNkOp' 'PIreocwj' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "qGycY9os", "topicName": "poPWTYKt"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'Q73GqVp4' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "ob9rKWsB"}' 'RWbBmz3w' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'ZRg238Le' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "5t8LwFki", "topicName": "4PwWfHJX"}' '57p0oVzv' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"Z8r6ZGSt": "wPgfOZ1G", "Wq2XQZ8D": "dY7SA1fC", "o4lEx07o": "xAL8vR9t"}, "templateLanguage": "QJUsa736", "templateSlug": "K5qJnsl0", "topicName": "9L1bxhcy"}' '9bOopIUT' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'LXNPmxO8' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"ZFCgZf75": {}, "SiUMwDV7": {}, "y7yzr4Ai": {}}, "updatedAt": 84}' 'U3EtXHGy' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 '0OeTJMOl' 'eeWUdykC' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'BJcAAndi' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'ncYeXywr' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"Ojcv7gRS": "xSi03jQc", "VzpypjAC": "kpcjEU65", "40BVp8VL": "WxBdZ6rG"}}' 'cEjfeaEu' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'VoVyCnU6' '6RDS8iiA' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'n6MMvoCU' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'F0AJhSIy' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["xVHhrmxU", "OF2fCuWl", "Ldm5VeK7"]}' 'pygPQUNB' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "EfKNX1Vh"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'bu41KJ4Z' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "655CZpRn", "note": "tuaUE673"}' 'nP0Ml5yE' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "2d2f4aZQ", "note": "LYAxMW3n"}, {"filter": "te0R12Ve", "note": "Tp6NwUvQ"}, {"filter": "k9lmHaFW", "note": "grmDtSw9"}]}' 'y6va19Q4' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[93, 55, 60]' 'UB0EknBI' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "7RIU74cO"}' '2kqqtFj4' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "tmAYkoEB"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "RoYiJEfB"}' 'fSkiWGX6' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'lnGLtsM6' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "UvpHnRn1"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "EsgkPrb9", "profanityLevel": "5e6WmYoV"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "BoGMsrAW"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "coQHOdG9"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'KRp9a1rG' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'hCqWUUbK' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"tzgNHr3f": {}, "SEbb66Q7": {}, "s0pOGQPE": {}}, "updatedAt": 32}' '6KMAt8US' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 11}' 'WMcwdBIb' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'oIjcCKT6' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "60bEvbLd", "topic": "0BcxLCbT"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"HHHJrfnZ": "Y9bxeDwi", "o4IcXYYi": "iI15mxeh", "59DDWCSF": "N9lzMXtM"}, "templateLanguage": "QCkbmGlc", "templateSlug": "FZF9Nwhf", "topic": "oMeaUDgG"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "pVAKcltM", "templateLanguage": "H6eF1rYd", "templateSlug": "HOHEMnlR"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '6P1whGXe' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'DHIY3hNj' --login_with_auth "Bearer foo"
lobby-get-localization-template 'Pf8ZlX5e' 'dhVPe42S' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "JNYjDKI2"}' '0dJEKGa7' 'yfy0mm5C' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'FH2U6g3C' 'vaYKGYTl' --login_with_auth "Bearer foo"
lobby-publish-template '5Q1XDW2g' '0FqqQR6Y' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "VPUgaXrx", "topic": "ggOIReH8"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'XCMIYRCV' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "bItRGUUD"}' 'ddJYi0Xm' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'DvzEhxO4' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "4HNMOtTE", "topic": "JxfkoFYp"}' 'stp6YwUj' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"2yHiN32e": "QjZzgSam", "L0gAKBTR": "bTAf4H2u", "YKE9rQ5a": "WEQ4OyF2"}, "templateLanguage": "MIHTro2k", "templateSlug": "AD9EbNiY", "topic": "qAYpqbJQ"}' 'O8LxEOea' --login_with_auth "Bearer foo"
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
    '{"friendId": "64EOc4ZZ", "friendPublicId": "cCbR0CgC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "1vqLv4sv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "DnoRrCTE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "abImnXba"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '8m21ZXWp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "GieKpYal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["1lkH6Dsq", "Lig32Fc2", "AmWNrUsA"]}' \
    'rFVrVhPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    '49YLDd4U' \
    '4BYzjVo3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'ZNcK2sh8' \
    'DaC0SzWw' \
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
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 42, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 70, "chatRateLimitDuration": 7, "concurrentUsersLimit": 21, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "sIjKusMZ", "generalRateLimitBurst": 73, "generalRateLimitDuration": 5, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 52, "maxPartyMember": 52, "profanityFilter": true, "readyConsentTimeout": 96}' \
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
    'TLOBgrd0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "Dw2P8asD", "topicName": "8z5GqXrf", "userIds": ["qCcCtlHO", "XOddoavq", "OZPJLtzk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "WMzuSzCH", "topicName": "0KyIyzBO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "gGtDH3U9", "topicName": "jzTCf9dI"}' \
    'PDnB7EVc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"w25Wq1zG": "D990m3rT", "rsGhSXQx": "JE7dy2Ag", "SaeS2ahM": "GdEqA1pT"}, "templateLanguage": "d2ijpcjK", "templateSlug": "lyedmSHk", "topicName": "OFUsDBGM"}' \
    'Kk2iGJHn' \
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
    '{"templateContent": "vwFMWiKK", "templateLanguage": "jc1CQktz", "templateSlug": "oxCo6wIM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"3uk3Nv1W": "DGFNUfQx", "wqK9BW9V": "x3u7FAlu", "VEwTMgfF": "fMGr0k2H"}, "templateLanguage": "6Mf02Jkl", "templateSlug": "SEYKf08t", "topicName": "0SnI7m8C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'JA3fKtKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'lSZWeVux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'mnMIeAQv' \
    'CEp43t1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "qLfZEJpj"}' \
    'vFtaXx9g' \
    'sPzz0rfn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    '2DtTiYQq' \
    'EXikFxUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    '38xSRol1' \
    'OKnxr2bB' \
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
    '{"description": "Qrcz26wE", "topicName": "4sEtypdA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'QWlxouIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "MCuPy1jN"}' \
    'VZjM5K5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    '1hYJt0K8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "XPh51xmL", "topicName": "Nl3bhcTV"}' \
    'bDQJGMhL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"OaUV9Eoj": "qYQuj05c", "7ZMM5tvz": "NqohSBHT", "KkrmSVtY": "yswIPdPE"}, "templateLanguage": "IunJQDUz", "templateSlug": "5IcsMMpj", "topicName": "HYqqyL2O"}' \
    'YYZhNKJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'm0H3dEXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"VMZNiFCQ": {}, "Jbya37Kr": {}, "V0POK8JZ": {}}, "updatedAt": 20}' \
    '8G2HF7Ol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'lRc16DrB' \
    'WHStntTc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    '97A8PCUd' \
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
    'Z5A75cD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"O6OBNxo3": "8xZQQHZV", "xsyPqbdo": "pQpg5WQN", "bUe6fpnW": "mDsflDTK"}}' \
    'UJ7eFTg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'XpPGMBpC' \
    'mU61vHLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'ChfJk7V5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'tJd7q36b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["gBhymKlh", "WoVruZ9k", "3FoIn52T"]}' \
    'V1RTQAXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "Xvrkb9rM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '0Wd7h5Np' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "lSGjFXWe", "note": "lYwXOBOk"}' \
    'CTHwaDOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "qcHbGfeC", "note": "RoduKj6d"}, {"filter": "HkPPI8GR", "note": "EzregBjq"}, {"filter": "cLWFOdTm", "note": "y5gquvCS"}]}' \
    'Xj4uVASU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[68, 69, 43]' \
    'V7vlcNnG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "gsFvXkyn"}' \
    'WmbI5Z1R' \
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
    '{"isEnabled": false, "isMandatory": true, "name": "vbITCiT5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "D0Rnlq9n"}' \
    'gPaQkKf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'gpniS5Wc' \
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
    '{"rule": "FDRtzhvI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "WFcHxUAG", "profanityLevel": "zklsQHEI"}' \
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
    '{"apiKey": "7ukntiqS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "e8ALCz4t"}' \
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
    '27AymLMJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'b96mVsNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"M3hfAcHj": {}, "CKOZ2Ics": {}, "XAzz7CUE": {}}, "updatedAt": 39}' \
    '5fnOa8Jn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 0}' \
    'a6oePTvU' \
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
    'xHu0bafP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "P89aA06g", "topic": "6b4IdDgW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"Ot50x00R": "GhUcyi8D", "Hj1sj8YS": "U6BJDfpC", "KHmODwh8": "Ym5xoONk"}, "templateLanguage": "kNRegHtX", "templateSlug": "SFEAKmVj", "topic": "KmtWX1B9"}' \
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
    '{"templateContent": "qdxCgGr4", "templateLanguage": "BnMPDF1j", "templateSlug": "Qhxz1hYI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    '862geHiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'YSQLEubd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'QyP30IFH' \
    'YMvhBbPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "O7687wZb"}' \
    'jqfwCqnp' \
    '6GKpGZUa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '3Vne3aib' \
    'g0JBrjuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'okY2Aog9' \
    'jJdUWeLa' \
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
    '{"description": "huXKcsPv", "topic": "EzdTsATl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'd806JYAE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "Pdvetx6U"}' \
    '825srvQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'ePP2OadX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "EhkLfJTC", "topic": "NKoWWkLg"}' \
    'ldUFka3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"lJTJy5gy": "GgKbmUn7", "eTn7AsXH": "3SQc6sLF", "V5CIaGsx": "Ds15X7gk"}, "templateLanguage": "jFzN7WJr", "templateSlug": "dT9R9b8M", "topic": "Y8KtPoWG"}' \
    'hjga3Exi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
