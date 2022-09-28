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
matchmaking-get-healthcheck-info --login_with_auth "Bearer foo"
matchmaking-handler-v3-healthz --login_with_auth "Bearer foo"
matchmaking-get-all-channels-handler --login_with_auth "Bearer foo"
matchmaking-create-channel-handler '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 6, "name": "8IDcV2zX"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 3}, "max_number": 83, "min_number": 33, "player_max_number": 1, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 17, "min": 54, "name": "xx9Cs18E"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 39}, "duration": 32, "max_number": 87, "min_number": 51, "player_max_number": 67, "player_min_number": 92}], "flexing_rule": [{"attribute": "1oh570KQ", "criteria": "BVaewc72", "duration": 21, "reference": 0.2735204376168321}], "match_options": {"options": [{"name": "ha68n3Yn", "type": "ozp1C2Km"}]}, "matching_rule": [{"attribute": "IQTuBdNE", "criteria": "UsxFb8CJ", "reference": 0.8361575896005451}], "sub_game_modes": {"M7DJZaMS": {"alliance": {"combination": {"alliances": [{"max": 47, "min": 61, "name": "CbZbygyo"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 87}, "max_number": 29, "min_number": 8, "player_max_number": 79, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 2, "name": "8Rh3kgs9"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 2}, "duration": 27, "max_number": 85, "min_number": 36, "player_max_number": 28, "player_min_number": 54}], "name": "giVpP8Cm"}}}, "session_queue_timeout_seconds": 49, "social_matchmaking": true, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'SUoxdxxF' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "qmAGTJ8I", "players": [{"results": [{"attribute": "EdagEtp4", "value": 0.3478854734870396}], "user_id": "9KOu9c19"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "R6XDqWHk"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "kP8npLEK", "client_version": "MfjiX7jp", "deployment": "kVZk3IaQ", "game_mode": "YEmqGodO", "joinable": true, "match_id": "Gt9gPOj0", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 5, "party_attributes": {"6i0JkvIa": {}}, "party_id": "s73ucYnF", "party_members": [{"extra_attributes": {"AJ3DK5T4": {}}, "user_id": "Eogg0Y39"}], "ticket_id": "UoYlpv5b"}]}], "namespace": "VAgtsDhU", "party_attributes": {"TDUscbQD": {}}, "party_id": "jbTQuPMz", "queued_at": 82, "region": "TRlkyU89", "server_name": "ZPOw6zPF", "status": "J42cwmzB", "ticket_id": "BSMNcoAA", "updated_at": "1991-03-14T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "KNjfcYHm"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler '093aYgBU' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 36, "userID": "qjyK0XH4", "weight": 0.8927508715610223}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'aRSOFQBt' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "u23REZ8h", "description": "RVX7LGOv", "findMatchTimeoutSeconds": 58, "joinable": false, "max_delay_ms": 17, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 84, "min": 89, "name": "9i7mV1C9"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 13}, "maxNumber": 31, "minNumber": 47, "playerMaxNumber": 75, "playerMinNumber": 48}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 4, "min": 90, "name": "Qdvln2LA"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 74}, "duration": 74, "max_number": 62, "min_number": 60, "player_max_number": 67, "player_min_number": 28}], "flexingRules": [{"attribute": "9m126ZWc", "criteria": "8hHtWvbN", "duration": 33, "reference": 0.09496333985774819}], "match_options": {"options": [{"name": "qslArFPi", "type": "HUIvaCv8"}]}, "matchingRules": [{"attribute": "kU9dBBpd", "criteria": "sJLhsVyE", "reference": 0.36673205551875165}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 20, "socialMatchmaking": true, "use_sub_gamemode": false}' 'ot0B7WOf' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'ercZdpMc' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'i37Ds7YS' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["fExaI3uz"], "party_id": "LteMbFAl", "user_id": "t4hr7HmO"}' 'YiBA5ltA' 'OXmlG6eh' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel '1dTdoTFp' 'BIcuC1dQ' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'Y93OJnJ6' 'Te9vD8ld' 'z7Hu8AD7' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel '9kdWunvi' --login_with_auth "Bearer foo"
matchmaking-version-check-handler --login_with_auth "Bearer foo"
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
echo "1..30"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'matchmaking-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
$PYTHON -m $MODULE 'matchmaking-handler-v3-healthz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
$PYTHON -m $MODULE 'matchmaking-get-all-channels-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
$PYTHON -m $MODULE 'matchmaking-create-channel-handler' \
    '{"deployment": "zU0q1pHy", "description": "hhERoGgd", "find_match_timeout_seconds": 34, "game_mode": "ysMizBGS", "joinable": false, "max_delay_ms": 82, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 23, "min": 59, "name": "NSZ8Aq0X"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 6}, "max_number": 80, "min_number": 65, "player_max_number": 90, "player_min_number": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 23, "min": 70, "name": "jBwj9HJH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 6}, "duration": 88, "max_number": 98, "min_number": 87, "player_max_number": 59, "player_min_number": 89}], "flexing_rule": [{"attribute": "vguauw1x", "criteria": "T7eMwSl9", "duration": 76, "reference": 0.5925349259478901}], "match_options": {"options": [{"name": "0NnTJ2ul", "type": "NzBvwJaQ"}]}, "matching_rule": [{"attribute": "a547Jllv", "criteria": "A8RWSpab", "reference": 0.7321266033159729}], "sub_game_modes": {"7xk6QxyW": {"alliance": {"combination": {"alliances": [{"max": 15, "min": 11, "name": "qoWfJw2o"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 83}, "max_number": 56, "min_number": 66, "player_max_number": 50, "player_min_number": 91}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 78, "min": 99, "name": "mWDlXsuN"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 78}, "duration": 81, "max_number": 23, "min_number": 43, "player_max_number": 20, "player_min_number": 10}], "name": "waSbnsuL"}}}, "session_queue_timeout_seconds": 57, "social_matchmaking": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'xuVTekJg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "vg6h5HIp", "players": [{"results": [{"attribute": "H0DviplE", "value": 0.16056817686329217}], "user_id": "vj3LDp4y"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "qDt8QUZD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "pxlHasin", "client_version": "GcjrkmRM", "deployment": "ttgjDSaI", "game_mode": "VBmft3Ud", "joinable": false, "match_id": "7p9PGmY2", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 67, "party_attributes": {"5kX4Msis": {}}, "party_id": "SX28nARx", "party_members": [{"extra_attributes": {"WRpv5ou5": {}}, "user_id": "xtvd28OU"}], "ticket_id": "fCt8UJC5"}]}], "namespace": "flNyj6Hs", "party_attributes": {"TtX8P3ll": {}}, "party_id": "naaS9lqy", "queued_at": 48, "region": "gPcfkJIx", "server_name": "fQZza8kN", "status": "VbDxVMq7", "ticket_id": "HJk0F89x", "updated_at": "1984-01-20T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "3YVfaENt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'rl0pTKZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 99, "userID": "qzHuBMYQ", "weight": 0.6906874135604464}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-all-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
$PYTHON -m $MODULE 'matchmaking-bulk-get-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
$PYTHON -m $MODULE 'matchmaking-export-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
$PYTHON -m $MODULE 'matchmaking-import-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-get-single-matchmaking-channel' \
    '2jz1ZOpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "OjSyMddB", "description": "41JuMf7R", "findMatchTimeoutSeconds": 93, "joinable": true, "max_delay_ms": 54, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 66, "min": 87, "name": "j8IiRimR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 91}, "maxNumber": 59, "minNumber": 5, "playerMaxNumber": 42, "playerMinNumber": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 63, "min": 52, "name": "6gpU7EW3"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 30}, "duration": 24, "max_number": 12, "min_number": 80, "player_max_number": 8, "player_min_number": 33}], "flexingRules": [{"attribute": "QIqcJVKm", "criteria": "BM1J1Ibu", "duration": 91, "reference": 0.2778162529184305}], "match_options": {"options": [{"name": "kbmuT1wh", "type": "OqmEnDXI"}]}, "matchingRules": [{"attribute": "WrBPlSay", "criteria": "46mv71BA", "reference": 0.8123571754994697}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 81, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'FJ2vmTj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'tT7TZHWD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'dCkIsZoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["rWwPHcyF"], "party_id": "AdAtYciL", "user_id": "IgRwFRr0"}' \
    'gwB9tz3v' \
    'p99XVlV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'rK3tE6n0' \
    'smip1tw3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'L7cUd9pq' \
    'tv6JfPZw' \
    'cCVOXcVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
eval_tap 0 24 'SearchSessions # SKIP deprecated' test.out

#- 25 GetSessionHistoryDetailed
eval_tap 0 25 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 26 PublicGetMessages
$PYTHON -m $MODULE 'matchmaking-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-all-matchmaking-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-single-matchmaking-channel' \
    '80TmCwtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
eval_tap 0 29 'SearchSessionsV2 # SKIP deprecated' test.out

#- 30 VersionCheckHandler
$PYTHON -m $MODULE 'matchmaking-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
