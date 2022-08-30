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
matchmaking-create-channel-handler '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 6, "name": "8IDcV2zX"}], "has_combination": false}, "max_number": 90, "min_number": 72, "player_max_number": 18, "player_min_number": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 3, "min": 83, "name": "qamiBxx9"}], "has_combination": true}, "duration": 36, "max_number": 61, "min_number": 100, "player_max_number": 9, "player_min_number": 20}], "flexing_rule": [{"attribute": "ItqRzHU1", "criteria": "oh570KQB", "duration": 95, "reference": 0.015014410487906638}], "match_options": {"options": [{"name": "wc72krSh", "type": "a68n3Yno"}]}, "matching_rule": [{"attribute": "zp1C2KmI", "criteria": "QTuBdNEU", "reference": 0.2955850166289542}], "sub_game_modes": {"Fb8CJ17M": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 70, "name": "ZaMSxECb"}], "has_combination": false}, "max_number": 49, "min_number": 13, "player_max_number": 49, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 1, "min": 35, "name": "ORoeNHSb"}], "has_combination": false}, "duration": 21, "max_number": 13, "min_number": 37, "player_max_number": 32, "player_min_number": 33}], "name": "JbnQsoBg"}}}, "session_queue_timeout_seconds": 17, "social_matchmaking": false, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'm3yvASUo' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "xdxxFqmA", "players": [{"results": [{"attribute": "GTJ8IEda", "value": 0.1091792320652828}], "user_id": "tp4w29KO"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "u9c19R6X"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "DqWHkkP8", "client_version": "npLEKMfj", "deployment": "iX7jpkVZ", "game_mode": "k3IaQYEm", "joinable": true, "match_id": "GodOEGt9", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"POj0c6i0": {}}, "party_id": "JkvIas73", "party_members": [{"extra_attributes": {"ucYnFAJ3": {}}, "user_id": "DK5T4Eog"}]}]}], "namespace": "g0Y39UoY", "party_attributes": {"lpv5bVAg": {}}, "party_id": "tsDhUTDU", "queued_at": 36, "region": "cbQDjbTQ", "server_name": "uPMz2PTR", "status": "lkyU89ZP", "updated_at": "1991-06-23T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "6zPFJ42c"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'wmzBBSMN' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 4, "userID": "oAAOjKNj", "weight": 0.0897341149693317}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'YHm093aY' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "gBU1sqjy", "description": "K0XH45Pa", "findMatchTimeoutSeconds": 87, "joinable": true, "max_delay_ms": 84, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 55, "min": 38, "name": "u23REZ8h"}], "has_combination": true}, "maxNumber": 58, "minNumber": 6, "playerMaxNumber": 17, "playerMinNumber": 84}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 16, "name": "7mV1C91p"}], "has_combination": false}, "duration": 64, "max_number": 13, "min_number": 31, "player_max_number": 47, "player_min_number": 75}], "flexingRules": [{"attribute": "6ycTQdvl", "criteria": "n2LAuSQW", "duration": 61, "reference": 0.7742071046377077}], "match_options": {"options": [{"name": "6LFE1YHo", "type": "9m126ZWc"}]}, "matchingRules": [{"attribute": "8hHtWvbN", "criteria": "YqgUqslA", "reference": 0.26776971290019247}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 82, "socialMatchmaking": false, "use_sub_gamemode": true}' 'aCv8kU9d' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'BBpdsJLh' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'sVyExrkx' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["oot0B7WO"], "party_id": "fercZdpM", "user_id": "ci37Ds7Y"}' 'SfExaI3u' 'zLteMbFA' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'lt4hr7Hm' 'OYiBA5lt' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'AOXmlG6e' 'h1dTdoTF' 'pBIcuC1d' --login_with_auth "Bearer foo"
matchmaking-search-sessions '85' '100' --login_with_auth "Bearer foo"
matchmaking-get-session-history-detailed '93OJnJ6T' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'e9vD8ldz' --login_with_auth "Bearer foo"
matchmaking-search-sessions-v2 '66' '40' --login_with_auth "Bearer foo"
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
    '{"deployment": "8AD79kdW", "description": "unvizU0q", "find_match_timeout_seconds": 31, "game_mode": "HyhhERoG", "joinable": false, "max_delay_ms": 7, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 49, "name": "sMizBGSR"}], "has_combination": false}, "max_number": 82, "min_number": 23, "player_max_number": 59, "player_min_number": 79}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 53, "name": "q0XiPLQX"}], "has_combination": false}, "duration": 7, "max_number": 6, "min_number": 80, "player_max_number": 65, "player_min_number": 90}], "flexing_rule": [{"attribute": "MlJjBwj9", "criteria": "HJHQKseE", "duration": 6, "reference": 0.6881965679746599}], "match_options": {"options": [{"name": "RDSvguau", "type": "w1xT7eMw"}]}, "matching_rule": [{"attribute": "Sl9MLH0N", "criteria": "nTJ2ulNz", "reference": 0.43598936743751193}], "sub_game_modes": {"wJaQa547": {"alliance": {"combination": {"alliances": [{"max": 71, "min": 23, "name": "lvA8RWSp"}], "has_combination": false}, "max_number": 2, "min_number": 93, "player_max_number": 39, "player_min_number": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 85, "name": "xyWhfqoW"}], "has_combination": false}, "duration": 71, "max_number": 45, "min_number": 28, "player_max_number": 28, "player_min_number": 96}], "name": "UqvPCZ2H"}}}, "session_queue_timeout_seconds": 50, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'lXsuNIdQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "JR5lsNOl", "players": [{"results": [{"attribute": "vkfwaSbn", "value": 0.29191831733638607}], "user_id": "LCgToxuV"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "TekJgvg6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "h5HIpH0D", "client_version": "viplEk4v", "deployment": "j3LDp4yq", "game_mode": "Dt8QUZDp", "joinable": true, "match_id": "lHasinGc", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 19, "party_attributes": {"rkmRMttg": {}}, "party_id": "jDSaIVBm", "party_members": [{"extra_attributes": {"ft3Udg7p": {}}, "user_id": "9PGmY2H5"}]}]}], "namespace": "kX4MsisS", "party_attributes": {"X28nARxW": {}}, "party_id": "Rpv5ou5x", "queued_at": 39, "region": "vd28OUfC", "server_name": "t8UJC5fl", "status": "Nyj6HsTt", "updated_at": "1995-11-22T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "3llnaaS9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'lqyygPcf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 20, "userID": "JIxfQZza", "weight": 0.9442707535936815}' \
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
    'NVbDxVMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "7HJk0F89", "description": "xAc3YVfa", "findMatchTimeoutSeconds": 60, "joinable": true, "max_delay_ms": 34, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 23, "min": 31, "name": "TKZTXqzH"}], "has_combination": true}, "maxNumber": 55, "minNumber": 77, "playerMaxNumber": 85, "playerMinNumber": 88}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 52, "min": 18, "name": "z1ZOpdOj"}], "has_combination": true}, "duration": 76, "max_number": 6, "min_number": 7, "player_max_number": 55, "player_min_number": 70}], "flexingRules": [{"attribute": "uMf7RUyB", "criteria": "HRj8IiRi", "duration": 24, "reference": 0.6742767407165624}], "match_options": {"options": [{"name": "lHT6Dc40", "type": "vFFA6gpU"}]}, "matchingRules": [{"attribute": "7EW3x1dC", "criteria": "pm55gOeq", "reference": 0.662825193517576}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 33, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    'BM1J1Ibu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'TrrkbmuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    '1whOqmEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["DXIWrBPl"], "party_id": "Say46mv7", "user_id": "1BAZAOjt"}' \
    'FJ2vmTj7' \
    'tT7TZHWD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'dCkIsZoA' \
    'rWwPHcyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'AdAtYciL' \
    'IgRwFRr0' \
    'gwB9tz3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
$PYTHON -m $MODULE 'matchmaking-search-sessions' \
    '30' \
    '98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'matchmaking-get-session-history-detailed' \
    'VlV8rK3t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetSessionHistoryDetailed' test.out

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
    'E6n0smip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
$PYTHON -m $MODULE 'matchmaking-search-sessions-v2' \
    '38' \
    '44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SearchSessionsV2' test.out

#- 30 VersionCheckHandler
$PYTHON -m $MODULE 'matchmaking-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
