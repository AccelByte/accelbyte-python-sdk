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
matchmaking-create-channel-handler '{"deployment": "aEtGvKcI", "description": "yO7Sqdmf", "find_match_timeout_seconds": 82, "game_mode": "d5j2eXBg", "joinable": false, "max_delay_ms": 39, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 2, "min": 8, "name": "QX3PujSB"}, {"max": 24, "min": 67, "name": "LHQNencP"}, {"max": 58, "min": 74, "name": "XpeFmtUn"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 44}, "max_number": 57, "min_number": 98, "player_max_number": 96, "player_min_number": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 84, "min": 29, "name": "KCQH9Mnd"}, {"max": 24, "min": 90, "name": "oUxA7MAD"}, {"max": 37, "min": 62, "name": "QqMMAZES"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 34}, "duration": 96, "max_number": 19, "min_number": 43, "player_max_number": 85, "player_min_number": 29}, {"combination": {"alliances": [{"max": 76, "min": 51, "name": "fjOumT3L"}, {"max": 73, "min": 67, "name": "JST1TWRP"}, {"max": 43, "min": 81, "name": "PJybdyzq"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 99}, "duration": 37, "max_number": 78, "min_number": 67, "player_max_number": 38, "player_min_number": 84}, {"combination": {"alliances": [{"max": 44, "min": 57, "name": "KfLDgrHv"}, {"max": 94, "min": 32, "name": "zhLzhJoX"}, {"max": 82, "min": 47, "name": "yNcaCzY3"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 9}, "duration": 13, "max_number": 22, "min_number": 25, "player_max_number": 85, "player_min_number": 29}], "flexing_rule": [{"attribute": "DUt7tMd9", "criteria": "9ea0mTY6", "duration": 90, "reference": 0.9833439898014876}, {"attribute": "8mUheI4i", "criteria": "AJ2f253q", "duration": 71, "reference": 0.3290315481144922}, {"attribute": "vzPVPuZr", "criteria": "VWu2zGSs", "duration": 62, "reference": 0.010896936756378373}], "match_options": {"options": [{"name": "4yZjmqeh", "type": "8wqOjhrl"}, {"name": "X9HOSo1t", "type": "g3BKSjZw"}, {"name": "SHuCeYVX", "type": "ftvUPWel"}]}, "matching_rule": [{"attribute": "vg79xTK1", "criteria": "VxrDVxD5", "reference": 0.3618450678941081}, {"attribute": "gPEt2N55", "criteria": "BXouuhql", "reference": 0.6327983849684021}, {"attribute": "lrm7PUgP", "criteria": "93Ra6KFR", "reference": 0.5005725988006716}], "rebalance_enable": true, "sub_game_modes": {"6wAaXnuJ": {"alliance": {"combination": {"alliances": [{"max": 83, "min": 12, "name": "JICXOhqI"}, {"max": 75, "min": 76, "name": "XtUR7iVx"}, {"max": 72, "min": 65, "name": "S5UDYH2x"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 32}, "max_number": 32, "min_number": 14, "player_max_number": 0, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 57, "min": 44, "name": "9c18jqk1"}, {"max": 53, "min": 39, "name": "aZBgonZB"}, {"max": 25, "min": 47, "name": "rpSiFRgF"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 43, "role_flexing_second": 95}, "duration": 10, "max_number": 4, "min_number": 24, "player_max_number": 32, "player_min_number": 21}, {"combination": {"alliances": [{"max": 72, "min": 45, "name": "kpDN7Ehe"}, {"max": 76, "min": 46, "name": "LgavskrB"}, {"max": 5, "min": 31, "name": "EH0uao9z"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 16}, "duration": 25, "max_number": 2, "min_number": 68, "player_max_number": 97, "player_min_number": 87}, {"combination": {"alliances": [{"max": 33, "min": 76, "name": "mUzdNMZV"}, {"max": 1, "min": 11, "name": "Hz2xRSKn"}, {"max": 32, "min": 48, "name": "xn8Vf6vS"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 36}, "duration": 13, "max_number": 51, "min_number": 28, "player_max_number": 18, "player_min_number": 87}], "name": "xuxrCPuw"}, "D5DpW3Re": {"alliance": {"combination": {"alliances": [{"max": 94, "min": 59, "name": "rNBIQymf"}, {"max": 60, "min": 95, "name": "X3lNk4B0"}, {"max": 81, "min": 68, "name": "WcVgHhll"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 38}, "max_number": 77, "min_number": 7, "player_max_number": 68, "player_min_number": 55}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 14, "min": 2, "name": "KpJMMcWL"}, {"max": 40, "min": 14, "name": "fcm7Do99"}, {"max": 74, "min": 87, "name": "31OxBPts"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 85}, "duration": 65, "max_number": 18, "min_number": 19, "player_max_number": 88, "player_min_number": 75}, {"combination": {"alliances": [{"max": 61, "min": 84, "name": "kGBm2e29"}, {"max": 38, "min": 19, "name": "u8h1MPzL"}, {"max": 88, "min": 83, "name": "r99XExh2"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 33}, "duration": 82, "max_number": 25, "min_number": 9, "player_max_number": 89, "player_min_number": 65}, {"combination": {"alliances": [{"max": 87, "min": 18, "name": "BRAEXsGT"}, {"max": 90, "min": 96, "name": "fclEFEao"}, {"max": 9, "min": 18, "name": "hcqKAODW"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 75}, "duration": 86, "max_number": 98, "min_number": 99, "player_max_number": 83, "player_min_number": 60}], "name": "8dNjjWJ1"}, "4QFHaUcl": {"alliance": {"combination": {"alliances": [{"max": 7, "min": 35, "name": "aXwj1Ges"}, {"max": 9, "min": 99, "name": "b6EB0nps"}, {"max": 100, "min": 89, "name": "I0l4rDNh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 22}, "max_number": 12, "min_number": 21, "player_max_number": 0, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 10, "name": "kilpjn2d"}, {"max": 75, "min": 30, "name": "CceXPQ9N"}, {"max": 82, "min": 86, "name": "kqv9uNTx"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 94}, "duration": 41, "max_number": 74, "min_number": 90, "player_max_number": 90, "player_min_number": 8}, {"combination": {"alliances": [{"max": 87, "min": 9, "name": "EJKCu47F"}, {"max": 60, "min": 31, "name": "SL1SKcmp"}, {"max": 25, "min": 91, "name": "Ap3sOKNy"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 62}, "duration": 35, "max_number": 92, "min_number": 40, "player_max_number": 74, "player_min_number": 73}, {"combination": {"alliances": [{"max": 34, "min": 38, "name": "OM2lm9zN"}, {"max": 31, "min": 65, "name": "YsNWk7ba"}, {"max": 90, "min": 87, "name": "ElKKT0dU"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 93}, "duration": 83, "max_number": 82, "min_number": 99, "player_max_number": 48, "player_min_number": 54}], "name": "vLyJaTga"}}}, "session_queue_timeout_seconds": 45, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'UAZgWwZP' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "7UIoq7Ld", "players": [{"results": [{"attribute": "QFZcREnw", "value": 0.4981701331709998}, {"attribute": "A8XhueOi", "value": 0.04654339114583961}, {"attribute": "DdbCP37k", "value": 0.118457104551276}], "user_id": "Urte0R1k"}, {"results": [{"attribute": "HuHu8HW1", "value": 0.8876355700239844}, {"attribute": "spsBcXwt", "value": 0.3734735814706618}, {"attribute": "pKCxCDeq", "value": 0.7436584082436707}], "user_id": "S36kguwa"}, {"results": [{"attribute": "pohOkwS2", "value": 0.7143362543423678}, {"attribute": "DNDyvTzg", "value": 0.3496071839746049}, {"attribute": "RCO8jfsJ", "value": 0.558046953295546}], "user_id": "xvIau4Ut"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "xo5nB06J"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "hobXerQD", "client_version": "VAQydNCD", "deployment": "YIuVdtMD", "error_code": 88, "error_message": "sroigtQo", "game_mode": "qOCrU90p", "joinable": true, "match_id": "JY6xiVDj", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"PkKHqgpi": {}, "9TvVSOZK": {}, "UgAddkoo": {}}, "party_id": "HXzzOqGp", "party_members": [{"extra_attributes": {"oyZjYiwO": {}, "3i3Qjh2V": {}, "EmD5HzGZ": {}}, "user_id": "BBozPea7"}, {"extra_attributes": {"IGaRraaw": {}, "w0EGBxtm": {}, "ejtUaaAK": {}}, "user_id": "Hse5VoK8"}, {"extra_attributes": {"6Hqte45F": {}, "BqMKFnxz": {}, "Bkbu5xCL": {}}, "user_id": "gYuB1Iwm"}], "ticket_id": "hAV1YBkX"}, {"first_ticket_created_at": 52, "party_attributes": {"Qik6kOZ6": {}, "P2kQ81lK": {}, "SUJECGlS": {}}, "party_id": "ocvDKTdc", "party_members": [{"extra_attributes": {"pY5O41qX": {}, "PVKQBnI3": {}, "sXhlLFbG": {}}, "user_id": "8gqTZpAs"}, {"extra_attributes": {"qr4I2GfZ": {}, "fYE9HDlC": {}, "z012YdVq": {}}, "user_id": "SS0plRyg"}, {"extra_attributes": {"QSDzilX1": {}, "P4XZ66sz": {}, "xz86QeKm": {}}, "user_id": "QOcTlO9v"}], "ticket_id": "6N4SEY1s"}, {"first_ticket_created_at": 59, "party_attributes": {"qfwlzVuQ": {}, "sasIyE1s": {}, "GBOuIhzd": {}}, "party_id": "6G9KKFdw", "party_members": [{"extra_attributes": {"SC7KIPmZ": {}, "YiZ7bp8O": {}, "Bu3KYjgf": {}}, "user_id": "39jDNtD9"}, {"extra_attributes": {"6NoxpL0J": {}, "VTbOrjDz": {}, "n05jTVLB": {}}, "user_id": "bhZangpw"}, {"extra_attributes": {"Jv2RFn5N": {}, "ealgK9GS": {}, "5RYirNjQ": {}}, "user_id": "Yx9doPVu"}], "ticket_id": "QbV0qQgv"}]}, {"matching_parties": [{"first_ticket_created_at": 0, "party_attributes": {"jkkAooLc": {}, "lX1MiLwo": {}, "HzniOphc": {}}, "party_id": "xCirG48w", "party_members": [{"extra_attributes": {"tty0R31p": {}, "5673wJnR": {}, "BuHJw178": {}}, "user_id": "luIWKVmY"}, {"extra_attributes": {"4iL6KIoR": {}, "Usqoosm4": {}, "M3zBFCOX": {}}, "user_id": "1CnqM3Qm"}, {"extra_attributes": {"1x5gpxgp": {}, "2xsdikEm": {}, "jIOIgSuz": {}}, "user_id": "CRrev2ia"}], "ticket_id": "UoRwfJnI"}, {"first_ticket_created_at": 33, "party_attributes": {"W8WJRGXv": {}, "QhnBOqIE": {}, "euhTs5mQ": {}}, "party_id": "PkWHtm3j", "party_members": [{"extra_attributes": {"2gGAJXZB": {}, "ntyZ55As": {}, "PsBrv1GB": {}}, "user_id": "d7K8dYnv"}, {"extra_attributes": {"q8yjXpde": {}, "fdfEZr3p": {}, "zGsCULDn": {}}, "user_id": "CXmKIBlS"}, {"extra_attributes": {"o4e0V3Zv": {}, "la4wvwHP": {}, "hKQpONi0": {}}, "user_id": "xLleKT0x"}], "ticket_id": "zhzvXH2n"}, {"first_ticket_created_at": 31, "party_attributes": {"6XokQbLh": {}, "6qX9HJSX": {}, "7lv0w3YI": {}}, "party_id": "r3hfSE5V", "party_members": [{"extra_attributes": {"ESa26NAN": {}, "gLXbUDGZ": {}, "T6xRiRD4": {}}, "user_id": "1zVVjBJ1"}, {"extra_attributes": {"DkVznuOd": {}, "Djuhdr3n": {}, "hOpMjuXZ": {}}, "user_id": "QVX8nsSd"}, {"extra_attributes": {"nhe6ivXo": {}, "BTIGbzFr": {}, "EnQz3ztS": {}}, "user_id": "gWCsBk1w"}], "ticket_id": "QFY4xJ7Y"}]}, {"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"uZmkSV7e": {}, "1TuuDlcZ": {}, "tdktAswL": {}}, "party_id": "31DQbBND", "party_members": [{"extra_attributes": {"jgCn2XaC": {}, "PF5u44jf": {}, "pbcMGl83": {}}, "user_id": "7kuBalGT"}, {"extra_attributes": {"NF08m510": {}, "sn8JRyCD": {}, "cplTsvN3": {}}, "user_id": "vLXIdIn7"}, {"extra_attributes": {"JKtxhCcn": {}, "N4DMqSyF": {}, "RHBfazmR": {}}, "user_id": "pL4RGxxU"}], "ticket_id": "VyIV7cNq"}, {"first_ticket_created_at": 67, "party_attributes": {"zxezCpcd": {}, "Osd6aInq": {}, "j7FeRqKl": {}}, "party_id": "EDNMFOsr", "party_members": [{"extra_attributes": {"vpfkbAY5": {}, "QEkJvAGV": {}, "jABmyPXg": {}}, "user_id": "Wn82kXld"}, {"extra_attributes": {"XZwZaDrm": {}, "omQp40ol": {}, "MdxX9eha": {}}, "user_id": "2RxA4gFC"}, {"extra_attributes": {"qEGnZuu0": {}, "aQF17L2h": {}, "HolqTFz3": {}}, "user_id": "j4Y2ti8K"}], "ticket_id": "AYE09RCy"}, {"first_ticket_created_at": 98, "party_attributes": {"4hrSfiPa": {}, "VQhgE8aF": {}, "UkBYVqE1": {}}, "party_id": "6QLuOPTm", "party_members": [{"extra_attributes": {"SnfoZ5gy": {}, "o06xXsdf": {}, "b8JG1ow9": {}}, "user_id": "HLOMbsxM"}, {"extra_attributes": {"ioHjIhNp": {}, "JuqRLlBn": {}, "aceXV5o2": {}}, "user_id": "WCIQ8Gv6"}, {"extra_attributes": {"x6FvsITo": {}, "hqC5LSSn": {}, "2UorF69b": {}}, "user_id": "1RNFU2ND"}], "ticket_id": "hAqKzLOy"}]}], "namespace": "5CsVu7ge", "party_attributes": {"337x5APv": {}, "nVxHj1Jk": {}, "GTtKGaEH": {}}, "party_id": "pKaA5UeA", "queued_at": 76, "region": "AP560QLv", "server_name": "7JEL1hWx", "status": "KTS5pAMr", "ticket_id": "zGm8GIOq", "updated_at": "1982-06-19T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "kLe4alIf"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler '1rBn0lgn' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 27, "userID": "r5STZ05V", "weight": 0.2581533282891757}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'QJscaWzx' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "luVZFFGY", "description": "pxkp8Ru9", "findMatchTimeoutSeconds": 33, "joinable": true, "max_delay_ms": 71, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 52, "min": 74, "name": "zSDsLFJG"}, {"max": 75, "min": 73, "name": "u5s7KzYo"}, {"max": 75, "min": 69, "name": "cCfChwi1"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 83}, "maxNumber": 56, "minNumber": 6, "playerMaxNumber": 56, "playerMinNumber": 36}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 68, "min": 12, "name": "49ddNKCV"}, {"max": 38, "min": 6, "name": "KxAWBBEW"}, {"max": 78, "min": 90, "name": "GORY67zC"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 45}, "duration": 100, "max_number": 89, "min_number": 25, "player_max_number": 37, "player_min_number": 52}, {"combination": {"alliances": [{"max": 69, "min": 67, "name": "r6n7nQe9"}, {"max": 86, "min": 73, "name": "MWZRlS3x"}, {"max": 78, "min": 8, "name": "xzgi9Nkg"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 17}, "duration": 53, "max_number": 13, "min_number": 54, "player_max_number": 85, "player_min_number": 84}, {"combination": {"alliances": [{"max": 33, "min": 97, "name": "0yieJIqK"}, {"max": 100, "min": 53, "name": "TxG1jVwQ"}, {"max": 36, "min": 22, "name": "E8fLPy4h"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 36}, "duration": 4, "max_number": 18, "min_number": 13, "player_max_number": 34, "player_min_number": 60}], "flexingRules": [{"attribute": "lYXLY1Sg", "criteria": "AKRm3UVY", "duration": 99, "reference": 0.8277723268742808}, {"attribute": "06rkxEcg", "criteria": "lFHQt5ox", "duration": 71, "reference": 0.6356953834552593}, {"attribute": "7qfCbXgL", "criteria": "8nWvClLf", "duration": 33, "reference": 0.03451062961650042}], "match_options": {"options": [{"name": "OVZkgS6e", "type": "2yLPb16k"}, {"name": "VK8msLcj", "type": "Q0I1qxYo"}, {"name": "McST7RHJ", "type": "LUailkxs"}]}, "matchingRules": [{"attribute": "p3kEvRuJ", "criteria": "ZDOiUSXX", "reference": 0.6644785751061081}, {"attribute": "7GPusqHN", "criteria": "q0JJ3z2U", "reference": 0.6705710106680296}, {"attribute": "hxuXBmEf", "criteria": "4vw5ofDj", "reference": 0.12379745420199295}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 41, "socialMatchmaking": true, "use_sub_gamemode": false}' '7XGirlKE' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'wOFq8IZa' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'nPBvIt6M' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["3XqFu8px", "zT8hPwAI", "1ja5wdpV"], "party_id": "GSbilr7p", "user_id": "UYvoo3IJ"}' 'AleN1YiV' 'kFmSvJy6' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'Hk0114tU' 'GQd8649Y' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'ab1qckkW' '0dEbYWKO' 'y6FHgpgT' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'Wen8bE5p' --login_with_auth "Bearer foo"
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
    '{"deployment": "7AH2r4YS", "description": "dV7KzygY", "find_match_timeout_seconds": 39, "game_mode": "PwTN9bvd", "joinable": true, "max_delay_ms": 52, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 32, "min": 20, "name": "a0tI9lbm"}, {"max": 78, "min": 100, "name": "5Fgm6osx"}, {"max": 31, "min": 26, "name": "PMxtTz3p"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 65}, "max_number": 12, "min_number": 81, "player_max_number": 33, "player_min_number": 90}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 52, "min": 27, "name": "HSMDTaci"}, {"max": 16, "min": 51, "name": "vHhpp4KF"}, {"max": 89, "min": 60, "name": "jSswZzXm"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 76}, "duration": 46, "max_number": 41, "min_number": 63, "player_max_number": 51, "player_min_number": 9}, {"combination": {"alliances": [{"max": 51, "min": 28, "name": "AcCuPKaH"}, {"max": 47, "min": 71, "name": "gpIdHiLz"}, {"max": 61, "min": 42, "name": "LOFrAHNs"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 33}, "duration": 41, "max_number": 39, "min_number": 80, "player_max_number": 73, "player_min_number": 74}, {"combination": {"alliances": [{"max": 54, "min": 48, "name": "TvW70WD0"}, {"max": 98, "min": 86, "name": "1v691PTj"}, {"max": 14, "min": 67, "name": "qD7Koknj"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 98}, "duration": 35, "max_number": 86, "min_number": 52, "player_max_number": 99, "player_min_number": 80}], "flexing_rule": [{"attribute": "qgnIier1", "criteria": "Qb0FcslJ", "duration": 23, "reference": 0.4219262550847338}, {"attribute": "XK6r6z9u", "criteria": "cNlqPvZS", "duration": 96, "reference": 0.9885331562994096}, {"attribute": "LyzQIJqu", "criteria": "VdsfiCQ9", "duration": 81, "reference": 0.33101825363056825}], "match_options": {"options": [{"name": "wqDi2UGf", "type": "cEbG1SoR"}, {"name": "iOmDtMYT", "type": "vOd8eEhY"}, {"name": "8s4ElPjZ", "type": "KGgfnWr4"}]}, "matching_rule": [{"attribute": "QmEKFt9z", "criteria": "6v39HJvb", "reference": 0.7838319600653885}, {"attribute": "MGxWncfs", "criteria": "KXZEGn4o", "reference": 0.489465274303337}, {"attribute": "OmIIo6b2", "criteria": "YMLFOIqN", "reference": 0.5253638436654193}], "rebalance_enable": true, "sub_game_modes": {"4Ae2ARBj": {"alliance": {"combination": {"alliances": [{"max": 3, "min": 66, "name": "qcTeTp5o"}, {"max": 96, "min": 47, "name": "Bw7cLACW"}, {"max": 39, "min": 7, "name": "knhhaQd6"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 88}, "max_number": 28, "min_number": 7, "player_max_number": 87, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 52, "min": 69, "name": "u1WtrcOo"}, {"max": 91, "min": 9, "name": "QDmeKbEH"}, {"max": 6, "min": 34, "name": "rV1dTXHB"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 23}, "duration": 86, "max_number": 91, "min_number": 96, "player_max_number": 20, "player_min_number": 13}, {"combination": {"alliances": [{"max": 16, "min": 33, "name": "1Vt3w8Go"}, {"max": 28, "min": 36, "name": "CSgpRofp"}, {"max": 16, "min": 35, "name": "HjM3we2l"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 19}, "duration": 71, "max_number": 15, "min_number": 4, "player_max_number": 27, "player_min_number": 19}, {"combination": {"alliances": [{"max": 60, "min": 15, "name": "IGZKe1oK"}, {"max": 55, "min": 50, "name": "J3YRKMi8"}, {"max": 54, "min": 13, "name": "5FM4CpDd"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 78}, "duration": 51, "max_number": 75, "min_number": 25, "player_max_number": 24, "player_min_number": 36}], "name": "RhOHc0MP"}, "MHuY5bVt": {"alliance": {"combination": {"alliances": [{"max": 73, "min": 70, "name": "IxVdCksi"}, {"max": 99, "min": 99, "name": "129xgnVf"}, {"max": 66, "min": 56, "name": "HVtOFuax"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 80, "role_flexing_second": 46}, "max_number": 25, "min_number": 100, "player_max_number": 53, "player_min_number": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 26, "name": "H40FceLq"}, {"max": 14, "min": 57, "name": "sBKjpUfE"}, {"max": 85, "min": 72, "name": "zwo4sEhq"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 38}, "duration": 77, "max_number": 22, "min_number": 16, "player_max_number": 2, "player_min_number": 48}, {"combination": {"alliances": [{"max": 52, "min": 38, "name": "JTKYxGi3"}, {"max": 59, "min": 29, "name": "FWCcQn7g"}, {"max": 100, "min": 47, "name": "BnYZR2Er"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 51}, "duration": 34, "max_number": 75, "min_number": 67, "player_max_number": 42, "player_min_number": 38}, {"combination": {"alliances": [{"max": 34, "min": 13, "name": "gvf0rqwx"}, {"max": 41, "min": 98, "name": "VZv6CSZm"}, {"max": 17, "min": 89, "name": "F40SdCOc"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 48}, "duration": 81, "max_number": 29, "min_number": 35, "player_max_number": 77, "player_min_number": 16}], "name": "C0rYefKB"}, "lqp2gfQm": {"alliance": {"combination": {"alliances": [{"max": 66, "min": 94, "name": "26vztYRE"}, {"max": 70, "min": 8, "name": "BKnAHTRz"}, {"max": 86, "min": 57, "name": "6isnqegc"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 36}, "max_number": 100, "min_number": 79, "player_max_number": 100, "player_min_number": 90}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 39, "min": 33, "name": "BqfKqNoY"}, {"max": 29, "min": 51, "name": "ffubUvJN"}, {"max": 81, "min": 75, "name": "8JgP2EG2"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 23}, "duration": 73, "max_number": 51, "min_number": 64, "player_max_number": 22, "player_min_number": 82}, {"combination": {"alliances": [{"max": 98, "min": 28, "name": "8yaeci3L"}, {"max": 93, "min": 16, "name": "AUoYh7iC"}, {"max": 45, "min": 47, "name": "Kag8j7g6"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 97}, "duration": 63, "max_number": 26, "min_number": 5, "player_max_number": 10, "player_min_number": 2}, {"combination": {"alliances": [{"max": 97, "min": 95, "name": "dNk1fPrc"}, {"max": 33, "min": 0, "name": "1tuMDYuJ"}, {"max": 64, "min": 62, "name": "AgN7l6Om"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 31}, "duration": 12, "max_number": 11, "min_number": 83, "player_max_number": 39, "player_min_number": 35}], "name": "jvedfx4G"}}}, "session_queue_timeout_seconds": 36, "social_matchmaking": false, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'kdp1n4zD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "kD3rNzKm", "players": [{"results": [{"attribute": "Kl7i3Rc6", "value": 0.264136251738167}, {"attribute": "gParf47y", "value": 0.06144737997069183}, {"attribute": "Duelvviz", "value": 0.888703223455012}], "user_id": "oomwLtMp"}, {"results": [{"attribute": "xpmPeIpt", "value": 0.9127047677687851}, {"attribute": "L5lJ0Ped", "value": 0.7466625511385669}, {"attribute": "PHNFkOG3", "value": 0.23071394570110237}], "user_id": "8PG0RzEC"}, {"results": [{"attribute": "sdNlgQKu", "value": 0.3057812672906115}, {"attribute": "xQFrP1p4", "value": 0.49377557562583985}, {"attribute": "0eWa7xyo", "value": 0.13931441393160038}], "user_id": "JsqGGM6J"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "upF1CEjK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "MlBebW4p", "client_version": "AjtytCLk", "deployment": "3IUe7DSr", "error_code": 44, "error_message": "YLzmTK3v", "game_mode": "yQib3vAM", "joinable": true, "match_id": "0sXmh49T", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 77, "party_attributes": {"uKVvJPuG": {}, "sT3Niy8v": {}, "q2XPCM4p": {}}, "party_id": "7tWQAQQs", "party_members": [{"extra_attributes": {"tJ41veEy": {}, "WppEWzjA": {}, "8hXAvGMU": {}}, "user_id": "HGSTuw26"}, {"extra_attributes": {"v2zp2rGi": {}, "ne9oU7lm": {}, "IXkcMHsM": {}}, "user_id": "SMsli9Ix"}, {"extra_attributes": {"0sAMWbCP": {}, "JBhai7QH": {}, "hVusKCr0": {}}, "user_id": "IpdijUm7"}], "ticket_id": "sJ08PnHL"}, {"first_ticket_created_at": 13, "party_attributes": {"5Sf0tHAb": {}, "uhdC3s7z": {}, "gyBpiYxD": {}}, "party_id": "fyjXMVKu", "party_members": [{"extra_attributes": {"V6fwusVP": {}, "J7M1Nsmy": {}, "aslEp08h": {}}, "user_id": "NtE0yM1P"}, {"extra_attributes": {"azu2JXj4": {}, "vO1u9XMt": {}, "5Gs0O66m": {}}, "user_id": "5Qyz5xLe"}, {"extra_attributes": {"vDStwy57": {}, "X5EuooDD": {}, "WiMCsBOq": {}}, "user_id": "n0bbDSNv"}], "ticket_id": "59CcaIFu"}, {"first_ticket_created_at": 23, "party_attributes": {"7G2LQkrL": {}, "jszNdaVt": {}, "Slnk00W1": {}}, "party_id": "9HrVISWa", "party_members": [{"extra_attributes": {"01UTdW6M": {}, "ASwvKqqO": {}, "vDXXLo46": {}}, "user_id": "VSVlukdW"}, {"extra_attributes": {"bgkSmKoU": {}, "q4G7Uwgu": {}, "OaF14bnx": {}}, "user_id": "WzUWl3yn"}, {"extra_attributes": {"JFmPnH4t": {}, "bFUTaj1e": {}, "8TTHfW3K": {}}, "user_id": "FTMY5hRR"}], "ticket_id": "4P8qAi6a"}]}, {"matching_parties": [{"first_ticket_created_at": 42, "party_attributes": {"Lv6xHonq": {}, "rbk2pdpy": {}, "O2CdFgZb": {}}, "party_id": "G2IZcaon", "party_members": [{"extra_attributes": {"2tXYS5nD": {}, "X8KGVK8T": {}, "4Geb69lr": {}}, "user_id": "oslWqPJC"}, {"extra_attributes": {"h6sIelxi": {}, "R8aM1B2c": {}, "LYhpB9i6": {}}, "user_id": "o7RAPFa7"}, {"extra_attributes": {"KsOdnVBk": {}, "YJleDsIX": {}, "ryPXIFkF": {}}, "user_id": "lw2Obhs1"}], "ticket_id": "P9T0hvxg"}, {"first_ticket_created_at": 13, "party_attributes": {"RW2dkkvV": {}, "iAEZNsVa": {}, "GHwlyEku": {}}, "party_id": "3aIzg0k1", "party_members": [{"extra_attributes": {"oun3SLQq": {}, "P56171gX": {}, "U0L5lbTd": {}}, "user_id": "SOv3vDce"}, {"extra_attributes": {"ND7UuKfq": {}, "tQ0kI5p2": {}, "QaDlBqXF": {}}, "user_id": "gm2JCngQ"}, {"extra_attributes": {"W1RgRyJ8": {}, "Dc69mAKZ": {}, "Tejeo02E": {}}, "user_id": "4ikWiCE2"}], "ticket_id": "MchRRBcN"}, {"first_ticket_created_at": 44, "party_attributes": {"lnp9J6MI": {}, "orjeEdsE": {}, "ZHaCaEKO": {}}, "party_id": "TV2i70tv", "party_members": [{"extra_attributes": {"jUTAsRGp": {}, "QfWqRzGg": {}, "sCgIntGa": {}}, "user_id": "8DDyps7p"}, {"extra_attributes": {"86gKrv0O": {}, "OKyfHqOD": {}, "ZhGjCEDI": {}}, "user_id": "njVHKOEL"}, {"extra_attributes": {"MarJ1aIO": {}, "fSukKbC1": {}, "ENbhyYHM": {}}, "user_id": "gQra1CMI"}], "ticket_id": "TweylEEn"}]}, {"matching_parties": [{"first_ticket_created_at": 1, "party_attributes": {"nkgQ14mw": {}, "CQK0i4uD": {}, "ilr4tIIY": {}}, "party_id": "5CZPy5zd", "party_members": [{"extra_attributes": {"dW21ijUD": {}, "lHBiGe3S": {}, "oG2nGwt6": {}}, "user_id": "zq15V9qP"}, {"extra_attributes": {"MAG2iAN6": {}, "3q444t8Z": {}, "Ji9azQTo": {}}, "user_id": "yBPu7dQq"}, {"extra_attributes": {"KUKzoljC": {}, "dbcsPLK9": {}, "XXiIODSD": {}}, "user_id": "QK5nOcTX"}], "ticket_id": "WH4LFWlK"}, {"first_ticket_created_at": 62, "party_attributes": {"WlR4eoMB": {}, "uXMCIVdQ": {}, "lSCERTn5": {}}, "party_id": "Kso91m7t", "party_members": [{"extra_attributes": {"9NDEqud8": {}, "Bjk5sMhj": {}, "mbgVYp6M": {}}, "user_id": "M7b6QgLW"}, {"extra_attributes": {"MtGbkWHN": {}, "tlxbk3tO": {}, "oFgHPeac": {}}, "user_id": "IIEWYbOL"}, {"extra_attributes": {"BgKD7jCG": {}, "PVc4rzje": {}, "7BH27Sb1": {}}, "user_id": "4LCX4QrV"}], "ticket_id": "EK2tBuNV"}, {"first_ticket_created_at": 71, "party_attributes": {"NNCguAkQ": {}, "5erbfFtt": {}, "Y9rMmY6m": {}}, "party_id": "Mx9zkEW0", "party_members": [{"extra_attributes": {"fTpz0e6D": {}, "pL4sui6E": {}, "4e6bkwpG": {}}, "user_id": "OJ8aWCKL"}, {"extra_attributes": {"ExkjFDDB": {}, "djeQazdq": {}, "dMu2RsIc": {}}, "user_id": "ZZliCrOU"}, {"extra_attributes": {"axSObnCC": {}, "pfJdgp02": {}, "ERGHh4wn": {}}, "user_id": "XcNtAiXI"}], "ticket_id": "EF6k0xS3"}]}], "namespace": "SFhyV0fv", "party_attributes": {"28rdyoVh": {}, "Oi4w8Cxr": {}, "UmukgTfx": {}}, "party_id": "KUQKxnB0", "queued_at": 18, "region": "tZ14uQng", "server_name": "Ae92w1US", "status": "H42ySyQf", "ticket_id": "Vg4fwonw", "updated_at": "1979-02-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "VkyBXLmt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'NdLxMNYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 34, "userID": "wZ6W7Jei", "weight": 0.46581939575135745}' \
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
    'uP4B4S3N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "Lgo3GbS0", "description": "eBJEYwxa", "findMatchTimeoutSeconds": 97, "joinable": true, "max_delay_ms": 20, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 25, "min": 27, "name": "xtUlQEml"}, {"max": 4, "min": 86, "name": "Vj2MESYb"}, {"max": 6, "min": 32, "name": "uqEmqefk"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 60}, "maxNumber": 83, "minNumber": 13, "playerMaxNumber": 41, "playerMinNumber": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 66, "min": 65, "name": "thqIYNiC"}, {"max": 52, "min": 49, "name": "5Dj2WDxE"}, {"max": 70, "min": 79, "name": "ZlMkpoEb"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 46}, "duration": 15, "max_number": 63, "min_number": 83, "player_max_number": 95, "player_min_number": 22}, {"combination": {"alliances": [{"max": 86, "min": 18, "name": "ZLlzldqe"}, {"max": 28, "min": 75, "name": "LoUdrRpr"}, {"max": 68, "min": 43, "name": "LBK0R9bs"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 36}, "duration": 66, "max_number": 86, "min_number": 3, "player_max_number": 61, "player_min_number": 45}, {"combination": {"alliances": [{"max": 48, "min": 17, "name": "OnpfDyIT"}, {"max": 76, "min": 51, "name": "Qa8a5rrJ"}, {"max": 0, "min": 30, "name": "z7DTybOa"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 72}, "duration": 31, "max_number": 16, "min_number": 8, "player_max_number": 10, "player_min_number": 17}], "flexingRules": [{"attribute": "F0mlV8Zm", "criteria": "yH3ZPgWs", "duration": 39, "reference": 0.1751999644168829}, {"attribute": "Zy7y5Suk", "criteria": "B98i8Ulh", "duration": 83, "reference": 0.7397187092818376}, {"attribute": "Foatw1Ck", "criteria": "sztGtVVj", "duration": 30, "reference": 0.4056726312004605}], "match_options": {"options": [{"name": "12MPXyrp", "type": "UG6xEHD2"}, {"name": "GI9H4VxR", "type": "TkXAoGdZ"}, {"name": "jCgzJnBu", "type": "ZzcCD4yK"}]}, "matchingRules": [{"attribute": "vG1kL1ym", "criteria": "ScITs8jN", "reference": 0.3043835949621412}, {"attribute": "7rPZ472r", "criteria": "tlpkD2Sc", "reference": 0.30103448134875477}, {"attribute": "uoHFg7uC", "criteria": "Y1d4eEOn", "reference": 0.4894411250396645}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 85, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'XtY9iEeS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'hutD7t9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'SHXTc9EM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["gX2rrF5N", "z9ZmAO4t", "bZur8L6l"], "party_id": "oGTct2tl", "user_id": "jylq61FV"}' \
    '2lvhNnJN' \
    'qgRBBjiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'J2rfB2gn' \
    'XkSNXIVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'EXTfzYl0' \
    'jWRC21Dw' \
    '08DymfsW' \
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
    'VYuzrij9' \
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
