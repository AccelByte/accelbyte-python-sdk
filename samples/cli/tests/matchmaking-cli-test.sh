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

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..29"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

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
    '{"deployment": "FtBxyZcD", "description": "XBpGlsQu", "find_match_timeout_seconds": 71, "game_mode": "u8vMf0Is", "joinable": false, "max_delay_ms": 90, "rule_set": {"alliance": {"max_number": 34, "min_number": 6, "player_max_number": 68, "player_min_number": 59}, "alliance_flexing_rule": [{"duration": 4, "max_number": 95, "min_number": 51, "player_max_number": 98, "player_min_number": 27}], "flexing_rule": [{"attribute": "TKjXY1bP", "criteria": "qamiBxx9", "duration": 57, "reference": 0.2813861209359233}], "match_options": {"options": [{"name": "8EY84ekI", "type": "tqRzHU1o"}]}, "matching_rule": [{"attribute": "h570KQBV", "criteria": "aewc72kr", "reference": 0.698496946052087}], "sub_game_modes": {"a68n3Yno": {"alliance": {"max_number": 51, "min_number": 31, "player_max_number": 56, "player_min_number": 72}, "alliance_flexing_rule": [{"duration": 24, "max_number": 68, "min_number": 85, "player_max_number": 91, "player_min_number": 41}], "name": "BdNEUsxF"}}}, "session_queue_timeout_seconds": 2, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'JZaMSxEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "bZbygyoa", "players": [{"results": [{"attribute": "rORoeNHS", "value": 0.019251152430858398}], "user_id": "Rh3kgs9q"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "qJbnQsoB", "client_version": "giVpP8Cm", "deployment": "3yvASUox", "game_mode": "dxxFqmAG", "joinable": true, "match_id": "dagEtp4w", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 73, "party_attributes": {"Ou9c19R6": {}}, "party_id": "XDqWHkkP", "party_members": [{"extra_attributes": {"8npLEKMf": {}}, "user_id": "jiX7jpkV"}]}]}], "namespace": "Zk3IaQYE", "party_attributes": {"mqGodOEG": {}}, "party_id": "t9gPOj0c", "queued_at": 16, "region": "0JkvIas7", "server_name": "3ucYnFAJ", "status": "3DK5T4Eo", "updated_at": "1974-02-20T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'QueueSessionHandler' test.out

#- 9 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "0Y39UoYl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DequeueSessionHandler' test.out

#- 10 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'pv5bVAgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QuerySessionHandler' test.out

#- 11 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 36, "userID": "DhUTDUsc", "weight": 0.018605669361531185}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdatePlayTimeWeight' test.out

#- 12 GetAllPartyInAllChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-all-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetAllPartyInAllChannel' test.out

#- 13 BulkGetSessions
$PYTHON -m $MODULE 'matchmaking-bulk-get-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'BulkGetSessions' test.out

#- 14 ExportChannels
$PYTHON -m $MODULE 'matchmaking-export-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'ExportChannels' test.out

#- 15 ImportChannels
$PYTHON -m $MODULE 'matchmaking-import-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ImportChannels' test.out

#- 16 GetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-get-single-matchmaking-channel' \
    'DjbTQuPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMatchmakingChannel' test.out

#- 17 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "z2PTRlky", "description": "U89ZPOw6", "findMatchTimeoutSeconds": 50, "joinable": true, "max_delay_ms": 71, "ruleSet": {"alliance": {"maxNumber": 5, "minNumber": 45, "playerMaxNumber": 25, "playerMinNumber": 50}, "alliance_flexing_rule": [{"duration": 55, "max_number": 54, "min_number": 88, "player_max_number": 76, "player_min_number": 78}], "flexingRules": [{"attribute": "coAAOjKN", "criteria": "jfcYHm09", "duration": 0, "reference": 0.7842530988331963}], "match_options": {"options": [{"name": "BU1sqjyK", "type": "0XH45PaR"}]}, "matchingRules": [{"attribute": "SOFQBtu2", "criteria": "3REZ8hRV", "reference": 0.772246792360384}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 74, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'dYiQS9i7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchmakingChannel' test.out

#- 18 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'mV1C91pj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetAllPartyInChannel' test.out

#- 19 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'G9gpxL6y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllSessionsInChannel' test.out

#- 20 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["cTQdvln2"], "party_id": "LAuSQWEX", "user_id": "L6LFE1YH"}' \
    'o9m126ZW' \
    'c8hHtWvb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddUserIntoSessionInChannel' test.out

#- 21 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'NYqgUqsl' \
    'ArFPiHUI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteSessionInChannel' test.out

#- 22 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'vaCv8kU9' \
    'dBBpdsJL' \
    'hsVyExrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteUserFromSessionInChannel' test.out

#- 23 SearchSessions
$PYTHON -m $MODULE 'matchmaking-search-sessions' \
    '46' \
    '29' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SearchSessions' test.out

#- 24 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'matchmaking-get-session-history-detailed' \
    'ot0B7WOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetSessionHistoryDetailed' test.out

#- 25 PublicGetMessages
$PYTHON -m $MODULE 'matchmaking-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicGetMessages' test.out

#- 26 PublicGetAllMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-all-matchmaking-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetAllMatchmakingChannel' test.out

#- 27 PublicGetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-single-matchmaking-channel' \
    'ercZdpMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetSingleMatchmakingChannel' test.out

#- 28 SearchSessionsV2
$PYTHON -m $MODULE 'matchmaking-search-sessions-v2' \
    '17' \
    '58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SearchSessionsV2' test.out

#- 29 VersionCheckHandler
$PYTHON -m $MODULE 'matchmaking-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE