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
matchmaking-create-channel-handler '{"deployment": "leAcUCeH", "description": "4ZLo0S6M", "find_match_timeout_seconds": 44, "game_mode": "NZIEI8pL", "joinable": false, "max_delay_ms": 45, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 60, "min": 26, "name": "I29YURxP"}, {"max": 76, "min": 82, "name": "nn5rHbCv"}, {"max": 17, "min": 19, "name": "fXhVRnK1"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 54}, "max_number": 79, "min_number": 28, "player_max_number": 4, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 90, "name": "bV4odaRx"}, {"max": 88, "min": 78, "name": "i0JPORok"}, {"max": 13, "min": 30, "name": "BADJMvij"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 100}, "duration": 44, "max_number": 20, "min_number": 38, "player_max_number": 18, "player_min_number": 10}, {"combination": {"alliances": [{"max": 78, "min": 77, "name": "ncyRpbJi"}, {"max": 7, "min": 91, "name": "69MqQWpa"}, {"max": 93, "min": 10, "name": "y8XNQKgb"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 41}, "duration": 74, "max_number": 57, "min_number": 31, "player_max_number": 27, "player_min_number": 78}, {"combination": {"alliances": [{"max": 40, "min": 11, "name": "WLkirnV8"}, {"max": 65, "min": 46, "name": "2w2k9qIa"}, {"max": 47, "min": 6, "name": "xDfvLjOH"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 100}, "duration": 80, "max_number": 58, "min_number": 32, "player_max_number": 10, "player_min_number": 58}], "flexing_rule": [{"attribute": "NcsIPiG2", "criteria": "R4eInYyD", "duration": 9, "reference": 0.018187198560036366}, {"attribute": "GYjnrVQN", "criteria": "WgGjBmFw", "duration": 13, "reference": 0.6566566990928931}, {"attribute": "FaOfVxv0", "criteria": "BiE9MyUq", "duration": 36, "reference": 0.15794210248046303}], "match_options": {"options": [{"name": "eZmdb31h", "type": "NkIUzKiK"}, {"name": "ttzGy8C5", "type": "RoxJuu4M"}, {"name": "1ipkzCBx", "type": "ai6qz8I1"}]}, "matching_rule": [{"attribute": "4H5Wv1h5", "criteria": "opPM0Unq", "reference": 0.9432776796199124}, {"attribute": "XCyJvOHJ", "criteria": "1PBlpnZk", "reference": 0.4709186416403841}, {"attribute": "8PdG6AEF", "criteria": "aXfGdb32", "reference": 0.661762653437449}], "rebalance_enable": false, "sub_game_modes": {"aJovwxue": {"alliance": {"combination": {"alliances": [{"max": 39, "min": 16, "name": "0WJQNGy5"}, {"max": 82, "min": 14, "name": "nkUnNWz9"}, {"max": 78, "min": 38, "name": "L3WOp95D"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 66}, "max_number": 99, "min_number": 45, "player_max_number": 86, "player_min_number": 52}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 0, "min": 38, "name": "oa4iuNsm"}, {"max": 50, "min": 87, "name": "vrhrlJmY"}, {"max": 38, "min": 72, "name": "NscN860T"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 35}, "duration": 44, "max_number": 61, "min_number": 1, "player_max_number": 43, "player_min_number": 9}, {"combination": {"alliances": [{"max": 17, "min": 26, "name": "E71HB0LN"}, {"max": 8, "min": 12, "name": "KUrDNGaq"}, {"max": 54, "min": 17, "name": "nAppuWYg"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 31}, "duration": 58, "max_number": 69, "min_number": 41, "player_max_number": 90, "player_min_number": 69}, {"combination": {"alliances": [{"max": 24, "min": 88, "name": "dqxCfh5H"}, {"max": 75, "min": 57, "name": "1zhJtn2T"}, {"max": 2, "min": 95, "name": "QZz0CBMx"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 35}, "duration": 59, "max_number": 91, "min_number": 42, "player_max_number": 17, "player_min_number": 90}], "name": "h8WlWziI"}, "fPJLtOWu": {"alliance": {"combination": {"alliances": [{"max": 51, "min": 10, "name": "mdSfdaR3"}, {"max": 18, "min": 80, "name": "CBko7L2p"}, {"max": 42, "min": 8, "name": "8wIKuaQM"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 26}, "max_number": 25, "min_number": 54, "player_max_number": 24, "player_min_number": 42}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 19, "min": 80, "name": "waIbRGvX"}, {"max": 24, "min": 20, "name": "aVNdrFhv"}, {"max": 89, "min": 14, "name": "q2NZw4kN"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 44}, "duration": 68, "max_number": 86, "min_number": 24, "player_max_number": 73, "player_min_number": 11}, {"combination": {"alliances": [{"max": 1, "min": 22, "name": "vnoDX5aG"}, {"max": 34, "min": 33, "name": "wR7zSux0"}, {"max": 59, "min": 16, "name": "01QFjci4"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 23}, "duration": 83, "max_number": 39, "min_number": 73, "player_max_number": 81, "player_min_number": 45}, {"combination": {"alliances": [{"max": 39, "min": 11, "name": "q7wd9ZrD"}, {"max": 93, "min": 36, "name": "tirq97re"}, {"max": 32, "min": 12, "name": "C30kigkl"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 54}, "duration": 71, "max_number": 26, "min_number": 60, "player_max_number": 10, "player_min_number": 42}], "name": "UEoad5k5"}, "CR4cruBq": {"alliance": {"combination": {"alliances": [{"max": 8, "min": 21, "name": "0itOhMB3"}, {"max": 48, "min": 83, "name": "hH8Xz682"}, {"max": 76, "min": 25, "name": "JCqOXTsX"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 14}, "max_number": 16, "min_number": 60, "player_max_number": 98, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 12, "name": "5vGlIIHG"}, {"max": 12, "min": 60, "name": "uNEVvhMZ"}, {"max": 55, "min": 85, "name": "kfqvu5de"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 70}, "duration": 38, "max_number": 28, "min_number": 8, "player_max_number": 35, "player_min_number": 29}, {"combination": {"alliances": [{"max": 69, "min": 5, "name": "Pb1a0J0u"}, {"max": 66, "min": 64, "name": "fVPj5s5X"}, {"max": 57, "min": 4, "name": "9TCzdhNV"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 60}, "duration": 75, "max_number": 31, "min_number": 81, "player_max_number": 64, "player_min_number": 56}, {"combination": {"alliances": [{"max": 85, "min": 63, "name": "RGWvztt6"}, {"max": 60, "min": 4, "name": "RvpH2joN"}, {"max": 7, "min": 48, "name": "f6oYpUuF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 36}, "duration": 3, "max_number": 65, "min_number": 8, "player_max_number": 66, "player_min_number": 7}], "name": "Hr9t4kpj"}}}, "session_queue_timeout_seconds": 51, "social_matchmaking": false, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'cRulHII0' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "dAAyjNJE", "players": [{"results": [{"attribute": "lYsFqeaS", "value": 0.09029725569188296}, {"attribute": "yafB8lEo", "value": 0.6878771281880032}, {"attribute": "tcMTj6CD", "value": 0.5168387303866129}], "user_id": "ZrAjf6oo"}, {"results": [{"attribute": "1h7nCiU2", "value": 0.36484308986532044}, {"attribute": "uctwjBh7", "value": 0.5074498521578603}, {"attribute": "ZuUIBYsC", "value": 0.20055055039324143}], "user_id": "l5EE6rlD"}, {"results": [{"attribute": "pfsLQHbt", "value": 0.3018977396280782}, {"attribute": "xOAVcMuq", "value": 0.6946748950389606}, {"attribute": "NWZG5gJI", "value": 0.3362415841002151}], "user_id": "onXmBibZ"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "wD5tOAkS"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "QIdoqvhv", "client_version": "XmMC37La", "deployment": "kmt3YIds", "error_code": 9, "error_message": "YnhSwy7a", "game_mode": "YnKrYA9t", "joinable": false, "match_id": "6UHeAPBt", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"uNRnEFxD": {}, "J9OsGIQn": {}, "wJYFR7Mu": {}}, "party_id": "H0pr2ewt", "party_members": [{"extra_attributes": {"zLIJhgwa": {}, "MAuEzDVt": {}, "Dmh1ADy5": {}}, "user_id": "9qcn7QFl"}, {"extra_attributes": {"W4H03gti": {}, "tbAKUJpD": {}, "40wKnp2N": {}}, "user_id": "qKRPA8xP"}, {"extra_attributes": {"L0mbF8Xb": {}, "ElF015OA": {}, "M2q4eaK9": {}}, "user_id": "kI8WOkyA"}], "ticket_created_at": 51, "ticket_id": "nF9yKJD5"}, {"first_ticket_created_at": 65, "party_attributes": {"AwWYLUms": {}, "gxZCo4RP": {}, "YhH8hbnl": {}}, "party_id": "vKjcXWxR", "party_members": [{"extra_attributes": {"dD5FQHia": {}, "Qn5xe0wf": {}, "uMXDy3l6": {}}, "user_id": "wkGopfr3"}, {"extra_attributes": {"JLwG85Fk": {}, "yNMkiF1K": {}, "EifU3XUM": {}}, "user_id": "mWOWO4In"}, {"extra_attributes": {"dsKsRqxp": {}, "top9Yq9o": {}, "vszOiOpG": {}}, "user_id": "NBlb8hOq"}], "ticket_created_at": 22, "ticket_id": "MNX7t7LT"}, {"first_ticket_created_at": 90, "party_attributes": {"ewznz5I9": {}, "KpBrvOqi": {}, "XFHdJFIr": {}}, "party_id": "4P3sar0Y", "party_members": [{"extra_attributes": {"uHVDsqYf": {}, "cAw4nykB": {}, "XzLakFNm": {}}, "user_id": "N2CukFyn"}, {"extra_attributes": {"DUKXLEB2": {}, "hz8USIhd": {}, "RVv4zdQk": {}}, "user_id": "Y7K236fC"}, {"extra_attributes": {"QxBqGQrA": {}, "8LAHVLoR": {}, "MVBLmFsA": {}}, "user_id": "qI66Ly0Y"}], "ticket_created_at": 78, "ticket_id": "2877WR2C"}]}, {"matching_parties": [{"first_ticket_created_at": 86, "party_attributes": {"yezaLFsV": {}, "OaZ7aas8": {}, "SxZo17Zx": {}}, "party_id": "MXLQPKvu", "party_members": [{"extra_attributes": {"OndEDM3Z": {}, "G5xGOwvC": {}, "TgptUfsn": {}}, "user_id": "bCqrY8ap"}, {"extra_attributes": {"Ze4QAQTp": {}, "MFEgnqfH": {}, "j39w6UKk": {}}, "user_id": "tCNYvrfY"}, {"extra_attributes": {"nGgZGaWx": {}, "CUbjeUwU": {}, "fYUHaX8c": {}}, "user_id": "sibW9qqf"}], "ticket_created_at": 73, "ticket_id": "LvhGdAiJ"}, {"first_ticket_created_at": 32, "party_attributes": {"8LiAoci9": {}, "dNt7QFfo": {}, "BN7W5IMr": {}}, "party_id": "cwDtfux7", "party_members": [{"extra_attributes": {"mI1dT3ht": {}, "vCxKRgy7": {}, "0C9SITzB": {}}, "user_id": "hxNES9hL"}, {"extra_attributes": {"CQ2gpBDs": {}, "rocMVG7J": {}, "STCKRu1N": {}}, "user_id": "1CFYw8gF"}, {"extra_attributes": {"YX5NI6ew": {}, "nF19bvpg": {}, "vtQJAJjq": {}}, "user_id": "1lVjfd6u"}], "ticket_created_at": 81, "ticket_id": "GGxsaoIG"}, {"first_ticket_created_at": 99, "party_attributes": {"8qFj6ou5": {}, "x4HNPSUL": {}, "GY0V40Yb": {}}, "party_id": "RgjiYDuh", "party_members": [{"extra_attributes": {"uNeKCdDh": {}, "MfeGvfN1": {}, "M5uNCDnx": {}}, "user_id": "1Cj1pcrj"}, {"extra_attributes": {"uAsFV6AH": {}, "TUbwRQ5s": {}, "M0gnX2Iy": {}}, "user_id": "mtAliQnC"}, {"extra_attributes": {"h0RcE1IX": {}, "Df1eNEpd": {}, "qh39ZofW": {}}, "user_id": "ypp6A4Jp"}], "ticket_created_at": 23, "ticket_id": "hO6RQigO"}]}, {"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"vsyQctH2": {}, "YZm9TZrJ": {}, "evTQdyvX": {}}, "party_id": "LIQjQzGm", "party_members": [{"extra_attributes": {"fbQsnvQ0": {}, "lFAVP8lg": {}, "KRSiastE": {}}, "user_id": "a0xFDVcb"}, {"extra_attributes": {"YoYBrid5": {}, "69B7cGrk": {}, "zI5t5mnf": {}}, "user_id": "3z791toj"}, {"extra_attributes": {"jcVQBHBh": {}, "jNIe4QJx": {}, "GznWLMLP": {}}, "user_id": "o3AblRwK"}], "ticket_created_at": 10, "ticket_id": "Ev44kfaN"}, {"first_ticket_created_at": 44, "party_attributes": {"BfXgMMRV": {}, "4rheMByA": {}, "VVPRUWRE": {}}, "party_id": "i4Pw4rwk", "party_members": [{"extra_attributes": {"hvhl7KpH": {}, "q52ggaP3": {}, "ngwLFRb4": {}}, "user_id": "2gNnuhph"}, {"extra_attributes": {"psLTBRVg": {}, "zroqD6Qa": {}, "UgTiXtVx": {}}, "user_id": "VaRzFUGZ"}, {"extra_attributes": {"TnDdpAon": {}, "DZ8NIaUf": {}, "jhVR7Vbq": {}}, "user_id": "T0EhO1o6"}], "ticket_created_at": 58, "ticket_id": "eOrqR4Fl"}, {"first_ticket_created_at": 68, "party_attributes": {"6KcpCVnw": {}, "01K64JjP": {}, "cvF9DLSK": {}}, "party_id": "miR8Ooaw", "party_members": [{"extra_attributes": {"PBoao9vZ": {}, "Q3tH8zxK": {}, "mhCUFZE0": {}}, "user_id": "OYu1umIh"}, {"extra_attributes": {"0eC1ctSU": {}, "hcNZfIhm": {}, "udNo9wNK": {}}, "user_id": "JqkMFLSa"}, {"extra_attributes": {"Sd46yixG": {}, "KRzkAw7h": {}, "BSQOjgT0": {}}, "user_id": "6KeViyzK"}], "ticket_created_at": 47, "ticket_id": "qPuzDVBE"}]}], "namespace": "bVCK6SfR", "party_attributes": {"ceudthSr": {}, "Qw7eN2y9": {}, "4ZJx8Klh": {}}, "party_id": "mm7XkSBx", "queued_at": 10, "region": "E1ExYd1U", "server_name": "eBCU5o8l", "status": "9M4gwSDw", "ticket_id": "wZF0V5rn", "updated_at": "1971-07-22T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "mRsQoBPD"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'TtIHgNto' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 95, "userID": "3MXGlrbh", "weight": 0.7274629787127656}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'Jp29foaH' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "1qYejssN", "description": "4ErEqm6J", "findMatchTimeoutSeconds": 18, "joinable": false, "max_delay_ms": 15, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 67, "min": 63, "name": "nJri3ovG"}, {"max": 85, "min": 17, "name": "tmB7r98R"}, {"max": 36, "min": 48, "name": "QLPs5yIR"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 54}, "maxNumber": 63, "minNumber": 70, "playerMaxNumber": 40, "playerMinNumber": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 85, "min": 75, "name": "X0vFdh8W"}, {"max": 9, "min": 38, "name": "wh2R5xRS"}, {"max": 23, "min": 67, "name": "JJll7eiC"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 94}, "duration": 13, "max_number": 32, "min_number": 43, "player_max_number": 6, "player_min_number": 25}, {"combination": {"alliances": [{"max": 27, "min": 68, "name": "xiUML3Ni"}, {"max": 72, "min": 25, "name": "olBsMUL4"}, {"max": 59, "min": 7, "name": "fCDjJWA4"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 30}, "duration": 45, "max_number": 50, "min_number": 83, "player_max_number": 74, "player_min_number": 52}, {"combination": {"alliances": [{"max": 76, "min": 42, "name": "z3NZdWA2"}, {"max": 91, "min": 88, "name": "ohR0TV47"}, {"max": 79, "min": 97, "name": "d5LtcBdE"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 20}, "duration": 12, "max_number": 54, "min_number": 71, "player_max_number": 40, "player_min_number": 26}], "flexingRules": [{"attribute": "8L8kOHYD", "criteria": "11nyAoVM", "duration": 17, "reference": 0.4161701047512447}, {"attribute": "nxhkNBC4", "criteria": "oYZOSJxM", "duration": 90, "reference": 0.7836084096031356}, {"attribute": "BsLy8tjs", "criteria": "drvAzCRP", "duration": 57, "reference": 0.20806649948077893}], "match_options": {"options": [{"name": "0exfRKDh", "type": "vuHJAIcC"}, {"name": "Cey1F3KD", "type": "s7tCmxV1"}, {"name": "GZPwOSKu", "type": "PuILwJVL"}]}, "matchingRules": [{"attribute": "ZCRMMBd1", "criteria": "1iOQXnYI", "reference": 0.9395127655845398}, {"attribute": "D7Qf3dYP", "criteria": "BOOHvcaP", "reference": 0.8100429651044521}, {"attribute": "kGLQk84t", "criteria": "HIjUQ79v", "reference": 0.0019221464048367887}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 27, "socialMatchmaking": true, "use_sub_gamemode": false}' 'vihCd8Hh' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'vMxgpRm3' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'a4PCxkgp' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["nb3Jdpbd", "yUp7o6oB", "SfPhSquk"], "party_id": "djiLBX1W", "user_id": "ZMOoZhds"}' 'IfksFMuv' 'iN2isZHj' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'AjMjNfdR' 'PCVm6y9s' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'neRRXQO1' 'R9Zpw9KX' 'QvAKqgfN' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'FpG5Snmg' --login_with_auth "Bearer foo"
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
    '{"deployment": "mvlyMcd7", "description": "ajWSx5YO", "find_match_timeout_seconds": 65, "game_mode": "MnmILwta", "joinable": false, "max_delay_ms": 7, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 77, "min": 25, "name": "WBksqVSx"}, {"max": 57, "min": 67, "name": "KOWVfytr"}, {"max": 68, "min": 20, "name": "16vYzbNQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 53}, "max_number": 95, "min_number": 21, "player_max_number": 24, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 54, "min": 66, "name": "kPpgag8z"}, {"max": 30, "min": 39, "name": "JKO8rTnk"}, {"max": 83, "min": 70, "name": "QCkaxuxv"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 66}, "duration": 95, "max_number": 81, "min_number": 89, "player_max_number": 94, "player_min_number": 80}, {"combination": {"alliances": [{"max": 70, "min": 64, "name": "zkMAQ341"}, {"max": 50, "min": 84, "name": "UZ6J1Bmp"}, {"max": 79, "min": 28, "name": "F4Kuozp2"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 79}, "duration": 10, "max_number": 42, "min_number": 78, "player_max_number": 81, "player_min_number": 54}, {"combination": {"alliances": [{"max": 12, "min": 31, "name": "d6Tqw9RA"}, {"max": 54, "min": 59, "name": "5eUy9RWs"}, {"max": 48, "min": 57, "name": "KeubOEaq"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 38}, "duration": 71, "max_number": 28, "min_number": 15, "player_max_number": 88, "player_min_number": 83}], "flexing_rule": [{"attribute": "jAuXG87t", "criteria": "m3HuTYHE", "duration": 20, "reference": 0.4520175123386715}, {"attribute": "g5CtDNQf", "criteria": "4vs9CvdK", "duration": 17, "reference": 0.9611704647974503}, {"attribute": "SWDHO52H", "criteria": "ZauOmN7Z", "duration": 81, "reference": 0.7169317257060164}], "match_options": {"options": [{"name": "PKiyBMAP", "type": "0OqyjzKX"}, {"name": "BDH4nzZt", "type": "yDVE1bjD"}, {"name": "TcpGLVTF", "type": "xsomQtJK"}]}, "matching_rule": [{"attribute": "DjB1WWeU", "criteria": "5qVv02BM", "reference": 0.07373804815198426}, {"attribute": "slaqepEd", "criteria": "0V7u5BZv", "reference": 0.3659846908431412}, {"attribute": "yrlVQmPL", "criteria": "8kbEX7Yc", "reference": 0.9712921897119771}], "rebalance_enable": false, "sub_game_modes": {"qLtK2wsh": {"alliance": {"combination": {"alliances": [{"max": 19, "min": 89, "name": "RJrrDNA6"}, {"max": 83, "min": 72, "name": "8FTuy4F4"}, {"max": 23, "min": 95, "name": "1xcgPcm3"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 39}, "max_number": 93, "min_number": 29, "player_max_number": 66, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 48, "min": 79, "name": "9R5rhbeh"}, {"max": 99, "min": 98, "name": "sQSgSP4h"}, {"max": 4, "min": 9, "name": "HX2MmXpg"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 34}, "duration": 29, "max_number": 17, "min_number": 1, "player_max_number": 89, "player_min_number": 57}, {"combination": {"alliances": [{"max": 6, "min": 48, "name": "N6bF25KD"}, {"max": 12, "min": 76, "name": "MiRm6QE8"}, {"max": 18, "min": 41, "name": "ROZ7MWMl"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 2}, "duration": 96, "max_number": 9, "min_number": 71, "player_max_number": 17, "player_min_number": 3}, {"combination": {"alliances": [{"max": 28, "min": 54, "name": "5q7VfNVN"}, {"max": 76, "min": 4, "name": "Q9BFTYOm"}, {"max": 17, "min": 62, "name": "VHemMlrv"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 71}, "duration": 92, "max_number": 68, "min_number": 34, "player_max_number": 86, "player_min_number": 22}], "name": "9Zq8FiL2"}, "m7irRxvf": {"alliance": {"combination": {"alliances": [{"max": 35, "min": 7, "name": "lzvuFPek"}, {"max": 87, "min": 54, "name": "mcOG6RLK"}, {"max": 1, "min": 9, "name": "8LXHT2WV"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 47}, "max_number": 63, "min_number": 57, "player_max_number": 44, "player_min_number": 51}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 15, "min": 50, "name": "RhxUyg45"}, {"max": 90, "min": 33, "name": "W0c7fRpS"}, {"max": 54, "min": 65, "name": "ELxHMjhv"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 26}, "duration": 22, "max_number": 73, "min_number": 44, "player_max_number": 18, "player_min_number": 19}, {"combination": {"alliances": [{"max": 16, "min": 39, "name": "GImvvS3I"}, {"max": 89, "min": 54, "name": "l6ipCnNI"}, {"max": 50, "min": 94, "name": "sYEPECqi"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 82}, "duration": 10, "max_number": 76, "min_number": 100, "player_max_number": 67, "player_min_number": 54}, {"combination": {"alliances": [{"max": 62, "min": 79, "name": "GPC8FMbh"}, {"max": 81, "min": 48, "name": "hwqp1F9o"}, {"max": 9, "min": 36, "name": "f7Vn1Y7v"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 3}, "duration": 68, "max_number": 3, "min_number": 50, "player_max_number": 97, "player_min_number": 16}], "name": "nusYB1kR"}, "LkJuBax0": {"alliance": {"combination": {"alliances": [{"max": 30, "min": 41, "name": "pgmxvSM3"}, {"max": 89, "min": 62, "name": "mBkzKtBb"}, {"max": 72, "min": 86, "name": "IU1d4fu4"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 52}, "max_number": 60, "min_number": 80, "player_max_number": 15, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 11, "min": 19, "name": "mMWyLpgw"}, {"max": 12, "min": 3, "name": "7coxjHGc"}, {"max": 80, "min": 27, "name": "5oK6EFdU"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 35}, "duration": 67, "max_number": 62, "min_number": 29, "player_max_number": 12, "player_min_number": 73}, {"combination": {"alliances": [{"max": 11, "min": 23, "name": "9fFbwTBt"}, {"max": 16, "min": 40, "name": "cCENpPzG"}, {"max": 79, "min": 57, "name": "PVsijgqi"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 96}, "duration": 41, "max_number": 17, "min_number": 72, "player_max_number": 32, "player_min_number": 97}, {"combination": {"alliances": [{"max": 25, "min": 49, "name": "kGz5HykD"}, {"max": 25, "min": 10, "name": "l8wsAM3W"}, {"max": 11, "min": 93, "name": "AksphAJM"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 85}, "duration": 51, "max_number": 90, "min_number": 94, "player_max_number": 82, "player_min_number": 95}], "name": "F38jB6Mx"}}}, "session_queue_timeout_seconds": 91, "social_matchmaking": true, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'v23ue18v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "bG8FOddo", "players": [{"results": [{"attribute": "OdRmxkV5", "value": 0.9772657197277247}, {"attribute": "ZZ5ABp93", "value": 0.3834703477019278}, {"attribute": "VgBcahZf", "value": 0.7853188395603807}], "user_id": "08cD0gbU"}, {"results": [{"attribute": "mmTZkEk9", "value": 0.06950173195918485}, {"attribute": "omlWk6Fa", "value": 0.5098089708222407}, {"attribute": "EmvuxuNr", "value": 0.4057260702652854}], "user_id": "uTaeIXop"}, {"results": [{"attribute": "6Lnyf7Tz", "value": 0.7709067852882474}, {"attribute": "cHFYz2OX", "value": 0.1620095627843633}, {"attribute": "Od5GBnru", "value": 0.4678600610541437}], "user_id": "uOwUb9DD"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "J0xuLPVv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "WzzgfjpK", "client_version": "MZQ9OQ2v", "deployment": "H19UnB1t", "error_code": 82, "error_message": "QmxcsIbt", "game_mode": "b6K0EB6v", "joinable": true, "match_id": "WLJggELX", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"FNj5JIpS": {}, "OzC4IQAU": {}, "aZr5FEE4": {}}, "party_id": "5Ie8mHS5", "party_members": [{"extra_attributes": {"jYksH8w1": {}, "wGG2GgWV": {}, "Bb819W3T": {}}, "user_id": "nEEaK9Vk"}, {"extra_attributes": {"zVoL3a8G": {}, "hyXlf23z": {}, "sbsGUuDe": {}}, "user_id": "pVJbdp11"}, {"extra_attributes": {"hozUMeXb": {}, "lBupZEH5": {}, "bmRhMgKo": {}}, "user_id": "TacFKaAZ"}], "ticket_created_at": 11, "ticket_id": "S6syfeeN"}, {"first_ticket_created_at": 7, "party_attributes": {"3jB9AQrK": {}, "XyVoUgXb": {}, "QYupFxeO": {}}, "party_id": "0kZJVw7e", "party_members": [{"extra_attributes": {"9ccJj5tc": {}, "yPiUOVXj": {}, "tZ3YgEzg": {}}, "user_id": "u4B2L2Lq"}, {"extra_attributes": {"Ez3Vop5p": {}, "QD91PKcX": {}, "vG5KnNGK": {}}, "user_id": "qNefUkhy"}, {"extra_attributes": {"udRvRlZ6": {}, "MXyfFHG0": {}, "ELpkjJVt": {}}, "user_id": "wrfPj9Qa"}], "ticket_created_at": 77, "ticket_id": "kdUlVjWk"}, {"first_ticket_created_at": 20, "party_attributes": {"EfDaeW65": {}, "Shutu6eY": {}, "vLCyfnuN": {}}, "party_id": "pVrBm4GV", "party_members": [{"extra_attributes": {"yTg7vuod": {}, "foFZb5nr": {}, "yWDyyfRJ": {}}, "user_id": "rMdB4eJP"}, {"extra_attributes": {"IfDoIK8a": {}, "xfuyTycg": {}, "zUxKKVRc": {}}, "user_id": "XPRBFSzh"}, {"extra_attributes": {"BZxczD1s": {}, "veITP6kO": {}, "JsXMbeDi": {}}, "user_id": "JIMD9Fea"}], "ticket_created_at": 37, "ticket_id": "OxmrH5hi"}]}, {"matching_parties": [{"first_ticket_created_at": 47, "party_attributes": {"MfffavMt": {}, "BrF3wIg0": {}, "1N95lEcj": {}}, "party_id": "ZQ5JJ8Mx", "party_members": [{"extra_attributes": {"m7hKS1k4": {}, "cFeXOw2U": {}, "jQqM358r": {}}, "user_id": "N8Dlj2Wd"}, {"extra_attributes": {"ZDT3ZLQ9": {}, "Vl3vry3G": {}, "DvqQfg8W": {}}, "user_id": "CfJfqTvM"}, {"extra_attributes": {"BdWqCfpR": {}, "KpZkYUeH": {}, "Yx55WGgi": {}}, "user_id": "e9BwnUgU"}], "ticket_created_at": 17, "ticket_id": "kGgNaSYG"}, {"first_ticket_created_at": 0, "party_attributes": {"3uqqdVTa": {}, "tlEUOtpJ": {}, "i5500V4d": {}}, "party_id": "2KYyZSc9", "party_members": [{"extra_attributes": {"pO7FpfCG": {}, "GbSWSEkZ": {}, "K03AL9jz": {}}, "user_id": "3LtTdXFl"}, {"extra_attributes": {"VpeAeUxd": {}, "3kjllk1X": {}, "MLzHKHza": {}}, "user_id": "izouxkWm"}, {"extra_attributes": {"5BCuRnxo": {}, "TFIzx8Rm": {}, "oFn5xyHk": {}}, "user_id": "IxDFaUMl"}], "ticket_created_at": 37, "ticket_id": "Urf0hOut"}, {"first_ticket_created_at": 86, "party_attributes": {"R2B14xPS": {}, "jNfddIU0": {}, "92wxDFsq": {}}, "party_id": "5knyt8Bd", "party_members": [{"extra_attributes": {"kucJt3hs": {}, "Jrpm2Ww9": {}, "OrpkPzSo": {}}, "user_id": "rP6JtSnO"}, {"extra_attributes": {"1r1uvJHr": {}, "U2syaRtv": {}, "65WKXUvY": {}}, "user_id": "mW0xwirF"}, {"extra_attributes": {"dClsyH8L": {}, "ClSmSMWQ": {}, "ajTI2oG4": {}}, "user_id": "l2Yb9KE5"}], "ticket_created_at": 15, "ticket_id": "XcRdZce5"}]}, {"matching_parties": [{"first_ticket_created_at": 58, "party_attributes": {"QzBcXRUa": {}, "8j6L3iRQ": {}, "8Vnk3c1I": {}}, "party_id": "mABdHAwp", "party_members": [{"extra_attributes": {"Jjsj6rGe": {}, "xkpMtXyW": {}, "3o0DQ8Ir": {}}, "user_id": "DfSSm5v4"}, {"extra_attributes": {"6mhDsaXu": {}, "qivWOMTz": {}, "oqBxetbd": {}}, "user_id": "yCp2Zhp4"}, {"extra_attributes": {"tMAJq4SD": {}, "qCinCHXL": {}, "hyozkrlM": {}}, "user_id": "2otlng7q"}], "ticket_created_at": 60, "ticket_id": "8wGBszK9"}, {"first_ticket_created_at": 20, "party_attributes": {"RWUFj1uj": {}, "WpkuX3e9": {}, "2fmDSr9g": {}}, "party_id": "WLH5IJrn", "party_members": [{"extra_attributes": {"Qe9byTVt": {}, "5t3A8lrr": {}, "uP7h5QQE": {}}, "user_id": "TWdd2TGw"}, {"extra_attributes": {"6Zffx9Jq": {}, "ePKgCecr": {}, "LvrjmdM2": {}}, "user_id": "U6DwRk9X"}, {"extra_attributes": {"XEfa4yJ6": {}, "ljNtHt7A": {}, "lAJwQMsM": {}}, "user_id": "hVL69XDW"}], "ticket_created_at": 39, "ticket_id": "lIyh5ye7"}, {"first_ticket_created_at": 23, "party_attributes": {"m2WlAyxR": {}, "mXU2HH1T": {}, "Pnvpqyr1": {}}, "party_id": "eSA575Nc", "party_members": [{"extra_attributes": {"BQeGmxHv": {}, "nNwor5xc": {}, "KpG6pyav": {}}, "user_id": "r5I1cQ87"}, {"extra_attributes": {"2qofRuDm": {}, "sjhwZ46m": {}, "JvQPApyE": {}}, "user_id": "UQMxwPjp"}, {"extra_attributes": {"IelDMwAV": {}, "vk7yTC0V": {}, "7JOdDSlT": {}}, "user_id": "RUIRLGEC"}], "ticket_created_at": 14, "ticket_id": "sWKUAC80"}]}], "namespace": "ZzOL43Wu", "party_attributes": {"nj2zrNPh": {}, "h32mPbNT": {}, "NN6UpqL7": {}}, "party_id": "wmtsOXwx", "queued_at": 34, "region": "j5CNEgEq", "server_name": "ibALJFr0", "status": "6w5JyspP", "ticket_id": "2pRRVD3e", "updated_at": "1987-01-08T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "s7W2ZXOB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'DgEmirI9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 87, "userID": "wcZW701L", "weight": 0.6058768644197392}' \
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
    'Hli49nfx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "QhfUW3fW", "description": "ADQVPzng", "findMatchTimeoutSeconds": 67, "joinable": false, "max_delay_ms": 63, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 81, "min": 49, "name": "RvMFB3Ys"}, {"max": 83, "min": 54, "name": "sUTIN2u3"}, {"max": 47, "min": 35, "name": "3O2KA5nS"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 8}, "maxNumber": 70, "minNumber": 18, "playerMaxNumber": 45, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 72, "name": "05HTj4ko"}, {"max": 91, "min": 40, "name": "PJZ0rEHK"}, {"max": 43, "min": 71, "name": "43cbji1z"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 33}, "duration": 66, "max_number": 63, "min_number": 35, "player_max_number": 20, "player_min_number": 88}, {"combination": {"alliances": [{"max": 27, "min": 42, "name": "WBySzCoN"}, {"max": 53, "min": 19, "name": "FIKoQUzj"}, {"max": 13, "min": 36, "name": "5GeNCIma"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 25}, "duration": 3, "max_number": 23, "min_number": 32, "player_max_number": 35, "player_min_number": 80}, {"combination": {"alliances": [{"max": 83, "min": 25, "name": "GZxltgod"}, {"max": 51, "min": 98, "name": "nAbuLIFj"}, {"max": 46, "min": 36, "name": "uviGIUnN"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 12}, "duration": 79, "max_number": 68, "min_number": 71, "player_max_number": 67, "player_min_number": 4}], "flexingRules": [{"attribute": "UGeqehF6", "criteria": "o8vAbTm7", "duration": 3, "reference": 0.6603234828727134}, {"attribute": "Bu5AMnsR", "criteria": "pufWK7gg", "duration": 66, "reference": 0.14965478372153418}, {"attribute": "9zW0MHAc", "criteria": "aTYwfFPl", "duration": 62, "reference": 0.6718934644590855}], "match_options": {"options": [{"name": "qpnlQTyS", "type": "RIYQ0RZ5"}, {"name": "bZW3Ba2q", "type": "L0bU7uCz"}, {"name": "zjtlXodK", "type": "syVGofk9"}]}, "matchingRules": [{"attribute": "c1DgkoCf", "criteria": "3jN9pPHK", "reference": 0.1354912074405864}, {"attribute": "3vvrRpOR", "criteria": "kLmlUHDe", "reference": 0.635710473232398}, {"attribute": "KKHVeiDw", "criteria": "jwRKFQVg", "reference": 0.8468433691242863}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 30, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'p1orx0SF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'G2uHvjXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'OcM929XT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["N28KuL1X", "oDlJZCCd", "d3jS2mP7"], "party_id": "u9OuW6uM", "user_id": "YCE4mxUc"}' \
    '2ZZr5mZd' \
    'kurOsLOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'sPaa3oiU' \
    'gaHDhmRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'gjVLeDtj' \
    'WIRDVUGv' \
    'bHCYxHud' \
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
    'DW5UXc3K' \
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
