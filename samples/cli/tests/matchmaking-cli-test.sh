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
matchmaking-create-channel-handler '{"deployment": "xAvKF2F2", "description": "kP0Jw9Fz", "find_match_timeout_seconds": 14, "game_mode": "lN7Zndng", "joinable": true, "max_delay_ms": 31, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 3, "min": 15, "name": "FVC3Wglx"}, {"max": 33, "min": 57, "name": "8PgXTDre"}, {"max": 94, "min": 52, "name": "Vnp1d05f"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 98}, "max_number": 74, "min_number": 39, "player_max_number": 51, "player_min_number": 84}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 81, "min": 40, "name": "iynU9hok"}, {"max": 14, "min": 64, "name": "QwYLAbNq"}, {"max": 45, "min": 91, "name": "k1RzXkGa"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 83}, "duration": 92, "max_number": 42, "min_number": 8, "player_max_number": 100, "player_min_number": 28}, {"combination": {"alliances": [{"max": 43, "min": 55, "name": "4ck2Xv0d"}, {"max": 80, "min": 66, "name": "YAvDYTXl"}, {"max": 25, "min": 76, "name": "iF7TdsQt"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 59}, "duration": 3, "max_number": 43, "min_number": 78, "player_max_number": 89, "player_min_number": 47}, {"combination": {"alliances": [{"max": 24, "min": 58, "name": "amICjKej"}, {"max": 43, "min": 28, "name": "f8cjW9Gu"}, {"max": 66, "min": 89, "name": "Kl80dgIh"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 81}, "duration": 33, "max_number": 94, "min_number": 32, "player_max_number": 6, "player_min_number": 1}], "flexing_rule": [{"attribute": "IQswMVcJ", "criteria": "CwMX6B2H", "duration": 39, "reference": 0.38701656037226906}, {"attribute": "pVyhQDXF", "criteria": "OJrNb7lc", "duration": 90, "reference": 0.2505637490537347}, {"attribute": "zOVUmgRi", "criteria": "6ID3Bndv", "duration": 59, "reference": 0.1835857926758987}], "match_options": {"options": [{"name": "oWqrbIpf", "type": "TfbgfKF7"}, {"name": "1imET8vN", "type": "37o0ot6A"}, {"name": "CNigoxbK", "type": "afZ3vR6M"}]}, "matching_rule": [{"attribute": "wkNvSGtS", "criteria": "qqzvufW3", "reference": 0.49549678822693244}, {"attribute": "mgCzlpIX", "criteria": "SXesov1R", "reference": 0.254720444728194}, {"attribute": "fdo0hHKo", "criteria": "sicu5ecO", "reference": 0.384765306761332}], "rebalance_enable": false, "sub_game_modes": {"3DjJebdi": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 19, "name": "fjHrJ5dR"}, {"max": 82, "min": 17, "name": "Mdcrd9nP"}, {"max": 46, "min": 46, "name": "Z3Tj83AL"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 31}, "max_number": 17, "min_number": 64, "player_max_number": 26, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 42, "min": 82, "name": "Dr4QPp2J"}, {"max": 64, "min": 11, "name": "mMcVHKVM"}, {"max": 67, "min": 30, "name": "kvbkRwQR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 57}, "duration": 65, "max_number": 30, "min_number": 98, "player_max_number": 14, "player_min_number": 77}, {"combination": {"alliances": [{"max": 44, "min": 33, "name": "nHCVtrmF"}, {"max": 54, "min": 68, "name": "lC34Yrax"}, {"max": 18, "min": 22, "name": "yheY4Gp7"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 40, "role_flexing_second": 73}, "duration": 4, "max_number": 91, "min_number": 93, "player_max_number": 63, "player_min_number": 12}, {"combination": {"alliances": [{"max": 49, "min": 92, "name": "WRO6SX9f"}, {"max": 62, "min": 93, "name": "UMJTFkD0"}, {"max": 45, "min": 44, "name": "EHeNqBCi"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 99}, "duration": 2, "max_number": 48, "min_number": 55, "player_max_number": 64, "player_min_number": 22}], "name": "AsQfX9n9"}, "nqHvbSvF": {"alliance": {"combination": {"alliances": [{"max": 76, "min": 64, "name": "6kcXMkl8"}, {"max": 13, "min": 41, "name": "n0H4bnqk"}, {"max": 54, "min": 59, "name": "3fIY8TAf"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 85}, "max_number": 18, "min_number": 3, "player_max_number": 74, "player_min_number": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 80, "min": 48, "name": "wuDrSSdR"}, {"max": 68, "min": 95, "name": "LLOuzEnw"}, {"max": 49, "min": 23, "name": "CgTTjwmR"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 99}, "duration": 54, "max_number": 86, "min_number": 55, "player_max_number": 19, "player_min_number": 20}, {"combination": {"alliances": [{"max": 64, "min": 35, "name": "mz2NxgBR"}, {"max": 26, "min": 5, "name": "25EFhQTV"}, {"max": 7, "min": 66, "name": "kexbYvbS"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 27}, "duration": 24, "max_number": 10, "min_number": 4, "player_max_number": 15, "player_min_number": 2}, {"combination": {"alliances": [{"max": 60, "min": 36, "name": "DZehvGMM"}, {"max": 17, "min": 10, "name": "sMCgUuFh"}, {"max": 79, "min": 95, "name": "MeRLvQ3y"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 86}, "duration": 0, "max_number": 39, "min_number": 78, "player_max_number": 15, "player_min_number": 73}], "name": "kiILUEBl"}, "Bbi6QdwC": {"alliance": {"combination": {"alliances": [{"max": 46, "min": 42, "name": "L1Moz5AB"}, {"max": 5, "min": 60, "name": "AZWCReQH"}, {"max": 52, "min": 6, "name": "qofb0gMP"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 71}, "max_number": 32, "min_number": 45, "player_max_number": 30, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 15, "min": 29, "name": "JW2Jld2w"}, {"max": 16, "min": 6, "name": "1OAfNWbH"}, {"max": 29, "min": 57, "name": "uO2gKIm4"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 29}, "duration": 59, "max_number": 92, "min_number": 20, "player_max_number": 62, "player_min_number": 54}, {"combination": {"alliances": [{"max": 69, "min": 46, "name": "XTjEtFWO"}, {"max": 48, "min": 28, "name": "IBakHhVE"}, {"max": 25, "min": 82, "name": "QefknqJC"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 50}, "duration": 57, "max_number": 18, "min_number": 18, "player_max_number": 14, "player_min_number": 56}, {"combination": {"alliances": [{"max": 39, "min": 87, "name": "1gFeSFvP"}, {"max": 49, "min": 4, "name": "GJcmtK9s"}, {"max": 33, "min": 89, "name": "LHmEEozl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 95}, "duration": 21, "max_number": 48, "min_number": 27, "player_max_number": 87, "player_min_number": 55}], "name": "jFCnR0O6"}}}, "session_queue_timeout_seconds": 80, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'aaemDr42' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "lzpBqc6v", "players": [{"results": [{"attribute": "zNlzP8cp", "value": 0.9572802627442818}, {"attribute": "jh8tddrs", "value": 0.7773413809622667}, {"attribute": "9lP64joM", "value": 0.2640214292676617}], "user_id": "fWeGwiY2"}, {"results": [{"attribute": "3bbOaDNt", "value": 0.7276658123240493}, {"attribute": "v2JdrxJ6", "value": 0.8581327472542687}, {"attribute": "9dH5z78P", "value": 0.7867102755235742}], "user_id": "S1MObJXs"}, {"results": [{"attribute": "eacKpmzU", "value": 0.31098160350018056}, {"attribute": "nFNbkME9", "value": 0.6472671117367339}, {"attribute": "LjoUraH6", "value": 0.8620624156311525}], "user_id": "kyGlrgSC"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "SMPRLE9p"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "XIdRl99T", "client_version": "DfELo9Dh", "deployment": "xYZAPkhx", "error_code": 42, "error_message": "nahOTcQz", "game_mode": "viwYjIGU", "joinable": false, "match_id": "85DddMCz", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 97, "party_attributes": {"OwMajfRn": {}, "sCIGd08Z": {}, "Ek1EHUjf": {}}, "party_id": "8dP8R5OL", "party_members": [{"extra_attributes": {"DzXAHLKU": {}, "qZbSCvWc": {}, "59oHaxqZ": {}}, "user_id": "7ywSwzEA"}, {"extra_attributes": {"m4fgtzNc": {}, "6wDB42vE": {}, "yGbu2Gzo": {}}, "user_id": "k9DRYZj5"}, {"extra_attributes": {"x7Qt5Sqc": {}, "YdzS5pJM": {}, "T2pO0kBw": {}}, "user_id": "yncwXiTM"}], "ticket_id": "Zm6kao42"}, {"first_ticket_created_at": 11, "party_attributes": {"dtkXwUlY": {}, "wUaTXS1r": {}, "BJzVbCpv": {}}, "party_id": "jExzLt7a", "party_members": [{"extra_attributes": {"GR1YsfvG": {}, "0uKis867": {}, "GGSkpRBF": {}}, "user_id": "T6ZU5cxN"}, {"extra_attributes": {"K86AGgpe": {}, "74eFVqmE": {}, "nqHpfASK": {}}, "user_id": "ncHtSlkx"}, {"extra_attributes": {"rtepaI19": {}, "Q70vq1SQ": {}, "wcsJNybz": {}}, "user_id": "TJBH6l7j"}], "ticket_id": "fWd2zElt"}, {"first_ticket_created_at": 94, "party_attributes": {"DbOTmDSD": {}, "CNkFnAH0": {}, "9mN8htgF": {}}, "party_id": "ZZut7lOI", "party_members": [{"extra_attributes": {"Qu7u19kN": {}, "UtIE6Kx7": {}, "VW8Buhhs": {}}, "user_id": "PMcDiWdu"}, {"extra_attributes": {"S8zmdjzl": {}, "6XM6tne2": {}, "26CMSl6G": {}}, "user_id": "EcFclfP2"}, {"extra_attributes": {"14bjwTx8": {}, "8xi6w6Da": {}, "z1jCnFUY": {}}, "user_id": "sjFIoMDb"}], "ticket_id": "Law71mL0"}]}, {"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"D6tXDYYT": {}, "KvYEgVFV": {}, "u5CBv20M": {}}, "party_id": "tZRvFlpq", "party_members": [{"extra_attributes": {"yeJpZvB4": {}, "M8fqroOU": {}, "IvypyBq2": {}}, "user_id": "p7zegCho"}, {"extra_attributes": {"ntku7eJn": {}, "k4dxSJlz": {}, "rckVFLA4": {}}, "user_id": "mqLM6kel"}, {"extra_attributes": {"x88h97Lo": {}, "tcU6GTQ4": {}, "X0DuNY0D": {}}, "user_id": "tWOLUuot"}], "ticket_id": "mzbaNfNw"}, {"first_ticket_created_at": 100, "party_attributes": {"zJJseC3P": {}, "gCYZBNJg": {}, "OrfWdZ63": {}}, "party_id": "OEfuc0Mv", "party_members": [{"extra_attributes": {"6xo2GUo3": {}, "OCp0L9Wp": {}, "ZaMSahWd": {}}, "user_id": "634V2PV6"}, {"extra_attributes": {"UcxUO0A9": {}, "hgUPirnN": {}, "bmgknC8J": {}}, "user_id": "wsbk6hlz"}, {"extra_attributes": {"TO44C9nM": {}, "K6O8ul6M": {}, "DruXtCjb": {}}, "user_id": "US07Vmr6"}], "ticket_id": "66yC3rTi"}, {"first_ticket_created_at": 88, "party_attributes": {"6PDqyKbV": {}, "uMkquVlF": {}, "TfsJHjrM": {}}, "party_id": "nLsOSq9Z", "party_members": [{"extra_attributes": {"g4lgq3Qn": {}, "LYOqFpK3": {}, "SngGyFU9": {}}, "user_id": "CnhmkbtD"}, {"extra_attributes": {"5Q9RgclJ": {}, "UXYN8Fjx": {}, "48BngU8K": {}}, "user_id": "ARpUQ8ML"}, {"extra_attributes": {"s8hqOuZr": {}, "k6dYAAaY": {}, "qAasKJAm": {}}, "user_id": "daDq7urS"}], "ticket_id": "Tbs12Tpt"}]}, {"matching_parties": [{"first_ticket_created_at": 95, "party_attributes": {"cKbU0AS3": {}, "WFBnUOju": {}, "6GEs9cYT": {}}, "party_id": "5CbAJDmR", "party_members": [{"extra_attributes": {"lPAo9YD6": {}, "3QKMrIFo": {}, "INVUCZFX": {}}, "user_id": "c3Qgy2jC"}, {"extra_attributes": {"9Gh7BDTK": {}, "AfbbIyrD": {}, "Lc1xVeJZ": {}}, "user_id": "ngrw3SgO"}, {"extra_attributes": {"av1JnN03": {}, "G5xPDREj": {}, "hcBmtkHI": {}}, "user_id": "SYNnVWFa"}], "ticket_id": "qY2iBF4d"}, {"first_ticket_created_at": 84, "party_attributes": {"BPlO00og": {}, "O2pdC2IV": {}, "E31Yuisp": {}}, "party_id": "hygrI4k4", "party_members": [{"extra_attributes": {"5gsYdXl5": {}, "MNHqDCCB": {}, "evSDfpLu": {}}, "user_id": "D7jrqC92"}, {"extra_attributes": {"Hu9JIR9s": {}, "06vRbSsK": {}, "jQ8TeVp3": {}}, "user_id": "lWuQrAm1"}, {"extra_attributes": {"9jO0l4ll": {}, "64pyEIxF": {}, "3KjQwSJi": {}}, "user_id": "jwnM72y0"}], "ticket_id": "y9CXbnLn"}, {"first_ticket_created_at": 56, "party_attributes": {"Yt4uW9Hl": {}, "7b7yeoQj": {}, "m24Ay1zd": {}}, "party_id": "aoB4H7Vz", "party_members": [{"extra_attributes": {"qFPbiyG0": {}, "0jppxo9A": {}, "5klntYZg": {}}, "user_id": "4Y9QGEZe"}, {"extra_attributes": {"WecbGLfu": {}, "VcepBbgR": {}, "oxXtOI4W": {}}, "user_id": "pKl6SZcd"}, {"extra_attributes": {"MYio318c": {}, "mFJwdHl6": {}, "PtXYhPLs": {}}, "user_id": "qBz7WN9L"}], "ticket_id": "ydbYgyRd"}]}], "namespace": "RRZiVRfu", "party_attributes": {"cZsFRtSk": {}, "dL6jV5fG": {}, "7OSfaZe1": {}}, "party_id": "22oEY593", "queued_at": 86, "region": "hfHnuaEe", "server_name": "0VWs2Eyy", "status": "565ClzKB", "ticket_id": "oSBqwc4R", "updated_at": "1992-11-09T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "qdQPztEA"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'r4L0JpwG' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 49, "userID": "Dd05mN33", "weight": 0.8012757933322721}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'C1uP3E1Q' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "2o2STu1G", "description": "ncwN3aeB", "findMatchTimeoutSeconds": 63, "joinable": true, "max_delay_ms": 4, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 83, "min": 85, "name": "CiTMIn9V"}, {"max": 87, "min": 24, "name": "eGEjZvto"}, {"max": 35, "min": 77, "name": "5Gvs36qf"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 84}, "maxNumber": 3, "minNumber": 81, "playerMaxNumber": 100, "playerMinNumber": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 48, "min": 32, "name": "4SfUQPUa"}, {"max": 65, "min": 27, "name": "vBXXFKEt"}, {"max": 88, "min": 15, "name": "1Au2u6uN"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 0}, "duration": 81, "max_number": 56, "min_number": 9, "player_max_number": 46, "player_min_number": 26}, {"combination": {"alliances": [{"max": 30, "min": 43, "name": "iUkAmgvt"}, {"max": 89, "min": 10, "name": "ruCRcIc2"}, {"max": 14, "min": 33, "name": "ihSEf8Rn"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 15}, "duration": 92, "max_number": 46, "min_number": 3, "player_max_number": 91, "player_min_number": 65}, {"combination": {"alliances": [{"max": 10, "min": 17, "name": "g2kp6G34"}, {"max": 35, "min": 29, "name": "vGdM174P"}, {"max": 71, "min": 53, "name": "JeLl7wtF"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 92}, "duration": 75, "max_number": 88, "min_number": 11, "player_max_number": 63, "player_min_number": 15}], "flexingRules": [{"attribute": "4n3M67uq", "criteria": "cemdNkI0", "duration": 72, "reference": 0.6463768227161907}, {"attribute": "czfKXep4", "criteria": "xyScxjjf", "duration": 48, "reference": 0.8257514174025502}, {"attribute": "S3ERkka2", "criteria": "bDPcr9B7", "duration": 41, "reference": 0.5915361939849431}], "match_options": {"options": [{"name": "c7jQ532z", "type": "0Utxf8WU"}, {"name": "T26iAryB", "type": "ww2HN24V"}, {"name": "uO3s7Nht", "type": "DphHByDL"}]}, "matchingRules": [{"attribute": "LcvrEu9v", "criteria": "KperxOBI", "reference": 0.394544980853905}, {"attribute": "hExhatr8", "criteria": "TrjEJD46", "reference": 0.2559923850633544}, {"attribute": "Vm9rH4yp", "criteria": "NcEFihFW", "reference": 0.05842866698045768}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 74, "socialMatchmaking": true, "use_sub_gamemode": false}' 'CtLx9C22' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel '4kL3uJ0F' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'ALBFW48O' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["AkyJVic5", "Jd4xc1Yw", "5SqOlzcw"], "party_id": "fdQCL43m", "user_id": "D5T4FCl6"}' 'j5MpoDya' 'EK9zuJA8' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'EzdgPAEw' 'fUvhtYX0' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'mXNRwtz9' 'enQepMLL' 'eMm1rMp7' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel '8tebnj0t' --login_with_auth "Bearer foo"
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
    '{"deployment": "GjVmly0f", "description": "HxOoDZ54", "find_match_timeout_seconds": 82, "game_mode": "6zv7BgFF", "joinable": true, "max_delay_ms": 8, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 56, "min": 4, "name": "GIkWaKWM"}, {"max": 95, "min": 30, "name": "oD0AqVzI"}, {"max": 81, "min": 71, "name": "5gMbioJB"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 96}, "max_number": 97, "min_number": 20, "player_max_number": 60, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 77, "min": 22, "name": "rzv7aHLM"}, {"max": 27, "min": 15, "name": "85rEetPY"}, {"max": 23, "min": 77, "name": "1yeuU9nj"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 14}, "duration": 58, "max_number": 74, "min_number": 7, "player_max_number": 9, "player_min_number": 55}, {"combination": {"alliances": [{"max": 67, "min": 55, "name": "TJ7OMb6w"}, {"max": 17, "min": 52, "name": "T6rf9Zs0"}, {"max": 9, "min": 92, "name": "yrYEasbA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 85}, "duration": 31, "max_number": 17, "min_number": 87, "player_max_number": 69, "player_min_number": 0}, {"combination": {"alliances": [{"max": 30, "min": 54, "name": "vMdUhCi2"}, {"max": 25, "min": 0, "name": "ezRV77UL"}, {"max": 40, "min": 27, "name": "qFpo59qf"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 34}, "duration": 11, "max_number": 54, "min_number": 20, "player_max_number": 16, "player_min_number": 3}], "flexing_rule": [{"attribute": "hHf3Zyh7", "criteria": "7nUBE5CM", "duration": 7, "reference": 0.5512930452960926}, {"attribute": "hAhMlnEc", "criteria": "wHnR11f1", "duration": 69, "reference": 0.9382288755666647}, {"attribute": "IjDvh5Am", "criteria": "XHUUbCf7", "duration": 24, "reference": 0.5131891501252648}], "match_options": {"options": [{"name": "8yQmsqgE", "type": "y4ds0ddv"}, {"name": "KEpdDo8L", "type": "piNEv9AC"}, {"name": "oL3ws9ZL", "type": "lMdYtC59"}]}, "matching_rule": [{"attribute": "NIyzfXMg", "criteria": "nizyzLeG", "reference": 0.8733648662978625}, {"attribute": "iuPEfhwb", "criteria": "i71vlU8e", "reference": 0.7962962882753702}, {"attribute": "cl5DXp6O", "criteria": "uSEzfSTe", "reference": 0.3613359451875099}], "rebalance_enable": true, "sub_game_modes": {"E9h3UiGH": {"alliance": {"combination": {"alliances": [{"max": 10, "min": 79, "name": "78trbDip"}, {"max": 94, "min": 64, "name": "ZhZNEM7j"}, {"max": 0, "min": 62, "name": "AO8hAyKV"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 88}, "max_number": 92, "min_number": 17, "player_max_number": 88, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 39, "min": 7, "name": "ief4JGQg"}, {"max": 86, "min": 88, "name": "8HfSp3sT"}, {"max": 56, "min": 89, "name": "SSaa8wkX"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 15}, "duration": 46, "max_number": 73, "min_number": 53, "player_max_number": 90, "player_min_number": 76}, {"combination": {"alliances": [{"max": 80, "min": 93, "name": "4vrEY43r"}, {"max": 37, "min": 63, "name": "kvuYI7n4"}, {"max": 47, "min": 53, "name": "qtCEr2Q3"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 36}, "duration": 23, "max_number": 100, "min_number": 29, "player_max_number": 57, "player_min_number": 95}, {"combination": {"alliances": [{"max": 78, "min": 99, "name": "3gvFLWIj"}, {"max": 41, "min": 46, "name": "mF2VVO7N"}, {"max": 16, "min": 64, "name": "F0Ypmpqa"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 9, "role_flexing_second": 44}, "duration": 70, "max_number": 72, "min_number": 4, "player_max_number": 13, "player_min_number": 4}], "name": "cvhTOm7m"}, "rTDL7lU2": {"alliance": {"combination": {"alliances": [{"max": 26, "min": 83, "name": "TLLIBeqm"}, {"max": 64, "min": 71, "name": "Ep4gO22I"}, {"max": 68, "min": 9, "name": "MgVnYT2V"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 94}, "max_number": 90, "min_number": 22, "player_max_number": 97, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 8, "min": 52, "name": "WT21TcKf"}, {"max": 26, "min": 64, "name": "mWjPUyaZ"}, {"max": 50, "min": 68, "name": "P2dmOVKJ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 1}, "duration": 10, "max_number": 40, "min_number": 82, "player_max_number": 21, "player_min_number": 40}, {"combination": {"alliances": [{"max": 7, "min": 88, "name": "TZbrcLB5"}, {"max": 34, "min": 43, "name": "2Dt4S98d"}, {"max": 26, "min": 88, "name": "wjruzU8m"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 51}, "duration": 43, "max_number": 36, "min_number": 57, "player_max_number": 27, "player_min_number": 36}, {"combination": {"alliances": [{"max": 57, "min": 52, "name": "FZZMuRjp"}, {"max": 68, "min": 94, "name": "zJiwuRV1"}, {"max": 11, "min": 89, "name": "WjY3Mjvn"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 73}, "duration": 24, "max_number": 17, "min_number": 64, "player_max_number": 90, "player_min_number": 16}], "name": "iNZKECaK"}, "lkA8Hwva": {"alliance": {"combination": {"alliances": [{"max": 53, "min": 56, "name": "UXsbqATv"}, {"max": 0, "min": 52, "name": "qcLLnmAs"}, {"max": 39, "min": 55, "name": "kHpqyJyc"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 97}, "max_number": 73, "min_number": 28, "player_max_number": 41, "player_min_number": 32}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 16, "min": 96, "name": "QZtU3gFx"}, {"max": 43, "min": 5, "name": "yjj8HtAf"}, {"max": 22, "min": 72, "name": "vQBk3qKa"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 96}, "duration": 51, "max_number": 5, "min_number": 13, "player_max_number": 34, "player_min_number": 80}, {"combination": {"alliances": [{"max": 64, "min": 17, "name": "2V6AFAmO"}, {"max": 80, "min": 84, "name": "etyF4J7N"}, {"max": 51, "min": 43, "name": "APgUmMaI"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 34}, "duration": 20, "max_number": 14, "min_number": 95, "player_max_number": 70, "player_min_number": 68}, {"combination": {"alliances": [{"max": 73, "min": 0, "name": "RYiGUayU"}, {"max": 82, "min": 31, "name": "xCQ9xrK6"}, {"max": 80, "min": 98, "name": "bFIY0vXk"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 77}, "duration": 100, "max_number": 24, "min_number": 54, "player_max_number": 52, "player_min_number": 6}], "name": "L0KCe2Tl"}}}, "session_queue_timeout_seconds": 72, "social_matchmaking": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'y7E0mNDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "bk47sqKg", "players": [{"results": [{"attribute": "PfqDzV4g", "value": 0.0905881891547402}, {"attribute": "QhCWr5o0", "value": 0.4690244568944867}, {"attribute": "oxZqtgEU", "value": 0.9629284658891587}], "user_id": "zPLW64j7"}, {"results": [{"attribute": "wXVoeSan", "value": 0.19022045925289988}, {"attribute": "uNEsPf4T", "value": 0.15984519430759103}, {"attribute": "NRw7JjAZ", "value": 0.4078151302973422}], "user_id": "Pd8X2yjx"}, {"results": [{"attribute": "oxlN9iLN", "value": 0.7941639032398798}, {"attribute": "S1CWL0Xq", "value": 0.03698526499349741}, {"attribute": "XuhEVncT", "value": 0.7083915577362148}], "user_id": "QJXQx49d"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "u3nOfYgS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "LHsmEl33", "client_version": "gSf5KZoF", "deployment": "8JTLZEDZ", "error_code": 95, "error_message": "AGHpOC2l", "game_mode": "XW1cHrmO", "joinable": true, "match_id": "nDHMExgB", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 0, "party_attributes": {"8LP2IQM9": {}, "ki9RvTOO": {}, "OfeNfKvB": {}}, "party_id": "3FyL2Fuw", "party_members": [{"extra_attributes": {"JYqo2zny": {}, "UMVmJ1Xg": {}, "TnMZByWH": {}}, "user_id": "juk17kNK"}, {"extra_attributes": {"ElFWAWMV": {}, "6UIoIC6S": {}, "5aluIMCU": {}}, "user_id": "QGZTuGdY"}, {"extra_attributes": {"bkxl0sng": {}, "0zd8vu4Q": {}, "4wjuasll": {}}, "user_id": "8iiVKorT"}], "ticket_id": "6umKDf1C"}, {"first_ticket_created_at": 64, "party_attributes": {"uqsiPgaC": {}, "9jg2WDOL": {}, "kPCbUarc": {}}, "party_id": "ioQyQ2OX", "party_members": [{"extra_attributes": {"UysF3emt": {}, "abKYbGMF": {}, "6eMc8rv3": {}}, "user_id": "GF8WRQEH"}, {"extra_attributes": {"QcZR2weW": {}, "nZC5XKSO": {}, "x3nvlIh3": {}}, "user_id": "ho7qip6L"}, {"extra_attributes": {"7LB5tpzw": {}, "pKwwWmMY": {}, "jVc2sf5Y": {}}, "user_id": "TnO6SBip"}], "ticket_id": "PJY2yu7O"}, {"first_ticket_created_at": 1, "party_attributes": {"3UfR6vvl": {}, "onKJ92qb": {}, "7PBKimcm": {}}, "party_id": "BTIXPnFL", "party_members": [{"extra_attributes": {"zuqGhplA": {}, "r15DmHn9": {}, "Wyv3qD7v": {}}, "user_id": "sTHl8geF"}, {"extra_attributes": {"ZnVkjHYG": {}, "RJnFyPsw": {}, "i3EHj3AG": {}}, "user_id": "ivuq86vg"}, {"extra_attributes": {"cQYXA8dn": {}, "ZlpdMeuC": {}, "Dx0hy0EY": {}}, "user_id": "clAq2UHf"}], "ticket_id": "VcmFEdp6"}]}, {"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"OCSPgtoi": {}, "mmseh7Qd": {}, "hADjYKiA": {}}, "party_id": "DynlExKm", "party_members": [{"extra_attributes": {"SDVJPpTS": {}, "f3iPh2PO": {}, "7f2XZCUF": {}}, "user_id": "zHEINVvd"}, {"extra_attributes": {"ddKUucHW": {}, "FykMJk8u": {}, "tyF66XlS": {}}, "user_id": "EczIhnTy"}, {"extra_attributes": {"USnPpjUM": {}, "86Vh93GJ": {}, "Oqq2ABeV": {}}, "user_id": "Q0ahVHKR"}], "ticket_id": "AJmlD5Dn"}, {"first_ticket_created_at": 7, "party_attributes": {"i33wUJcl": {}, "pjOoBfit": {}, "VKv0rlN8": {}}, "party_id": "UquctVS8", "party_members": [{"extra_attributes": {"pmYYQSxQ": {}, "J9e8r7SD": {}, "15ecrf7Y": {}}, "user_id": "Xfi0j03S"}, {"extra_attributes": {"8BPENqox": {}, "eCNtjEp9": {}, "tWXFx0N5": {}}, "user_id": "CSitbOfp"}, {"extra_attributes": {"m1mqGXPX": {}, "eX13mFuN": {}, "mtf9Ta1f": {}}, "user_id": "dV9MoOTP"}], "ticket_id": "tK0HMUPF"}, {"first_ticket_created_at": 38, "party_attributes": {"XiNg0OQs": {}, "UTBVGd8f": {}, "clS5T64N": {}}, "party_id": "njKSC6pG", "party_members": [{"extra_attributes": {"9x0Rpr9X": {}, "i5DLmIp4": {}, "Ip4i8tdO": {}}, "user_id": "dgU8WJVb"}, {"extra_attributes": {"okdx73XK": {}, "4sFCfBrq": {}, "RzSXELtx": {}}, "user_id": "jN91Uu16"}, {"extra_attributes": {"4nBM0R50": {}, "Eirz4SPD": {}, "BKr4px1Z": {}}, "user_id": "AAR2gNKl"}], "ticket_id": "j1XGR2L5"}]}, {"matching_parties": [{"first_ticket_created_at": 83, "party_attributes": {"grfBQiLn": {}, "swRqMf98": {}, "mcbww9BH": {}}, "party_id": "jX73hNEZ", "party_members": [{"extra_attributes": {"WCK4ssWm": {}, "BcFnadVb": {}, "J2HSZaRo": {}}, "user_id": "l2ZZSned"}, {"extra_attributes": {"WRC4zbEn": {}, "4gES0Bo3": {}, "OKshQ8AE": {}}, "user_id": "3Jx6q59w"}, {"extra_attributes": {"CMxFdRhe": {}, "MQKLDE6L": {}, "13BFBVgi": {}}, "user_id": "lyRNnuX2"}], "ticket_id": "OTjDoNwJ"}, {"first_ticket_created_at": 61, "party_attributes": {"wDbVAdlD": {}, "8y0aaqlG": {}, "H57NCNex": {}}, "party_id": "s62YVrJU", "party_members": [{"extra_attributes": {"sRWT5Maa": {}, "d3L49GBH": {}, "xSAUlBq1": {}}, "user_id": "SG9WokVc"}, {"extra_attributes": {"LL8bk4ib": {}, "uefRMO7B": {}, "BQh8goml": {}}, "user_id": "4EAAoZrD"}, {"extra_attributes": {"3Q8o6SVl": {}, "qCB8YeqE": {}, "UzkeSM6A": {}}, "user_id": "Y36QWBVH"}], "ticket_id": "oY7QkQqO"}, {"first_ticket_created_at": 96, "party_attributes": {"A19yn4pZ": {}, "1nw6lkKf": {}, "WgPJI603": {}}, "party_id": "5omXcHtC", "party_members": [{"extra_attributes": {"gfDSezjC": {}, "DcV8kS3G": {}, "7HrTXyZl": {}}, "user_id": "IVapOsaz"}, {"extra_attributes": {"wnXAUOOK": {}, "KP6bMYLn": {}, "PhmPl6bq": {}}, "user_id": "6xPGHTka"}, {"extra_attributes": {"iCcealUO": {}, "4uTBX8L9": {}, "k2eQb82u": {}}, "user_id": "pfQCgQkh"}], "ticket_id": "Bp44KRir"}]}], "namespace": "pkAB8xWZ", "party_attributes": {"ZALhywFO": {}, "9G5SgOtj": {}, "3AHhbgDB": {}}, "party_id": "ApQqQxsF", "queued_at": 2, "region": "wTic7Ipz", "server_name": "zZ7msD38", "status": "UOufXMTm", "ticket_id": "HgWKfyhW", "updated_at": "1973-05-16T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "jL3qo4nP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'SpCaT7XQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 27, "userID": "myCMIA3b", "weight": 0.7013645730365379}' \
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
    'crvW1Rzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "fLYhT8C3", "description": "V2u2mUvS", "findMatchTimeoutSeconds": 42, "joinable": true, "max_delay_ms": 82, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 17, "min": 47, "name": "VgNC1Z5n"}, {"max": 88, "min": 13, "name": "oUOGtP0U"}, {"max": 54, "min": 72, "name": "WId9XNyT"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 100}, "maxNumber": 9, "minNumber": 23, "playerMaxNumber": 97, "playerMinNumber": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 40, "min": 97, "name": "gvwvEU4d"}, {"max": 54, "min": 65, "name": "OXYqh0pC"}, {"max": 47, "min": 80, "name": "pm5HISUh"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 47}, "duration": 83, "max_number": 71, "min_number": 21, "player_max_number": 97, "player_min_number": 64}, {"combination": {"alliances": [{"max": 37, "min": 66, "name": "etJerJao"}, {"max": 83, "min": 48, "name": "f46m3O37"}, {"max": 84, "min": 73, "name": "dTJNXtyp"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 59}, "duration": 25, "max_number": 78, "min_number": 49, "player_max_number": 98, "player_min_number": 78}, {"combination": {"alliances": [{"max": 93, "min": 82, "name": "TZ6It61k"}, {"max": 39, "min": 8, "name": "g2q9Azet"}, {"max": 6, "min": 24, "name": "U4kxp0dz"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 49}, "duration": 42, "max_number": 44, "min_number": 36, "player_max_number": 62, "player_min_number": 99}], "flexingRules": [{"attribute": "BspQrEsn", "criteria": "Jdq6pwlp", "duration": 37, "reference": 0.6023288568761709}, {"attribute": "BEulcCDp", "criteria": "LqUySFs9", "duration": 12, "reference": 0.32516182770226787}, {"attribute": "nRkoMq05", "criteria": "LvfykfGY", "duration": 48, "reference": 0.8875888811799685}], "match_options": {"options": [{"name": "VMW02Vyb", "type": "8QTahfU2"}, {"name": "BhYKRgRM", "type": "clzTl8Yr"}, {"name": "aJTjYRup", "type": "R5m2xXfo"}]}, "matchingRules": [{"attribute": "blOaCv3Q", "criteria": "UJiDbcM1", "reference": 0.8049865286714378}, {"attribute": "JkVjNTo6", "criteria": "Cu3WujOx", "reference": 0.7626778490922623}, {"attribute": "Uxz7E7ge", "criteria": "4MScm1CR", "reference": 0.6530599245739152}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 5, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'BUcfOFu7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'UqtqVRdm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'cEK2ajnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["w8P3aUg5", "Ru2GFgFM", "c7BAOPZx"], "party_id": "su2Fcl69", "user_id": "rN6QADHH"}' \
    'KWc4NQxy' \
    'GMvM6KUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'DntuEpu7' \
    'FjFICZsh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'szCq5I9g' \
    'liWPJ4zb' \
    'U7BVNPfg' \
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
    't8k0vkf6' \
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
