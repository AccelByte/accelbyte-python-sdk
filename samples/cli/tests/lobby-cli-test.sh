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
lobby-user-request-friend '{"friendId": "Y0ZuQE6F", "friendPublicId": "eL8dKnUh"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "mbmguihG"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "N1jjDRH0"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "YIAJj0En"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'rDkeXIHI' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "naYkZ6V5"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["L4vQLuH3", "itY6D0DE", "INtmCw49"]}' '0iiNFXRz' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'Q0cNDuIr' '7ZArNsCQ' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'nj4iSAKC' 'nEnWmp9g' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 74, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 46, "chatRateLimitDuration": 1, "concurrentUsersLimit": 38, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "0WwtuypM", "generalRateLimitBurst": 44, "generalRateLimitDuration": 36, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 24, "maxPartyMember": 98, "profanityFilter": true, "readyConsentTimeout": 89}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'y0oZqSkr' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "0HDqW5Qv", "topicName": "SnOkPkuP", "userIds": ["CNSvU2SH", "q2dIPHUg", "utXCQrV6"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "guASXBTS", "topicName": "lZ9PZWRq"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "AnIx8nFM", "topicName": "GDZetXFd"}' 's8Lksf6M' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"NZ458zi7": "5r1bAfwg", "dmP20fUv": "Qem9bKho", "0PbXP5tj": "164HM3gv"}, "templateLanguage": "WoFjrk4S", "templateSlug": "myHQnVCf", "topicName": "xLiP3tEy"}' 'LQQJiA9C' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "iYbyTii2", "templateLanguage": "anbRQ7Zo", "templateSlug": "gmyxzPVr"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"FwKGTfws": "0Lohvk4V", "fyeJOF23": "H93ugeHd", "iR1U1vCR": "tlGmwong"}, "templateLanguage": "qMe4exYO", "templateSlug": "U4Sy2J7y", "topicName": "KHX6AfOL"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin '9saE55g2' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'Nz2PW26U' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'gN28zem4' 'GxHrW8Dc' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "AUlAGVvP"}' 'wnliAgx9' 'mua6RCkW' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin '2Xyu5bEr' 'dw0oqkza' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'IvExKA43' 'NkKWV1F2' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "wh53PBIM", "topicName": "0MIG8V4P"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'Yx2Mwu5t' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "c8jko8Y6"}' 'dXvsAK2B' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin '8IndVGVi' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "0pvFNgQ2", "topicName": "GD4Fuq96"}' 'YeUYnz1X' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"MZzk04Kj": "r6MfCFRT", "LgiUZT0J": "dPq8Ki7k", "p8ZCQtvX": "G2iG1lty"}, "templateLanguage": "rfdLXcLv", "templateSlug": "2HUv7lxZ", "topicName": "ZO5zV8kw"}' 'BmChhXUp' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'ihXDvkrA' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"AoWAziNE": {}, "JlLSFJSp": {}, "037eebEC": {}}, "updatedAt": 93}' 'k3dYyofg' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'HOmu5HDW' 'cqeJXYZj' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'Pr1J4rYW' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute '6UgA5rWG' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"oq3w72J0": "GRNuhdij", "ArLbHVlM": "a397IxUJ", "1S34W0wb": "iuSfUjzp"}}' '6yD5MNoR' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'BgF8u772' 'uXkS2C5k' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'Rn0PGSaW' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'sdDDkdso' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["xWF8LVli", "RXnDrU7Q", "I8X8O2To"]}' 'buaElHIZ' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "hVzv8Isw"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'l5ZIagAg' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "IPH5rm7A", "note": "Mnq3vQJY"}' 'c5fsgx3Q' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "NdKo6kqT", "note": "kjkXuDip"}, {"filter": "EPq75pqm", "note": "9024VvH9"}, {"filter": "dZSHR22G", "note": "sDNk1Ps2"}]}' 'RFU3TAZf' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[22, 9, 92]' 'mjoiTPLH' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "eSe85JqD"}' 'D0c9xBYQ' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "nSSV3e5y"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "fszZdGAd"}' '6H2X6pef' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'JipO5kXw' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "9kx5SYca"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "dzZDH3bq", "profanityLevel": "bzohXnuN"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "Z1MyWKIu"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "Eb1QRxXh"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public '51vKVHIb' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'gRlRWq99' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"hg29ypNX": {}, "nfNUZu3W": {}, "n88c1V8p": {}}, "updatedAt": 52}' 'xxABaenf' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 25}' 'xOyyf40V' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'UhmseP88' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "CijcouDb", "topic": "DYSdEwTi"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"Bw7t9lYf": "8VV7FoZ3", "VjTR25Vy": "JQGVIQMK", "pqZjBdq2": "Sj4KIH4O"}, "templateLanguage": "Z7eNOyic", "templateSlug": "RrMyg1g3", "topic": "rVK6MgTP"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "IH1QIhkh", "templateLanguage": "r9fYVZRE", "templateSlug": "qyIFI9Pc"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'm0StBWfS' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'qtW6i8Vh' --login_with_auth "Bearer foo"
lobby-get-localization-template 'w5e8rr6n' '4PXOJOhG' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "pWkkfTGB"}' 'ylJ1Qarw' '0GSbI2na' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'zw3IvO8V' 'ToWilvIn' --login_with_auth "Bearer foo"
lobby-publish-template 'k8WfFKhl' 'UmXJweP9' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "Xc3uRNBY", "topic": "f2KONfP9"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'kOA44H2m' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "H72XdL4o"}' 'OXxPh2lY' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'qlzHYJoQ' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "HEsGFMfE", "topic": "CeDB4oOL"}' 'Zqv8Jaac' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"rAHQH0av": "7I82mK5p", "LpONN2aY": "tonFxctA", "BtdicNy2": "63wlupsc"}, "templateLanguage": "l0L9yPXt", "templateSlug": "1olMq8K1", "topic": "kdaEiO3i"}' 'Uvmx23yO' --login_with_auth "Bearer foo"
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
    '{"friendId": "3xBJPHxN", "friendPublicId": "w83B4R6E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "PpRbowbK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "ZArKKf00"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "99uCk6GB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'ywcQlBAP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "ZZNVV0Xr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["s8wibdhV", "AYAYyAvh", "NqwvErSc"]}' \
    'FYiT9Ngj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    '49Y2Gzbg' \
    'ZG1Qlzsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'cqXZNbVc' \
    'DEfBHPMC' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 59, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 80, "chatRateLimitDuration": 91, "concurrentUsersLimit": 6, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "e02eHsVg", "generalRateLimitBurst": 12, "generalRateLimitDuration": 62, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 58, "maxPartyMember": 19, "profanityFilter": false, "readyConsentTimeout": 91}' \
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
    'JyWhiBj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "i8iJdNVA", "topicName": "faPJv9y6", "userIds": ["29jA7p5T", "TQohv7Tl", "ATIzxBL3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "skdONnkE", "topicName": "Jr6K3i80"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "ybbkuWXR", "topicName": "tIgo4EgP"}' \
    'fqAiZ235' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"lxTly8PA": "geXpilyx", "FoXkUdsH": "inooYj4h", "Yfll3LwM": "7ShfcfIB"}, "templateLanguage": "y0IzeA8l", "templateSlug": "vXeNXzpX", "topicName": "GJpLuJMe"}' \
    'mySuFjld' \
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
    '{"templateContent": "SXmGrRYI", "templateLanguage": "vIwuv7JL", "templateSlug": "huTBYaUj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"G2RMtf4i": "cSCHZI66", "U5sYHkle": "FgznvgAx", "UAG31qRZ": "QXK9y19D"}, "templateLanguage": "tEbmI71h", "templateSlug": "uWgw7Pcz", "topicName": "GXhjtmNW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'jslor63x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'CU9gV7KA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'RPJAN6Od' \
    'wqmcOB0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "u6xO36s5"}' \
    'XQGPBBWg' \
    '3uBW4Za4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    '7kOr4i5h' \
    'bvnVlqYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'HCyZD6D8' \
    's2fc2euJ' \
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
    '{"description": "bUOUppBb", "topicName": "JI9rbnmm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'FBnavr1D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "8rxTB3Zv"}' \
    'W0kTaU81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'sYvoFrzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "yKf9Yc8l", "topicName": "3KhBQeBZ"}' \
    '99kIVaFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"Hs6fS9eL": "vvGd3lyJ", "FWYEcr7M": "xYhYJjng", "2PdfV5gC": "MjTEvni9"}, "templateLanguage": "1jjbmnX4", "templateSlug": "gcGZ6aNy", "topicName": "PUuH68pm"}' \
    'bOeeL4Q0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'ZsJmYvNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"jE5lOZdI": {}, "IqBlztAA": {}, "885WT1pg": {}}, "updatedAt": 96}' \
    'LmoWzBSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'oAOF9szv' \
    'x1aodohT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'AU7uZiy5' \
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
    'bQqX8ps1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"mtjzSxFs": "3Ubnktwu", "EP6DMdvj": "1rWgmwmc", "mGYOpfrL": "kdrub7pc"}}' \
    'BLGIgUqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    '705m9jVJ' \
    'z66Uhmy8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'igD6ZRpT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'jMvFgkZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["AY830tYM", "VlxVIiEV", "pFLl77sG"]}' \
    'iWYDRxoR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "nE1mWEKn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'Vd8f4889' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "X0V1m51b", "note": "kJCelhFu"}' \
    'xG9cc9t8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "HkPojETo", "note": "lh3XfUsu"}, {"filter": "l4S7V2yx", "note": "HettpNb4"}, {"filter": "6soWIPyx", "note": "jRn4FBKU"}]}' \
    'LJJPQD2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[12, 80, 18]' \
    'CH5NHk07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "ritVCplV"}' \
    'V5ceXIKP' \
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
    '{"isEnabled": false, "isMandatory": true, "name": "43nE8piv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "Fs2A1r2I"}' \
    'n6ihRNze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    '4sa0NaDA' \
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
    '{"rule": "9DLvkNW3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "oxeo61Sc", "profanityLevel": "uCsdDZLB"}' \
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
    '{"apiKey": "uBfubJw8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "8HHZAqhJ"}' \
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
    'S1dDVVDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'cY8F7H2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"2UaLePID": {}, "1RMb5Nai": {}, "90obU3xW": {}}, "updatedAt": 76}' \
    'RTC2wyx3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 54}' \
    'bXD7B73R' \
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
    '0VHIdCxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "QnQHouzL", "topic": "g71d1JqI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"axK0H47G": "gLdxqoFn", "B7CMNSy8": "0qzaVvUk", "ksrW5V4D": "9lKLcmGY"}, "templateLanguage": "XZ3TAkTF", "templateSlug": "GAxk4Nvc", "topic": "Z9haO9Wb"}' \
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
    '{"templateContent": "ZWOW6P1I", "templateLanguage": "6hfusphk", "templateSlug": "2s5OIyVz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    '5aevo2XQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'JiGW8uoD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'tXbgZkXo' \
    'Xy039AaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "a1MWol2J"}' \
    'Vf4eKTJi' \
    'IYgbZX8y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    '6Nv1bfNb' \
    'rDS6PY5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'X8NJIYUX' \
    'A5I4B9hc' \
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
    '{"description": "IuRH6FVE", "topic": "LTX1R2xv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'WRc8czBj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "zxoJN97u"}' \
    'j09QKyBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'TgjP1oOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "gUlrLuJB", "topic": "9dOdWe3c"}' \
    '24rJPEbu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"vCZCudmR": "NckkOmTO", "sQ3BcDDF": "M1M2cvxn", "MpYJAwqb": "BdThqJmy"}, "templateLanguage": "OU1Xpb5f", "templateSlug": "TjTfK4ej", "topic": "OMmsWm7o"}' \
    'lQwNMFgR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
