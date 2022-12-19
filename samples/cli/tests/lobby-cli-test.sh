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
lobby-user-request-friend '{"friendId": "cxxQ0d9a", "friendPublicId": "m4pmreJs"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "Wzu4XmJO"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "0hVULvqx"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "helx9CQ5"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'LJW9oNXl' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "0udSnOoy"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["Yt9y9NDd", "iDxXaC9D", "NEcKMRsy"]}' 'G0SemJXp' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'XYStvIR3' 'pnKhC4nL' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'fVc1X9nd' 'Jhq4ADD9' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 57, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 85, "chatRateLimitDuration": 75, "concurrentUsersLimit": 58, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "d3vVD2Fq", "generalRateLimitBurst": 74, "generalRateLimitDuration": 76, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 51, "maxPartyMember": 89, "profanityFilter": true, "readyConsentTimeout": 56}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'BA0LRobH' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "m49wAXDR", "topicName": "YgcaRUW1", "userIds": ["Km66Mtcy", "caItS3Fn", "PYn7TheC"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "SDRl8WWE", "topicName": "IW2VQHTc"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "4X8i5c1m", "topicName": "0NtxJ8jG"}' 'txvjL2wv' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"tH2jtlUS": "piBX9TG0", "SZT9UKa4": "cDq3pzr1", "5XF7Vtwq": "AWEaomx4"}, "templateLanguage": "u0zb9Fgu", "templateSlug": "AAW62Igy", "topicName": "zZiQDiFK"}' 'xvztGzlJ' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "oK6j2ecl", "templateLanguage": "HLq1fgQW", "templateSlug": "ErQFJ5Yb"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"wg0Mqrfz": "5jMszqL6", "alHSESXL": "wKoj5mlS", "s71jzWBy": "7U9lOS6A"}, "templateLanguage": "d4ZoRBoK", "templateSlug": "1ttPMzvv", "topicName": "w3Aczj9B"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'pEwvAe1E' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'WP4RRqI2' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'QA2zFlz9' 'iDTCOByL' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "y2uun1en"}' '8qoCphdV' 'RPN3ObeK' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'NMZJkTPj' 'zXygaLjH' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'CGk44bE2' 'S4lCb14R' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "0ZEgy6xn", "topicName": "khiiVxyH"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin '6CUWDdsG' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "MeMGBcCq"}' 'rw5CQPfU' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'JiJvQZhy' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "CkPS8YOI", "topicName": "AMJXsrtK"}' 'eb86w0SE' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"b8iWKsAb": "l5lv8O7A", "JXvXhpGd": "IH0rmUVd", "2p1lYLYe": "n4QsFlWV"}, "templateLanguage": "8F8aS5TL", "templateSlug": "4R1jykW6", "topicName": "uV4lygQy"}' '2BAV24wN' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'Mxl7n4ap' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"xsrJqqal": {}, "mHPvUthf": {}, "ZiYcLfnI": {}}, "updatedAt": 74}' 'UiKqreLo' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'YcrwjQ67' 'CarC4deM' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'KFKqCaEv' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'sIkblbCA' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"Zbh3uLd0": "SgBvsL5o", "IMWDmt66": "oBcPGXqb", "yhiLLQRE": "ajLCO1VN"}}' 'hiiMyqtq' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'VrDxZ1Xj' 'rtKU6aN2' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'vcO6emS6' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'XuPAshO5' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["ylEReNsJ", "DhPUn2iQ", "31MRf28m"]}' 'Xp7Y4RfD' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "G54Qfxek"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'ubqdeOCJ' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "0aDynCB1", "note": "f9wVv87A"}' '0j9wiG7k' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "M3sZIttg", "note": "q6ixQbzO"}, {"filter": "pVwAphtv", "note": "2O2vXQnx"}, {"filter": "QeSl7HDM", "note": "ZikXLLZb"}]}' '1IozdpZk' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[46, 39, 70]' 'cTGvzrDJ' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "OyoxHpWp"}' 'NdYQ7AlV' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": false, "name": "43Il4ubC"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": true, "newName": "yFmVTfGT"}' 'fKEJYGiG' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'XP5DuDj3' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "Uij52T4f"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "oQh3gPST", "profanityLevel": "SnGXIRyy"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "6fNUOR0e"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "FPtAP3s1"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'K6XTojky' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'dFNJb07c' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"wHZEEDvU": {}, "2jWfeW0w": {}, "1EZSLSil": {}}, "updatedAt": 6}' 'CzO7PEcs' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 3}' '0eRiYhiE' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 '2jTfmNUC' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "AnftqSnf", "topic": "rnXSJlfi"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"vkT1Mrts": "qlg2Z9KM", "7ZV36ZWt": "aXRifYjX", "PybHkXjl": "hlAk7NXu"}, "templateLanguage": "ngwpRtWw", "templateSlug": "LziYTEiT", "topic": "gocsUz3Z"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "smkT4cFQ", "templateLanguage": "5xpuSgO7", "templateSlug": "kpV7dVLC"}' --login_with_auth "Bearer foo"
lobby-get-slug-template '9X42JnTR' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'b9fl4htN' --login_with_auth "Bearer foo"
lobby-get-localization-template '0ulDXLXQ' 'npQ9yLE0' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "6csM7vCS"}' 'RrSVksko' 'LLHfQquP' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'caDEjoqx' '52z2az17' --login_with_auth "Bearer foo"
lobby-publish-template 'gy0keBG4' '1wglvhvm' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "PnxvpjP6", "topic": "n98wcr6E"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'ZsHiq7hs' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "rPJiX1o5"}' '3uLJ7mIL' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'Wt7wCS8Z' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "sbcJOMpt", "topic": "s5KTtNf4"}' 'haYQDw9C' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"WRgr33tr": "JM5iMbBo", "g8EvVlao": "cyjz60MZ", "dIOBTvho": "AADaNR4v"}, "templateLanguage": "dcKaj7Jy", "templateSlug": "zYpU2MTm", "topic": "47GEpiQx"}' 'gOo2We18' --login_with_auth "Bearer foo"
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
    '{"friendId": "TYmY1kER", "friendPublicId": "Bc847mTu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "Rq0s51FE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "mFD00WWA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "uj0KjBUC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'P0JMylRX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "Zfqds0HI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["csJMTs13", "7xekz85x", "mynKr9MU"]}' \
    'u73P4hfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'zEKmtZjK' \
    'h3H4gwpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    '9KLbc8TH' \
    'RMcgZBfi' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 55, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 43, "chatRateLimitDuration": 42, "concurrentUsersLimit": 78, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "ppwSvqVf", "generalRateLimitBurst": 67, "generalRateLimitDuration": 55, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 51, "maxPartyMember": 57, "profanityFilter": true, "readyConsentTimeout": 59}' \
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
    'Fbz9o8jw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "iz88EWJm", "topicName": "HcB0jCRe", "userIds": ["VBz0PIBE", "H1QEfd2Z", "nbn2sSfi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "6SA4iJ9E", "topicName": "IGS19vz8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "pbgxzkDX", "topicName": "b9zPp4jA"}' \
    'hudDiHId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"NfeffW0K": "3fQjKCPz", "cp085pfP": "L0vYGJSs", "VfS9W3uL": "91pNfPQ1"}, "templateLanguage": "K7qkoPVY", "templateSlug": "1g9kV0fo", "topicName": "RsfMkFcg"}' \
    'JNRaaR6L' \
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
    '{"templateContent": "AWwADUMK", "templateLanguage": "Mak4u3F1", "templateSlug": "W0tmSMAR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"75NMVNm4": "TG6nnjXP", "W5xg8Mpk": "efPfZiaW", "4nnVFMx5": "lq5QtMMA"}, "templateLanguage": "PtFNy6Ye", "templateSlug": "rrcate7T", "topicName": "FIvsGpa7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'yNkrXeDC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'RYOwfDlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'b3WkjcCK' \
    'EO8V5pKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "6gs08q0t"}' \
    'ztACJRxk' \
    '9No3S4XZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'CFdRN6lY' \
    'osJBLFu3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'KHTScU5B' \
    'ZFbgYs8M' \
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
    '{"description": "plRc0Wki", "topicName": "VE77V4g2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    '4s5meWLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "Y4AVQxPD"}' \
    'TXMUkPIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    '7LV0yBuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "12AgHeR4", "topicName": "ES60gSVe"}' \
    'uzBEQuGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"XK3Bw32W": "IEv7et7P", "VmRd1IzS": "NtmLG0DS", "by8MTk47": "pZgahf1O"}, "templateLanguage": "ul5AqtN0", "templateSlug": "fOpASuKO", "topicName": "J0Me58nE"}' \
    'mj0Nn8ON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'FujiVgcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"0oK9HiZZ": {}, "XEIK2lLH": {}, "87Rclqo3": {}}, "updatedAt": 16}' \
    '4XW8fUBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'oXPC5UuU' \
    'xEJf32Xm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'aOCToF7Q' \
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
    '8B0eyKK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"kwrdvGGe": "Gq1H5mHf", "na7dbNh5": "6KWKcCpC", "mOLlIJg6": "z0Be9DZm"}}' \
    'UX33LSVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'LShkQg2O' \
    'IUJ93hGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'gSmb8Nv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'hbmZIEZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["B00yisvO", "m1yjDSjf", "amHKkUFI"]}' \
    'kBT22y39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "rTrpMDyJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '3chIFjVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "w6m8Wqr2", "note": "ylqXTfZm"}' \
    'It9Fy74t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "P5qzlHPt", "note": "sohkdQ2Y"}, {"filter": "N0Wkr8AM", "note": "w7YLXXYF"}, {"filter": "pWH4DR0Y", "note": "kYJCbvrz"}]}' \
    'iWV0a01h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[41, 99, 17]' \
    '6tCnkwSz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "ungPiUbT"}' \
    '7DpJra2O' \
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
    '{"isEnabled": false, "isMandatory": false, "name": "OJ0tnOHV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "Xzngudtn"}' \
    'nH9Qw8qL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'EyQbeLvf' \
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
    '{"rule": "EkLZ02Of"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "WDNznrV1", "profanityLevel": "scfi8521"}' \
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
    '{"apiKey": "OojDYqXu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "GoyJDJyZ"}' \
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
    'eMe8lHAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'q2HV8Fkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"E1GgG4j5": {}, "hk1BW3tQ": {}, "3toW3U9b": {}}, "updatedAt": 33}' \
    'zK3xHmHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 33}' \
    '0HJDLzLZ' \
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
    'Pd2yd5kL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "zPuDIkRu", "topic": "NdGBPvRU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"64kDDXdg": "9S9jeVys", "39DXmBnV": "0ETeYoaP", "wj9ZVlky": "WDCA3fW1"}, "templateLanguage": "bXSeslDV", "templateSlug": "WZmXni3u", "topic": "idVV3Xb5"}' \
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
    '{"templateContent": "kxXuUanm", "templateLanguage": "kKxbx0gV", "templateSlug": "hOw9q7W2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    '8Jy4yDym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'PoEa1Fx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'cMpI6HIm' \
    'AnZbhXF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "GTbeK4Jv"}' \
    'ipfVc4wN' \
    'IjQfmQdj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'k2bXxOKI' \
    '5CGDvdaH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'Pg9haBFF' \
    'zBOaY3IO' \
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
    '{"description": "M3RiiERG", "topic": "Uh6LC4qF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'HEJAt2ZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "LgWkrbhA"}' \
    'uzoNBDnu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'RYndWXHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "reieRr55", "topic": "OHybATKK"}' \
    'LU4x2y3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"Ge8D54ZX": "EGtRJhNx", "IOSOaiMl": "HXgoJ5Tx", "NZqxrqS3": "YzcMEKCu"}, "templateLanguage": "pTzDmtmM", "templateSlug": "r4EWlTHm", "topic": "QqH5vI73"}' \
    'LCaylRyg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
