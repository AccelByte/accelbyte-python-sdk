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
lobby-user-request-friend '{"friendId": "ZemCihTg", "friendPublicId": "C9uehkeY"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "OvOSIIvv"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "mtjlQ6hV"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "FMJgfpe4"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'AH0eLfm6' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "6OeZgGbD"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["jJPqrSO8", "Mq7DeDd7", "EanQaKMu"]}' '32dr1j2h' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'aUikYNI6' '5QTEt9QJ' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'Y6dVKnMT' '8XetsR3H' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 54, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 63, "chatRateLimitDuration": 55, "concurrentUsersLimit": 25, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "fpF5Z7r7", "generalRateLimitBurst": 48, "generalRateLimitDuration": 82, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 84, "maxPartyMember": 62, "profanityFilter": false, "readyConsentTimeout": 88}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends '6VHxU4Le' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "gCUdBymE", "topicName": "qmxaL8kC", "userIds": ["bPTUf9MI", "goqYmtXF", "6PAcFFiQ"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "7jNNQszt", "topicName": "H2TNvmM1"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "h4t7qCId", "topicName": "yxYVAsVs"}' '8HNqIo8u' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"VJSjUTsg": "1TvyvR3A", "om1SRtHi": "fIv6yt3T", "oNGM7C7c": "1fIKi5xf"}, "templateLanguage": "wr7rLzWx", "templateSlug": "YzYAsA2j", "topicName": "9yB6SShz"}' 'j4cfCt3R' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "sIGcf4bZ", "templateLanguage": "feh75175", "templateSlug": "Pxp5BhFM"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"Vhaybn0r": "tnA1cyq4", "BwrzAVf3": "sj9p8CII", "yR3utfCC": "sfFDyLAA"}, "templateLanguage": "OCdPJJ7G", "templateSlug": "sSJ0ltBy", "topicName": "mN53vs62"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'leVl8Rb3' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'oMpaJ7Iz' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'ilDH9u9Z' 'Q2sVTLCE' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "6SkdqTSi"}' 'OFNAvGOm' 'bL0QgSGN' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'K47dZTEp' 'gVFmgv7l' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'zPBv3ms2' 'kO46AHhL' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "uC9DLJ9a", "topicName": "QmufTLDp"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin '9aOUwvpx' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "ubg2beTi"}' 'MzG3MEJj' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'yZVxxLzN' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "iTv62p9y", "topicName": "dcgMUw8Z"}' '4J7XPrWM' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"HGffmLHa": "XFAmQWtl", "0DS2LyJY": "6ID16PEq", "BTROonxJ": "BJLiiw5O"}, "templateLanguage": "RPMTE0Q7", "templateSlug": "hcD4J5Hs", "topicName": "suE4CBKg"}' 'uCXQT8v1' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'rod7QD1q' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"IfrqcWY4": {}, "cht1YNpT": {}, "YBIvKPwQ": {}}, "updatedAt": 78}' 'dNTPa36e' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'lyfAR6K3' 'RpgJW33z' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'yZlFw9rq' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute '98VelooH' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"ndsVonJi": "tmA21W0u", "IzvPP58N": "6GwBxcDF", "jBXmUH8r": "XvXtab6g"}}' 'RlXAi0wX' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'QGckX9Mg' 'jCxSafi5' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 '2bOyfoXC' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'hyPD9W8N' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["gR35klGz", "SAf6Usuk", "iPwOG3Ub"]}' 'BtGrJ8ST' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "Um0fOnZH"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'FkPgNFGT' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "b2vUQpPs", "note": "5PXICmMF"}' 'T1WfgpAw' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "J5Dp7DqS", "note": "zbPBTTYd"}, {"filter": "ZGPGSCWq", "note": "amNrkCc9"}, {"filter": "0yjGALig", "note": "Z1xyxg9v"}]}' 'hYVNPiXJ' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[84, 7, 76]' 'x4tEDRCL' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "ud3hiNWI"}' 'Zixu1cvT' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "ih9whCLQ"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "xNO9MvuW"}' 'so6RPMoC' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list '8GptnS7O' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "yrofP3a0"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "YqcNdo30", "profanityLevel": "TUBPfnXF"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "8bAuihvs"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "TeidWBsR"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public '1OzQ4SMg' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'ggp7lFNr' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"b2EXDznV": {}, "YGPPiE44": {}, "aSr0vD6O": {}}, "updatedAt": 23}' 'ly6aNgpk' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 59}' 'RXif5EN4' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'kHc9JEeL' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "aJ7XuAhF", "topic": "bJrdxkqu"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"VZter8zR": "ISWT4Zbh", "vwSVmUOI": "GkStYcBc", "YB4ZcAuk": "DdZxHWnQ"}, "templateLanguage": "dfKfxKtL", "templateSlug": "0R2tsBQr", "topic": "tj08Ghqz"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "tVzYVBau", "templateLanguage": "NVhfM21u", "templateSlug": "2RWeZ9NN"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'Tk4F1Y3c' --login_with_auth "Bearer foo"
lobby-delete-template-slug '9AhemJ8L' --login_with_auth "Bearer foo"
lobby-get-localization-template 'ptjz8nfs' 'qz7XWBU6' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "5iPUEUfh"}' 'IffNn2f7' 'WxJwHRQ1' --login_with_auth "Bearer foo"
lobby-delete-template-localization '4zFLgW7I' 'ZEtftoVR' --login_with_auth "Bearer foo"
lobby-publish-template 'EJhDP7Na' '5w2tPzps' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "qazbkGrK", "topic": "MQts0L6m"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'cVqS1VHn' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "wfuOBWEA"}' 'wPUnU5I4' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'Vq7ifTXA' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "X3rA7rlg", "topic": "iB1d7Pgf"}' 'trArSnBN' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"PLMFBooF": "7Os8j2o4", "DjRAIdWG": "U0lFo29a", "xMALb6ug": "LemOTgBA"}, "templateLanguage": "GYWtrjDj", "templateSlug": "YtgGj0nt", "topic": "GrbjPUrz"}' '4kdjXhDH' --login_with_auth "Bearer foo"
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
    '{"friendId": "FVfzzxZ1", "friendPublicId": "F3r9cAlB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UserRequestFriend' test.out

#- 6 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "OBjHZbJJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UserAcceptFriendRequest' test.out

#- 7 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "D8dI5NXQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UserCancelFriendRequest' test.out

#- 8 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "LWTMcipA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRejectFriendRequest' test.out

#- 9 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'UzZV778D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserGetFriendshipStatus' test.out

#- 10 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "slElcl4s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserUnfriendRequest' test.out

#- 11 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["qTOjF5mR", "dTzDA2zL", "uSUhMSJ8"]}' \
    'jA6cupiA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AddFriendsWithoutConfirmation' test.out

#- 12 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'xlVx3Q71' \
    'v1csvRyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PersonalChatHistory' test.out

#- 13 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'iEvSJi3n' \
    'jQB6ORrU' \
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
    '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 59, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 18, "chatRateLimitDuration": 90, "concurrentUsersLimit": 16, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "iLOI1Cre", "generalRateLimitBurst": 89, "generalRateLimitDuration": 99, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 31, "maxPartyMember": 67, "profanityFilter": false, "readyConsentTimeout": 78}' \
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
    'lgl62EYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetListOfFriends' test.out

#- 20 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "1mzhcm7I", "topicName": "wpbrGPpz", "userIds": ["B9ksuscw", "PbWqbidP", "SIw2bnoh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 21 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "AVT2xU6p", "topicName": "ywGzfwoq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SendUsersFreeformNotificationV1Admin' test.out

#- 22 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "7AlXaBll", "topicName": "88k934Y4"}' \
    'WOGxEHX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SendPartyFreeformNotificationV1Admin' test.out

#- 23 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"OOcKOuQ9": "V3iKUGYt", "ZfCciYf7": "35gLv00D", "gDYZ03hK": "ZffqfhMg"}, "templateLanguage": "PcaHTyr3", "templateSlug": "pKTQjsxu", "topicName": "KSCH6aBp"}' \
    'TGhEerCl' \
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
    '{"templateContent": "TnJeRifx", "templateLanguage": "qyITk3Q7", "templateSlug": "9hYHq1K5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateNotificationTemplateV1Admin' test.out

#- 26 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"2FnTNdMs": "Ncpm0o7Z", "7pzOgb5O": "mFmCKtbm", "80uISiNl": "Ob5Xex1C"}, "templateLanguage": "PGIcrBMw", "templateSlug": "SMSShOVj", "topicName": "2nImt8Ks"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SendUsersTemplatedNotificationV1Admin' test.out

#- 27 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'mtfC7sqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 28 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'O3k6H1YA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 29 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'AQVLQPlG' \
    'TqzZWGdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetSingleTemplateLocalizationV1Admin' test.out

#- 30 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "l01OnKL1"}' \
    'f6vtSSpX' \
    'k1ABKK1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateTemplateLocalizationV1Admin' test.out

#- 31 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'gVxOv2lT' \
    'Qq3DLVNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTemplateLocalizationV1Admin' test.out

#- 32 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    '6u43Rg3e' \
    'c0ZsYdph' \
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
    '{"description": "TuHWs9ZT", "topicName": "nHev4qyw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTopicV1Admin' test.out

#- 35 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'WUjU9tYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetNotificationTopicV1Admin' test.out

#- 36 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "jC9vWiu0"}' \
    'hcp1bpvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateNotificationTopicV1Admin' test.out

#- 37 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    '8nLKyTVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTopicV1Admin' test.out

#- 38 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "Mx0A5IFh", "topicName": "BnpuK7J0"}' \
    '5wRMFRVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 39 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"nwRwVYz3": "TccwMMVv", "Z4gVTMZJ": "43OQ2GTp", "tZbGDhMR": "MWA3QdU7"}, "templateLanguage": "jkIRM6dM", "templateSlug": "hrniNiCd", "topicName": "YC0viSde"}' \
    '0gLVXoqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 40 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'J7JlfQAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPartyDataV1' test.out

#- 41 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"bNpNL8Iz": {}, "F3hju6e4": {}, "ESV7M96P": {}}, "updatedAt": 29}' \
    'Izsjw6tG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdatePartyAttributesV1' test.out

#- 42 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'fsrnyTKc' \
    'YP9wyS55' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminJoinPartyV1' test.out

#- 43 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    '025bKRv5' \
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
    'e2deu39X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllPlayerSessionAttribute' test.out

#- 46 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"ufG4n5td": "Yus7thaS", "bCMdVvPn": "m79cDDdd", "uOF6LIwZ": "CWwmCgrK"}}' \
    '5fFwS5p2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSetPlayerSessionAttribute' test.out

#- 47 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'x2rZruCV' \
    'OLC7WeiW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerSessionAttribute' test.out

#- 48 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'iiba21G7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerBlockedPlayersV1' test.out

#- 49 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'Ff3GMjQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 50 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["khMppDfN", "Lxv5eM50", "fztWlTrx"]}' \
    'vPA16NzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminBulkBlockPlayersV1' test.out

#- 51 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "Do4VXrEK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDebugProfanityFilters' test.out

#- 52 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'GMcgCjIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetProfanityListFiltersV1' test.out

#- 53 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "fU9UZTp7", "note": "ndQzjixr"}' \
    'tDEZXGV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminAddProfanityFilterIntoList' test.out

#- 54 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "iGGtD2GH", "note": "6jIwOblx"}, {"filter": "1iMcJ2O9", "note": "ryRQHZcD"}, {"filter": "y6v5f3Pv", "note": "0c8uOx2G"}]}' \
    'dIVgWnvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminAddProfanityFilters' test.out

#- 55 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[8, 46, 51]' \
    'jxl3jrfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminImportProfanityFiltersFromFile' test.out

#- 56 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "mpozToQc"}' \
    'YC8nRaWb' \
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
    '{"isEnabled": false, "isMandatory": false, "name": "DBwggDZk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminCreateProfanityList' test.out

#- 59 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": false, "newName": "Pee3Lhsm"}' \
    'hvmWBVWS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminUpdateProfanityList' test.out

#- 60 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'hGBaqfW8' \
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
    '{"rule": "5JsHbBo0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminSetProfanityRuleForNamespace' test.out

#- 63 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "X6IUaVYd", "profanityLevel": "GinlEIKL"}' \
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
    '{"apiKey": "Hb4TdNmO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateThirdPartyConfig' test.out

#- 66 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "LoRbpUqI"}' \
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
    'S3isrPuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetPersonalChatHistoryV1Public' test.out

#- 70 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    '5E7g50hc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPartyDataV1' test.out

#- 71 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"yYdnAaEI": {}, "zvSCbmI4": {}, "35aRI7K3": {}}, "updatedAt": 75}' \
    'mi8COpG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdatePartyAttributesV1' test.out

#- 72 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 36}' \
    'yiSylbz5' \
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
    'Ysk5u8FB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UsersPresenceHandlerV1' test.out

#- 76 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "ujzZUyXw", "topic": "PnzgyV8V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'FreeFormNotification' test.out

#- 77 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"g1NwyAvS": "k8RulWQY", "qoU0R95t": "QXGnmyFU", "f5BhAqwd": "54OzcufS"}, "templateLanguage": "WoWVRefJ", "templateSlug": "xoCfCkyn", "topic": "qqN4TEcN"}' \
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
    '{"templateContent": "fZbWw7Qt", "templateLanguage": "qcJVlvzp", "templateSlug": "xfjVMl8j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'CreateTemplate' test.out

#- 80 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    '7E6Zrk30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetSlugTemplate' test.out

#- 81 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'UDIxvUzd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteTemplateSlug' test.out

#- 82 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'fqCLDfAH' \
    'sshHKNHW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetLocalizationTemplate' test.out

#- 83 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "g37npuEi"}' \
    '1gvolzx9' \
    'B2cub8Jf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateLocalizationTemplate' test.out

#- 84 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'sra0Lt41' \
    'rfmxW3f3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateLocalization' test.out

#- 85 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'vqrXoATR' \
    'D8c8HZOu' \
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
    '{"description": "nqcHzjnF", "topic": "QY5g9hNR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'CreateTopic' test.out

#- 88 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    's3xGF2TK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByTopicName' test.out

#- 89 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "PAcxGb1V"}' \
    '4fcDhzTF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateTopicByTopicName' test.out

#- 90 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    '2icipJsZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteTopicByTopicName' test.out

#- 91 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "KScVjsQA", "topic": "APby9YvX"}' \
    '7AvfV2e0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'FreeFormNotificationByUserID' test.out

#- 92 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"pzwZeMpK": "SFhsiV4S", "AXqhGOFP": "jGUr4pbL", "IebfIbg8": "pffOhJ9h"}, "templateLanguage": "yqANlGnf", "templateSlug": "kE5MF9Bk", "topic": "r3ZpfVgq"}' \
    'PTlVkdKk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
