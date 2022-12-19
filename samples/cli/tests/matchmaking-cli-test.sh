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
matchmaking-create-channel-handler '{"deployment": "F27Vn6tH", "description": "erE2bbfG", "find_match_timeout_seconds": 12, "game_mode": "clltZ0P4", "joinable": true, "max_delay_ms": 0, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 18, "min": 74, "name": "nJeoIhC2"}, {"max": 46, "min": 32, "name": "BB7b384e"}, {"max": 15, "min": 25, "name": "D8d0W0PP"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 40}, "max_number": 15, "min_number": 56, "player_max_number": 82, "player_min_number": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 60, "min": 91, "name": "ruFTY87R"}, {"max": 81, "min": 58, "name": "EjUNxYCN"}, {"max": 6, "min": 66, "name": "lu1q4mQ9"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 73}, "duration": 39, "max_number": 84, "min_number": 100, "player_max_number": 54, "player_min_number": 59}, {"combination": {"alliances": [{"max": 54, "min": 46, "name": "Nl4MJhbI"}, {"max": 13, "min": 92, "name": "by4y7Lps"}, {"max": 77, "min": 17, "name": "UhLZumqP"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 100}, "duration": 35, "max_number": 9, "min_number": 89, "player_max_number": 61, "player_min_number": 95}, {"combination": {"alliances": [{"max": 85, "min": 91, "name": "31a3oqBb"}, {"max": 73, "min": 95, "name": "W3dHx2Ra"}, {"max": 78, "min": 71, "name": "Pk1dVPsc"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 65}, "duration": 80, "max_number": 0, "min_number": 23, "player_max_number": 25, "player_min_number": 57}], "flexing_rule": [{"attribute": "YD6nlM8x", "criteria": "JkhLVy0v", "duration": 7, "reference": 0.3419140794763522}, {"attribute": "ZRLaGcfP", "criteria": "ReTeQA04", "duration": 0, "reference": 0.3666370005641145}, {"attribute": "2HnStNJ9", "criteria": "eC5WIRha", "duration": 50, "reference": 0.4724856363888831}], "match_options": {"options": [{"name": "E8vJzd5k", "type": "piRU1hnQ"}, {"name": "2uQruW7T", "type": "GTkvaBhE"}, {"name": "7BEQyB79", "type": "R0HbNSWl"}]}, "matching_rule": [{"attribute": "KWkshb9Q", "criteria": "ts1Tz0IL", "reference": 0.01536004498960808}, {"attribute": "8mSl259y", "criteria": "EAffgVtG", "reference": 0.754930842758877}, {"attribute": "C47NUHO6", "criteria": "9ozOzdyn", "reference": 0.5936438615406702}], "rebalance_enable": false, "sub_game_modes": {"q1n4AY2g": {"alliance": {"combination": {"alliances": [{"max": 70, "min": 26, "name": "5RRkHmPS"}, {"max": 64, "min": 83, "name": "89Ixlrxs"}, {"max": 84, "min": 12, "name": "BNqH6GER"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 72}, "max_number": 89, "min_number": 91, "player_max_number": 81, "player_min_number": 81}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 45, "name": "9Gtiy09C"}, {"max": 27, "min": 8, "name": "KdZ77uUa"}, {"max": 79, "min": 40, "name": "ofNbsCaD"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 94}, "duration": 12, "max_number": 61, "min_number": 7, "player_max_number": 39, "player_min_number": 34}, {"combination": {"alliances": [{"max": 2, "min": 88, "name": "gKUw5vrO"}, {"max": 26, "min": 44, "name": "PpDHBl3g"}, {"max": 89, "min": 46, "name": "IwxB0IHj"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 45}, "duration": 64, "max_number": 91, "min_number": 8, "player_max_number": 82, "player_min_number": 76}, {"combination": {"alliances": [{"max": 24, "min": 97, "name": "GSMC6Asl"}, {"max": 52, "min": 78, "name": "wdQotZdo"}, {"max": 56, "min": 72, "name": "lIZg0h8Z"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 90}, "duration": 49, "max_number": 27, "min_number": 41, "player_max_number": 64, "player_min_number": 89}], "name": "9U3gw9NB"}, "8pTExUHy": {"alliance": {"combination": {"alliances": [{"max": 84, "min": 70, "name": "q0sm0qvz"}, {"max": 58, "min": 1, "name": "kjLfAK6Z"}, {"max": 46, "min": 76, "name": "p2BH8p2y"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 100}, "max_number": 88, "min_number": 97, "player_max_number": 68, "player_min_number": 11}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 70, "name": "JUwt6H7o"}, {"max": 22, "min": 56, "name": "CCFJr3hn"}, {"max": 92, "min": 95, "name": "7l2Ca7Js"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 89}, "duration": 0, "max_number": 30, "min_number": 46, "player_max_number": 6, "player_min_number": 73}, {"combination": {"alliances": [{"max": 20, "min": 71, "name": "QdI9oWds"}, {"max": 18, "min": 37, "name": "r7tDckJf"}, {"max": 76, "min": 54, "name": "LV7UYG1D"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 29}, "duration": 58, "max_number": 97, "min_number": 52, "player_max_number": 44, "player_min_number": 88}, {"combination": {"alliances": [{"max": 81, "min": 26, "name": "pasIa08e"}, {"max": 20, "min": 49, "name": "F1SaoHQs"}, {"max": 55, "min": 64, "name": "qceiTT7k"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 52}, "duration": 79, "max_number": 45, "min_number": 80, "player_max_number": 23, "player_min_number": 92}], "name": "uYwbzeJ9"}, "K9MNbi7q": {"alliance": {"combination": {"alliances": [{"max": 67, "min": 43, "name": "WRuIrcEm"}, {"max": 24, "min": 32, "name": "iaYTsZAZ"}, {"max": 27, "min": 49, "name": "ePNPIerf"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 34}, "max_number": 60, "min_number": 68, "player_max_number": 97, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 92, "min": 6, "name": "NmlIQSWI"}, {"max": 68, "min": 88, "name": "D1Fc0cLT"}, {"max": 56, "min": 80, "name": "pt5shGSC"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 61}, "duration": 12, "max_number": 91, "min_number": 54, "player_max_number": 85, "player_min_number": 28}, {"combination": {"alliances": [{"max": 13, "min": 77, "name": "CZBT8e1S"}, {"max": 19, "min": 81, "name": "RM1tmeeP"}, {"max": 49, "min": 75, "name": "1I0rGrr2"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 31}, "duration": 36, "max_number": 8, "min_number": 22, "player_max_number": 36, "player_min_number": 0}, {"combination": {"alliances": [{"max": 15, "min": 3, "name": "VJjthHSI"}, {"max": 1, "min": 73, "name": "7sLZRvpZ"}, {"max": 87, "min": 43, "name": "o729ZSZC"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 5}, "duration": 45, "max_number": 31, "min_number": 10, "player_max_number": 86, "player_min_number": 95}], "name": "eF6xkgkm"}}}, "session_queue_timeout_seconds": 89, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'AxqPrWOi' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "bhffGMum", "players": [{"results": [{"attribute": "lpVos2U2", "value": 0.9986930677315914}, {"attribute": "Xjfako6I", "value": 0.9712232000050031}, {"attribute": "ZR6Jg4F9", "value": 0.1285592886983744}], "user_id": "ONhPufBe"}, {"results": [{"attribute": "lHuXIPQ9", "value": 0.558808589217488}, {"attribute": "OtEsF61G", "value": 0.9716076080107847}, {"attribute": "nZ9HOUAp", "value": 0.3371725707440294}], "user_id": "1SHhNh0P"}, {"results": [{"attribute": "tHrlJ4JJ", "value": 0.918875819288484}, {"attribute": "TagNPJHY", "value": 0.5873143030398865}, {"attribute": "b0tusjvb", "value": 0.020529839726612154}], "user_id": "aZl5eeDM"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "Axi3wP5p"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "ISQLi9Lx", "client_version": "9yOmOdAW", "deployment": "wmWhpNXN", "error_code": 50, "error_message": "yPFZ4vnb", "game_mode": "bvx1GNcj", "joinable": false, "match_id": "xNYvtIj7", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 28, "party_attributes": {"3gJXI3iu": {}, "5rxhfXBP": {}, "HOBUvuiJ": {}}, "party_id": "gDC1isut", "party_members": [{"extra_attributes": {"jNJAd5ba": {}, "Stxx2fF8": {}, "WONHsUWf": {}}, "user_id": "gr8cc3UQ"}, {"extra_attributes": {"tOqB8GFf": {}, "HrKzwK02": {}, "C5gd5Azb": {}}, "user_id": "fseFxGgM"}, {"extra_attributes": {"iMFN3rlV": {}, "N37Gx6C4": {}, "xLMmi3E8": {}}, "user_id": "gzRAu6Ej"}], "ticket_id": "xwJ5ItI6"}, {"first_ticket_created_at": 98, "party_attributes": {"2kbRxg6I": {}, "KsZeZfHJ": {}, "HbIN2aRP": {}}, "party_id": "MmeuzppH", "party_members": [{"extra_attributes": {"c0KjJF78": {}, "EAEaQHrZ": {}, "7wjsUukO": {}}, "user_id": "WrNWzjrs"}, {"extra_attributes": {"gHL5xrVi": {}, "iHo0V6hi": {}, "elHdKf3r": {}}, "user_id": "a11CBsOf"}, {"extra_attributes": {"mDjfrD0p": {}, "xGSLa7M0": {}, "DA7V38rF": {}}, "user_id": "0DBYtfuI"}], "ticket_id": "7MKddfwf"}, {"first_ticket_created_at": 73, "party_attributes": {"M67B2Ii4": {}, "VQsatv1J": {}, "gcNmitC7": {}}, "party_id": "vf9X4e7c", "party_members": [{"extra_attributes": {"7vsYzmq4": {}, "XM7r9FXR": {}, "Jr3qywru": {}}, "user_id": "k20NwPEK"}, {"extra_attributes": {"BG2wSng7": {}, "m4E88gdZ": {}, "T3KzraA2": {}}, "user_id": "Yq4Pcc6H"}, {"extra_attributes": {"CyNbNPEi": {}, "TegfoBYW": {}, "NSUdde3r": {}}, "user_id": "EqKuKfpL"}], "ticket_id": "vgnvJVhD"}]}, {"matching_parties": [{"first_ticket_created_at": 89, "party_attributes": {"BiIWeifA": {}, "zRrC1cZj": {}, "vGVm4MUG": {}}, "party_id": "VZ1sGkrR", "party_members": [{"extra_attributes": {"G4lkggSt": {}, "a4Ino9NW": {}, "vSYbLQaF": {}}, "user_id": "5D1KwMuy"}, {"extra_attributes": {"T2GVjItF": {}, "xqpppxML": {}, "iNV6VwWe": {}}, "user_id": "yecOTb5B"}, {"extra_attributes": {"CaCvA8ja": {}, "I2Fr6ELd": {}, "gDYQZBW4": {}}, "user_id": "e3ySauro"}], "ticket_id": "98JVSBR3"}, {"first_ticket_created_at": 16, "party_attributes": {"J64uljDu": {}, "WuAr6c5u": {}, "4tpRGhmM": {}}, "party_id": "NHT4SdH7", "party_members": [{"extra_attributes": {"XWSTecwt": {}, "mhxwhZo3": {}, "4THa5a0V": {}}, "user_id": "aVeWbTEh"}, {"extra_attributes": {"o31IyRHL": {}, "4Qwj3He7": {}, "CERpvMEC": {}}, "user_id": "jOV91Bpc"}, {"extra_attributes": {"HB3bY5eV": {}, "dOLS1AYd": {}, "Dp68VAOC": {}}, "user_id": "FMyRHhnY"}], "ticket_id": "qqd6TsS6"}, {"first_ticket_created_at": 15, "party_attributes": {"8xO0aqa1": {}, "3LJ5drR5": {}, "LHEOOW6c": {}}, "party_id": "VNLWU9vy", "party_members": [{"extra_attributes": {"L6UPY4LB": {}, "qkc0nj9P": {}, "Mqe31n9I": {}}, "user_id": "VkJ4wYbm"}, {"extra_attributes": {"UOhUkfND": {}, "oEcM7Y0z": {}, "KUGIeWlP": {}}, "user_id": "K4OZt356"}, {"extra_attributes": {"ZS267LOM": {}, "afUxBmdq": {}, "bjGg5Uxr": {}}, "user_id": "hSaT5xfK"}], "ticket_id": "0xx33GrV"}]}, {"matching_parties": [{"first_ticket_created_at": 36, "party_attributes": {"nTF4EJ82": {}, "ndHArUsX": {}, "ussmfGFC": {}}, "party_id": "hVFIK3Kg", "party_members": [{"extra_attributes": {"x71Esiq2": {}, "FT8JS2VH": {}, "qVno62xC": {}}, "user_id": "2ZonRgxW"}, {"extra_attributes": {"0WlXiAmP": {}, "vI5Wxhkl": {}, "kklcREtY": {}}, "user_id": "n09VpbII"}, {"extra_attributes": {"R892M1Rx": {}, "eD03WRsL": {}, "F8GhTzg3": {}}, "user_id": "1R5cClfC"}], "ticket_id": "LGyzwnia"}, {"first_ticket_created_at": 57, "party_attributes": {"GRXDEQaG": {}, "nhaXEq8c": {}, "vQgGf5bg": {}}, "party_id": "K0KolIhG", "party_members": [{"extra_attributes": {"87sfgLzb": {}, "51icOsPE": {}, "CDsEVLmw": {}}, "user_id": "0T4g079b"}, {"extra_attributes": {"7YnQBD17": {}, "wXbzCIkY": {}, "xRWwzICL": {}}, "user_id": "i12d4d3M"}, {"extra_attributes": {"v9iXjn9r": {}, "Wsa4NXWf": {}, "Bh1FDTLY": {}}, "user_id": "5rSGzxEp"}], "ticket_id": "eHF1bPCO"}, {"first_ticket_created_at": 37, "party_attributes": {"nyHWbxqt": {}, "06BttEJx": {}, "v0zBnj6c": {}}, "party_id": "GBkuEhcx", "party_members": [{"extra_attributes": {"moDEUCrW": {}, "td9Pr1Fe": {}, "Q1eyLKqU": {}}, "user_id": "Wvlyu7wu"}, {"extra_attributes": {"fSi1fhLO": {}, "NwpCr7Q9": {}, "nk4takpT": {}}, "user_id": "ZZuG3Chk"}, {"extra_attributes": {"ZlEicDl4": {}, "ApFmUuqW": {}, "L4qVNj7E": {}}, "user_id": "dzoZg9Du"}], "ticket_id": "ygkTV2ZT"}]}], "namespace": "7kEzsF56", "party_attributes": {"941j74SI": {}, "bjg8wCtu": {}, "e1yb1UC6": {}}, "party_id": "5y24gxXJ", "queued_at": 40, "region": "QfIYOmFI", "server_name": "dEPILP4Y", "status": "eFmuWyF4", "ticket_id": "wCuIK6O9", "updated_at": "1996-07-11T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "L5LnI3nG"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'El4mbPLT' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 39, "userID": "hBbyYJnN", "weight": 0.8110484442115529}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'JkwX0vEb' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "TvJWlDN6", "description": "6mjNPAZr", "findMatchTimeoutSeconds": 53, "joinable": false, "max_delay_ms": 85, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 19, "min": 88, "name": "KbfpvEoA"}, {"max": 66, "min": 8, "name": "DvQGlwzi"}, {"max": 64, "min": 29, "name": "jzAMPvCX"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 82}, "maxNumber": 68, "minNumber": 59, "playerMaxNumber": 51, "playerMinNumber": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 99, "min": 42, "name": "3KAULy85"}, {"max": 31, "min": 91, "name": "v1p8kjbF"}, {"max": 26, "min": 59, "name": "CcnssE9e"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 37}, "duration": 83, "max_number": 17, "min_number": 41, "player_max_number": 12, "player_min_number": 19}, {"combination": {"alliances": [{"max": 50, "min": 10, "name": "ZkCSBplG"}, {"max": 66, "min": 99, "name": "yW9OpTVm"}, {"max": 70, "min": 19, "name": "GPMe0SBd"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 95}, "duration": 51, "max_number": 54, "min_number": 35, "player_max_number": 83, "player_min_number": 13}, {"combination": {"alliances": [{"max": 13, "min": 18, "name": "DqkIBF5t"}, {"max": 5, "min": 83, "name": "7J0IAc01"}, {"max": 97, "min": 37, "name": "IryvxyTq"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 10}, "duration": 67, "max_number": 49, "min_number": 25, "player_max_number": 10, "player_min_number": 79}], "flexingRules": [{"attribute": "LbdFQPA7", "criteria": "Baa7FLJf", "duration": 99, "reference": 0.030314924686474676}, {"attribute": "6GNy7cpT", "criteria": "Nidyv6lL", "duration": 47, "reference": 0.8153498356021563}, {"attribute": "GWTUS8SZ", "criteria": "y8qhHexp", "duration": 44, "reference": 0.906512148019078}], "match_options": {"options": [{"name": "rheFQUMV", "type": "lcbJbbFM"}, {"name": "TnccdUyv", "type": "wUEwuoYe"}, {"name": "q4MDxJK0", "type": "JkwtYyP2"}]}, "matchingRules": [{"attribute": "RMugjO8A", "criteria": "f3kaaeaO", "reference": 0.1362323884997343}, {"attribute": "fvwsB4VM", "criteria": "idlZtm1z", "reference": 0.7365436534221593}, {"attribute": "kUGWoCmi", "criteria": "DqDklwQO", "reference": 0.9238121736316035}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 13, "socialMatchmaking": false, "use_sub_gamemode": false}' 'vL3d46mr' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'bEWEp58J' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'tXe0ZB0c' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["x3rJCKiw", "JID1NP9u", "kq4ZyXBQ"], "party_id": "OulN9FNw", "user_id": "QFCZG9Ua"}' 'DfVw4S13' 'uPnrAv3W' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel '0DL1XBsY' 'wLxaQXVz' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel '2YcTGCEm' 'HKLMl9vO' 'hHSa0UGn' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'INeuNkvl' --login_with_auth "Bearer foo"
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
    '{"deployment": "2e1cFnDQ", "description": "mGcVzrft", "find_match_timeout_seconds": 79, "game_mode": "qT6R9A5P", "joinable": true, "max_delay_ms": 35, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 91, "min": 97, "name": "iXQmdlY5"}, {"max": 29, "min": 13, "name": "9nbQlM5f"}, {"max": 70, "min": 22, "name": "EMRCcgBc"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 99}, "max_number": 17, "min_number": 9, "player_max_number": 99, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 51, "min": 18, "name": "sJmW4Bzz"}, {"max": 1, "min": 89, "name": "MvWlwTyj"}, {"max": 32, "min": 55, "name": "JdvR21rv"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 71}, "duration": 58, "max_number": 77, "min_number": 16, "player_max_number": 27, "player_min_number": 39}, {"combination": {"alliances": [{"max": 40, "min": 59, "name": "Y9d7QBwi"}, {"max": 85, "min": 93, "name": "cSlPyag4"}, {"max": 34, "min": 6, "name": "3fGBWRja"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 56}, "duration": 49, "max_number": 42, "min_number": 20, "player_max_number": 41, "player_min_number": 32}, {"combination": {"alliances": [{"max": 42, "min": 44, "name": "k7MBM8Jp"}, {"max": 72, "min": 68, "name": "1c3X0K4H"}, {"max": 30, "min": 64, "name": "077Ie9Ib"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 93}, "duration": 76, "max_number": 45, "min_number": 55, "player_max_number": 100, "player_min_number": 38}], "flexing_rule": [{"attribute": "fINCi4ff", "criteria": "oi5sCRZ3", "duration": 56, "reference": 0.14977717781558764}, {"attribute": "1ODd5w3Z", "criteria": "IkJCKgKU", "duration": 42, "reference": 0.1739399638582717}, {"attribute": "jTT1PMk6", "criteria": "bFJElEet", "duration": 72, "reference": 0.5377976389719311}], "match_options": {"options": [{"name": "mKh0iU3y", "type": "FJN7OO9C"}, {"name": "ZQeXwIZH", "type": "ouHtf6x5"}, {"name": "H6Wd7QbN", "type": "HWkqj0Gx"}]}, "matching_rule": [{"attribute": "BGT4l062", "criteria": "1TfT12nQ", "reference": 0.08971108011772}, {"attribute": "MgoNFT9U", "criteria": "dHvqQBvt", "reference": 0.8458806465442609}, {"attribute": "IaIjQ101", "criteria": "FCThlmS5", "reference": 0.43098404352775366}], "rebalance_enable": false, "sub_game_modes": {"twdK3pCg": {"alliance": {"combination": {"alliances": [{"max": 95, "min": 71, "name": "JmpobFYq"}, {"max": 9, "min": 41, "name": "OkOP7P01"}, {"max": 74, "min": 58, "name": "5zNl7fAj"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 88}, "max_number": 71, "min_number": 16, "player_max_number": 27, "player_min_number": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 60, "min": 15, "name": "f2enMhsN"}, {"max": 93, "min": 62, "name": "zRmdOFJI"}, {"max": 32, "min": 67, "name": "mGcldpsk"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 80}, "duration": 45, "max_number": 82, "min_number": 48, "player_max_number": 98, "player_min_number": 17}, {"combination": {"alliances": [{"max": 10, "min": 83, "name": "joxIrxMI"}, {"max": 98, "min": 30, "name": "2qVxJqn1"}, {"max": 46, "min": 70, "name": "oXHLE6Rr"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 43}, "duration": 19, "max_number": 10, "min_number": 52, "player_max_number": 94, "player_min_number": 37}, {"combination": {"alliances": [{"max": 64, "min": 4, "name": "b9XzTZV7"}, {"max": 8, "min": 18, "name": "usJNp2eV"}, {"max": 15, "min": 43, "name": "BirgmWVv"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 96}, "duration": 47, "max_number": 59, "min_number": 90, "player_max_number": 89, "player_min_number": 98}], "name": "2642gXtT"}, "ICiJhOdb": {"alliance": {"combination": {"alliances": [{"max": 76, "min": 41, "name": "6IUE8aGG"}, {"max": 96, "min": 52, "name": "mfCPlEsV"}, {"max": 16, "min": 70, "name": "XCnP6KlN"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 10}, "max_number": 56, "min_number": 83, "player_max_number": 45, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 89, "min": 12, "name": "wM8IgUOW"}, {"max": 30, "min": 14, "name": "XIpfYvAD"}, {"max": 72, "min": 9, "name": "iXlOBMaN"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 29}, "duration": 10, "max_number": 82, "min_number": 82, "player_max_number": 43, "player_min_number": 80}, {"combination": {"alliances": [{"max": 34, "min": 14, "name": "8EpmHWnq"}, {"max": 72, "min": 37, "name": "25XqbHo6"}, {"max": 73, "min": 21, "name": "TQyMVC2c"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 37}, "duration": 55, "max_number": 40, "min_number": 19, "player_max_number": 40, "player_min_number": 48}, {"combination": {"alliances": [{"max": 17, "min": 15, "name": "v4RbkqFt"}, {"max": 59, "min": 57, "name": "6baUkk6I"}, {"max": 56, "min": 38, "name": "RuwmBCeg"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 21}, "duration": 97, "max_number": 19, "min_number": 67, "player_max_number": 48, "player_min_number": 97}], "name": "u00ZuN1O"}, "t7PdsNiZ": {"alliance": {"combination": {"alliances": [{"max": 45, "min": 68, "name": "urcwVNCQ"}, {"max": 2, "min": 45, "name": "3CA5sQrd"}, {"max": 78, "min": 71, "name": "XJnrdFBV"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 50}, "max_number": 10, "min_number": 31, "player_max_number": 29, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 40, "min": 7, "name": "DXLuAmzf"}, {"max": 100, "min": 23, "name": "ExVhMG8z"}, {"max": 71, "min": 2, "name": "aTe7aPrp"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 8, "role_flexing_second": 81}, "duration": 11, "max_number": 48, "min_number": 77, "player_max_number": 64, "player_min_number": 39}, {"combination": {"alliances": [{"max": 26, "min": 74, "name": "WGzv0JxZ"}, {"max": 8, "min": 32, "name": "ZKAXrzQk"}, {"max": 66, "min": 41, "name": "VqEZ0MVn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 64}, "duration": 95, "max_number": 7, "min_number": 25, "player_max_number": 5, "player_min_number": 28}, {"combination": {"alliances": [{"max": 29, "min": 34, "name": "mlQhKuio"}, {"max": 96, "min": 44, "name": "LBvQlxKD"}, {"max": 67, "min": 63, "name": "igIcnwfU"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 20}, "duration": 27, "max_number": 22, "min_number": 7, "player_max_number": 57, "player_min_number": 100}], "name": "ZSOKVtQy"}}}, "session_queue_timeout_seconds": 100, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'sfhk9evD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "toBEyCC2", "players": [{"results": [{"attribute": "AaTEUKJp", "value": 0.015561803024293441}, {"attribute": "ZyphygW6", "value": 0.7329286573190289}, {"attribute": "2vl1Y7aO", "value": 0.48890347155144986}], "user_id": "TofSbdJh"}, {"results": [{"attribute": "bBnO27Ii", "value": 0.019030789663466496}, {"attribute": "kd9gNDhg", "value": 0.17894678827821897}, {"attribute": "DO5Jkwjb", "value": 0.23838868977646566}], "user_id": "zQL3hVsF"}, {"results": [{"attribute": "HGAEhAuf", "value": 0.21243290046936025}, {"attribute": "PnB4e4VG", "value": 0.6247198078833842}, {"attribute": "rokfdgqG", "value": 0.6211254970345542}], "user_id": "IQ93NFqE"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "owl5Z5gp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "KYuDkCss", "client_version": "P5BMmysG", "deployment": "zgjNYXiO", "error_code": 77, "error_message": "FzAI8kvb", "game_mode": "RHbfUNzp", "joinable": false, "match_id": "GRR7mXi7", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 20, "party_attributes": {"bJzN1LFG": {}, "DWQ0dt9B": {}, "Tr0yF1Br": {}}, "party_id": "X86LGLZH", "party_members": [{"extra_attributes": {"X2MlY8qL": {}, "Tet0ToYi": {}, "EqlCG01L": {}}, "user_id": "trz8P79R"}, {"extra_attributes": {"jQdcGj2a": {}, "prqfvxRU": {}, "dX4fpmHB": {}}, "user_id": "jqo1VyR6"}, {"extra_attributes": {"y4E3fo4n": {}, "tjeBDgQX": {}, "fjqo2ErA": {}}, "user_id": "G2CxPHGN"}], "ticket_id": "DDucmbYY"}, {"first_ticket_created_at": 36, "party_attributes": {"wfGGxltn": {}, "FbpbIncN": {}, "NBiHnPl7": {}}, "party_id": "nWxOqgBJ", "party_members": [{"extra_attributes": {"qZbvmTN1": {}, "mhvFVrNo": {}, "ipjS8BL2": {}}, "user_id": "l8UMnwcF"}, {"extra_attributes": {"fGwQEsQr": {}, "7UonVIYe": {}, "Naf0UjOi": {}}, "user_id": "6M33FtjT"}, {"extra_attributes": {"P85jNm36": {}, "3glJ2cOQ": {}, "0H8LlguD": {}}, "user_id": "VyIrLwmh"}], "ticket_id": "cCaa0Pl4"}, {"first_ticket_created_at": 57, "party_attributes": {"A94AdXDU": {}, "iz0SX0jo": {}, "fYwdvFW5": {}}, "party_id": "Mq5tg5Uw", "party_members": [{"extra_attributes": {"bXJ1uLor": {}, "kymBJgCR": {}, "YfDPEP1p": {}}, "user_id": "VkyaQqYJ"}, {"extra_attributes": {"T2RUTZaE": {}, "zKQy2qhB": {}, "SEjAQn9r": {}}, "user_id": "tATBAovf"}, {"extra_attributes": {"3XVQ8emp": {}, "iNOwqRmq": {}, "1x1wyrcZ": {}}, "user_id": "E13aOthZ"}], "ticket_id": "PgiHPVtZ"}]}, {"matching_parties": [{"first_ticket_created_at": 52, "party_attributes": {"iaAxYzjL": {}, "9mGvsUG5": {}, "gowYgkSB": {}}, "party_id": "BzHi5NrG", "party_members": [{"extra_attributes": {"RcvwL6bw": {}, "26QMh7OB": {}, "1arjdMj9": {}}, "user_id": "ioxNAxou"}, {"extra_attributes": {"rrm2j05M": {}, "MI3OBcRS": {}, "PbD7qVTw": {}}, "user_id": "4p9IVlaZ"}, {"extra_attributes": {"iyQMSxTZ": {}, "d5UWGXqm": {}, "t8VQjwEv": {}}, "user_id": "3x5eR8qL"}], "ticket_id": "2njxouS2"}, {"first_ticket_created_at": 55, "party_attributes": {"H18kNMLM": {}, "2PyTqFwj": {}, "484BZwYt": {}}, "party_id": "QeYjLRLq", "party_members": [{"extra_attributes": {"GqLWPEDD": {}, "rdRACEMk": {}, "DeGH7BDU": {}}, "user_id": "3lEl9wkp"}, {"extra_attributes": {"dJbz8UzB": {}, "rUThFHUZ": {}, "vPXfUUuN": {}}, "user_id": "c3qWO4d3"}, {"extra_attributes": {"BcD9EhYA": {}, "gpdzi1u6": {}, "ZrwiwZ1J": {}}, "user_id": "FuqxRRqh"}], "ticket_id": "nRqrYYZq"}, {"first_ticket_created_at": 27, "party_attributes": {"bLMmNZio": {}, "PJa4FRzB": {}, "v4YbhjFz": {}}, "party_id": "3d3u7mF0", "party_members": [{"extra_attributes": {"oDRbaXQu": {}, "c3dtdrHV": {}, "34mFXAuw": {}}, "user_id": "cujNmp3g"}, {"extra_attributes": {"6lVyB3Zl": {}, "mtdIdPZt": {}, "xc7qzoML": {}}, "user_id": "zMcIJxYj"}, {"extra_attributes": {"OZMruCwI": {}, "ddHwb4HB": {}, "trJPF9gK": {}}, "user_id": "QKzx0Eql"}], "ticket_id": "QReEA202"}]}, {"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"MUbM0XHh": {}, "Kvx4b5hH": {}, "Rn1TMRwN": {}}, "party_id": "WqILA2T2", "party_members": [{"extra_attributes": {"W3Q4JB5Q": {}, "9z05AkSI": {}, "9RmCJnbp": {}}, "user_id": "ksn9bWkI"}, {"extra_attributes": {"jcXPxeQ4": {}, "3ZMRgvSg": {}, "vH1uW4dO": {}}, "user_id": "ygFV75es"}, {"extra_attributes": {"tYPjRvm5": {}, "bA8bzRDR": {}, "wYrqtKPi": {}}, "user_id": "YOXkiaY3"}], "ticket_id": "wkGiKToR"}, {"first_ticket_created_at": 37, "party_attributes": {"nGSnug5a": {}, "Vm0ruf94": {}, "XTYOKGGz": {}}, "party_id": "7x9jNzgQ", "party_members": [{"extra_attributes": {"m2eKHeYv": {}, "Yujfvmtt": {}, "GW9gVj4H": {}}, "user_id": "7S0Jkaqb"}, {"extra_attributes": {"YlyaYlkG": {}, "qHKjLSyq": {}, "DniqVGV6": {}}, "user_id": "DwT70eHi"}, {"extra_attributes": {"fQwxpmu2": {}, "xzgHshFv": {}, "dQcG8VSN": {}}, "user_id": "DUVgLD5k"}], "ticket_id": "NPRFDiDY"}, {"first_ticket_created_at": 98, "party_attributes": {"Z12zkkFY": {}, "WNh5SaLJ": {}, "bvKrWkFd": {}}, "party_id": "AXDUuWS2", "party_members": [{"extra_attributes": {"ChZj4RoX": {}, "Y5r8vcLU": {}, "DfLCbvbB": {}}, "user_id": "6f88wpkO"}, {"extra_attributes": {"jAIF9B4Q": {}, "UQ4C8EGO": {}, "2aBIaG7B": {}}, "user_id": "zzhAaQqU"}, {"extra_attributes": {"8WO402u2": {}, "qVmY3hkh": {}, "1t5Ac5BS": {}}, "user_id": "ccgi73jN"}], "ticket_id": "2THBL1AM"}]}], "namespace": "6oOyFgUH", "party_attributes": {"ws8HuUQi": {}, "pcNKAkqv": {}, "s0wY60Kv": {}}, "party_id": "rTPcR9h0", "queued_at": 100, "region": "k6xRONdc", "server_name": "evFzABwl", "status": "80LEj1rf", "ticket_id": "Z8QK1z1D", "updated_at": "1997-02-10T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "t2rGBoMi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'LUqtTa59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 96, "userID": "wbSoliUP", "weight": 0.7489701871266232}' \
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
    '9Wm9AtF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "AU8SGdMj", "description": "vcxZHLth", "findMatchTimeoutSeconds": 67, "joinable": false, "max_delay_ms": 47, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 69, "min": 86, "name": "oDXA9NRE"}, {"max": 85, "min": 84, "name": "d55xbFKd"}, {"max": 76, "min": 76, "name": "qvgiqPjo"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 97}, "maxNumber": 22, "minNumber": 35, "playerMaxNumber": 69, "playerMinNumber": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 76, "min": 91, "name": "NtAW0n4M"}, {"max": 37, "min": 46, "name": "2fdwgeNJ"}, {"max": 97, "min": 42, "name": "3wqN7Zbs"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 45}, "duration": 0, "max_number": 38, "min_number": 94, "player_max_number": 84, "player_min_number": 70}, {"combination": {"alliances": [{"max": 12, "min": 18, "name": "7qaDJWy8"}, {"max": 92, "min": 35, "name": "Qq1J6BRZ"}, {"max": 64, "min": 88, "name": "6W7ae1aQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 46}, "duration": 52, "max_number": 37, "min_number": 90, "player_max_number": 61, "player_min_number": 99}, {"combination": {"alliances": [{"max": 89, "min": 69, "name": "Nge84jA5"}, {"max": 21, "min": 33, "name": "1sOsk6qE"}, {"max": 57, "min": 47, "name": "5UNNZ3fQ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 16}, "duration": 83, "max_number": 14, "min_number": 11, "player_max_number": 82, "player_min_number": 39}], "flexingRules": [{"attribute": "fJ5OhjV3", "criteria": "htT9tG9g", "duration": 30, "reference": 0.5769532231568812}, {"attribute": "GJxyIUei", "criteria": "3Ee7R7ps", "duration": 97, "reference": 0.7113712599819112}, {"attribute": "y7PF93Y3", "criteria": "v9bzHJxj", "duration": 24, "reference": 0.08764690861469826}], "match_options": {"options": [{"name": "RvHPbMum", "type": "ZouX5wD7"}, {"name": "TEommtzk", "type": "Igl6EfRg"}, {"name": "hm5Fdg4K", "type": "cPn7lbvn"}]}, "matchingRules": [{"attribute": "xS9QGzyN", "criteria": "kqRVaHyl", "reference": 0.7343053703547543}, {"attribute": "41IJtcoQ", "criteria": "5XxCkaqg", "reference": 0.9431795079467616}, {"attribute": "n3gNovYE", "criteria": "vTYYHxGu", "reference": 0.18729830907482614}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 66, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'eIgO7YLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'fByGhPnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'X1VNFI7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["iEOU1Rz3", "gk1uyjZP", "Z98J7S7H"], "party_id": "Mge7ZySd", "user_id": "nYz8IXzl"}' \
    'JImcuZ3S' \
    'IhSiemVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'jLCm8uA6' \
    'xZdWrhqf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'qVpI9oMk' \
    'Oa6hhF5Z' \
    'LKj1C2s9' \
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
    'E3MHVAUj' \
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
