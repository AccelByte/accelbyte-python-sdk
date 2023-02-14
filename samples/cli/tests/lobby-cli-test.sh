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
lobby-user-request-friend '{"friendId": "H4sbeN8c", "friendPublicId": "TG4ZAVOY"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "OG4blKKk"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "A2ORF30N"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "JWYnU4Yk"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'vu6TNTok' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "PDJkjSFL"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["QKnAZaB2", "RTE4bS7x", "CtcfEXGh"]}' 'LmloJGXv' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'u6ofTLOx' 'EcJiHa7r' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'Hgr2Cw0N' 'VeijsHQK' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 63, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 13, "chatRateLimitDuration": 40, "concurrentUsersLimit": 72, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "qyWxCuTn", "generalRateLimitBurst": 39, "generalRateLimitDuration": 96, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 59, "maxPartyMember": 26, "profanityFilter": true, "readyConsentTimeout": 17}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'ROEOBNbK' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "HjmtTTqm", "topicName": "6PcIsFia", "userIds": ["BpdoSEXk", "LQFyqkub", "Taws2jR9"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "yDLqRq39", "topicName": "TsF87RFH"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "8IMG0LMG", "topicName": "4ipR93aO"}' 'jARD3RLN' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"DExkb3w5": "Zp6ed2On", "Jd5W2QZw": "5LV4WgDc", "ePQgqv66": "plWzSGmy"}, "templateLanguage": "s4vjOVLJ", "templateSlug": "TgOTo8tY", "topicName": "spai5Vck"}' 'u0tYS9YF' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "4ZZX9FqZ", "templateLanguage": "Eu5eBOiQ", "templateSlug": "dszOERKP"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"8xSHi5Xl": "IgEWFjEW", "MAJAlFfE": "9B1azsuj", "g8xezs3k": "Ab6L1L67"}, "templateLanguage": "pwn8ANG0", "templateSlug": "SqbSoSaW", "topicName": "C2Gu3wmq"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'TgKhQkTj' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'h5KCDwpx' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'l1dSCNMA' 'IQFt3P80' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "Ae3CXQW7"}' 'DDj6nAZB' 'Ho5wkUBv' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'KEOCVZUv' 'EyHNA9rA' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'ZJr0gNFr' '3HaBd4r2' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "ejCWBsaV", "topicName": "S42KVRhL"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'WnR3RojC' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "s46gyM1t"}' 'jABlG2u9' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'QzeThZUP' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "EJcOxFwi", "topicName": "qDyQHXRD"}' 'rtJjkkVv' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"qVV45oEE": "sU1Csk3b", "86eL4Z4d": "QZq5wsaw", "d5OFHx13": "dDd3nbxv"}, "templateLanguage": "0MDCWE3k", "templateSlug": "XxZ3LJJw", "topicName": "8182qQFJ"}' 'CP7t8wYE' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'TU5v3Vgm' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"DrwWDkb6": {}, "trsDjkVl": {}, "SSHIknyL": {}}, "updatedAt": 7}' 'ONs17SzY' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'ZRzb5Uu8' 'MkfpijEt' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'Co7bnx4r' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'eboaun8g' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"MUOuGjCn": "zJWDYJdB", "YiM0OEnN": "KPunHz6M", "6abx7cps": "kd64CrSb"}}' 'Gl2uY56A' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'sFbr64uL' 'QgmsXYSp' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'm1F2Dchs' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'KwDpAOUL' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["YvCYzcT5", "a1wo2XzC", "3DobgRr0"]}' 'GX80Tr4B' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "u8tehldT"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 '163D52Mi' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "NG32fvte", "note": "hyivpHuE"}' 'wMZRNDlL' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "psUDnVmS", "note": "3KyNQue2"}, {"filter": "8ZSYdE4X", "note": "6x2Pox2V"}, {"filter": "8hKaCSgW", "note": "TeWn9eJu"}]}' 'ldQhrNL3' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[81, 61, 32]' 'JsXef4vq' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "llbfy70u"}' 'FewAx95w' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": false, "name": "R6za37mm"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "JQeWVzNF"}' '7pjLbHde' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'Hu7g166w' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "vPebxGgL"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "ZsumqwwW", "profanityLevel": "pw7JavuU"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "viIE4aRa"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "8lZkteuh"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'esee63AA' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'NB2XRYKM' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"0LRxY9sa": {}, "hkjgQFvU": {}, "lD9nndK9": {}}, "updatedAt": 30}' '9aNprAYB' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 96}' '93vd0iNu' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'Mtr1rj0k' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "YcWlZauX", "topic": "mks6fe4z"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"UfU7qVGF": "l1KzVq56", "TiFCcBYh": "6oShErVU", "vMdJLudH": "Li8fXJFT"}, "templateLanguage": "sjFwQJAD", "templateSlug": "R9zqTgCt", "topic": "4OU8T5fe"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "Hj3JxbCh", "templateLanguage": "oSB0ThJf", "templateSlug": "l1UKBphM"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'Gf338sfN' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'E4YV84F2' --login_with_auth "Bearer foo"
lobby-get-localization-template 'ujA3r5l5' 'YP5Sf5Wt' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "PsefGoNM"}' 'elhlvpLT' '4I1bSLZY' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'l8BpzLrD' 'VHzPRZRJ' --login_with_auth "Bearer foo"
lobby-publish-template 'ak1LgDrv' 'cykNgPrH' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "wWPJx6UH", "topic": "FwbM4FIw"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'bZErB2gX' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "HiPWkOaI"}' 'klsjnXTW' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'mFsDNtQd' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "BaKsX0AO", "topic": "yAE361QZ"}' 'vLIAq55t' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"Q54T15TS": "tRfNdYYr", "daf2dR0o": "ibETZw4B", "KIcH16hm": "OY9aEO7V"}, "templateLanguage": "e3qzEZ5C", "templateSlug": "UpCAsV6t", "topic": "6YBqSAUr"}' 'th3naxz5' --login_with_auth "Bearer foo"
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
    '{"friendId": "4DIgkr79", "friendPublicId": "iYSbqpAg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "4MlBIRHY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "nd4dJpHg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "tOnT1VFK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    '4ZTThGVc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "HlI4DY6J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["ebfDDXzQ", "oFkwpdOr", "LEO6ZV1A"]}' \
    'r128wEUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'CNA2CVjs' \
    'dMkRDTNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'VvDdU7DC' \
    'jbzteWI2' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 27, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 62, "chatRateLimitDuration": 21, "concurrentUsersLimit": 1, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "kG665qAY", "generalRateLimitBurst": 33, "generalRateLimitDuration": 34, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 4, "maxPartyMember": 44, "profanityFilter": false, "readyConsentTimeout": 83}' \
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
    '7Di2BaV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "69B8haiB", "topicName": "rOMdLYr7", "userIds": ["zORjzGCn", "OfrccjbA", "6TNOhzCC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "bh6F2T57", "topicName": "2zyYKVEy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "2JVyztzX", "topicName": "OkvJQ1nW"}' \
    'xvVhGabN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"Hwd14Mnj": "XA9mBRDP", "nUoMQZUA": "8WrA6bJO", "AO7SsSbu": "v5EHdlL1"}, "templateLanguage": "ke8AqOup", "templateSlug": "w3B5Ej9n", "topicName": "cVJxrtXq"}' \
    'pAfwZ2L1' \
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
    '{"templateContent": "vxvBXjb2", "templateLanguage": "KhLKrWPo", "templateSlug": "wfg99IYT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"RujJsedS": "hXHvtWW7", "93qr6wYP": "rk0lw1b0", "irvxrZVi": "IvZffbZe"}, "templateLanguage": "u7VJ0Ivn", "templateSlug": "pOG63pt4", "topicName": "A0V3ppYC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'IhgBqZ9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'un8A8G9n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    '9EgtFj47' \
    '7974yRIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "ILOSciDB"}' \
    'Rs7pJZkg' \
    'oHVidMgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'WGCzskII' \
    'AP9yEZT4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    '7Sy4gpdH' \
    'ofqtDHXI' \
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
    '{"description": "I2lEPEkN", "topicName": "FP0w1I9n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'wpNQsquo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "SoQPY7Ix"}' \
    'BJ6RBouE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'TdISj67Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "9MZAqHba", "topicName": "muRfbu0V"}' \
    'CJpEuOjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"UTMAHz81": "SwCL4c3w", "1FfN3cQf": "QlYKApym", "FU6G432y": "XUMs95QY"}, "templateLanguage": "EN8DBQYu", "templateSlug": "GysMOwJM", "topicName": "d4Sq0qMh"}' \
    'Pcc4fCjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    '9yqYpszY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"dg7MK5ib": {}, "5gIMFchb": {}, "G3h51e1L": {}}, "updatedAt": 6}' \
    's2AE41nJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'FuNjeKMl' \
    'Ia9u2xjZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'hFYarGSg' \
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
    'BbVHid4z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"FoTsbEra": "Ruy7HkfC", "mpIR9JA1": "ZP4k8Yv1", "b6VOXzFm": "W8tXlUDq"}}' \
    'qAAnfnbl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    's1k2Rabq' \
    'lQFoqEyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'Uvlp9Ix2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'gDRr6Ai8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["zNeNHKFU", "D82KwUzD", "7lrg16TG"]}' \
    'ZPktOB3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "FcVwLgaf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'aRY80raa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "OUgSPO7i", "note": "xpH7ptEP"}' \
    'jmXt1dsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "K3wLWBaq", "note": "7vv30dhq"}, {"filter": "M6BQA8Be", "note": "YmPYEck4"}, {"filter": "Jcd4OKkd", "note": "zmLoUNdH"}]}' \
    'MtQvhMQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[4, 54, 37]' \
    'MjMgsmyg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "9zP4jpbC"}' \
    'wDlu1qYU' \
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
    '{"isEnabled": true, "isMandatory": false, "name": "NraA4Y17"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": false, "newName": "2uSNMubQ"}' \
    'GwoMPQlN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'Y1H59ObM' \
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
    '{"rule": "f88CYXFs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "KBu17mhy", "profanityLevel": "RgdUx9Nq"}' \
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
    '{"apiKey": "CUO4baHU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "qQP8P6I8"}' \
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
    'yy1DlROi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    '3rcrx9lF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"1wD5WIae": {}, "iqU54j1y": {}, "LVZbG6qs": {}}, "updatedAt": 93}' \
    'wAQJmisw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 93}' \
    'UE8VBE1g' \
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
    'OzI6Rz0F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "J7ARzr3v", "topic": "2Zb8eQFP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"mKinwcxt": "3780ISiN", "URZkIN8A": "WjPYLQr1", "uM61tzuU": "nbWJ5yTP"}, "templateLanguage": "DeHw7edR", "templateSlug": "hw4RUISE", "topic": "am4hliIU"}' \
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
    '{"templateContent": "pFUQ2q6B", "templateLanguage": "hSXSpcwg", "templateSlug": "b80hYBt4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'gAxghrNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    '9v2toE5d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'M3FNVOSi' \
    'tB9t05fy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "Y6NQRaCx"}' \
    'lYCIpXfY' \
    '0KMTt8Kj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'dI9mlyfW' \
    'CNY0uCYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '2axlwGzd' \
    'AXvp9vBp' \
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
    '{"description": "BG3uZYTm", "topic": "fn3YOnGK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'XTck5kw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "10oynKyb"}' \
    'b30YRAIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'XsJDQaUP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "rh1Omxza", "topic": "kP20vI4z"}' \
    'UaKvvdtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"R7E1u25h": "OXkPXSG5", "1jwG0pnm": "Oh3rQeyJ", "t8W3RloL": "63zsnerq"}, "templateLanguage": "PmpChzxw", "templateSlug": "lIa5kPio", "topic": "SxQ3fSWd"}' \
    'up1GUEfS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
