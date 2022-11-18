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
matchmaking-create-channel-handler '{"deployment": "Xq21CT4e", "description": "05OYFLqi", "find_match_timeout_seconds": 58, "game_mode": "eAIB0jTU", "joinable": false, "max_delay_ms": 11, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 9, "min": 18, "name": "TtumRNs0"}, {"max": 9, "min": 75, "name": "20vbKJJD"}, {"max": 56, "min": 13, "name": "RKVkt05s"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 20, "role_flexing_second": 87}, "max_number": 79, "min_number": 60, "player_max_number": 83, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 96, "min": 95, "name": "x734vC9I"}, {"max": 64, "min": 38, "name": "Emwmcsj1"}, {"max": 50, "min": 98, "name": "iFhbeghA"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 64}, "duration": 87, "max_number": 38, "min_number": 20, "player_max_number": 81, "player_min_number": 24}, {"combination": {"alliances": [{"max": 29, "min": 48, "name": "HyDK0ju7"}, {"max": 79, "min": 48, "name": "OwY46cFW"}, {"max": 95, "min": 79, "name": "j1LAKbex"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 29}, "duration": 75, "max_number": 60, "min_number": 31, "player_max_number": 16, "player_min_number": 8}, {"combination": {"alliances": [{"max": 96, "min": 39, "name": "s19zd5Y2"}, {"max": 48, "min": 37, "name": "T9lyZxqn"}, {"max": 61, "min": 26, "name": "J804JqHo"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 60}, "duration": 85, "max_number": 9, "min_number": 6, "player_max_number": 16, "player_min_number": 50}], "flexing_rule": [{"attribute": "Wlxpkx59", "criteria": "3bgeN4dU", "duration": 73, "reference": 0.6247460473453061}, {"attribute": "MnHsD6Y8", "criteria": "Z8FsAjIC", "duration": 96, "reference": 0.9697773136832629}, {"attribute": "g5nfWQ1A", "criteria": "BD2U6XKC", "duration": 19, "reference": 0.28307318704074225}], "match_options": {"options": [{"name": "phacBVo4", "type": "IbgXsPvs"}, {"name": "xygqKig8", "type": "a1z2KyGi"}, {"name": "g0v0NG4T", "type": "Kc9b602Y"}]}, "matching_rule": [{"attribute": "ybaI1Oja", "criteria": "O3Eslnot", "reference": 0.31534336800121154}, {"attribute": "yoyEApL5", "criteria": "4P7TYSbI", "reference": 0.36468377258635243}, {"attribute": "P4ORSkSm", "criteria": "WwRTh9KZ", "reference": 0.614708398348967}], "rebalance_enable": true, "sub_game_modes": {"7dHWE8Wo": {"alliance": {"combination": {"alliances": [{"max": 39, "min": 39, "name": "QaDPqHns"}, {"max": 3, "min": 52, "name": "qWlOaky0"}, {"max": 32, "min": 92, "name": "T6zgoQxR"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 69}, "max_number": 47, "min_number": 42, "player_max_number": 63, "player_min_number": 96}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 53, "min": 29, "name": "p4nWVIQ0"}, {"max": 94, "min": 14, "name": "2fZw10e4"}, {"max": 98, "min": 28, "name": "Q7jqHhfa"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 12}, "duration": 90, "max_number": 51, "min_number": 88, "player_max_number": 60, "player_min_number": 57}, {"combination": {"alliances": [{"max": 43, "min": 3, "name": "ZR47MnKE"}, {"max": 84, "min": 13, "name": "DRoYajbU"}, {"max": 46, "min": 85, "name": "tQf5OApM"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 62}, "duration": 59, "max_number": 9, "min_number": 35, "player_max_number": 80, "player_min_number": 3}, {"combination": {"alliances": [{"max": 68, "min": 55, "name": "lxcIhnnu"}, {"max": 11, "min": 44, "name": "s89OvSAy"}, {"max": 34, "min": 80, "name": "ctLODxCq"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 37}, "duration": 84, "max_number": 47, "min_number": 87, "player_max_number": 22, "player_min_number": 63}], "name": "fq0RFn59"}, "O80TQDxv": {"alliance": {"combination": {"alliances": [{"max": 50, "min": 46, "name": "JZbFnLAA"}, {"max": 71, "min": 1, "name": "9Dhi9bZb"}, {"max": 38, "min": 47, "name": "NPonzEfH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 93}, "max_number": 79, "min_number": 52, "player_max_number": 23, "player_min_number": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 91, "name": "Ykqa0V58"}, {"max": 56, "min": 3, "name": "TY6IMpWR"}, {"max": 66, "min": 30, "name": "KirtR7MW"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 20}, "duration": 2, "max_number": 60, "min_number": 5, "player_max_number": 60, "player_min_number": 86}, {"combination": {"alliances": [{"max": 11, "min": 16, "name": "E4gttx72"}, {"max": 52, "min": 42, "name": "TWzb7YoK"}, {"max": 21, "min": 25, "name": "EZriFUBZ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 58}, "duration": 98, "max_number": 100, "min_number": 49, "player_max_number": 41, "player_min_number": 26}, {"combination": {"alliances": [{"max": 93, "min": 8, "name": "KGfE7nJr"}, {"max": 86, "min": 54, "name": "T93qCill"}, {"max": 75, "min": 98, "name": "MpA9f1LK"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 22}, "duration": 14, "max_number": 7, "min_number": 21, "player_max_number": 47, "player_min_number": 94}], "name": "EH57gMoL"}, "5pGMBEGM": {"alliance": {"combination": {"alliances": [{"max": 77, "min": 14, "name": "g7oJSlhC"}, {"max": 77, "min": 84, "name": "IxsJ3Lxm"}, {"max": 28, "min": 15, "name": "Vs4qX9lM"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 37}, "max_number": 88, "min_number": 54, "player_max_number": 25, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 75, "min": 9, "name": "KRvHRp7m"}, {"max": 11, "min": 65, "name": "CAETrDyv"}, {"max": 6, "min": 60, "name": "JFbc1Xes"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 31}, "duration": 23, "max_number": 9, "min_number": 85, "player_max_number": 92, "player_min_number": 17}, {"combination": {"alliances": [{"max": 22, "min": 62, "name": "4cgVUfZw"}, {"max": 66, "min": 23, "name": "AQbkgGQw"}, {"max": 79, "min": 41, "name": "PW43BIjl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 83}, "duration": 4, "max_number": 56, "min_number": 20, "player_max_number": 30, "player_min_number": 67}, {"combination": {"alliances": [{"max": 44, "min": 1, "name": "z08xrIgr"}, {"max": 63, "min": 31, "name": "CuI5vXtv"}, {"max": 9, "min": 46, "name": "RQecmDkM"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 68}, "duration": 97, "max_number": 4, "min_number": 60, "player_max_number": 98, "player_min_number": 84}], "name": "mvRzHQHA"}}}, "session_queue_timeout_seconds": 37, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'Rrzp2F7Y' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "xgjOZCAp", "players": [{"results": [{"attribute": "tzV30taY", "value": 0.48624921815707245}, {"attribute": "veSIsQgu", "value": 0.5360352155922015}, {"attribute": "51qPb5mk", "value": 0.1842380501013582}], "user_id": "QbWyVDQZ"}, {"results": [{"attribute": "TV7kml0L", "value": 0.7190162565165057}, {"attribute": "pwc4ZX0r", "value": 0.8046540222945513}, {"attribute": "kKRM6RQn", "value": 0.683012320759252}], "user_id": "C5O3zPOL"}, {"results": [{"attribute": "9oBESm5J", "value": 0.5797191711717392}, {"attribute": "0pNFS4ii", "value": 0.9487678950463241}, {"attribute": "8DerNI3X", "value": 0.27014765532929275}], "user_id": "8ikX4JFp"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "7raNTyiL"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "aomtzplh", "client_version": "T926IY1R", "deployment": "lAPD7JIq", "error_code": 46, "error_message": "FvxXoxzM", "game_mode": "PgQiaGHH", "joinable": true, "match_id": "KBGFayks", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"VgupXvt1": {}, "yvAgaeyy": {}, "ee8SwZui": {}}, "party_id": "J20alH19", "party_members": [{"extra_attributes": {"sB82zJFN": {}, "Na0k3PzP": {}, "o7cfvaQN": {}}, "user_id": "KsotuNGG"}, {"extra_attributes": {"ORr5vdYz": {}, "kDWixWCr": {}, "2AqUFz42": {}}, "user_id": "ZzeFg5li"}, {"extra_attributes": {"7VtDk6nc": {}, "0bUhTuHS": {}, "nD7klVOO": {}}, "user_id": "Ue5geBvU"}], "ticket_id": "8YV3yaXz"}, {"first_ticket_created_at": 61, "party_attributes": {"GrTWm2wC": {}, "ee18OO0v": {}, "PyqVCFJF": {}}, "party_id": "YmfqASPN", "party_members": [{"extra_attributes": {"QRdIBWJX": {}, "D7pTIg5z": {}, "4dR1oz8t": {}}, "user_id": "nymfEtSU"}, {"extra_attributes": {"s7YUi34E": {}, "TMhV7m44": {}, "Rd0rqjyK": {}}, "user_id": "lmgxRkd6"}, {"extra_attributes": {"slcIFh7k": {}, "cON1C9ts": {}, "Y73Xznlw": {}}, "user_id": "VxaLHcJE"}], "ticket_id": "HFGA2ZLB"}, {"first_ticket_created_at": 45, "party_attributes": {"9Si1Hf2k": {}, "OdIuWuyo": {}, "FMchYBfD": {}}, "party_id": "IFjH5z4U", "party_members": [{"extra_attributes": {"FCCJ4QFD": {}, "5KBbRf9e": {}, "SzbdHoyM": {}}, "user_id": "erRWMZUJ"}, {"extra_attributes": {"aWe0rWDJ": {}, "JZ4o3r3Z": {}, "M3OguFKT": {}}, "user_id": "5hTKS1t8"}, {"extra_attributes": {"YJVaWKTr": {}, "OJZGKRKL": {}, "Ezh1FzqS": {}}, "user_id": "DOmbxhm3"}], "ticket_id": "vOPsQBAD"}]}, {"matching_parties": [{"first_ticket_created_at": 3, "party_attributes": {"gs5z7kB0": {}, "AGvjCvkw": {}, "SJTXtdrE": {}}, "party_id": "8EA0DTsq", "party_members": [{"extra_attributes": {"7FhP4u0b": {}, "iSlbvwW5": {}, "FJLp7uke": {}}, "user_id": "GE8DGCeA"}, {"extra_attributes": {"vbccZpyA": {}, "cz7qiazU": {}, "ByWl977w": {}}, "user_id": "1bsuR4sl"}, {"extra_attributes": {"9JbQ0et0": {}, "rNDTCGgk": {}, "yygEqOF4": {}}, "user_id": "QXL3dvMz"}], "ticket_id": "7syUKVyQ"}, {"first_ticket_created_at": 89, "party_attributes": {"A0Ywi51k": {}, "aMmBrfIW": {}, "iKPLTPX2": {}}, "party_id": "tIGtse0z", "party_members": [{"extra_attributes": {"o5K8NyPw": {}, "upCa9Q6q": {}, "C8ygS9wT": {}}, "user_id": "ZyryU92j"}, {"extra_attributes": {"twa90UTN": {}, "sP5IjqWv": {}, "HqWVcDFb": {}}, "user_id": "b8T9oU1W"}, {"extra_attributes": {"cryU1WHt": {}, "ZCLVmARA": {}, "IP6rn5td": {}}, "user_id": "O4h7woPv"}], "ticket_id": "V6O5rmLH"}, {"first_ticket_created_at": 29, "party_attributes": {"AY9rkkfC": {}, "0JWN4nOx": {}, "ajkkUX9U": {}}, "party_id": "mO2TykJ0", "party_members": [{"extra_attributes": {"EoJ0FSjj": {}, "NvCU8DDE": {}, "SvcsYQxC": {}}, "user_id": "9hTWHr44"}, {"extra_attributes": {"cJEDJarV": {}, "1hD4Hh2g": {}, "fWdOg6wd": {}}, "user_id": "xi8LlDJg"}, {"extra_attributes": {"WhQgwRK2": {}, "y1xM9E5E": {}, "zXPnqxLQ": {}}, "user_id": "tDpvAL3a"}], "ticket_id": "Lu0pkcBf"}]}, {"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"cqv9Oa5v": {}, "323ViQbv": {}, "54vCdtyF": {}}, "party_id": "5qufHHVQ", "party_members": [{"extra_attributes": {"EHES5cz3": {}, "fnXXP0wD": {}, "tyn7ZyWb": {}}, "user_id": "vg0ri5x1"}, {"extra_attributes": {"RAALD0zC": {}, "CCSeO6UB": {}, "mm4T0pg0": {}}, "user_id": "QPmpxM3f"}, {"extra_attributes": {"zFWJevCv": {}, "lnTZLr7f": {}, "WJorCDao": {}}, "user_id": "ePXxfRL5"}], "ticket_id": "MDZxn0qF"}, {"first_ticket_created_at": 37, "party_attributes": {"X5tXT5cV": {}, "BkEaqubh": {}, "SlsTd3qq": {}}, "party_id": "76v52Dje", "party_members": [{"extra_attributes": {"QP8c51sB": {}, "2s5SvyAV": {}, "louXq6KK": {}}, "user_id": "w3HfRJ5M"}, {"extra_attributes": {"njwN1OIQ": {}, "iPDlsZo6": {}, "8nSiU0bf": {}}, "user_id": "XIOgkQgR"}, {"extra_attributes": {"SIHhw3d6": {}, "lvCSbz7r": {}, "cPM2ees4": {}}, "user_id": "pTlSDfPn"}], "ticket_id": "EkUnhq2z"}, {"first_ticket_created_at": 33, "party_attributes": {"WhuloZ5V": {}, "Ua0cI8qW": {}, "WdvfwzsZ": {}}, "party_id": "tNJeqgRS", "party_members": [{"extra_attributes": {"4RmrZAEF": {}, "GkG5ge54": {}, "Lj9SryId": {}}, "user_id": "qyWzdMWd"}, {"extra_attributes": {"0Vq6zmWm": {}, "0ceQbXLY": {}, "r7bPmnue": {}}, "user_id": "6aJQsQeK"}, {"extra_attributes": {"5ustgXnI": {}, "PR5NFxsa": {}, "RJu7hohp": {}}, "user_id": "utAGeT8F"}], "ticket_id": "vA87MM4l"}]}], "namespace": "EfCoxz4r", "party_attributes": {"wPSeC2Xb": {}, "HcpNXlyC": {}, "gtgPbfAE": {}}, "party_id": "2hOB5lAN", "queued_at": 18, "region": "0H6Wyl5u", "server_name": "jQV0z80Y", "status": "sMyH2g1J", "ticket_id": "yV9NI2UA", "updated_at": "1982-09-09T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "8Y8Rt9w1"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'uzlfrL6P' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 33, "userID": "JyJObqmD", "weight": 0.04074230887407615}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'Ab6XtTHK' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "GtYAVj5P", "description": "13jV2zx7", "findMatchTimeoutSeconds": 72, "joinable": true, "max_delay_ms": 84, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 53, "min": 12, "name": "wEfoUEjp"}, {"max": 88, "min": 65, "name": "oIXGWBju"}, {"max": 75, "min": 89, "name": "t97rT0jU"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 12}, "maxNumber": 63, "minNumber": 87, "playerMaxNumber": 57, "playerMinNumber": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 41, "min": 31, "name": "EhL4lYKR"}, {"max": 50, "min": 64, "name": "mBELZPr2"}, {"max": 55, "min": 86, "name": "yWD8HeRa"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 25}, "duration": 95, "max_number": 6, "min_number": 20, "player_max_number": 93, "player_min_number": 46}, {"combination": {"alliances": [{"max": 11, "min": 83, "name": "yEo7Xz41"}, {"max": 14, "min": 40, "name": "Cj7Sm2t3"}, {"max": 96, "min": 34, "name": "xLQhWfhz"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 82}, "duration": 66, "max_number": 90, "min_number": 75, "player_max_number": 40, "player_min_number": 3}, {"combination": {"alliances": [{"max": 20, "min": 15, "name": "59zQxa3f"}, {"max": 96, "min": 2, "name": "9942pfIx"}, {"max": 33, "min": 88, "name": "nGyrxjS3"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 27}, "duration": 99, "max_number": 71, "min_number": 22, "player_max_number": 78, "player_min_number": 77}], "flexingRules": [{"attribute": "uKFd4IPJ", "criteria": "9Cs1HWmu", "duration": 68, "reference": 0.7466741919850374}, {"attribute": "qyNX3mqK", "criteria": "4pAn49ub", "duration": 22, "reference": 0.5490004977563885}, {"attribute": "3OgP1mYd", "criteria": "9Gxvuo5S", "duration": 90, "reference": 0.23551453830534386}], "match_options": {"options": [{"name": "DNthfnEl", "type": "Yv3P3CNo"}, {"name": "5lyw5nl7", "type": "BkdzOqZG"}, {"name": "1Bp8cI2o", "type": "CaPYm4Qt"}]}, "matchingRules": [{"attribute": "J7SKkIPO", "criteria": "wrxBypAx", "reference": 0.5650041798226515}, {"attribute": "g9f1VbQz", "criteria": "7uUbgLQL", "reference": 0.7628698237975711}, {"attribute": "A57cs0qn", "criteria": "d38W2CVE", "reference": 0.2745650932252156}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 3, "socialMatchmaking": true, "use_sub_gamemode": false}' 'MKrDnkXy' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'dydE2Ftn' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'rzNRigq9' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["tjxsLYOw", "mS4dwcel", "qmFFA8bV"], "party_id": "trn9xAU6", "user_id": "fyATO0qO"}' 'aidZPl81' 'Wj3pfXVJ' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 's5IygfJs' 'tAXLVbnc' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'lDxd2UzH' '0TclehAa' 'X59RdPBA' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'qgah5hrV' --login_with_auth "Bearer foo"
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
    '{"deployment": "v71ocnMm", "description": "V7skF3en", "find_match_timeout_seconds": 100, "game_mode": "sUXJSezK", "joinable": false, "max_delay_ms": 41, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 17, "min": 85, "name": "4i1fVkVA"}, {"max": 36, "min": 6, "name": "IkXgpK5z"}, {"max": 12, "min": 97, "name": "JI8TNpA4"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 53}, "max_number": 23, "min_number": 92, "player_max_number": 96, "player_min_number": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 30, "min": 44, "name": "YPFRsroO"}, {"max": 61, "min": 11, "name": "wkcfelQl"}, {"max": 33, "min": 70, "name": "eV5BogI1"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 90}, "duration": 92, "max_number": 98, "min_number": 62, "player_max_number": 31, "player_min_number": 94}, {"combination": {"alliances": [{"max": 40, "min": 54, "name": "eA1rETCG"}, {"max": 80, "min": 20, "name": "6z0bKLMw"}, {"max": 35, "min": 85, "name": "mGYFADxl"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 77, "role_flexing_second": 78}, "duration": 82, "max_number": 67, "min_number": 85, "player_max_number": 5, "player_min_number": 96}, {"combination": {"alliances": [{"max": 5, "min": 71, "name": "byVLWS7A"}, {"max": 76, "min": 45, "name": "6mTmRFBY"}, {"max": 16, "min": 76, "name": "SDHXs1Bo"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 95}, "duration": 66, "max_number": 35, "min_number": 92, "player_max_number": 11, "player_min_number": 20}], "flexing_rule": [{"attribute": "8o200UVl", "criteria": "VRpOAvd6", "duration": 25, "reference": 0.8914609113687596}, {"attribute": "kppQmb9a", "criteria": "NLm4g8tm", "duration": 86, "reference": 0.18889160044639175}, {"attribute": "BpokT46W", "criteria": "QE8RMx2K", "duration": 94, "reference": 0.4527505716968476}], "match_options": {"options": [{"name": "UzFvjJFJ", "type": "IT0isaur"}, {"name": "1tuorQHa", "type": "2A4evW5g"}, {"name": "VHftK1tC", "type": "F2zKOfka"}]}, "matching_rule": [{"attribute": "BmCIEKPd", "criteria": "GsmrJ1cl", "reference": 0.47783603267041885}, {"attribute": "F5FGudIC", "criteria": "tlWIAOZ1", "reference": 0.6235275094873163}, {"attribute": "JpHVJ4k7", "criteria": "JJbqgKW8", "reference": 0.36081209412854187}], "rebalance_enable": true, "sub_game_modes": {"6Es9aBeU": {"alliance": {"combination": {"alliances": [{"max": 21, "min": 70, "name": "F51wo2wy"}, {"max": 3, "min": 32, "name": "HvIZ5iHn"}, {"max": 32, "min": 76, "name": "A7XXaL8z"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 78}, "max_number": 3, "min_number": 56, "player_max_number": 2, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 65, "min": 52, "name": "xRHF9JOy"}, {"max": 12, "min": 31, "name": "JWDV6KYF"}, {"max": 50, "min": 14, "name": "kxeBx8m8"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 26}, "duration": 39, "max_number": 26, "min_number": 29, "player_max_number": 69, "player_min_number": 9}, {"combination": {"alliances": [{"max": 77, "min": 12, "name": "BXVi37wu"}, {"max": 93, "min": 49, "name": "XHN2Trno"}, {"max": 85, "min": 43, "name": "x2QD79kR"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 11}, "duration": 65, "max_number": 54, "min_number": 59, "player_max_number": 41, "player_min_number": 90}, {"combination": {"alliances": [{"max": 95, "min": 47, "name": "QTdzDRIB"}, {"max": 9, "min": 99, "name": "KEy2CmBw"}, {"max": 6, "min": 51, "name": "wGAocD72"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 34}, "duration": 57, "max_number": 4, "min_number": 86, "player_max_number": 80, "player_min_number": 48}], "name": "2DNNnLDc"}, "PBVjGDaS": {"alliance": {"combination": {"alliances": [{"max": 49, "min": 26, "name": "DSIJu7YO"}, {"max": 20, "min": 58, "name": "Y78oVEqs"}, {"max": 3, "min": 13, "name": "QkqLQwf1"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 5}, "max_number": 66, "min_number": 22, "player_max_number": 0, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 24, "name": "LDF9bBF3"}, {"max": 49, "min": 75, "name": "8GvuGtbW"}, {"max": 25, "min": 54, "name": "LleGKcDp"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 71}, "duration": 37, "max_number": 90, "min_number": 84, "player_max_number": 26, "player_min_number": 32}, {"combination": {"alliances": [{"max": 73, "min": 28, "name": "GNpBdKjN"}, {"max": 9, "min": 85, "name": "NSyExKv7"}, {"max": 49, "min": 10, "name": "Mi0M93AC"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 76}, "duration": 90, "max_number": 7, "min_number": 72, "player_max_number": 74, "player_min_number": 65}, {"combination": {"alliances": [{"max": 75, "min": 91, "name": "rnRCJR87"}, {"max": 35, "min": 48, "name": "bZdq0jvr"}, {"max": 40, "min": 1, "name": "LLf9rPeO"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 98}, "duration": 70, "max_number": 82, "min_number": 62, "player_max_number": 47, "player_min_number": 87}], "name": "oaN4NuQK"}, "wNhaO5j2": {"alliance": {"combination": {"alliances": [{"max": 14, "min": 67, "name": "kEuXcR29"}, {"max": 86, "min": 56, "name": "MWSwRu7w"}, {"max": 48, "min": 60, "name": "VWvqhLdu"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 68}, "max_number": 42, "min_number": 69, "player_max_number": 57, "player_min_number": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 36, "min": 56, "name": "PLnP0suc"}, {"max": 51, "min": 47, "name": "dGEUkElb"}, {"max": 20, "min": 3, "name": "Z8r8FwkO"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 18}, "duration": 1, "max_number": 58, "min_number": 81, "player_max_number": 19, "player_min_number": 75}, {"combination": {"alliances": [{"max": 19, "min": 52, "name": "1Xv4CRaU"}, {"max": 5, "min": 50, "name": "OLz7KTSd"}, {"max": 15, "min": 72, "name": "4N9RIsL7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 41}, "duration": 51, "max_number": 89, "min_number": 18, "player_max_number": 27, "player_min_number": 24}, {"combination": {"alliances": [{"max": 55, "min": 1, "name": "5pdeqp1O"}, {"max": 18, "min": 72, "name": "wxxrG81k"}, {"max": 10, "min": 41, "name": "A8K9Nxzl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 12}, "duration": 36, "max_number": 74, "min_number": 50, "player_max_number": 43, "player_min_number": 37}], "name": "fjzdKimL"}}}, "session_queue_timeout_seconds": 76, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'u9EKUahN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "AsVURWUH", "players": [{"results": [{"attribute": "mrP2tU7E", "value": 0.6654178498440089}, {"attribute": "V7NHAklv", "value": 0.5072964794197969}, {"attribute": "lmxz8JOw", "value": 0.19311597149587711}], "user_id": "pmWKek7q"}, {"results": [{"attribute": "lAvPAXzD", "value": 0.7292569902641236}, {"attribute": "FKovu22q", "value": 0.9483250181942507}, {"attribute": "8VSHAHbk", "value": 0.8254496238817031}], "user_id": "jBr2CWsH"}, {"results": [{"attribute": "sHt0ZPpQ", "value": 0.040908974484296534}, {"attribute": "bKcdVNAB", "value": 0.4179081357284715}, {"attribute": "kPXR3Nq5", "value": 0.23546460696512406}], "user_id": "nYCrF1ap"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "2K6PIK1r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "JP9gAdcV", "client_version": "aaSkpiM2", "deployment": "h3WserNn", "error_code": 40, "error_message": "pjgI07gT", "game_mode": "N4cAmxcy", "joinable": false, "match_id": "lhsmihUO", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 13, "party_attributes": {"tmtiPcpw": {}, "MBTVgN6k": {}, "uUltoSZ3": {}}, "party_id": "zaG5K9lb", "party_members": [{"extra_attributes": {"kqA3sa63": {}, "fhUgUaWn": {}, "W0JWRCVP": {}}, "user_id": "9RINijeb"}, {"extra_attributes": {"IPnVJlVc": {}, "8fcSzrtA": {}, "ImEnfAkK": {}}, "user_id": "RDYMwYZ5"}, {"extra_attributes": {"zu6L0pE1": {}, "18euudro": {}, "tts9HM9Q": {}}, "user_id": "zVHJC5Sg"}], "ticket_id": "sU5qhqir"}, {"first_ticket_created_at": 75, "party_attributes": {"V8mwS9EF": {}, "DHBrWBZT": {}, "lX8tBJj0": {}}, "party_id": "eZYimGFx", "party_members": [{"extra_attributes": {"jucrAQ43": {}, "Ww3gIXZ1": {}, "tDwnLhGJ": {}}, "user_id": "NOkWfeRB"}, {"extra_attributes": {"cLwE5tu3": {}, "h5SYaWqF": {}, "46SIiUtn": {}}, "user_id": "JQVo8TrX"}, {"extra_attributes": {"67SyVGPv": {}, "IjYMvqho": {}, "i2miHKBz": {}}, "user_id": "755YiN6Z"}], "ticket_id": "olfrZt8q"}, {"first_ticket_created_at": 38, "party_attributes": {"CY2x0P6g": {}, "h3pizNZS": {}, "6n81tEmU": {}}, "party_id": "rNaplX0p", "party_members": [{"extra_attributes": {"BspfQ4Lb": {}, "yfixoxOa": {}, "sA1kNSm0": {}}, "user_id": "AXQSdLLa"}, {"extra_attributes": {"UpTEZJ9R": {}, "fnzS4IXX": {}, "4ooQPHcp": {}}, "user_id": "ry5TQ72R"}, {"extra_attributes": {"I58QYmHj": {}, "wtO365Qt": {}, "ezWs3X3C": {}}, "user_id": "b2UD5DsO"}], "ticket_id": "7hHPkyXs"}]}, {"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"NVryHnVj": {}, "g2LidvmJ": {}, "5aKx1eOM": {}}, "party_id": "DlOMSABC", "party_members": [{"extra_attributes": {"hRinrwC4": {}, "1CKEmcJg": {}, "Q5tucUm1": {}}, "user_id": "fpWfUYrk"}, {"extra_attributes": {"yEZazcxj": {}, "BXwYqsxR": {}, "sQGUY15Y": {}}, "user_id": "TMeLiMDf"}, {"extra_attributes": {"LgFWZbVp": {}, "J0GPrR5E": {}, "HzYX2TyQ": {}}, "user_id": "zFc2Aav5"}], "ticket_id": "hKxsH5Wc"}, {"first_ticket_created_at": 27, "party_attributes": {"tM94C3Ui": {}, "4gjADGVC": {}, "fpKWAYX8": {}}, "party_id": "fmbwvXc0", "party_members": [{"extra_attributes": {"lb0wWTvN": {}, "jUI3FCfs": {}, "rzXtVKUO": {}}, "user_id": "lE4Lolgy"}, {"extra_attributes": {"04ZfXqnh": {}, "Ux7weYWP": {}, "XsM40VrB": {}}, "user_id": "huW0yPo2"}, {"extra_attributes": {"81nFCP2l": {}, "6qD8mj5P": {}, "1D2REK3j": {}}, "user_id": "NmPCq5XB"}], "ticket_id": "QkeoNMia"}, {"first_ticket_created_at": 53, "party_attributes": {"Ij00rbmi": {}, "Cb1Ubafv": {}, "X4aE3yEd": {}}, "party_id": "EgCXLRYK", "party_members": [{"extra_attributes": {"1RNBmQa2": {}, "KTKp9ocy": {}, "90OTMvBL": {}}, "user_id": "dokfjG0R"}, {"extra_attributes": {"mnyFpF25": {}, "SCkDvJru": {}, "ORjcEqJ8": {}}, "user_id": "5UCEL4cz"}, {"extra_attributes": {"Q6dPhLrv": {}, "ryh0XgS0": {}, "aExM01B5": {}}, "user_id": "Ze3hdszf"}], "ticket_id": "1l3Veb5E"}]}, {"matching_parties": [{"first_ticket_created_at": 81, "party_attributes": {"qa23Uuq0": {}, "yqRb7USI": {}, "80mIGq4B": {}}, "party_id": "ClTJWGRV", "party_members": [{"extra_attributes": {"ViXaMnJN": {}, "alI9LHcO": {}, "JdHx20Nu": {}}, "user_id": "w4oNU7NC"}, {"extra_attributes": {"Cd62tREr": {}, "5w9HC6K3": {}, "9HYoS6mZ": {}}, "user_id": "EdExO8eJ"}, {"extra_attributes": {"ZcLuJYpu": {}, "Oak5P9jZ": {}, "I7L52MyB": {}}, "user_id": "vPLx0nRu"}], "ticket_id": "V34UxLYh"}, {"first_ticket_created_at": 86, "party_attributes": {"1Ad94YDu": {}, "rQkYjoYf": {}, "EbZAETQC": {}}, "party_id": "aM69r9B4", "party_members": [{"extra_attributes": {"sKlXAjvk": {}, "AEjzSQ0V": {}, "Vh5tUoeF": {}}, "user_id": "lxsuzVrI"}, {"extra_attributes": {"sKXwPSbK": {}, "LAh4ofac": {}, "uHBHzN03": {}}, "user_id": "O8jnBOV8"}, {"extra_attributes": {"BGHehWvx": {}, "NsrfBBgg": {}, "EqukYltd": {}}, "user_id": "v3S4oQAR"}], "ticket_id": "Qnt7bKzI"}, {"first_ticket_created_at": 65, "party_attributes": {"gbjtc2PE": {}, "mzTegLEu": {}, "5E7oB9Fe": {}}, "party_id": "7GtQnKvH", "party_members": [{"extra_attributes": {"tXcKVLNY": {}, "fryMxwPN": {}, "zlJD8siA": {}}, "user_id": "bgsXvJaQ"}, {"extra_attributes": {"eIaYJNA8": {}, "hUHzAhQX": {}, "Iqv2XW7c": {}}, "user_id": "9ivhsKIw"}, {"extra_attributes": {"gbbuQsRR": {}, "BfpYjbzP": {}, "fZOwnmDa": {}}, "user_id": "PTqrmP39"}], "ticket_id": "WN58gGYR"}]}], "namespace": "zGETSpFT", "party_attributes": {"d9TiXZ9X": {}, "lkVflTDs": {}, "DG0jKHRS": {}}, "party_id": "B8m0qmFz", "queued_at": 14, "region": "1ueIdc4R", "server_name": "rOBhvwGd", "status": "FTYNv2kM", "ticket_id": "zHm5nsVh", "updated_at": "1990-01-31T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "1FzNKS9h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'T57S105B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 41, "userID": "WN8vYbnv", "weight": 0.21503295918169552}' \
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
    'Sw7ofwuy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "1wAG6aX0", "description": "LAebbIZU", "findMatchTimeoutSeconds": 14, "joinable": true, "max_delay_ms": 34, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 38, "min": 19, "name": "e0JjhwmK"}, {"max": 60, "min": 35, "name": "hOqvlpGS"}, {"max": 65, "min": 35, "name": "QASBnfjJ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 44}, "maxNumber": 99, "minNumber": 48, "playerMaxNumber": 4, "playerMinNumber": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 47, "min": 12, "name": "EHUNhAE9"}, {"max": 95, "min": 54, "name": "EnoY1Uwg"}, {"max": 32, "min": 56, "name": "DQVqCRow"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 15}, "duration": 62, "max_number": 94, "min_number": 87, "player_max_number": 55, "player_min_number": 48}, {"combination": {"alliances": [{"max": 70, "min": 7, "name": "iwIrDfyL"}, {"max": 10, "min": 97, "name": "QenWslhL"}, {"max": 45, "min": 4, "name": "uua7f07Y"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 52}, "duration": 24, "max_number": 86, "min_number": 39, "player_max_number": 36, "player_min_number": 26}, {"combination": {"alliances": [{"max": 45, "min": 17, "name": "fqxJPXTU"}, {"max": 44, "min": 39, "name": "wjD8V3sf"}, {"max": 1, "min": 90, "name": "iHxhkdBR"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 15}, "duration": 7, "max_number": 12, "min_number": 16, "player_max_number": 100, "player_min_number": 36}], "flexingRules": [{"attribute": "XOaBQT3d", "criteria": "iGU2d4qO", "duration": 91, "reference": 0.036013533675260834}, {"attribute": "QVDE4I3C", "criteria": "7JwNb0HJ", "duration": 7, "reference": 0.5770650537380296}, {"attribute": "6Pxd5KhG", "criteria": "1x4p3sDF", "duration": 29, "reference": 0.34692603529286814}], "match_options": {"options": [{"name": "ZF1z0EwW", "type": "tt3gG9ud"}, {"name": "Fu8IzEgo", "type": "UsLi0ftE"}, {"name": "FRe1d4D9", "type": "4dhdg6oy"}]}, "matchingRules": [{"attribute": "Tl0ebaIg", "criteria": "vTfPCauo", "reference": 0.02117418763588841}, {"attribute": "Xu3PQ3Dq", "criteria": "WsIPXwqx", "reference": 0.16443370221249476}, {"attribute": "E1iCS49N", "criteria": "GbUkaWHI", "reference": 0.5264134791070304}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 0, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    'k76LyboU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    '7qZQtYc9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    '2ZOcQXiN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["1HHW8an1", "tuJVKfRf", "Tcl8PyXa"], "party_id": "Gsn5hgJG", "user_id": "8RmpplqW"}' \
    'odSR9rrv' \
    'mQBcsaM6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'ZnmxbfXQ' \
    'o5o8UIcs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'uZcEqlTD' \
    'gUic9ei2' \
    'FeFsYJyx' \
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
    'tSO2gTXH' \
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
