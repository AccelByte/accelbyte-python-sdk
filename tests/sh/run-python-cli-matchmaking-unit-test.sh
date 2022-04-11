#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=28

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

#- 1 GetHealthcheckInfo
$PYTHON -m $MODULE 'matchmaking-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetHealthcheckInfo'
delete_file $TEMP_FILE

#- 2 HandlerV3Healthz
$PYTHON -m $MODULE 'matchmaking-handler-v3-healthz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'HandlerV3Healthz'
delete_file $TEMP_FILE

#- 3 GetAllChannelsHandler
$PYTHON -m $MODULE 'matchmaking-get-all-channels-handler' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllChannelsHandler'
delete_file $TEMP_FILE

#- 4 CreateChannelHandler
$PYTHON -m $MODULE 'matchmaking-create-channel-handler' \
    '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"max_number": 34, "min_number": 6, "player_max_number": 68, "player_min_number": 59}, "alliance_flexing_rule": [{"duration": 4, "max_number": 95, "min_number": 51, "player_max_number": 98, "player_min_number": 27}], "flexing_rule": [{"attribute": "TKjXY1bP", "criteria": "qamiBxx9", "duration": 57, "reference": 0.2813861209359233}], "match_options": {"options": [{"name": "8EY84ekI", "type": "tqRzHU1o"}]}, "matching_rule": [{"attribute": "h570KQBV", "criteria": "aewc72kr", "reference": 0.698496946052087}], "sub_game_modes": {"a68n3Yno": {"alliance": {"max_number": 51, "min_number": 31, "player_max_number": 56, "player_min_number": 72}, "alliance_flexing_rule": [{"duration": 24, "max_number": 68, "min_number": 85, "player_max_number": 91, "player_min_number": 41}], "name": "BdNEUsxF"}}}, "session_queue_timeout_seconds": 2, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateChannelHandler'
delete_file $TEMP_FILE

#- 5 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'JZaMSxEC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteChannelHandler'
delete_file $TEMP_FILE

#- 6 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "bZbygyoa", "players": [{"results": [{"attribute": "rORoeNHS", "value": 0.019251152430858398}], "user_id": "Rh3kgs9q"}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'StoreMatchResults'
delete_file $TEMP_FILE

#- 7 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "qJbnQsoB", "client_version": "giVpP8Cm", "deployment": "3yvASUox", "game_mode": "dxxFqmAG", "joinable": true, "match_id": "dagEtp4w", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 73, "party_attributes": {"Ou9c19R6": {}}, "party_id": "XDqWHkkP", "party_members": [{"extra_attributes": {"8npLEKMf": {}}, "user_id": "jiX7jpkV"}]}]}], "namespace": "Zk3IaQYE", "party_attributes": {"mqGodOEG": {}}, "party_id": "t9gPOj0c", "queued_at": 16, "region": "0JkvIas7", "server_name": "3ucYnFAJ", "status": "3DK5T4Eo", "updated_at": "1974-02-20T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueueSessionHandler'
delete_file $TEMP_FILE

#- 8 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "0Y39UoYl"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DequeueSessionHandler'
delete_file $TEMP_FILE

#- 9 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'pv5bVAgt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySessionHandler'
delete_file $TEMP_FILE

#- 10 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 36, "userID": "DhUTDUsc", "weight": 0.018605669361531185}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlayTimeWeight'
delete_file $TEMP_FILE

#- 11 GetAllPartyInAllChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-all-channel' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllPartyInAllChannel'
delete_file $TEMP_FILE

#- 12 BulkGetSessions
$PYTHON -m $MODULE 'matchmaking-bulk-get-sessions' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetSessions'
delete_file $TEMP_FILE

#- 13 ExportChannels
$PYTHON -m $MODULE 'matchmaking-export-channels' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportChannels'
delete_file $TEMP_FILE

#- 14 ImportChannels
$PYTHON -m $MODULE 'matchmaking-import-channels' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportChannels'
delete_file $TEMP_FILE

#- 15 GetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-get-single-matchmaking-channel' \
    'DjbTQuPM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 16 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "z2PTRlky", "description": "U89ZPOw6", "findMatchTimeoutSeconds": 50, "joinable": true, "max_delay_ms": 71, "ruleSet": {"alliance": {"maxNumber": 5, "minNumber": 45, "playerMaxNumber": 25, "playerMinNumber": 50}, "alliance_flexing_rule": [{"duration": 55, "max_number": 54, "min_number": 88, "player_max_number": 76, "player_min_number": 78}], "flexingRules": [{"attribute": "coAAOjKN", "criteria": "jfcYHm09", "duration": 0, "reference": 0.7842530988331963}], "match_options": {"options": [{"name": "BU1sqjyK", "type": "0XH45PaR"}]}, "matchingRules": [{"attribute": "SOFQBtu2", "criteria": "3REZ8hRV", "reference": 0.772246792360384}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 74, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'dYiQS9i7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMatchmakingChannel'
delete_file $TEMP_FILE

#- 17 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'mV1C91pj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllPartyInChannel'
delete_file $TEMP_FILE

#- 18 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'G9gpxL6y' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllSessionsInChannel'
delete_file $TEMP_FILE

#- 19 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["cTQdvln2"], "party_id": "LAuSQWEX", "user_id": "L6LFE1YH"}' \
    'o9m126ZW' \
    'c8hHtWvb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddUserIntoSessionInChannel'
delete_file $TEMP_FILE

#- 20 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'NYqgUqsl' \
    'ArFPiHUI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSessionInChannel'
delete_file $TEMP_FILE

#- 21 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'vaCv8kU9' \
    'dBBpdsJL' \
    'hsVyExrk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserFromSessionInChannel'
delete_file $TEMP_FILE

#- 22 SearchSessions
$PYTHON -m $MODULE 'matchmaking-search-sessions' \
    '46' \
    '29' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SearchSessions'
delete_file $TEMP_FILE

#- 23 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'matchmaking-get-session-history-detailed' \
    'ot0B7WOf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSessionHistoryDetailed'
delete_file $TEMP_FILE

#- 24 PublicGetMessages
$PYTHON -m $MODULE 'matchmaking-public-get-messages' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMessages'
delete_file $TEMP_FILE

#- 25 PublicGetAllMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-all-matchmaking-channel' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetAllMatchmakingChannel'
delete_file $TEMP_FILE

#- 26 PublicGetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-single-matchmaking-channel' \
    'ercZdpMc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetSingleMatchmakingChannel'
delete_file $TEMP_FILE

#- 27 SearchSessionsV2
$PYTHON -m $MODULE 'matchmaking-search-sessions-v2' \
    '17' \
    '58' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SearchSessionsV2'
delete_file $TEMP_FILE

#- 28 VersionCheckHandler
$PYTHON -m $MODULE 'matchmaking-version-check-handler' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'VersionCheckHandler'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT