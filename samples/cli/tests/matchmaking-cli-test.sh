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
matchmaking-create-channel-handler '{"deployment": "xiDz6QZS", "description": "tOssJaR4", "find_match_timeout_seconds": 40, "game_mode": "zUqNpuqg", "joinable": true, "max_delay_ms": 80, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 8, "min": 19, "name": "5FBiXhYm"}, {"max": 50, "min": 31, "name": "2UAjl3Kb"}, {"max": 30, "min": 95, "name": "15iUYSfa"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 43}, "max_number": 92, "min_number": 88, "player_max_number": 41, "player_min_number": 2}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 40, "min": 61, "name": "2S10OJ2T"}, {"max": 67, "min": 38, "name": "eYo3YMCI"}, {"max": 21, "min": 17, "name": "p1CXIIaH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 98}, "duration": 99, "max_number": 100, "min_number": 56, "player_max_number": 7, "player_min_number": 86}, {"combination": {"alliances": [{"max": 95, "min": 32, "name": "y0FTQ7hX"}, {"max": 93, "min": 3, "name": "tO6fkCxP"}, {"max": 45, "min": 34, "name": "UWCim5vR"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 62}, "duration": 84, "max_number": 1, "min_number": 78, "player_max_number": 47, "player_min_number": 87}, {"combination": {"alliances": [{"max": 82, "min": 21, "name": "kROOrtq7"}, {"max": 55, "min": 70, "name": "7pmTQb8P"}, {"max": 92, "min": 28, "name": "YGQmzId0"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 57, "role_flexing_second": 40}, "duration": 24, "max_number": 45, "min_number": 20, "player_max_number": 37, "player_min_number": 58}], "flexing_rule": [{"attribute": "yzfEB2iG", "criteria": "f5rFQHPj", "duration": 59, "reference": 0.707576947432314}, {"attribute": "UFe9cmI5", "criteria": "PcverJSv", "duration": 60, "reference": 0.920658396623815}, {"attribute": "3PaZQhDh", "criteria": "hlY37Bg3", "duration": 24, "reference": 0.33129504953044797}], "match_options": {"options": [{"name": "0AGmZmPD", "type": "FdrUFqGV"}, {"name": "DUhQT5V9", "type": "37Pxnedr"}, {"name": "uExQftcZ", "type": "9QAVeSDn"}]}, "matching_rule": [{"attribute": "g9wRziN9", "criteria": "KGmF5DGa", "reference": 0.017666969623613027}, {"attribute": "osNaROcy", "criteria": "xTgvgfjG", "reference": 0.6707707875708038}, {"attribute": "b2Huw3ZL", "criteria": "vtyOrZMj", "reference": 0.9985827823739261}], "rebalance_enable": false, "sub_game_modes": {"PVq6FliP": {"alliance": {"combination": {"alliances": [{"max": 33, "min": 14, "name": "Xohs3KAh"}, {"max": 31, "min": 28, "name": "slarOYov"}, {"max": 31, "min": 44, "name": "yFWSnOgD"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 48}, "max_number": 19, "min_number": 69, "player_max_number": 81, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 26, "min": 33, "name": "tBFOa6U4"}, {"max": 98, "min": 74, "name": "YdqzRY0T"}, {"max": 30, "min": 73, "name": "cKAIX7Wn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 48}, "duration": 74, "max_number": 10, "min_number": 77, "player_max_number": 84, "player_min_number": 21}, {"combination": {"alliances": [{"max": 75, "min": 19, "name": "v5qaBBJ2"}, {"max": 49, "min": 5, "name": "4bwZWdTx"}, {"max": 37, "min": 96, "name": "6apeXiZ2"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 73}, "duration": 4, "max_number": 97, "min_number": 66, "player_max_number": 83, "player_min_number": 31}, {"combination": {"alliances": [{"max": 59, "min": 77, "name": "49NcxAIH"}, {"max": 89, "min": 5, "name": "451jRklz"}, {"max": 94, "min": 66, "name": "BXbF8Qkp"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 12}, "duration": 59, "max_number": 46, "min_number": 94, "player_max_number": 50, "player_min_number": 27}], "name": "l0KvMgbu"}, "FgguBIMI": {"alliance": {"combination": {"alliances": [{"max": 40, "min": 29, "name": "tTlou5QN"}, {"max": 20, "min": 46, "name": "oTiQGTsU"}, {"max": 3, "min": 7, "name": "88k0EEJ7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 57}, "max_number": 10, "min_number": 60, "player_max_number": 33, "player_min_number": 71}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 38, "min": 10, "name": "bDO3LFxx"}, {"max": 73, "min": 60, "name": "hCrT4wYX"}, {"max": 36, "min": 86, "name": "U38yLKfS"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 99}, "duration": 35, "max_number": 44, "min_number": 20, "player_max_number": 2, "player_min_number": 57}, {"combination": {"alliances": [{"max": 68, "min": 12, "name": "lzUVJM5F"}, {"max": 38, "min": 53, "name": "maiIyeBA"}, {"max": 54, "min": 54, "name": "KQTFBsaf"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 15}, "duration": 50, "max_number": 62, "min_number": 78, "player_max_number": 59, "player_min_number": 56}, {"combination": {"alliances": [{"max": 86, "min": 75, "name": "lGBVj2OS"}, {"max": 57, "min": 89, "name": "ZuXDeUI2"}, {"max": 10, "min": 42, "name": "7RzpTZCZ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 13}, "duration": 30, "max_number": 38, "min_number": 44, "player_max_number": 13, "player_min_number": 54}], "name": "LlVwkMk6"}, "jgUtNZdJ": {"alliance": {"combination": {"alliances": [{"max": 53, "min": 15, "name": "fTWtNT7c"}, {"max": 20, "min": 61, "name": "rxG3EZUC"}, {"max": 9, "min": 25, "name": "oEBJviRZ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 92}, "max_number": 7, "min_number": 9, "player_max_number": 43, "player_min_number": 36}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 31, "name": "66WT9PGe"}, {"max": 23, "min": 80, "name": "4ZyJxsou"}, {"max": 70, "min": 92, "name": "oqvQgG8Y"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 49}, "duration": 88, "max_number": 75, "min_number": 83, "player_max_number": 20, "player_min_number": 96}, {"combination": {"alliances": [{"max": 73, "min": 98, "name": "v1wLXrj4"}, {"max": 62, "min": 25, "name": "JK8cldVu"}, {"max": 79, "min": 63, "name": "lN9XREJI"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 31}, "duration": 11, "max_number": 20, "min_number": 11, "player_max_number": 76, "player_min_number": 32}, {"combination": {"alliances": [{"max": 56, "min": 64, "name": "NgvedZOQ"}, {"max": 21, "min": 85, "name": "33ZPW8f6"}, {"max": 90, "min": 92, "name": "JNU6biBp"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 29}, "duration": 48, "max_number": 81, "min_number": 91, "player_max_number": 100, "player_min_number": 46}], "name": "bUp0LDmA"}}}, "session_queue_timeout_seconds": 49, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler '5bIrlMOF' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "oJ3aOJv9", "players": [{"results": [{"attribute": "GZxxbKri", "value": 0.43187944010412027}, {"attribute": "DCubjdZr", "value": 0.07095273832704607}, {"attribute": "5phTNWEB", "value": 0.42883484401264205}], "user_id": "ievvLrhH"}, {"results": [{"attribute": "hFeFNptj", "value": 0.32952864894522915}, {"attribute": "dMEkNSxI", "value": 0.24978348725292499}, {"attribute": "UnPp4Cfw", "value": 0.7262271954616099}], "user_id": "w1mHtFj5"}, {"results": [{"attribute": "qBA82gSu", "value": 0.5988416173861774}, {"attribute": "70AeiyfJ", "value": 0.03753772968167479}, {"attribute": "baJTdXO8", "value": 0.7168516340639367}], "user_id": "kLVbYRSO"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "SuKJP4OU"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "nh1OKWXX", "client_version": "NozVjWtA", "deployment": "YGRH8D02", "error_code": 1, "error_message": "v0BgL3QC", "game_mode": "5Wt1YgW7", "joinable": false, "match_id": "AFX85oRr", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"8rxaBEDe": {}, "Vu1Vk4RW": {}, "KOaghTqw": {}}, "party_id": "Ln6pTpjO", "party_members": [{"extra_attributes": {"lsHScYrW": {}, "5qAwCdYQ": {}, "IDNUfzYf": {}}, "user_id": "24SkJrbF"}, {"extra_attributes": {"6luAXyqo": {}, "zRoa6UlA": {}, "VeTxcgBd": {}}, "user_id": "5Eok4IcU"}, {"extra_attributes": {"EtvbTx9g": {}, "H771obvd": {}, "2KjrkAhI": {}}, "user_id": "PtrJIGom"}], "ticket_id": "iHa0sexH"}, {"first_ticket_created_at": 5, "party_attributes": {"bvckBX8S": {}, "GD5tCBAB": {}, "1I8ELQSA": {}}, "party_id": "PSzrzJty", "party_members": [{"extra_attributes": {"kM2HBDP2": {}, "NCzMKnTS": {}, "3OdRdoeV": {}}, "user_id": "uI4QNLNC"}, {"extra_attributes": {"g7wPIPBE": {}, "vlkCcQXs": {}, "VvjS0OXW": {}}, "user_id": "sljHBh7E"}, {"extra_attributes": {"fmha9ufU": {}, "EwVP3XEf": {}, "1RmIlI2t": {}}, "user_id": "A4v09Lqd"}], "ticket_id": "9Ww0T85R"}, {"first_ticket_created_at": 26, "party_attributes": {"sw7bOy2F": {}, "oglG6Zyt": {}, "FjVi087C": {}}, "party_id": "8iu8uaLK", "party_members": [{"extra_attributes": {"chJWPoOk": {}, "vj5OtAp2": {}, "VkWhYFmK": {}}, "user_id": "YgFOffyl"}, {"extra_attributes": {"BoMwHvvU": {}, "71rWGwIO": {}, "wRtXANfs": {}}, "user_id": "dWVDfZsR"}, {"extra_attributes": {"ctWaaYU5": {}, "RGhcHXY2": {}, "e2K3ZFPk": {}}, "user_id": "07WwI8T1"}], "ticket_id": "7DUa4LMX"}]}, {"matching_parties": [{"first_ticket_created_at": 97, "party_attributes": {"hOPvGa3t": {}, "jZxaIW1A": {}, "vWeHTQFg": {}}, "party_id": "GeKbm1bn", "party_members": [{"extra_attributes": {"kRPDZDDN": {}, "Biq1fHvf": {}, "9oGs0zpm": {}}, "user_id": "Dpn0wCuy"}, {"extra_attributes": {"isi9Ju0T": {}, "keqfylUg": {}, "wVfVjCrN": {}}, "user_id": "CjqLkCVi"}, {"extra_attributes": {"URSddRX2": {}, "A28So0wr": {}, "FyfcCdKe": {}}, "user_id": "Nfl0Sj1c"}], "ticket_id": "AqmKS4Hy"}, {"first_ticket_created_at": 19, "party_attributes": {"Bn494CqM": {}, "IMEFI6Jh": {}, "VSuGaV2s": {}}, "party_id": "qsipCEgE", "party_members": [{"extra_attributes": {"unKKSso4": {}, "GfDTDf3A": {}, "2svfaFIy": {}}, "user_id": "NVtORaba"}, {"extra_attributes": {"prDw0ySw": {}, "FcT1VYwN": {}, "9I8vdiOF": {}}, "user_id": "3ltX26Wi"}, {"extra_attributes": {"UXPTt39e": {}, "FDxHP0zD": {}, "ujXuUBby": {}}, "user_id": "rKnWJ1eh"}], "ticket_id": "04jM6Ztu"}, {"first_ticket_created_at": 76, "party_attributes": {"o5r6QxsS": {}, "8Kn33kpX": {}, "ipietC3Z": {}}, "party_id": "wapPmy0t", "party_members": [{"extra_attributes": {"Pu17870W": {}, "QCnpIfC4": {}, "THz3jxff": {}}, "user_id": "Vx04VzjI"}, {"extra_attributes": {"YKBGVrSu": {}, "5Hmah9Il": {}, "hO8Wzoi9": {}}, "user_id": "hqjfPWAd"}, {"extra_attributes": {"bBYkA2Tn": {}, "vwGtQ3HW": {}, "7rczIVXT": {}}, "user_id": "QFEzNpND"}], "ticket_id": "rdhra7ct"}]}, {"matching_parties": [{"first_ticket_created_at": 98, "party_attributes": {"th1LGJmZ": {}, "Geea2rdm": {}, "gNIGuS7X": {}}, "party_id": "lssCUp6x", "party_members": [{"extra_attributes": {"Iv55Zjq1": {}, "6zbGPZT6": {}, "rRm5lsJP": {}}, "user_id": "AvgtFtG9"}, {"extra_attributes": {"NkjUDXRZ": {}, "bUNpwUpP": {}, "nUE2G4w2": {}}, "user_id": "EK3FednL"}, {"extra_attributes": {"JnEtMRAF": {}, "k3IMwdkZ": {}, "9EvQdpgj": {}}, "user_id": "msu0TXZf"}], "ticket_id": "Q4fdfF1f"}, {"first_ticket_created_at": 42, "party_attributes": {"jCru3MDh": {}, "iGNsSDfw": {}, "qYeYXfGz": {}}, "party_id": "Em7VWxyy", "party_members": [{"extra_attributes": {"8iN0lQRo": {}, "qsokPL8G": {}, "nVIqJKxr": {}}, "user_id": "kU0raa7a"}, {"extra_attributes": {"D7Ltad7v": {}, "4IgRe6Ea": {}, "4M2SdIkh": {}}, "user_id": "t91k55Nq"}, {"extra_attributes": {"tVnYIzFh": {}, "tlmW22Do": {}, "x3PNqxSf": {}}, "user_id": "QYCcTk0x"}], "ticket_id": "CuudaTuW"}, {"first_ticket_created_at": 36, "party_attributes": {"oGT2b7Z8": {}, "47sd5G5T": {}, "Dg5sbn4I": {}}, "party_id": "jB5MBNsv", "party_members": [{"extra_attributes": {"YTgIQwdY": {}, "qJSFN9r6": {}, "4YZg82Dx": {}}, "user_id": "aTAnkj0Y"}, {"extra_attributes": {"Be15TF2I": {}, "bW2bvNTn": {}, "JVkJ5p7P": {}}, "user_id": "tlm96nyg"}, {"extra_attributes": {"aUYFrsRx": {}, "iHoSLRLc": {}, "SjwPZ8DN": {}}, "user_id": "sDeXRCTC"}], "ticket_id": "qqXzrFIZ"}]}], "namespace": "lYfpvtyV", "party_attributes": {"5ReJC21c": {}, "aWf6Cwma": {}, "wFdlj8oS": {}}, "party_id": "eo1OnH7M", "queued_at": 31, "region": "FIl4GaKQ", "server_name": "tikEmyhv", "status": "5m0n5I33", "ticket_id": "kfuNajVy", "updated_at": "1974-10-24T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "C8qduXwf"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler '0TkJRXKp' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 41, "userID": "qyEsTqky", "weight": 0.1406336529669947}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel '4F1YViEM' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "ySjFTjE2", "description": "vUT0yfPl", "findMatchTimeoutSeconds": 84, "joinable": false, "max_delay_ms": 34, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 1, "min": 93, "name": "Jr4S3mrl"}, {"max": 28, "min": 37, "name": "HmRZvW4c"}, {"max": 39, "min": 76, "name": "hP5z2jyj"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 37}, "maxNumber": 56, "minNumber": 59, "playerMaxNumber": 0, "playerMinNumber": 13}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 75, "name": "3cG421IG"}, {"max": 86, "min": 5, "name": "xbEbOseN"}, {"max": 23, "min": 69, "name": "bKvJxH5E"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 89}, "duration": 70, "max_number": 14, "min_number": 87, "player_max_number": 63, "player_min_number": 88}, {"combination": {"alliances": [{"max": 4, "min": 37, "name": "Nu21eXkH"}, {"max": 18, "min": 76, "name": "HTTcBkYo"}, {"max": 33, "min": 58, "name": "sqdN5KvG"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 65}, "duration": 36, "max_number": 87, "min_number": 84, "player_max_number": 80, "player_min_number": 37}, {"combination": {"alliances": [{"max": 9, "min": 37, "name": "6f63NRV0"}, {"max": 70, "min": 34, "name": "pvTGOZi0"}, {"max": 4, "min": 29, "name": "CMy7cErY"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 25}, "duration": 68, "max_number": 44, "min_number": 75, "player_max_number": 75, "player_min_number": 43}], "flexingRules": [{"attribute": "RQ8s5abe", "criteria": "Y2nrFDoa", "duration": 91, "reference": 0.7568762748115262}, {"attribute": "cOWe9sWu", "criteria": "Qvny0HKB", "duration": 83, "reference": 0.33321396996240893}, {"attribute": "5Z3EqT9I", "criteria": "2xcFHWg9", "duration": 24, "reference": 0.03478714687915707}], "match_options": {"options": [{"name": "aTFdsls5", "type": "84qJnbyi"}, {"name": "L3AhQGir", "type": "vHqKD1Pz"}, {"name": "Szml5oxJ", "type": "69hpqTZG"}]}, "matchingRules": [{"attribute": "c3LBXgQl", "criteria": "FPjYeG7u", "reference": 0.08315718602975164}, {"attribute": "cnpqg3gl", "criteria": "tVhNKb3v", "reference": 0.28502262720346605}, {"attribute": "TZlqFnVX", "criteria": "wCciVTJN", "reference": 0.5878179579234358}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 53, "socialMatchmaking": true, "use_sub_gamemode": true}' 'MmRyCDZu' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'AjvkeT8V' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'hqBnhJio' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["j79nb4QU", "PlHx3Zrz", "zEbyzzqH"], "party_id": "rKzJaUJX", "user_id": "b6kaoZOB"}' 'FAcSSYCf' 'FZCmt4g3' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'g0pr7Ge3' 'qptKvfxW' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'RPksMcUe' 'zq1kwb9P' 'KMqLKuez' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'gbOd4lm2' --login_with_auth "Bearer foo"
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
    '{"deployment": "CVO6jxx6", "description": "fUEwT21s", "find_match_timeout_seconds": 18, "game_mode": "daMJx4vy", "joinable": false, "max_delay_ms": 99, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 95, "min": 32, "name": "TGsV89fy"}, {"max": 62, "min": 66, "name": "kHLc7inO"}, {"max": 70, "min": 64, "name": "xy7TM5Li"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 60}, "max_number": 67, "min_number": 93, "player_max_number": 11, "player_min_number": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 78, "min": 39, "name": "IAjZ2tfD"}, {"max": 19, "min": 29, "name": "2DULVGJH"}, {"max": 97, "min": 30, "name": "v7lxAGwY"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 65}, "duration": 46, "max_number": 32, "min_number": 76, "player_max_number": 57, "player_min_number": 28}, {"combination": {"alliances": [{"max": 33, "min": 11, "name": "1Qp59G8Z"}, {"max": 80, "min": 54, "name": "tgdG2nLK"}, {"max": 33, "min": 29, "name": "p4uRMYOH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 85}, "duration": 36, "max_number": 55, "min_number": 83, "player_max_number": 65, "player_min_number": 72}, {"combination": {"alliances": [{"max": 46, "min": 41, "name": "UICuRw7P"}, {"max": 82, "min": 93, "name": "e7wP19rR"}, {"max": 26, "min": 30, "name": "q4rWSZgl"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 44}, "duration": 20, "max_number": 64, "min_number": 22, "player_max_number": 95, "player_min_number": 54}], "flexing_rule": [{"attribute": "ofmYastp", "criteria": "tfwXVCw8", "duration": 36, "reference": 0.9135157094341947}, {"attribute": "aZ1wQPVT", "criteria": "PwCpVLhQ", "duration": 78, "reference": 0.02147454911877067}, {"attribute": "GnmN3O8o", "criteria": "HJvqz8DJ", "duration": 44, "reference": 0.17559751505531218}], "match_options": {"options": [{"name": "Hbr5lYZA", "type": "jVhkJO2o"}, {"name": "SAzGZVRm", "type": "nPO7EJQN"}, {"name": "Lfkl8P0C", "type": "3SNZmxoD"}]}, "matching_rule": [{"attribute": "jjs0i7RP", "criteria": "1K3yjv6D", "reference": 0.2263588114576367}, {"attribute": "GK7h2e5c", "criteria": "3eWbQWW8", "reference": 0.7443979499254819}, {"attribute": "7ZiWcxtB", "criteria": "eSvKW4Hu", "reference": 0.3424843007590207}], "rebalance_enable": false, "sub_game_modes": {"che7Nwqv": {"alliance": {"combination": {"alliances": [{"max": 0, "min": 3, "name": "9J8eUXRm"}, {"max": 31, "min": 42, "name": "gcfHiA8p"}, {"max": 100, "min": 49, "name": "qnq087CX"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 24}, "max_number": 56, "min_number": 28, "player_max_number": 63, "player_min_number": 85}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 23, "min": 16, "name": "88sMWRL9"}, {"max": 92, "min": 91, "name": "pQAj68ky"}, {"max": 99, "min": 57, "name": "CrwLEACq"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 93}, "duration": 38, "max_number": 32, "min_number": 71, "player_max_number": 4, "player_min_number": 77}, {"combination": {"alliances": [{"max": 74, "min": 73, "name": "Lj4iNYMf"}, {"max": 43, "min": 28, "name": "TkyC7zf3"}, {"max": 14, "min": 8, "name": "F5XVxgvd"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 9}, "duration": 32, "max_number": 22, "min_number": 38, "player_max_number": 91, "player_min_number": 17}, {"combination": {"alliances": [{"max": 59, "min": 90, "name": "q5zQSt4K"}, {"max": 87, "min": 54, "name": "dnmQIyxX"}, {"max": 54, "min": 91, "name": "s5JgImWr"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 92}, "duration": 46, "max_number": 62, "min_number": 4, "player_max_number": 6, "player_min_number": 16}], "name": "TgEsSOuG"}, "VpcVMrK9": {"alliance": {"combination": {"alliances": [{"max": 99, "min": 40, "name": "jK7tM5PD"}, {"max": 7, "min": 2, "name": "x3ELZALj"}, {"max": 65, "min": 70, "name": "o70nReYu"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 69}, "max_number": 74, "min_number": 63, "player_max_number": 75, "player_min_number": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 57, "min": 50, "name": "R6hsAhM0"}, {"max": 42, "min": 10, "name": "ue7ttEWW"}, {"max": 32, "min": 21, "name": "qz1zVcDY"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 6}, "duration": 54, "max_number": 39, "min_number": 51, "player_max_number": 5, "player_min_number": 12}, {"combination": {"alliances": [{"max": 35, "min": 9, "name": "Or8Qetxx"}, {"max": 58, "min": 7, "name": "XLbnUH3B"}, {"max": 6, "min": 85, "name": "soqubQUo"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 26}, "duration": 47, "max_number": 7, "min_number": 71, "player_max_number": 88, "player_min_number": 86}, {"combination": {"alliances": [{"max": 18, "min": 2, "name": "WNDs5zmj"}, {"max": 15, "min": 63, "name": "XcKi159w"}, {"max": 65, "min": 7, "name": "ZzgETrRf"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 94}, "duration": 96, "max_number": 77, "min_number": 36, "player_max_number": 22, "player_min_number": 39}], "name": "TKKUveBd"}, "Dt1XwbQc": {"alliance": {"combination": {"alliances": [{"max": 54, "min": 98, "name": "Gk7HJXym"}, {"max": 14, "min": 19, "name": "Muj0XWwY"}, {"max": 28, "min": 40, "name": "goCbC5W0"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 91}, "max_number": 59, "min_number": 36, "player_max_number": 65, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 87, "min": 21, "name": "YWKt9AzS"}, {"max": 62, "min": 25, "name": "QgDrd1Po"}, {"max": 60, "min": 62, "name": "0vm2XhUX"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 26}, "duration": 5, "max_number": 86, "min_number": 59, "player_max_number": 0, "player_min_number": 77}, {"combination": {"alliances": [{"max": 7, "min": 51, "name": "u8S2H0f7"}, {"max": 34, "min": 67, "name": "ctUEqA1r"}, {"max": 56, "min": 30, "name": "2GHE9ur2"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 99}, "duration": 95, "max_number": 2, "min_number": 75, "player_max_number": 5, "player_min_number": 80}, {"combination": {"alliances": [{"max": 85, "min": 88, "name": "yWSlubfE"}, {"max": 11, "min": 85, "name": "9tUd8l5u"}, {"max": 40, "min": 16, "name": "dqbLkqSZ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 97}, "duration": 70, "max_number": 32, "min_number": 69, "player_max_number": 49, "player_min_number": 57}], "name": "W5em0z83"}}}, "session_queue_timeout_seconds": 83, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'S4l8MYgi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "iB01I4eg", "players": [{"results": [{"attribute": "BOQP1DOn", "value": 0.6234456090216363}, {"attribute": "dlS9QXEP", "value": 0.6906582658215459}, {"attribute": "E9PLMddS", "value": 0.16416911198068296}], "user_id": "hXgqSUTW"}, {"results": [{"attribute": "7A4XRA9v", "value": 0.8430697827909911}, {"attribute": "vForCUnZ", "value": 0.5696698677620696}, {"attribute": "OpGZrDws", "value": 0.39770092737692064}], "user_id": "xm4oQe9Y"}, {"results": [{"attribute": "J4x5XKRF", "value": 0.2783637420141043}, {"attribute": "RtoFpWDL", "value": 0.6708441645420676}, {"attribute": "IvVlGub9", "value": 0.664952563933045}], "user_id": "WcdPm7zi"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "jSVS2fN0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "JV1kAj0u", "client_version": "pTBQSI4s", "deployment": "Mw3txeoE", "error_code": 20, "error_message": "3Uopd4cm", "game_mode": "qxiP0cvR", "joinable": false, "match_id": "2NRdCGvZ", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 87, "party_attributes": {"K1wqxIJK": {}, "PBrfiFML": {}, "JL8vwQPB": {}}, "party_id": "bVqbRNln", "party_members": [{"extra_attributes": {"6xlOkwvF": {}, "Wrdk1NwQ": {}, "pFOjEVLE": {}}, "user_id": "1lZZLV92"}, {"extra_attributes": {"PrIYVShN": {}, "lFDmcycZ": {}, "syVfBuFK": {}}, "user_id": "OimCgpjp"}, {"extra_attributes": {"YaE6Omeh": {}, "0hPwyayA": {}, "QMXsTbca": {}}, "user_id": "R7ZyRI7o"}], "ticket_id": "a4YFI4UK"}, {"first_ticket_created_at": 28, "party_attributes": {"vcMcJL0y": {}, "vDB8Jy5F": {}, "GhmeQwOo": {}}, "party_id": "EgsWSSv3", "party_members": [{"extra_attributes": {"RkesVwSI": {}, "6AFY4UnR": {}, "ZAb2sGt9": {}}, "user_id": "RSOejMT7"}, {"extra_attributes": {"FHrZ1cQ0": {}, "T6NOKAKP": {}, "DobWWDfI": {}}, "user_id": "tGDk5zoz"}, {"extra_attributes": {"sMR5B8TY": {}, "8rGmpL7P": {}, "ePm0lbms": {}}, "user_id": "HgkDKyG1"}], "ticket_id": "XGjwl7bB"}, {"first_ticket_created_at": 37, "party_attributes": {"KTtW5N2i": {}, "83oK98AT": {}, "qmvy9oCX": {}}, "party_id": "DeQRW0qk", "party_members": [{"extra_attributes": {"wlQqtSdl": {}, "F8s1TGGc": {}, "VCdMAydR": {}}, "user_id": "iWJ47CAs"}, {"extra_attributes": {"CMzWj4zu": {}, "1wqXeKiK": {}, "Ixakmeku": {}}, "user_id": "ReIr5W0A"}, {"extra_attributes": {"wjMxydSo": {}, "dIfVkVi7": {}, "KCZe42Z8": {}}, "user_id": "n1phhYj6"}], "ticket_id": "JtzseWVX"}]}, {"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"709VSXd4": {}, "7uLrfLMR": {}, "EzdrDOpR": {}}, "party_id": "AsTiLHLF", "party_members": [{"extra_attributes": {"YbJEVgcL": {}, "CFp2Lg4e": {}, "EsS0fiRC": {}}, "user_id": "GIhwPs1a"}, {"extra_attributes": {"a9Yk1Hvb": {}, "7HOMNDbN": {}, "3S4gaxWq": {}}, "user_id": "hVjanFBm"}, {"extra_attributes": {"EuGAistz": {}, "oDbnhgLR": {}, "c4nttuUE": {}}, "user_id": "G70KvbpO"}], "ticket_id": "5VoB4Pnp"}, {"first_ticket_created_at": 20, "party_attributes": {"Dq8Fp2hV": {}, "ku2ljbrr": {}, "DthjdiUO": {}}, "party_id": "1mHGAz2w", "party_members": [{"extra_attributes": {"xqQ7MY65": {}, "F3nemzVU": {}, "IjBD0QaI": {}}, "user_id": "oZGFORwI"}, {"extra_attributes": {"Kb0NkQ7H": {}, "Aq8jcy5U": {}, "g8bATyru": {}}, "user_id": "pOyIx20T"}, {"extra_attributes": {"zXWRxy4e": {}, "rFTQ1d2v": {}, "iRrr4zc5": {}}, "user_id": "IcuRF5Q4"}], "ticket_id": "EsrFcGig"}, {"first_ticket_created_at": 35, "party_attributes": {"HhDDDzQm": {}, "1OmXpFsk": {}, "tvHoq5rm": {}}, "party_id": "ikUVXrBa", "party_members": [{"extra_attributes": {"mOzO6saN": {}, "Uqxwzbkg": {}, "dcJUm0VN": {}}, "user_id": "O1qRIOfr"}, {"extra_attributes": {"IMC0x1um": {}, "CnvKA4aY": {}, "QquzAasz": {}}, "user_id": "5aa3qQIe"}, {"extra_attributes": {"PSg1XqjK": {}, "mk1NTTDB": {}, "5HevX6TW": {}}, "user_id": "YsHhtvQK"}], "ticket_id": "WpSB02aB"}]}, {"matching_parties": [{"first_ticket_created_at": 57, "party_attributes": {"dgRImypc": {}, "9QR6x8JO": {}, "nTybruj1": {}}, "party_id": "7lsz98M9", "party_members": [{"extra_attributes": {"R2PVyNyb": {}, "FjuvGKdD": {}, "m1tGe47t": {}}, "user_id": "Sdmzwyh9"}, {"extra_attributes": {"5SBaoPbN": {}, "WHibRfh5": {}, "rFH1V82u": {}}, "user_id": "7a863mA7"}, {"extra_attributes": {"O8xzVp01": {}, "PepDwRT8": {}, "2JBbYqWe": {}}, "user_id": "oqceFvvu"}], "ticket_id": "1LUlqJM2"}, {"first_ticket_created_at": 22, "party_attributes": {"zoMzsWh3": {}, "Pj2B1edh": {}, "icmR7rj0": {}}, "party_id": "ZinEr9p2", "party_members": [{"extra_attributes": {"vydmjyzr": {}, "vFSPv2ot": {}, "r3GLxDDe": {}}, "user_id": "NwEhDABl"}, {"extra_attributes": {"77K4KAko": {}, "ucIaWMl1": {}, "KuRd0zAR": {}}, "user_id": "PifS1bQE"}, {"extra_attributes": {"CeqU9DHy": {}, "UYf0NzIt": {}, "VcNn4HoT": {}}, "user_id": "RwN6SB2i"}], "ticket_id": "Igsc0oG8"}, {"first_ticket_created_at": 38, "party_attributes": {"QFX7PpZN": {}, "enq18kAA": {}, "ubwRivZb": {}}, "party_id": "MlzSydiv", "party_members": [{"extra_attributes": {"483GnN4R": {}, "Z7EoRtui": {}, "YJlJacEy": {}}, "user_id": "XxqDhgaM"}, {"extra_attributes": {"PoFFVN3k": {}, "CyzUTsqk": {}, "Xb2OHuzn": {}}, "user_id": "z4IU1uT4"}, {"extra_attributes": {"EHYOUnpc": {}, "1W7slh5c": {}, "pyJDm3SQ": {}}, "user_id": "qfV4r2Dm"}], "ticket_id": "4pxSbvSJ"}]}], "namespace": "u0vSY75t", "party_attributes": {"9gCubfuI": {}, "Ft5X29GI": {}, "h3FXUcRk": {}}, "party_id": "iKTMCPOH", "queued_at": 52, "region": "SRASBqJv", "server_name": "fMlkD2jv", "status": "WlnYJyS4", "ticket_id": "MhJyPVi8", "updated_at": "1972-06-08T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "9c4Qw6Gt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'SgQg89K8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 87, "userID": "XttZpLSq", "weight": 0.7629500228568633}' \
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
    'tdcYoZ4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "Q0lUgBFQ", "description": "0DzIHcLk", "findMatchTimeoutSeconds": 73, "joinable": false, "max_delay_ms": 39, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 51, "min": 72, "name": "N0LKCvF3"}, {"max": 87, "min": 37, "name": "gRnTSDYD"}, {"max": 37, "min": 66, "name": "RbMMz8op"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 61}, "maxNumber": 79, "minNumber": 88, "playerMaxNumber": 68, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 22, "min": 37, "name": "eaOzgJJL"}, {"max": 90, "min": 78, "name": "Ip4UH1RG"}, {"max": 81, "min": 61, "name": "6eOXUZSz"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 87}, "duration": 36, "max_number": 82, "min_number": 51, "player_max_number": 8, "player_min_number": 88}, {"combination": {"alliances": [{"max": 11, "min": 33, "name": "w4dvclLK"}, {"max": 67, "min": 47, "name": "lyEtl8N2"}, {"max": 32, "min": 60, "name": "Y9pHe9Gc"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 73}, "duration": 26, "max_number": 56, "min_number": 40, "player_max_number": 96, "player_min_number": 43}, {"combination": {"alliances": [{"max": 78, "min": 100, "name": "CFykI9b7"}, {"max": 89, "min": 66, "name": "IYBZaITl"}, {"max": 8, "min": 97, "name": "UfNs4vf4"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 41}, "duration": 54, "max_number": 28, "min_number": 100, "player_max_number": 59, "player_min_number": 96}], "flexingRules": [{"attribute": "OBLR83Cf", "criteria": "vQ6cJlFc", "duration": 63, "reference": 0.37360197834523856}, {"attribute": "tNmiIvrN", "criteria": "Uh70ZYuI", "duration": 51, "reference": 0.40950289780875193}, {"attribute": "WYLZJ36I", "criteria": "pcDR5o3L", "duration": 27, "reference": 0.09192492261685759}], "match_options": {"options": [{"name": "Tc3PB2sg", "type": "LR2z6FPC"}, {"name": "p8bhtre3", "type": "tfez0BtR"}, {"name": "7GBP4ilV", "type": "y8YWal7D"}]}, "matchingRules": [{"attribute": "Qzy4qjFc", "criteria": "svAQ8mCI", "reference": 0.39099969834824333}, {"attribute": "sNW4FyCH", "criteria": "1sYToTfZ", "reference": 0.6111528248460473}, {"attribute": "DhkQFvD2", "criteria": "BIdkYkMX", "reference": 0.6734153347947027}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 52, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'UTZESVcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'Tb0yWJaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'dWqQrrJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["8HsHjJLN", "GbJAIPxR", "6Gy2lOOX"], "party_id": "aL3WW95X", "user_id": "m48TU9qE"}' \
    'AxLI13oa' \
    'sni0dYJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'rPNxLQxv' \
    'vF1Q2Rq7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'pO7u8IJy' \
    'd5IuQZG3' \
    'fcnlXWxl' \
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
    '1bwt8nNU' \
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
