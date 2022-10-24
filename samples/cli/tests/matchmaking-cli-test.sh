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
matchmaking-create-channel-handler '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 34, "min": 6, "name": "8IDcV2zX"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 3}, "max_number": 83, "min_number": 33, "player_max_number": 1, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 17, "min": 54, "name": "xx9Cs18E"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 39}, "duration": 32, "max_number": 87, "min_number": 51, "player_max_number": 67, "player_min_number": 92}], "flexing_rule": [{"attribute": "1oh570KQ", "criteria": "BVaewc72", "duration": 21, "reference": 0.2735204376168321}], "match_options": {"options": [{"name": "ha68n3Yn", "type": "ozp1C2Km"}]}, "matching_rule": [{"attribute": "IQTuBdNE", "criteria": "UsxFb8CJ", "reference": 0.8361575896005451}], "rebalance_enable": true, "sub_game_modes": {"JZaMSxEC": {"alliance": {"combination": {"alliances": [{"max": 2, "min": 2, "name": "ygyoarOR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 66}, "max_number": 89, "min_number": 2, "player_max_number": 87, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 13, "name": "s9qqJbnQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 12}, "duration": 17, "max_number": 95, "min_number": 31, "player_max_number": 82, "player_min_number": 56}], "name": "m3yvASUo"}}}, "session_queue_timeout_seconds": 47, "social_matchmaking": false, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'xFqmAGTJ' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "8IEdagEt", "players": [{"results": [{"attribute": "p4w29KOu", "value": 0.9607048111534399}], "user_id": "19R6XDqW"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "HkkP8npL"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "EKMfjiX7", "client_version": "jpkVZk3I", "deployment": "aQYEmqGo", "error_code": 6, "error_message": "OEGt9gPO", "game_mode": "j0c6i0Jk", "joinable": true, "match_id": "Ias73ucY", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"FAJ3DK5T": {}}, "party_id": "4Eogg0Y3", "party_members": [{"extra_attributes": {"9UoYlpv5": {}}, "user_id": "bVAgtsDh"}], "ticket_id": "UTDUscbQ"}]}], "namespace": "DjbTQuPM", "party_attributes": {"z2PTRlky": {}}, "party_id": "U89ZPOw6", "queued_at": 50, "region": "PFJ42cwm", "server_name": "zBBSMNco", "status": "AAOjKNjf", "ticket_id": "cYHm093a", "updated_at": "1996-02-17T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "BU1sqjyK"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler '0XH45PaR' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 89, "userID": "OFQBtu23", "weight": 0.6734576559354561}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'Z8hRVX7L' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "GOvDdYiQ", "description": "S9i7mV1C", "findMatchTimeoutSeconds": 30, "joinable": false, "max_delay_ms": 64, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 13, "min": 31, "name": "xL6ycTQd"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 74}, "maxNumber": 52, "minNumber": 41, "playerMaxNumber": 89, "playerMinNumber": 85}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 97, "min": 61, "name": "XL6LFE1Y"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 4}, "duration": 14, "max_number": 66, "min_number": 38, "player_max_number": 97, "player_min_number": 43}], "flexingRules": [{"attribute": "bNYqgUqs", "criteria": "lArFPiHU", "duration": 68, "reference": 0.34017068895228875}], "match_options": {"options": [{"name": "Cv8kU9dB", "type": "BpdsJLhs"}]}, "matchingRules": [{"attribute": "VyExrkxo", "criteria": "ot0B7WOf", "reference": 0.06938643216836282}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 4, "socialMatchmaking": false, "use_sub_gamemode": false}' 'Mci37Ds7' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'YSfExaI3' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'uzLteMbF' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["Alt4hr7H"], "party_id": "mOYiBA5l", "user_id": "tAOXmlG6"}' 'eh1dTdoT' 'FpBIcuC1' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'dQY93OJn' 'J6Te9vD8' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'ldz7Hu8A' 'D79kdWun' 'vizU0q1p' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'HyhhERoG' --login_with_auth "Bearer foo"
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
    '{"deployment": "gdrysMiz", "description": "BGSRdP2l", "find_match_timeout_seconds": 59, "game_mode": "NSZ8Aq0X", "joinable": false, "max_delay_ms": 82, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 75, "min": 85, "name": "XSe07Zdd"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 45}, "max_number": 19, "min_number": 66, "player_max_number": 71, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 85, "min": 72, "name": "seEdSXRD"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 0}, "duration": 40, "max_number": 44, "min_number": 47, "player_max_number": 91, "player_min_number": 9}], "flexing_rule": [{"attribute": "MwSl9MLH", "criteria": "0NnTJ2ul", "duration": 79, "reference": 0.39104799506060306}], "match_options": {"options": [{"name": "vwJaQa54", "type": "7JllvA8R"}]}, "matching_rule": [{"attribute": "WSpabUt7", "criteria": "xk6QxyWh", "reference": 0.087813923250749}], "rebalance_enable": false, "sub_game_modes": {"WfJw2o8o": {"alliance": {"combination": {"alliances": [{"max": 96, "min": 92, "name": "qvPCZ2Hz"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 98}, "max_number": 36, "min_number": 41, "player_max_number": 79, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 6, "min": 84, "name": "JR5lsNOl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 45}, "duration": 1, "max_number": 89, "min_number": 2, "player_max_number": 26, "player_min_number": 37}], "name": "uLCgToxu"}}}, "session_queue_timeout_seconds": 94, "social_matchmaking": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'Jgvg6h5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "IpH0Dvip", "players": [{"results": [{"attribute": "lEk4vj3L", "value": 0.4655779767004765}], "user_id": "4yqDt8QU"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "ZDpxlHas"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "inGcjrkm", "client_version": "RMttgjDS", "deployment": "aIVBmft3", "error_code": 93, "error_message": "dg7p9PGm", "game_mode": "Y2H5kX4M", "joinable": true, "match_id": "isSX28nA", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 86, "party_attributes": {"xWRpv5ou": {}}, "party_id": "5xtvd28O", "party_members": [{"extra_attributes": {"UfCt8UJC": {}}, "user_id": "5flNyj6H"}], "ticket_id": "sTtX8P3l"}]}], "namespace": "lnaaS9lq", "party_attributes": {"yygPcfkJ": {}}, "party_id": "IxfQZza8", "queued_at": 21, "region": "NVbDxVMq", "server_name": "7HJk0F89", "status": "xAc3YVfa", "ticket_id": "ENtrl0pT", "updated_at": "1989-05-11T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "zHuBMYQS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'A2jz1ZOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 7, "userID": "OjSyMddB", "weight": 0.890206037697401}' \
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
    'JuMf7RUy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "BHRj8IiR", "description": "imRllHT6", "findMatchTimeoutSeconds": 59, "joinable": false, "max_delay_ms": 42, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 63, "name": "A6gpU7EW"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 30}, "maxNumber": 24, "minNumber": 12, "playerMaxNumber": 80, "playerMinNumber": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 33, "min": 84, "name": "IqcJVKmB"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 35}, "duration": 34, "max_number": 21, "min_number": 2, "player_max_number": 25, "player_min_number": 41}], "flexingRules": [{"attribute": "T1whOqmE", "criteria": "nDXIWrBP", "duration": 22, "reference": 0.6891951934537008}], "match_options": {"options": [{"name": "y46mv71B", "type": "AZAOjtFJ"}]}, "matchingRules": [{"attribute": "2vmTj7tT", "criteria": "7TZHWDdC", "reference": 0.15841057558012273}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 37, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'rWwPHcyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'AdAtYciL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'IgRwFRr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["gwB9tz3v"], "party_id": "p99XVlV8", "user_id": "rK3tE6n0"}' \
    'smip1tw3' \
    'L7cUd9pq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'tv6JfPZw' \
    'cCVOXcVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    '80TmCwtD' \
    '2lAH01o6' \
    'NdcBIgzr' \
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
    'DyWpFBYG' \
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
