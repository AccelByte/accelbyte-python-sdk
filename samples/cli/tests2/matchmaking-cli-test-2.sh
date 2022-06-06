#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

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

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE