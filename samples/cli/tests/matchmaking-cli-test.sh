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
matchmaking-create-channel-handler '{"deployment": "qPVU2zaz", "description": "WbH99NdT", "find_match_timeout_seconds": 6, "game_mode": "CQIdmoRM", "joinable": false, "max_delay_ms": 57, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 23, "min": 97, "name": "h7qPNOPW"}, {"max": 94, "min": 25, "name": "07rNH282"}, {"max": 82, "min": 34, "name": "ZArr9BGG"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 1}, "max_number": 6, "min_number": 7, "player_max_number": 85, "player_min_number": 65}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 28, "min": 55, "name": "nvDrefuS"}, {"max": 2, "min": 17, "name": "oBJpppqo"}, {"max": 41, "min": 42, "name": "VKihLZyo"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 9}, "duration": 38, "max_number": 43, "min_number": 70, "player_max_number": 77, "player_min_number": 73}, {"combination": {"alliances": [{"max": 15, "min": 71, "name": "J2vo5TOv"}, {"max": 49, "min": 26, "name": "fJTSlFKx"}, {"max": 44, "min": 23, "name": "iTPv2sXZ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 70}, "duration": 38, "max_number": 14, "min_number": 41, "player_max_number": 23, "player_min_number": 27}, {"combination": {"alliances": [{"max": 31, "min": 5, "name": "VzOgikAs"}, {"max": 15, "min": 34, "name": "3D1wYOYT"}, {"max": 96, "min": 46, "name": "W3fXg2LG"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 75}, "duration": 86, "max_number": 74, "min_number": 7, "player_max_number": 10, "player_min_number": 14}], "flexing_rule": [{"attribute": "SS547d1l", "criteria": "zY2NJbQN", "duration": 11, "reference": 0.7036162921638637}, {"attribute": "xXZvBdD9", "criteria": "mgrBpi2k", "duration": 56, "reference": 0.3981244509586285}, {"attribute": "olCIyI4V", "criteria": "agvA918P", "duration": 20, "reference": 0.7186198309826038}], "match_options": {"options": [{"name": "gR7riJhZ", "type": "lTjd5HmY"}, {"name": "U8QtNXTi", "type": "0dxlcZ82"}, {"name": "dS9BRXkN", "type": "0g7pN7lf"}]}, "matching_rule": [{"attribute": "Wb3wqgKO", "criteria": "Fbr8WNxP", "reference": 0.9347051328666439}, {"attribute": "fyQhi2vC", "criteria": "yVtI0d8w", "reference": 0.6114110963866469}, {"attribute": "BmFFUUIk", "criteria": "2d2gAWoP", "reference": 0.5920327094320278}], "rebalance_enable": false, "sub_game_modes": {"rnkQjQJE": {"alliance": {"combination": {"alliances": [{"max": 11, "min": 31, "name": "lkt3QNmP"}, {"max": 95, "min": 53, "name": "2rMATB3z"}, {"max": 73, "min": 89, "name": "OQE8I3oR"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 94}, "max_number": 36, "min_number": 19, "player_max_number": 100, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 25, "min": 38, "name": "XHENPheG"}, {"max": 43, "min": 3, "name": "VKFzDzxw"}, {"max": 94, "min": 71, "name": "ZAEj4hKH"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 22}, "duration": 11, "max_number": 96, "min_number": 42, "player_max_number": 2, "player_min_number": 13}, {"combination": {"alliances": [{"max": 21, "min": 36, "name": "U1g2NkwF"}, {"max": 34, "min": 55, "name": "JdFxExGA"}, {"max": 10, "min": 45, "name": "aokQ9A8O"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 71}, "duration": 49, "max_number": 99, "min_number": 72, "player_max_number": 32, "player_min_number": 49}, {"combination": {"alliances": [{"max": 70, "min": 96, "name": "qittXwrv"}, {"max": 33, "min": 71, "name": "fZKetT97"}, {"max": 43, "min": 37, "name": "4iAVhNwC"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 34}, "duration": 36, "max_number": 75, "min_number": 65, "player_max_number": 23, "player_min_number": 55}], "name": "6tiXnPuV"}, "GmXviYUJ": {"alliance": {"combination": {"alliances": [{"max": 38, "min": 68, "name": "m6bRqIFR"}, {"max": 64, "min": 17, "name": "6B7SgAxk"}, {"max": 84, "min": 4, "name": "bwcN3UhG"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 1}, "max_number": 61, "min_number": 3, "player_max_number": 96, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 76, "min": 39, "name": "wa2J5JcV"}, {"max": 27, "min": 56, "name": "22ON3oge"}, {"max": 70, "min": 29, "name": "2BXmGrAi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 48}, "duration": 71, "max_number": 61, "min_number": 19, "player_max_number": 79, "player_min_number": 72}, {"combination": {"alliances": [{"max": 95, "min": 26, "name": "D8f24y5i"}, {"max": 54, "min": 99, "name": "ZvvFc1Dy"}, {"max": 31, "min": 50, "name": "53N0I3oT"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 50}, "duration": 74, "max_number": 1, "min_number": 1, "player_max_number": 92, "player_min_number": 18}, {"combination": {"alliances": [{"max": 70, "min": 98, "name": "fWxIvOpP"}, {"max": 73, "min": 5, "name": "WYBxh7Eb"}, {"max": 70, "min": 28, "name": "0lcOcyXW"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 64}, "duration": 11, "max_number": 25, "min_number": 94, "player_max_number": 74, "player_min_number": 97}], "name": "IIwZDua0"}, "OJX63oT9": {"alliance": {"combination": {"alliances": [{"max": 89, "min": 84, "name": "e4UMCJPf"}, {"max": 37, "min": 78, "name": "mdFGoFBL"}, {"max": 51, "min": 47, "name": "6zPXVdnF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 14}, "max_number": 58, "min_number": 54, "player_max_number": 71, "player_min_number": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 9, "min": 11, "name": "7QKKtfEA"}, {"max": 88, "min": 89, "name": "5Otdh2uh"}, {"max": 55, "min": 99, "name": "Or3RD9lY"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 86}, "duration": 24, "max_number": 71, "min_number": 40, "player_max_number": 79, "player_min_number": 28}, {"combination": {"alliances": [{"max": 39, "min": 9, "name": "KMkTkZCq"}, {"max": 16, "min": 31, "name": "Sdp2GCF8"}, {"max": 96, "min": 67, "name": "IdJy6fIf"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 20}, "duration": 92, "max_number": 63, "min_number": 16, "player_max_number": 53, "player_min_number": 50}, {"combination": {"alliances": [{"max": 81, "min": 77, "name": "4lfUvki8"}, {"max": 71, "min": 38, "name": "C51UGlL9"}, {"max": 50, "min": 40, "name": "hqbSAxyK"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 53}, "duration": 85, "max_number": 80, "min_number": 59, "player_max_number": 19, "player_min_number": 47}], "name": "OBzkk4sC"}}}, "session_queue_timeout_seconds": 97, "social_matchmaking": true, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'KELsOat0' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "EGuMMOrY", "players": [{"results": [{"attribute": "DGcsubaL", "value": 0.8932043743614767}, {"attribute": "I46B6WW9", "value": 0.1971042013637908}, {"attribute": "m1vtvyyC", "value": 0.5302616003085427}], "user_id": "JiIb8WIA"}, {"results": [{"attribute": "d0NtB7SW", "value": 0.4040650905349893}, {"attribute": "pUvYvtcc", "value": 0.03770560926250199}, {"attribute": "EMvaoRtC", "value": 0.04282369119117224}], "user_id": "stSPfkiE"}, {"results": [{"attribute": "q1DauKwM", "value": 0.24267612672117722}, {"attribute": "Sxde49e3", "value": 0.2721157750384463}, {"attribute": "JMcdrbur", "value": 0.3168941609704923}], "user_id": "VGNENr0N"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "2bYBFjH1"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "8KYjY151", "client_version": "Z25V9qg8", "deployment": "pZju4pCL", "error_code": 90, "error_message": "A7DZHDrZ", "game_mode": "L7KS5UeZ", "joinable": false, "match_id": "h8CNLQVJ", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 94, "party_attributes": {"4Drh0b6K": {}, "KnuSIqq5": {}, "gX8CufWw": {}}, "party_id": "jlryxARW", "party_members": [{"extra_attributes": {"tjVUL7by": {}, "dl0so8dD": {}, "31VHJaZF": {}}, "user_id": "IJbw0oyl"}, {"extra_attributes": {"uy9gNuMK": {}, "b6QmKYEn": {}, "UMU4LjDn": {}}, "user_id": "X8QsfADw"}, {"extra_attributes": {"S9nKeF9o": {}, "nOZoFBtK": {}, "sPv8SMct": {}}, "user_id": "55Z8C1pH"}], "ticket_created_at": 85, "ticket_id": "zVu37ghT"}, {"first_ticket_created_at": 64, "party_attributes": {"iI9WPln9": {}, "CObvcuB8": {}, "LgopeLOG": {}}, "party_id": "mhtZHBeD", "party_members": [{"extra_attributes": {"aN8bApn2": {}, "IS5XV6i2": {}, "TP2eMhN9": {}}, "user_id": "vSMCUihv"}, {"extra_attributes": {"zqEDk5vi": {}, "5mGtCjox": {}, "D5IdY5o3": {}}, "user_id": "VB2tqHIk"}, {"extra_attributes": {"4kqKlPxD": {}, "JcAvQbmt": {}, "PydZvzYE": {}}, "user_id": "RoZJqAin"}], "ticket_created_at": 90, "ticket_id": "WntF7yld"}, {"first_ticket_created_at": 0, "party_attributes": {"Y8YcfBH9": {}, "7zv8Yg3H": {}, "ZUlwGn0V": {}}, "party_id": "p1txJFeV", "party_members": [{"extra_attributes": {"DpieZJUO": {}, "eWnkinQc": {}, "5Qc123yC": {}}, "user_id": "AcmqONk7"}, {"extra_attributes": {"BYJ97isp": {}, "LBO2qN64": {}, "SqD98jhT": {}}, "user_id": "Pw1gK9f0"}, {"extra_attributes": {"gMzUxiuS": {}, "c2XMebPC": {}, "0awqCuqi": {}}, "user_id": "HUdQHqyy"}], "ticket_created_at": 27, "ticket_id": "U0On2lXd"}]}, {"matching_parties": [{"first_ticket_created_at": 45, "party_attributes": {"0hAdJhNL": {}, "5JVm5PVK": {}, "PTJyxpGk": {}}, "party_id": "iPbZFla2", "party_members": [{"extra_attributes": {"dVyqRlF0": {}, "Fw2IptBJ": {}, "N6frahsH": {}}, "user_id": "TvT4cPWC"}, {"extra_attributes": {"JdZ0TkaB": {}, "8Iqcbmza": {}, "1KEhpk7N": {}}, "user_id": "2kI2TTr9"}, {"extra_attributes": {"heCLEQSv": {}, "Du2xu6Wq": {}, "3I2J5lTm": {}}, "user_id": "9uYobCzx"}], "ticket_created_at": 94, "ticket_id": "n7vZ6NVK"}, {"first_ticket_created_at": 35, "party_attributes": {"wrJ9xTxF": {}, "YFkFAGhm": {}, "fFwZr3Fj": {}}, "party_id": "NHiiszg5", "party_members": [{"extra_attributes": {"vc6HgPZ6": {}, "dIcaQNcJ": {}, "Oi1ILxwr": {}}, "user_id": "FWTiJ0dV"}, {"extra_attributes": {"24AkHHtI": {}, "sCarGAj3": {}, "82fvW2EL": {}}, "user_id": "DxSmMXZu"}, {"extra_attributes": {"bRIO64tf": {}, "uEcy9fBk": {}, "Cq6Ig2eF": {}}, "user_id": "FsoUByoB"}], "ticket_created_at": 19, "ticket_id": "7YNw2kBH"}, {"first_ticket_created_at": 100, "party_attributes": {"jECJ3GmV": {}, "3CZ4iQBb": {}, "DLGpaoJg": {}}, "party_id": "VgTnpsj2", "party_members": [{"extra_attributes": {"lMQizr2E": {}, "wVdEq6JX": {}, "mIpBjLpk": {}}, "user_id": "bsrjslnW"}, {"extra_attributes": {"lCVL4wpH": {}, "TpxVqHBA": {}, "f1XKzLoH": {}}, "user_id": "0bLdfTtH"}, {"extra_attributes": {"xqWMAnSM": {}, "b86YMsdO": {}, "hRz3P6Ta": {}}, "user_id": "22rRvGEO"}], "ticket_created_at": 13, "ticket_id": "G1WRwdhS"}]}, {"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"Q9TI3QLB": {}, "z7sEDzCh": {}, "Ysq9F1Es": {}}, "party_id": "SyEIHofs", "party_members": [{"extra_attributes": {"b1bwQgGo": {}, "nz7euz7P": {}, "QCRB3dQ8": {}}, "user_id": "u472zgR5"}, {"extra_attributes": {"atAr2lJ9": {}, "Qb8Uf7Qr": {}, "hQ1JzUCF": {}}, "user_id": "geSeqsQI"}, {"extra_attributes": {"KdxyHcZ5": {}, "HuCXyB8S": {}, "fvuwQRLF": {}}, "user_id": "LTOdnz42"}], "ticket_created_at": 5, "ticket_id": "KsDThKTL"}, {"first_ticket_created_at": 62, "party_attributes": {"mExX0CQf": {}, "WWZRAsnv": {}, "aY6lf282": {}}, "party_id": "KucwMGpD", "party_members": [{"extra_attributes": {"iORxql9N": {}, "MXCjUtG8": {}, "T6AFaUPN": {}}, "user_id": "M3QPZkFy"}, {"extra_attributes": {"ahX9VOGo": {}, "791j60qn": {}, "3XKVSMXE": {}}, "user_id": "gpJWakrP"}, {"extra_attributes": {"xOFEgogw": {}, "7APN3lTh": {}, "btzB8s90": {}}, "user_id": "fS3w8lWZ"}], "ticket_created_at": 64, "ticket_id": "mPanoC1U"}, {"first_ticket_created_at": 37, "party_attributes": {"d1mRAopx": {}, "ok2Clsqf": {}, "ZBkeMWsp": {}}, "party_id": "dIh9b59r", "party_members": [{"extra_attributes": {"3dfyzwNf": {}, "9LRsftD3": {}, "bL22hIoh": {}}, "user_id": "UQl3PMuo"}, {"extra_attributes": {"xp0ERdbk": {}, "tF2sEzjX": {}, "0p0KC6MG": {}}, "user_id": "lbb2Ec41"}, {"extra_attributes": {"2GnZZm5v": {}, "06Yi5nag": {}, "UhdacCCJ": {}}, "user_id": "tPYcps2m"}], "ticket_created_at": 39, "ticket_id": "g8m3wY2j"}]}], "namespace": "8UGeH4w0", "party_attributes": {"gIhrVAHY": {}, "x8JBW3Vm": {}, "BJzoa5O7": {}}, "party_id": "Zq34z57N", "queued_at": 79, "region": "14Lv2oxO", "server_name": "YIndDi2C", "status": "3WWk04Uh", "ticket_id": "hdIVraOz", "updated_at": "1992-07-26T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "6vcUwOg9"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'cir168d1' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 30, "userID": "UzIwg5yP", "weight": 0.9663992512411311}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'g20xJt33' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "E37FH6n4", "description": "54KWqvzi", "findMatchTimeoutSeconds": 82, "joinable": true, "max_delay_ms": 19, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 6, "min": 9, "name": "EYWgWCvu"}, {"max": 87, "min": 9, "name": "NyQdhszU"}, {"max": 19, "min": 38, "name": "QqVQQbdi"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 35}, "maxNumber": 87, "minNumber": 48, "playerMaxNumber": 13, "playerMinNumber": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 49, "min": 71, "name": "2Pkrzuol"}, {"max": 80, "min": 47, "name": "FJUBTz2g"}, {"max": 5, "min": 20, "name": "Z6eE2w1t"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 30}, "duration": 23, "max_number": 47, "min_number": 41, "player_max_number": 96, "player_min_number": 85}, {"combination": {"alliances": [{"max": 67, "min": 18, "name": "d3e7q3KR"}, {"max": 80, "min": 31, "name": "QjQ6Lsdg"}, {"max": 45, "min": 97, "name": "cZeVqMNb"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 39}, "duration": 91, "max_number": 64, "min_number": 17, "player_max_number": 50, "player_min_number": 78}, {"combination": {"alliances": [{"max": 10, "min": 98, "name": "8lq7C2jc"}, {"max": 52, "min": 90, "name": "yr9Kz8HY"}, {"max": 65, "min": 39, "name": "QLRaALo7"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 66}, "duration": 100, "max_number": 64, "min_number": 26, "player_max_number": 51, "player_min_number": 46}], "flexingRules": [{"attribute": "CbJrJXXg", "criteria": "U08jMu8l", "duration": 77, "reference": 0.7974538177249997}, {"attribute": "HqFaIAZw", "criteria": "MeNZ2WmO", "duration": 67, "reference": 0.2102055824574246}, {"attribute": "UkaY7rnE", "criteria": "eUFO5YYZ", "duration": 36, "reference": 0.15572823256669288}], "match_options": {"options": [{"name": "jO5Kdm0I", "type": "fpEbtzPD"}, {"name": "Rv43i2Py", "type": "EnVlzJP7"}, {"name": "kaxQiQt1", "type": "c7SizFLZ"}]}, "matchingRules": [{"attribute": "zAtNP4Wn", "criteria": "3Gl901Zw", "reference": 0.6451913397821375}, {"attribute": "ybRJHEM0", "criteria": "WfzTSf5G", "reference": 0.8118388796739222}, {"attribute": "3yJoEawq", "criteria": "BIo3Zf3u", "reference": 0.701943907649755}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 83, "socialMatchmaking": true, "use_sub_gamemode": true}' 'bBMgCLIA' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'KlXTTDWU' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'SVVJcTGK' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["QlAF0J36", "dhFQXyJ2", "Eo3fvgMJ"], "party_id": "AgHCEqWO", "user_id": "24AwzKvG"}' 'BzjZARbA' 'sbXNVkFj' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'IMPrprSH' 'j9nrpvQP' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'fecR3gxr' 'IoQSG8vm' 'V16kO789' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel '3HRL3333' --login_with_auth "Bearer foo"
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
    '{"deployment": "FhBqxdnZ", "description": "YMZb1GHJ", "find_match_timeout_seconds": 25, "game_mode": "Z3Px4ZYA", "joinable": false, "max_delay_ms": 4, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 14, "min": 90, "name": "5DCJ7XLY"}, {"max": 58, "min": 93, "name": "eLqtqu0V"}, {"max": 13, "min": 76, "name": "I13XFHRi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 25}, "max_number": 51, "min_number": 45, "player_max_number": 60, "player_min_number": 48}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 47, "min": 39, "name": "KoEoi37S"}, {"max": 44, "min": 64, "name": "YsJPVnyZ"}, {"max": 8, "min": 87, "name": "Sqiv8dFi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 88}, "duration": 90, "max_number": 51, "min_number": 78, "player_max_number": 47, "player_min_number": 56}, {"combination": {"alliances": [{"max": 53, "min": 26, "name": "w4nWtmCg"}, {"max": 10, "min": 27, "name": "5CKIUrw3"}, {"max": 89, "min": 57, "name": "CjgiA8wQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 57}, "duration": 18, "max_number": 14, "min_number": 45, "player_max_number": 37, "player_min_number": 35}, {"combination": {"alliances": [{"max": 5, "min": 14, "name": "NxNMWkRK"}, {"max": 5, "min": 82, "name": "s39y0X6v"}, {"max": 54, "min": 84, "name": "AYTu5vgn"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 70, "role_flexing_second": 2}, "duration": 0, "max_number": 17, "min_number": 90, "player_max_number": 24, "player_min_number": 5}], "flexing_rule": [{"attribute": "5TYBAc8w", "criteria": "xcwFiRtj", "duration": 95, "reference": 0.7692628616214897}, {"attribute": "OFpQ2gOE", "criteria": "wWbaUqVK", "duration": 10, "reference": 0.24797918702848132}, {"attribute": "hMUxzPOn", "criteria": "HErSm73J", "duration": 50, "reference": 0.8265392513152993}], "match_options": {"options": [{"name": "elHayNIV", "type": "0DFJaW6R"}, {"name": "qWmZfRDN", "type": "MZswEDqa"}, {"name": "6KZfZJ1g", "type": "QKCpURcF"}]}, "matching_rule": [{"attribute": "J7mrSBl1", "criteria": "YVEOPNy3", "reference": 0.05722029748645441}, {"attribute": "9wjINMQ1", "criteria": "bOyYwApR", "reference": 0.46037904114104955}, {"attribute": "kjSQHzoL", "criteria": "M1iHeByB", "reference": 0.2975089474806203}], "rebalance_enable": true, "sub_game_modes": {"5s7waHrO": {"alliance": {"combination": {"alliances": [{"max": 30, "min": 80, "name": "FV4FFBPA"}, {"max": 91, "min": 19, "name": "1qDjOyS1"}, {"max": 56, "min": 5, "name": "pDk4cyfI"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 71}, "max_number": 97, "min_number": 13, "player_max_number": 69, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 39, "min": 70, "name": "M664lhS2"}, {"max": 25, "min": 62, "name": "bAbCvxlj"}, {"max": 93, "min": 86, "name": "Djzr9qts"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 78}, "duration": 39, "max_number": 33, "min_number": 60, "player_max_number": 1, "player_min_number": 27}, {"combination": {"alliances": [{"max": 65, "min": 50, "name": "rSP9dgOj"}, {"max": 61, "min": 88, "name": "KcQLi76I"}, {"max": 86, "min": 33, "name": "ChZhRSep"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 70}, "duration": 2, "max_number": 37, "min_number": 81, "player_max_number": 71, "player_min_number": 1}, {"combination": {"alliances": [{"max": 82, "min": 28, "name": "o402nNMY"}, {"max": 63, "min": 24, "name": "m6t67PEj"}, {"max": 35, "min": 78, "name": "yHv3I8nZ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 67}, "duration": 14, "max_number": 73, "min_number": 0, "player_max_number": 51, "player_min_number": 1}], "name": "iIaqmmNj"}, "JKdAi874": {"alliance": {"combination": {"alliances": [{"max": 24, "min": 23, "name": "Tk124yw9"}, {"max": 34, "min": 8, "name": "BVyi8MDi"}, {"max": 22, "min": 4, "name": "zUwfmLGR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 48}, "max_number": 84, "min_number": 78, "player_max_number": 21, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 90, "min": 3, "name": "2uDh3e4U"}, {"max": 84, "min": 7, "name": "pSKSg2HE"}, {"max": 35, "min": 26, "name": "zhry5uhP"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 34}, "duration": 40, "max_number": 83, "min_number": 52, "player_max_number": 56, "player_min_number": 42}, {"combination": {"alliances": [{"max": 45, "min": 91, "name": "TUqDHgaB"}, {"max": 63, "min": 29, "name": "fzTzGGpi"}, {"max": 32, "min": 16, "name": "f6g2Ufzc"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 84}, "duration": 34, "max_number": 3, "min_number": 54, "player_max_number": 13, "player_min_number": 75}, {"combination": {"alliances": [{"max": 74, "min": 24, "name": "DlCYmtLU"}, {"max": 24, "min": 76, "name": "gfuFmcbD"}, {"max": 100, "min": 97, "name": "xbrloqPy"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 91}, "duration": 40, "max_number": 1, "min_number": 24, "player_max_number": 32, "player_min_number": 98}], "name": "UGQ3hl5q"}, "WxYXByrl": {"alliance": {"combination": {"alliances": [{"max": 84, "min": 57, "name": "Ke2M7sqJ"}, {"max": 49, "min": 20, "name": "j7MPaJhf"}, {"max": 98, "min": 86, "name": "XQK0PKC7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 27}, "max_number": 94, "min_number": 79, "player_max_number": 44, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 40, "min": 29, "name": "3UtD55uF"}, {"max": 73, "min": 71, "name": "1AO6X9Ph"}, {"max": 63, "min": 59, "name": "T4KDJZKq"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 37}, "duration": 89, "max_number": 94, "min_number": 62, "player_max_number": 25, "player_min_number": 74}, {"combination": {"alliances": [{"max": 63, "min": 82, "name": "QfMHiX0h"}, {"max": 99, "min": 12, "name": "6OVmHx0F"}, {"max": 19, "min": 100, "name": "ty3J9n0x"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 59}, "duration": 19, "max_number": 28, "min_number": 16, "player_max_number": 42, "player_min_number": 56}, {"combination": {"alliances": [{"max": 65, "min": 26, "name": "z8BRjYQ4"}, {"max": 72, "min": 45, "name": "bHEZVOze"}, {"max": 81, "min": 36, "name": "NYhObmYi"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 36}, "duration": 36, "max_number": 2, "min_number": 74, "player_max_number": 55, "player_min_number": 93}], "name": "Y7ckbf05"}}}, "session_queue_timeout_seconds": 96, "social_matchmaking": true, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'PdiBqtVe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "t6CF7XXt", "players": [{"results": [{"attribute": "yrSYVQsi", "value": 0.2983244272610207}, {"attribute": "l0eeMzsK", "value": 0.3518118991613296}, {"attribute": "7b3VIche", "value": 0.03335226865848695}], "user_id": "pSAb0MkE"}, {"results": [{"attribute": "qS8Lbv01", "value": 0.5855776428231964}, {"attribute": "rWcMW68O", "value": 0.9716191683534631}, {"attribute": "YugdVeHM", "value": 0.6582822914224481}], "user_id": "8JiFDjLf"}, {"results": [{"attribute": "wU8he5YT", "value": 0.8570300534518771}, {"attribute": "2udwVonw", "value": 0.6112729876019473}, {"attribute": "F7TqtcNr", "value": 0.8503910798133383}], "user_id": "xKx4MzLc"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "1YDPsbRF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "izae1Fwg", "client_version": "N2ItjiR8", "deployment": "zjx3b5Xh", "error_code": 64, "error_message": "iq1hlPMr", "game_mode": "uO34sy4E", "joinable": false, "match_id": "zqm1V2BB", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"XkzIwBrP": {}, "bhCI67cz": {}, "TzF7SbE0": {}}, "party_id": "hK491xRG", "party_members": [{"extra_attributes": {"5O268CK6": {}, "yduFVRMg": {}, "RtCe9pOr": {}}, "user_id": "xiFx5qCL"}, {"extra_attributes": {"4c1f10aI": {}, "2Km0PsFz": {}, "BRY5VgLg": {}}, "user_id": "s8tPdlAP"}, {"extra_attributes": {"ozVRhmvj": {}, "vou0Svdm": {}, "ZubYlKkP": {}}, "user_id": "BqCxa04r"}], "ticket_created_at": 92, "ticket_id": "45lN88cP"}, {"first_ticket_created_at": 26, "party_attributes": {"lrns0MNx": {}, "Gu1wFBJt": {}, "gi2tfX6v": {}}, "party_id": "jyZHAHho", "party_members": [{"extra_attributes": {"mgbi6oQJ": {}, "SMICHwZl": {}, "8wnOgPNI": {}}, "user_id": "R0G4gfp9"}, {"extra_attributes": {"Gd0t8ZYg": {}, "zn13i3jA": {}, "IGWpjuru": {}}, "user_id": "4MNzlihD"}, {"extra_attributes": {"heErIe0H": {}, "4zDnWiBP": {}, "LO4jHQ3V": {}}, "user_id": "zHPnTpPI"}], "ticket_created_at": 95, "ticket_id": "IwNIbuV9"}, {"first_ticket_created_at": 88, "party_attributes": {"ogVuBoEz": {}, "pzkBYHHt": {}, "t43BqXaH": {}}, "party_id": "0ivMkGTb", "party_members": [{"extra_attributes": {"VP1N3CFi": {}, "OZzlEIbL": {}, "nBcnktN6": {}}, "user_id": "3i4jUoVg"}, {"extra_attributes": {"crhTmPoU": {}, "ZPpw00BW": {}, "OYLYqGut": {}}, "user_id": "4qyu1XOQ"}, {"extra_attributes": {"SyqjS4QV": {}, "foPchKz0": {}, "NrPy9JQQ": {}}, "user_id": "5EkbuTDO"}], "ticket_created_at": 59, "ticket_id": "F6tUoF4m"}]}, {"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"pwLQtg1D": {}, "REf4blTt": {}, "9cfVLbwK": {}}, "party_id": "ezbQHaBL", "party_members": [{"extra_attributes": {"NMkiKUXm": {}, "GcQVLzou": {}, "Oi45ANzI": {}}, "user_id": "6zkSMZBx"}, {"extra_attributes": {"SG3qoTkv": {}, "nNoSniGg": {}, "v7jEWKBy": {}}, "user_id": "490Jzhyt"}, {"extra_attributes": {"OIerEby2": {}, "8S7H1Npr": {}, "okWEzkhJ": {}}, "user_id": "na79D4zV"}], "ticket_created_at": 74, "ticket_id": "6M8dxbm5"}, {"first_ticket_created_at": 58, "party_attributes": {"zcUAlp45": {}, "vKgP8UbR": {}, "G6cEQOke": {}}, "party_id": "2IaRQF9c", "party_members": [{"extra_attributes": {"aQGnAse7": {}, "UDpMVOaE": {}, "WRC5N1wt": {}}, "user_id": "yWg9ev0c"}, {"extra_attributes": {"4bWUIhS3": {}, "NblyoBCq": {}, "xW72joL4": {}}, "user_id": "78am6KA2"}, {"extra_attributes": {"k7wpWHim": {}, "Ivz8FBto": {}, "rueI335c": {}}, "user_id": "DbnCBCzr"}], "ticket_created_at": 54, "ticket_id": "paFcOPVS"}, {"first_ticket_created_at": 10, "party_attributes": {"KbZh00aU": {}, "I1Xnb4wm": {}, "nW6jMLPv": {}}, "party_id": "FXhAHXnH", "party_members": [{"extra_attributes": {"hSqHGGxe": {}, "z96mNU2x": {}, "1c9geuDf": {}}, "user_id": "7kQLKnmx"}, {"extra_attributes": {"wq6Igz7F": {}, "a5O1KUIC": {}, "XvWmMdSi": {}}, "user_id": "JdUukDOn"}, {"extra_attributes": {"kJ4YIAmW": {}, "64mVA4P6": {}, "tAE3VsnD": {}}, "user_id": "QpsWIkah"}], "ticket_created_at": 54, "ticket_id": "r5quYc2q"}]}, {"matching_parties": [{"first_ticket_created_at": 30, "party_attributes": {"lpmbDvRi": {}, "gDMlsoOo": {}, "iFr1gh5n": {}}, "party_id": "x7LbYAwS", "party_members": [{"extra_attributes": {"0KHUtqR9": {}, "AQUIikR1": {}, "IJfDMRPt": {}}, "user_id": "WuPArENN"}, {"extra_attributes": {"9Z4DJJhN": {}, "G2qmmxWu": {}, "JVOMGXje": {}}, "user_id": "XPmwLUn8"}, {"extra_attributes": {"cmRk0b2w": {}, "GgH82XjD": {}, "SF29CVbA": {}}, "user_id": "SzovgHe9"}], "ticket_created_at": 48, "ticket_id": "rK1VuAvM"}, {"first_ticket_created_at": 72, "party_attributes": {"ciTOb6bm": {}, "WxLaM0dR": {}, "QgUZLrmm": {}}, "party_id": "mWrLxRy7", "party_members": [{"extra_attributes": {"2At2opHZ": {}, "eOZza14g": {}, "fRK8cr9w": {}}, "user_id": "zhagQbg1"}, {"extra_attributes": {"Y9jpstIl": {}, "ZsuMgmHl": {}, "bWKAr9Me": {}}, "user_id": "G8EKaajG"}, {"extra_attributes": {"b5btnFg3": {}, "hmXgN73O": {}, "TzOZZ8Ve": {}}, "user_id": "S2il6QTA"}], "ticket_created_at": 39, "ticket_id": "AiA3lxyu"}, {"first_ticket_created_at": 32, "party_attributes": {"PQhATgm7": {}, "pIpAX10A": {}, "JAKBp784": {}}, "party_id": "ia4cfGE1", "party_members": [{"extra_attributes": {"ICAzyEEk": {}, "T5NTNwd5": {}, "QU3H3IMZ": {}}, "user_id": "T043mJc6"}, {"extra_attributes": {"qOhoP07m": {}, "WmoDQUOO": {}, "WlphxJLI": {}}, "user_id": "pHm7wEPS"}, {"extra_attributes": {"rOb9dTsC": {}, "LXdScH4n": {}, "9fO9PJ8D": {}}, "user_id": "R0Q5wLE7"}], "ticket_created_at": 94, "ticket_id": "KufG9sAV"}]}], "namespace": "SQnuVMKI", "party_attributes": {"oCezN5GN": {}, "53D7EYZF": {}, "6aQlgbOJ": {}}, "party_id": "9ykWQTLs", "queued_at": 75, "region": "LdFsv1TB", "server_name": "gCT0tNao", "status": "hIHcsh4K", "ticket_id": "81UQIzEy", "updated_at": "1989-05-24T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "dpSmL43r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'm8mOwfCo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 43, "userID": "NxT8ohQg", "weight": 0.10083180574312733}' \
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
    'ySwYX5Jl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "3IG4fovr", "description": "wst3xpp5", "findMatchTimeoutSeconds": 81, "joinable": false, "max_delay_ms": 38, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 8, "min": 19, "name": "WZdDXQbi"}, {"max": 44, "min": 38, "name": "ofFXGWcy"}, {"max": 72, "min": 92, "name": "KKGm5aKu"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 93}, "maxNumber": 2, "minNumber": 60, "playerMaxNumber": 5, "playerMinNumber": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 53, "min": 97, "name": "ZBksqGwU"}, {"max": 47, "min": 36, "name": "0ifVnny3"}, {"max": 90, "min": 58, "name": "TbP0ZWfx"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 62}, "duration": 82, "max_number": 81, "min_number": 5, "player_max_number": 98, "player_min_number": 66}, {"combination": {"alliances": [{"max": 31, "min": 74, "name": "C3bljLv5"}, {"max": 89, "min": 7, "name": "7oG7Q108"}, {"max": 32, "min": 98, "name": "o5Gqkaj0"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 93, "role_flexing_second": 93}, "duration": 62, "max_number": 15, "min_number": 86, "player_max_number": 25, "player_min_number": 99}, {"combination": {"alliances": [{"max": 62, "min": 15, "name": "eYD5HGh8"}, {"max": 97, "min": 13, "name": "BxykGbWa"}, {"max": 83, "min": 12, "name": "SMBpncph"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 95}, "duration": 31, "max_number": 0, "min_number": 25, "player_max_number": 98, "player_min_number": 46}], "flexingRules": [{"attribute": "x0nryhDr", "criteria": "260UdImC", "duration": 19, "reference": 0.17701378930574596}, {"attribute": "W1u3H3ox", "criteria": "unBbds9p", "duration": 53, "reference": 0.022945684796702004}, {"attribute": "m44gu5Ub", "criteria": "PjAOrdl1", "duration": 70, "reference": 0.6441544513970452}], "match_options": {"options": [{"name": "EdkfY8tL", "type": "VvnnCKvO"}, {"name": "naokGCCY", "type": "V17JHc4D"}, {"name": "od7dyK8I", "type": "jTx6sGHD"}]}, "matchingRules": [{"attribute": "Lkvfg8HR", "criteria": "hvApOdgJ", "reference": 0.5737638837963182}, {"attribute": "STIERSaf", "criteria": "9JL6qGU6", "reference": 0.3296245491200568}, {"attribute": "ypnbUfNB", "criteria": "DZi1Z3qW", "reference": 0.47110962298704473}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 59, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    '9kiSA5u3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'LPp0blQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    '564982i1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["qi9hXJxe", "yjDfwC0C", "QHM259Ms"], "party_id": "Bz5fyhu5", "user_id": "2yZsZvik"}' \
    '3ZxtoG3u' \
    'yx7PDgL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'seChIx3E' \
    '4Yleu9d6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'NsWJJGkC' \
    'Bakjo7pP' \
    'C2mXLqoQ' \
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
    'UNZKLKvF' \
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
