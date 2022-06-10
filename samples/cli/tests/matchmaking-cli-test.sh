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
matchmaking-create-channel-handler '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"max_number": 34, "min_number": 6, "player_max_number": 68, "player_min_number": 59}, "alliance_flexing_rule": [{"duration": 4, "max_number": 95, "min_number": 51, "player_max_number": 98, "player_min_number": 27}], "flexing_rule": [{"attribute": "TKjXY1bP", "criteria": "qamiBxx9", "duration": 57, "reference": 0.2813861209359233}], "match_options": {"options": [{"name": "8EY84ekI", "type": "tqRzHU1o"}]}, "matching_rule": [{"attribute": "h570KQBV", "criteria": "aewc72kr", "reference": 0.698496946052087}], "sub_game_modes": {"a68n3Yno": {"alliance": {"max_number": 51, "min_number": 31, "player_max_number": 56, "player_min_number": 72}, "alliance_flexing_rule": [{"duration": 24, "max_number": 68, "min_number": 85, "player_max_number": 91, "player_min_number": 41}], "name": "BdNEUsxF"}}}, "session_queue_timeout_seconds": 2, "social_matchmaking": true, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'JZaMSxEC' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "bZbygyoa", "players": [{"results": [{"attribute": "rORoeNHS", "value": 0.019251152430858398}], "user_id": "Rh3kgs9q"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "qJbnQsoB"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "giVpP8Cm", "client_version": "3yvASUox", "deployment": "dxxFqmAG", "game_mode": "TJ8IEdag", "joinable": true, "match_id": "tp4w29KO", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"9c19R6XD": {}}, "party_id": "qWHkkP8n", "party_members": [{"extra_attributes": {"pLEKMfji": {}}, "user_id": "X7jpkVZk"}]}]}], "namespace": "3IaQYEmq", "party_attributes": {"GodOEGt9": {}}, "party_id": "gPOj0c6i", "queued_at": 70, "region": "kvIas73u", "server_name": "cYnFAJ3D", "status": "K5T4Eogg", "updated_at": "1997-04-22T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "Ylpv5bVA"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'gtsDhUTD' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 93, "userID": "scbQDjbT", "weight": 0.6691126847871068}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'PMz2PTRl' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "kyU89ZPO", "description": "w6zPFJ42", "findMatchTimeoutSeconds": 5, "joinable": true, "max_delay_ms": 25, "ruleSet": {"alliance": {"maxNumber": 50, "minNumber": 55, "playerMaxNumber": 54, "playerMinNumber": 88}, "alliance_flexing_rule": [{"duration": 76, "max_number": 78, "min_number": 4, "player_max_number": 28, "player_min_number": 53}], "flexingRules": [{"attribute": "AOjKNjfc", "criteria": "YHm093aY", "duration": 13, "reference": 0.43681487232294225}], "match_options": {"options": [{"name": "1sqjyK0X", "type": "H45PaRSO"}]}, "matchingRules": [{"attribute": "FQBtu23R", "criteria": "EZ8hRVX7", "reference": 0.5818754397817744}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 81, "socialMatchmaking": true, "use_sub_gamemode": true}' 'dYiQS9i7' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'mV1C91pj' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'G9gpxL6y' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["cTQdvln2"], "party_id": "LAuSQWEX", "user_id": "L6LFE1YH"}' 'o9m126ZW' 'c8hHtWvb' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'NYqgUqsl' 'ArFPiHUI' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'vaCv8kU9' 'dBBpdsJL' 'hsVyExrk' --login_with_auth "Bearer foo"
matchmaking-search-sessions '46' '29' --login_with_auth "Bearer foo"
matchmaking-get-session-history-detailed 'ot0B7WOf' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'ercZdpMc' --login_with_auth "Bearer foo"
matchmaking-search-sessions-v2 '17' '58' --login_with_auth "Bearer foo"
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
    '{"deployment": "s7YSfExa", "description": "I3uzLteM", "find_match_timeout_seconds": 3, "game_mode": "FAlt4hr7", "joinable": false, "max_delay_ms": 81, "rule_set": {"alliance": {"max_number": 16, "min_number": 55, "player_max_number": 53, "player_min_number": 22}, "alliance_flexing_rule": [{"duration": 38, "max_number": 52, "min_number": 81, "player_max_number": 99, "player_min_number": 25}], "flexing_rule": [{"attribute": "lG6eh1dT", "criteria": "doTFpBIc", "duration": 40, "reference": 0.44761579365004}], "match_options": {"options": [{"name": "dQY93OJn", "type": "J6Te9vD8"}]}, "matching_rule": [{"attribute": "ldz7Hu8A", "criteria": "D79kdWun", "reference": 0.3317115317067869}], "sub_game_modes": {"zU0q1pHy": {"alliance": {"max_number": 15, "min_number": 15, "player_max_number": 61, "player_min_number": 86}, "alliance_flexing_rule": [{"duration": 29, "max_number": 65, "min_number": 12, "player_max_number": 7, "player_min_number": 34}], "name": "ysMizBGS"}}}, "session_queue_timeout_seconds": 87, "social_matchmaking": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    '7DNSZ8Aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "0XiPLQXS", "players": [{"results": [{"attribute": "e07ZddOG", "value": 0.7036910548715302}], "user_id": "lJjBwj9H"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "JHQKseEd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "SXRDSvgu", "client_version": "auw1xT7e", "deployment": "MwSl9MLH", "game_mode": "0NnTJ2ul", "joinable": true, "match_id": "BvwJaQa5", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 71, "party_attributes": {"llvA8RWS": {}}, "party_id": "pabUt7xk", "party_members": [{"extra_attributes": {"6QxyWhfq": {}}, "user_id": "oWfJw2o8"}]}]}], "namespace": "oWUqvPCZ", "party_attributes": {"2HzT7NXm": {}}, "party_id": "WDlXsuNI", "queued_at": 6, "region": "QJR5lsNO", "server_name": "lvkfwaSb", "status": "nsuLCgTo", "updated_at": "1982-06-14T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "VTekJgvg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    '6h5HIpH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 58, "userID": "viplEk4v", "weight": 0.9966084446877017}' \
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
    '3LDp4yqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "t8QUZDpx", "description": "lHasinGc", "findMatchTimeoutSeconds": 19, "joinable": true, "max_delay_ms": 21, "ruleSet": {"alliance": {"maxNumber": 25, "minNumber": 87, "playerMaxNumber": 77, "playerMinNumber": 38}, "alliance_flexing_rule": [{"duration": 39, "max_number": 12, "min_number": 19, "player_max_number": 58, "player_min_number": 88}], "flexingRules": [{"attribute": "aIVBmft3", "criteria": "Udg7p9PG", "duration": 24, "reference": 0.7927880797583062}], "match_options": {"options": [{"name": "H5kX4Msi", "type": "sSX28nAR"}]}, "matchingRules": [{"attribute": "xWRpv5ou", "criteria": "5xtvd28O", "reference": 0.7342063790497725}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 57, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    '5flNyj6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'sTtX8P3l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'lnaaS9lq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["yygPcfkJ"], "party_id": "IxfQZza8", "user_id": "kNVbDxVM"}' \
    'q7HJk0F8' \
    '9xAc3YVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'aENtrl0p' \
    'TKZTXqzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'uBMYQSA2' \
    'jz1ZOpdO' \
    'jSyMddB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
$PYTHON -m $MODULE 'matchmaking-search-sessions' \
    '70' \
    '41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SearchSessions' test.out

#- 25 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'matchmaking-get-session-history-detailed' \
    'Mf7RUyBH' \
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
    'Rj8IiRim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
$PYTHON -m $MODULE 'matchmaking-search-sessions-v2' \
    '86' \
    '23' \
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
