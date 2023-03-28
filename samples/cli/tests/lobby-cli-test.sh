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
lobby-user-request-friend '{"friendId": "EAxcVpFr", "friendPublicId": "ttufHIRd"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "H9UzVRiX"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "bqlAw7r6"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "W2ktQG0h"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status '5JAav5kR' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "a62WopBJ"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["HPtcDs8b", "BZLCXLx8", "bbgorQeF"]}' 'bQ1g7qbP' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'ngUNB1vR' 'odwpzS6D' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'aDpv8N7Z' 'QVqGj6oD' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 99, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 31, "chatRateLimitDuration": 21, "concurrentUsersLimit": 95, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "lFcDtgOj", "generalRateLimitBurst": 5, "generalRateLimitDuration": 16, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 42, "maxPartyMember": 69, "profanityFilter": false, "readyConsentTimeout": 37, "unregisterDelay": 40}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'cnz1JSDg' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "Y1TXp38z", "topicName": "sCTCrbCb", "userIds": ["POyNQkT7", "NvyE3cwy", "ALczNIic"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "Xm7agSrj", "topicName": "JW2OQNOs"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "1PXhT5Fv", "topicName": "diRilZ7o"}' 'Fgx4c8Ou' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"mKtPDKJD": "Xn7Z4U68", "su8Xfqlq": "NiTvB6Sd", "AdIhUDrw": "oZ5MecdK"}, "templateLanguage": "i5r6QEa1", "templateSlug": "ysLEzth6", "topicName": "mXhzkzWk"}' 'FeZSoEAc' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "BdW19m4e", "templateLanguage": "u6d5tA5j", "templateSlug": "UmiTqpyh"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"PFdxLzFQ": "N05MYzYi", "KWe5dNRl": "jv7IPrDQ", "QRgat0Se": "vkLGMS0l"}, "templateLanguage": "yuI9a2I9", "templateSlug": "u6Vpbsx5", "topicName": "w8hqUI06"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'UpOXGSLm' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'CVuHOPlL' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'lkvR8sKg' 'nuRkgghG' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "oYupD391"}' 'C2qtPYok' 'ahFjkQsf' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'CaTmt1d6' '7FXGk2s9' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'Q0mPVo3t' 'wu0MesTC' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "f9x4rt69", "topicName": "lna7qxNe"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'IxPz6Mbw' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "L6IY69z1"}' 'UaLqYSYW' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'ytLPziZM' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "djxcBZuf", "topicName": "QxGiHPll"}' 'G4cYEzfT' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"D1ZBm3Mq": "HcUmLZZb", "Sqb8RwNm": "n9HrNQy4", "uZAAiE0m": "it9RGCCH"}, "templateLanguage": "YzUOcEds", "templateSlug": "cKHPEqgA", "topicName": "8yu7Vk6J"}' 't4Ymos9J' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'cdos4fYc' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"TVU6RBt0": {}, "zYoMcHyC": {}, "UEXlAvxJ": {}}, "updatedAt": 79}' 'ozr6wfNP' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'X2bOItRM' 'vqtlB2jJ' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'CSQT279Z' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'ZPYGu0rd' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"lgdWyOtX": "i3choQrp", "OsDBU5Se": "pjChB3V0", "v52Dlym6": "puQ23xoJ"}}' '8aeCnaLp' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'UKp44YUD' 'jasWIPUv' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'mEejtGeo' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'yIPa8ZRr' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["vjj7il35", "MXbN9oCM", "Nqq98SjT"]}' 'vhZNkSQ7' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "0D0H6BXk"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'sUC9b6i5' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "lZC9xv32", "note": "e8c5csSo"}' 'voqsZNBd' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "te9NDUPV", "note": "Jf6c2Z0Q"}, {"filter": "ZxfgPubT", "note": "DIHrvqAT"}, {"filter": "huwjRHpK", "note": "KTlmVr9X"}]}' 'uoJbRFQS' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[75, 59, 98]' '2Tb3g7mS' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "QUhAEtrm"}' 'jqU6YE3p' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "ck0ZHn5G"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "YBHqaTHe"}' 'KtW18iGe' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'Ulc9d9so' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "gWa24CKN"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "S0GqVvUf", "profanityLevel": "HQvsHXNU"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "Ne4mhgo5"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "QB65lSAi"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'YnNjkfZr' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'QvGgbLdL' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"sFzHkBMr": {}, "1yrOMlNF": {}, "SrUEirnj": {}}, "updatedAt": 11}' 'SaiGVkyd' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 46}' 'fTcyiuAT' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'us9hsfpF' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "DcSDG8aM", "topic": "VGLiBNrD"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"jqoxcwgG": "LXpUL4pp", "2ncYAHdN": "zDmeIP6r", "OvDz9KOs": "b392k6Ym"}, "templateLanguage": "JFfRByjl", "templateSlug": "BiuFM3FI", "topic": "oVk8T3Gp"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "AnkCmBUq", "templateLanguage": "g2SCnqnt", "templateSlug": "X9y1aZSW"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'MiVi10sG' --login_with_auth "Bearer foo"
lobby-delete-template-slug '6vxkfUcm' --login_with_auth "Bearer foo"
lobby-get-localization-template 'qRRbceJ5' 'i0EeDxOg' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "BnhhqElI"}' 'aDml48wd' 'NFLTm5T5' --login_with_auth "Bearer foo"
lobby-delete-template-localization '0x9WT0Gf' 'H2rtOa4E' --login_with_auth "Bearer foo"
lobby-publish-template 'XsXzOXQA' 'k4mqrxzT' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "tuLl4Xlb", "topic": "GL8QOxtj"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'zm8y2wNh' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "mwoYZyI4"}' 'EFZKBcYr' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'CEAE7WIs' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "fmx40NLR", "topic": "c6m8heKn"}' 'Whzfe2Nu' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"beoKFeIa": "FQCYoDPI", "CpnduEEQ": "lULdJz4m", "nRBkMNxv": "vKgAT8mJ"}, "templateLanguage": "rYq6hRkl", "templateSlug": "oqxM3gpw", "topic": "xcfMy9Xz"}' 'jjI5YbsK' --login_with_auth "Bearer foo"
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
echo "1..94"

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

#- 7 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "oADkzJEN", "friendPublicId": "2VHzih3b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserRequestFriend' test.out

#- 8 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "it0VWn3C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserAcceptFriendRequest' test.out

#- 9 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "O39PXDNx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserCancelFriendRequest' test.out

#- 10 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "tXgeO3Fg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserRejectFriendRequest' test.out

#- 11 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'kXhjDzaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserGetFriendshipStatus' test.out

#- 12 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "Y3snn2Zk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserUnfriendRequest' test.out

#- 13 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["P7cFdP43", "e5dC9XIB", "udfZgrbH"]}' \
    'DIDm4hMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AddFriendsWithoutConfirmation' test.out

#- 14 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'F4Txoden' \
    'SrUTvfqU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PersonalChatHistory' test.out

#- 15 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    '0bfoMm5c' \
    'TtFWbotQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminChatHistory' test.out

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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 0, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 25, "chatRateLimitDuration": 44, "concurrentUsersLimit": 34, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "Dg7VYPXI", "generalRateLimitBurst": 41, "generalRateLimitDuration": 44, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 38, "maxPartyMember": 93, "profanityFilter": true, "readyConsentTimeout": 9, "unregisterDelay": 89}' \
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
    'reSvf969' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "9mCEHThU", "topicName": "JkETAsSp", "userIds": ["7gh4TeUT", "kOkAYfJB", "8AT9t4Tv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 23 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "207Y2QD3", "topicName": "oD5fLCr3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SendUsersFreeformNotificationV1Admin' test.out

#- 24 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "OOlXVv8Z", "topicName": "GF7uYnGz"}' \
    'pipNDigN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SendPartyFreeformNotificationV1Admin' test.out

#- 25 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"Jma1Mbqq": "ZtfNWql4", "nmwAft4g": "qkNNlWkD", "9eOziYRF": "On0jJLHC"}, "templateLanguage": "9LxhvNXT", "templateSlug": "wGBCtohL", "topicName": "tl9Zuhyt"}' \
    'm5UDrT6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SendPartyTemplatedNotificationV1Admin' test.out

#- 26 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAllNotificationTemplatesV1Admin' test.out

#- 27 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "XCs5SPBb", "templateLanguage": "RPZTF6oQ", "templateSlug": "AXVG7tns"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateNotificationTemplateV1Admin' test.out

#- 28 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"Zg5QgXjv": "yGJPN4eX", "bJE5Vs2G": "cyomQoIX", "imBJehyx": "lNsjUgxB"}, "templateLanguage": "kF6wFPoJ", "templateSlug": "eQediogE", "topicName": "hhM2rIiz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SendUsersTemplatedNotificationV1Admin' test.out

#- 29 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'GdKvOPdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 30 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    '5xrgxSmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 31 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    '1DN9LFkY' \
    'W5DQyj4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetSingleTemplateLocalizationV1Admin' test.out

#- 32 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "j5Ro2oga"}' \
    'Kt2ujQSa' \
    '3Zdb65UX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateTemplateLocalizationV1Admin' test.out

#- 33 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'my0Zp6iI' \
    'aTIKUkmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteTemplateLocalizationV1Admin' test.out

#- 34 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'k9QM0NBM' \
    'A9ORxpzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublishTemplateLocalizationV1Admin' test.out

#- 35 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetAllNotificationTopicsV1Admin' test.out

#- 36 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "LR2AK6eX", "topicName": "UGPJsw1f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateNotificationTopicV1Admin' test.out

#- 37 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'iP80G9Pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetNotificationTopicV1Admin' test.out

#- 38 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "lxcft2ul"}' \
    'IJzPyrVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateNotificationTopicV1Admin' test.out

#- 39 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'iOG4Ucqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteNotificationTopicV1Admin' test.out

#- 40 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "uGKHhMRW", "topicName": "LVd3DlhL"}' \
    'uIpomM8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 41 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"m1MiaI1m": "X2tJoARt", "dbBe7uds": "Mrok0WvG", "YYnx4V70": "9xbnGezK"}, "templateLanguage": "sDwG2omO", "templateSlug": "R2nvYI9T", "topicName": "VqJdvzcW"}' \
    'bfUpaXp5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 42 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'JMl5LL4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPartyDataV1' test.out

#- 43 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"TxBmZjdr": {}, "rIxsB0NR": {}, "sB1fPqqR": {}}, "updatedAt": 90}' \
    'NTAhd2wr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdatePartyAttributesV1' test.out

#- 44 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'S0uPdjhd' \
    'inpng5BL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminJoinPartyV1' test.out

#- 45 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'y8wbhMss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetUserPartyV1' test.out

#- 46 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetLobbyCCU' test.out

#- 47 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'AHjapIkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetAllPlayerSessionAttribute' test.out

#- 48 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"9Rf4wP57": "dBZNR88Y", "bCtmKy8M": "9zVrjfGX", "ZnqAQUoY": "1GjlIIk0"}}' \
    'iKoTTS1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSetPlayerSessionAttribute' test.out

#- 49 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    '02o7JjTX' \
    'AQN0qdsk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerSessionAttribute' test.out

#- 50 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'dQV0TqI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerBlockedPlayersV1' test.out

#- 51 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'EFnmDbxI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 52 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["xi4YKlON", "k2Q5Y4Jv", "aizwiila"]}' \
    'tuUjjt9l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminBulkBlockPlayersV1' test.out

#- 53 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "IMGql5El"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminDebugProfanityFilters' test.out

#- 54 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'Ea9EIIlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetProfanityListFiltersV1' test.out

#- 55 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "cHB3CfR3", "note": "ncDlwi3v"}' \
    '3MFFJ1Ke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminAddProfanityFilterIntoList' test.out

#- 56 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "sKoELCpo", "note": "bBEG8X64"}, {"filter": "5xpdXpai", "note": "0rYaT5hO"}, {"filter": "Pjaf3H0t", "note": "YighU0VU"}]}' \
    'fcYHJbBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminAddProfanityFilters' test.out

#- 57 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[54, 4, 75]' \
    'M4NTwr0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminImportProfanityFiltersFromFile' test.out

#- 58 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "HaAsmTej"}' \
    '52WKi6tA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminDeleteProfanityFilter' test.out

#- 59 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminGetProfanityLists' test.out

#- 60 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "name": "AURt9plC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminCreateProfanityList' test.out

#- 61 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "Wic7UkBe"}' \
    'IXuqDuAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminUpdateProfanityList' test.out

#- 62 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'I66bQ71w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminDeleteProfanityList' test.out

#- 63 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityRule' test.out

#- 64 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "0deoV9Lx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminSetProfanityRuleForNamespace' test.out

#- 65 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "5RDA1l2X", "profanityLevel": "crciYNEz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminVerifyMessageProfanityResponse' test.out

#- 66 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminGetThirdPartyConfig' test.out

#- 67 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "vSZIPkhS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminUpdateThirdPartyConfig' test.out

#- 68 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "gORcz5S5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminCreateThirdPartyConfig' test.out

#- 69 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminDeleteThirdPartyConfig' test.out

#- 70 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetMessages' test.out

#- 71 GetPersonalChatHistoryV1Public
$PYTHON -m $MODULE 'lobby-get-personal-chat-history-v1-public' \
    'BvmgBLxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetPersonalChatHistoryV1Public' test.out

#- 72 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    '4ijFnE3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPartyDataV1' test.out

#- 73 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"am69qSZ7": {}, "PC6f6Qkm": {}, "ZXElW9Yf": {}}, "updatedAt": 90}' \
    'WJu3pDMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdatePartyAttributesV1' test.out

#- 74 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 54}' \
    'S4czz0QK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicSetPartyLimitV1' test.out

#- 75 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPlayerBlockedPlayersV1' test.out

#- 76 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 77 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'FlAVmVLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UsersPresenceHandlerV1' test.out

#- 78 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "4AOec0z8", "topic": "eBeeoip6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'FreeFormNotification' test.out

#- 79 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"8J1nsv4W": "2OJhtafx", "MSJlHeb3": "4sZKHcl5", "LLLOexL4": "fZvWtND2"}, "templateLanguage": "tcBFpX8l", "templateSlug": "NtFEJ7tn", "topic": "kY6Mca5a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'NotificationWithTemplate' test.out

#- 80 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetGameTemplate' test.out

#- 81 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "fj12K2Iz", "templateLanguage": "rBvvWm4u", "templateSlug": "dE0OXudX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'CreateTemplate' test.out

#- 82 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'gNne8kJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetSlugTemplate' test.out

#- 83 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'Twlc6esU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateSlug' test.out

#- 84 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'p6Sw1I98' \
    'jeZQ7hfx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetLocalizationTemplate' test.out

#- 85 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "nhLd3Kna"}' \
    'knoed9DH' \
    'hLOqQGhC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateLocalizationTemplate' test.out

#- 86 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'Ur6iTrjy' \
    'EgarAdNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateLocalization' test.out

#- 87 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'OIG36I6t' \
    'RbRcrEve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublishTemplate' test.out

#- 88 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByNamespace' test.out

#- 89 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "MdAdiPKD", "topic": "UVSC00PY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'CreateTopic' test.out

#- 90 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'eDcaggin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByTopicName' test.out

#- 91 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "xnFIna3y"}' \
    'ddcbsPhe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateTopicByTopicName' test.out

#- 92 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'TH26IUJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteTopicByTopicName' test.out

#- 93 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "vYuGRUvp", "topic": "ZaHCuESO"}' \
    'iIZsMfB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'FreeFormNotificationByUserID' test.out

#- 94 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"ZH3mtgWg": "U4pCAKxe", "E70CaunQ": "Nxot371W", "9G4AvQkq": "sGnmyo5J"}, "templateLanguage": "JTUVmb8G", "templateSlug": "EXFTlEME", "topic": "sFzYqwgK"}' \
    '1Np5nodq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
