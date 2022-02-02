#!/bin/bash

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=89

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 GetUserFriendsUpdated
$PYTHON -m $MODULE 'lobby-get-user-friends-updated' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserFriendsUpdated'
delete_file $TEMP_FILE

#- 2 GetUserIncomingFriends
$PYTHON -m $MODULE 'lobby-get-user-incoming-friends' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserIncomingFriends'
delete_file $TEMP_FILE

#- 3 GetUserOutgoingFriends
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOutgoingFriends'
delete_file $TEMP_FILE

#- 4 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "FtBxyZcD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserRequestFriend'
delete_file $TEMP_FILE

#- 5 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "XBpGlsQu"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserAcceptFriendRequest'
delete_file $TEMP_FILE

#- 6 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "Ju8vMf0I"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserCancelFriendRequest'
delete_file $TEMP_FILE

#- 7 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "sJkTrd8I"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserRejectFriendRequest'
delete_file $TEMP_FILE

#- 8 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'DcV2zXnT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserGetFriendshipStatus'
delete_file $TEMP_FILE

#- 9 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "KjXY1bPq"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UserUnfriendRequest'
delete_file $TEMP_FILE

#- 10 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["amiBxx9C"]}' \
    's18EY84e' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddFriendsWithoutConfirmation'
delete_file $TEMP_FILE

#- 11 PersonalChatHistory
$PYTHON -m $MODULE 'lobby-personal-chat-history' \
    'kItqRzHU' \
    '1oh570KQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatHistory'
delete_file $TEMP_FILE

#- 12 AdminChatHistory
$PYTHON -m $MODULE 'lobby-admin-chat-history' \
    'BVaewc72' \
    'krSha68n' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminChatHistory'
delete_file $TEMP_FILE

#- 13 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAllConfigV1'
delete_file $TEMP_FILE

#- 14 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetConfigV1'
delete_file $TEMP_FILE

#- 15 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 29, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 31, "chatRateLimitDuration": 56, "concurrentUsersLimit": 72, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "BdNEUsxF", "generalRateLimitBurst": 2, "generalRateLimitDuration": 56, "maxPartyMember": 70, "profanityFilter": true, "readyConsentTimeout": 70}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateConfigV1'
delete_file $TEMP_FILE

#- 16 ExportConfig
$PYTHON -m $MODULE 'lobby-export-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportConfig'
delete_file $TEMP_FILE

#- 17 ImportConfig
$PYTHON -m $MODULE 'lobby-import-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportConfig'
delete_file $TEMP_FILE

#- 18 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'ZaMSxECb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetListOfFriends'
delete_file $TEMP_FILE

#- 19 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "Zbygyoar", "topicName": "ORoeNHSb", "userIds": ["8Rh3kgs9"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendMultipleUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 20 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "qqJbnQso", "topicName": "BgiVpP8C"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendUsersFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 21 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "m3yvASUo", "topicName": "xdxxFqmA"}' \
    'GTJ8IEda' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendPartyFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 22 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"gEtp4w29": "KOu9c19R"}, "templateLanguage": "6XDqWHkk", "templateSlug": "P8npLEKM", "topicName": "fjiX7jpk"}' \
    'VZk3IaQY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendPartyTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 23 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllNotificationTemplatesV1Admin'
delete_file $TEMP_FILE

#- 24 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "EmqGodOE", "templateLanguage": "Gt9gPOj0", "templateSlug": "c6i0JkvI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateNotificationTemplateV1Admin'
delete_file $TEMP_FILE

#- 25 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"as73ucYn": "FAJ3DK5T"}, "templateLanguage": "4Eogg0Y3", "templateSlug": "9UoYlpv5", "topicName": "bVAgtsDh"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendUsersTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 26 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'UTDUscbQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTemplateSlugLocalizationsTemplateV1Admin'
delete_file $TEMP_FILE

#- 27 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'DjbTQuPM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteNotificationTemplateSlugV1Admin'
delete_file $TEMP_FILE

#- 28 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'z2PTRlky' \
    'U89ZPOw6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 29 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "zPFJ42cw"}' \
    'mzBBSMNc' \
    'oAAOjKNj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 30 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'fcYHm093' \
    'aYgBU1sq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 31 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'jyK0XH45' \
    'PaRSOFQB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublishTemplateLocalizationV1Admin'
delete_file $TEMP_FILE

#- 32 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllNotificationTopicsV1Admin'
delete_file $TEMP_FILE

#- 33 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "tu23REZ8", "topicName": "hRVX7LGO"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 34 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    'vDdYiQS9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 35 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "i7mV1C91"}' \
    'pjG9gpxL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 36 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    '6ycTQdvl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteNotificationTopicV1Admin'
delete_file $TEMP_FILE

#- 37 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "n2LAuSQW", "topicName": "EXL6LFE1"}' \
    'YHo9m126' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendSpecificUserFreeformNotificationV1Admin'
delete_file $TEMP_FILE

#- 38 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"ZWc8hHtW": "vbNYqgUq"}, "templateLanguage": "slArFPiH", "templateSlug": "UIvaCv8k", "topicName": "U9dBBpds"}' \
    'JLhsVyEx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SendSpecificUserTemplatedNotificationV1Admin'
delete_file $TEMP_FILE

#- 39 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'rkxoot0B' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPartyDataV1'
delete_file $TEMP_FILE

#- 40 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"7WOfercZ": {}}, "updatedAt": 7}' \
    'pMci37Ds' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 41 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    '7YSfExaI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserPartyV1'
delete_file $TEMP_FILE

#- 42 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetLobbyCCU'
delete_file $TEMP_FILE

#- 43 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    '3uzLteMb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAllPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 44 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"FAlt4hr7": "HmOYiBA5"}}' \
    'ltAOXmlG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 45 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    '6eh1dTdo' \
    'TFpBIcuC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerSessionAttribute'
delete_file $TEMP_FILE

#- 46 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    '1dQY93OJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 47 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'nJ6Te9vD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 48 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["8ldz7Hu8"]}' \
    'AD79kdWu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminBulkBlockPlayersV1'
delete_file $TEMP_FILE

#- 49 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "nvizU0q1"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDebugProfanityFilters'
delete_file $TEMP_FILE

#- 50 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    'pHyhhERo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetProfanityListFiltersV1'
delete_file $TEMP_FILE

#- 51 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "GgdrysMi", "note": "zBGSRdP2"}' \
    'l7DNSZ8A' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddProfanityFilterIntoList'
delete_file $TEMP_FILE

#- 52 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "q0XiPLQX", "note": "Se07ZddO"}]}' \
    'GTMlJjBw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminAddProfanityFilters'
delete_file $TEMP_FILE

#- 53 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[19]' \
    '9HJHQKse' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminImportProfanityFiltersFromFile'
delete_file $TEMP_FILE

#- 54 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "EdSXRDSv"}' \
    'guauw1xT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteProfanityFilter'
delete_file $TEMP_FILE

#- 55 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetProfanityLists'
delete_file $TEMP_FILE

#- 56 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "name": "Sl9MLH0N"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateProfanityList'
delete_file $TEMP_FILE

#- 57 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "newName": "lNzBvwJa"}' \
    'Qa547Jll' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateProfanityList'
delete_file $TEMP_FILE

#- 58 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'vA8RWSpa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteProfanityList'
delete_file $TEMP_FILE

#- 59 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetProfanityRule'
delete_file $TEMP_FILE

#- 60 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "bUt7xk6Q"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSetProfanityRuleForNamespace'
delete_file $TEMP_FILE

#- 61 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "xyWhfqoW", "profanityLevel": "fJw2o8oW"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminVerifyMessageProfanityResponse'
delete_file $TEMP_FILE

#- 62 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetThirdPartyConfig'
delete_file $TEMP_FILE

#- 63 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "UqvPCZ2H"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateThirdPartyConfig'
delete_file $TEMP_FILE

#- 64 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "zT7NXmWD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateThirdPartyConfig'
delete_file $TEMP_FILE

#- 65 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteThirdPartyConfig'
delete_file $TEMP_FILE

#- 66 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMessages'
delete_file $TEMP_FILE

#- 67 GetPersonalChatHistoryV1Public
$PYTHON -m $MODULE 'lobby-get-personal-chat-history-v1-public' \
    'lXsuNIdQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPersonalChatHistoryV1Public'
delete_file $TEMP_FILE

#- 68 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'JR5lsNOl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPartyDataV1'
delete_file $TEMP_FILE

#- 69 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"vkfwaSbn": {}}, "updatedAt": 37}' \
    'uLCgToxu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdatePartyAttributesV1'
delete_file $TEMP_FILE

#- 70 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPlayerBlockedPlayersV1'
delete_file $TEMP_FILE

#- 71 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPlayerBlockedByPlayersV1'
delete_file $TEMP_FILE

#- 72 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    'VTekJgvg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UsersPresenceHandlerV1'
delete_file $TEMP_FILE

#- 73 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "6h5HIpH0", "topic": "DviplEk4"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FreeFormNotification'
delete_file $TEMP_FILE

#- 74 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"vj3LDp4y": "qDt8QUZD"}, "templateLanguage": "pxlHasin", "templateSlug": "GcjrkmRM", "topic": "ttgjDSaI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'NotificationWithTemplate'
delete_file $TEMP_FILE

#- 75 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGameTemplate'
delete_file $TEMP_FILE

#- 76 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "VBmft3Ud", "templateLanguage": "g7p9PGmY", "templateSlug": "2H5kX4Ms"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateTemplate'
delete_file $TEMP_FILE

#- 77 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'isSX28nA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSlugTemplate'
delete_file $TEMP_FILE

#- 78 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'RxWRpv5o' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTemplateSlug'
delete_file $TEMP_FILE

#- 79 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'u5xtvd28' \
    'OUfCt8UJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocalizationTemplate'
delete_file $TEMP_FILE

#- 80 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "C5flNyj6"}' \
    'HsTtX8P3' \
    'llnaaS9l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateLocalizationTemplate'
delete_file $TEMP_FILE

#- 81 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'qyygPcfk' \
    'JIxfQZza' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTemplateLocalization'
delete_file $TEMP_FILE

#- 82 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    '8kNVbDxV' \
    'Mq7HJk0F' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublishTemplate'
delete_file $TEMP_FILE

#- 83 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTopicByNamespace'
delete_file $TEMP_FILE

#- 84 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "89xAc3YV", "topic": "faENtrl0"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateTopic'
delete_file $TEMP_FILE

#- 85 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'pTKZTXqz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTopicByTopicName'
delete_file $TEMP_FILE

#- 86 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "HuBMYQSA"}' \
    '2jz1ZOpd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTopicByTopicName'
delete_file $TEMP_FILE

#- 87 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'OjSyMddB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTopicByTopicName'
delete_file $TEMP_FILE

#- 88 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "41JuMf7R", "topic": "UyBHRj8I"}' \
    'iRimRllH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FreeFormNotificationByUserID'
delete_file $TEMP_FILE

#- 89 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"T6Dc40vF": "FA6gpU7E"}, "templateLanguage": "W3x1dCpm", "templateSlug": "55gOeqQI", "topic": "qcJVKmBM"}' \
    '1J1IbuTr' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'NotificationWithTemplateByUserID'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT