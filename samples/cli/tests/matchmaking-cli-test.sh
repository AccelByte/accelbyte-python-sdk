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
matchmaking-create-channel-handler '{"deployment": "EAxcVpFr", "description": "ttufHIRd", "find_match_timeout_seconds": 68, "game_mode": "Dc09nIW0", "joinable": true, "max_delay_ms": 1, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 24, "min": 17, "name": "Aw7r6W2k"}, {"max": 39, "min": 32, "name": "QG0h5JAa"}, {"max": 44, "min": 5, "name": "5kRa62Wo"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 24}, "max_number": 68, "min_number": 85, "player_max_number": 91, "player_min_number": 41}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 54, "min": 6, "name": "MTwE6I56"}, {"max": 70, "min": 0, "name": "Lx8bbgor"}, {"max": 87, "min": 29, "name": "eFbQ1g7q"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 36}, "duration": 28, "max_number": 54, "min_number": 12, "player_max_number": 17, "player_min_number": 95}, {"combination": {"alliances": [{"max": 31, "min": 82, "name": "6lyzSxwE"}, {"max": 24, "min": 52, "name": "FHHdgs21"}, {"max": 73, "min": 81, "name": "ub74CUkN"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 61}, "duration": 73, "max_number": 76, "min_number": 11, "player_max_number": 19, "player_min_number": 16}, {"combination": {"alliances": [{"max": 99, "min": 18, "name": "pUkHODpo"}, {"max": 80, "min": 60, "name": "F78NY4Yk"}, {"max": 69, "min": 0, "name": "s1cnz1JS"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 12}, "duration": 100, "max_number": 93, "min_number": 29, "player_max_number": 23, "player_min_number": 31}], "flexing_rule": [{"attribute": "vbTgrhRT", "criteria": "cPiSuL0S", "duration": 23, "reference": 0.16483597746192702}, {"attribute": "T7NvyE3c", "criteria": "wyALczNI", "duration": 18, "reference": 0.0897341149693317}, {"attribute": "8GZ2WBZq", "criteria": "xYG3aREA", "duration": 41, "reference": 0.8568434929403991}], "match_options": {"options": [{"name": "PXhT5Fvd", "type": "iRilZ7oF"}, {"name": "gx4c8Oum", "type": "KtPDKJDX"}, {"name": "n7Z4U68s", "type": "u8XfqlqN"}]}, "matching_rule": [{"attribute": "iTvB6SdA", "criteria": "dIhUDrwo", "reference": 0.8267966763880049}, {"attribute": "5MecdKi5", "criteria": "r6QEa1ys", "reference": 0.6022323372168683}, {"attribute": "Ezth6mXh", "criteria": "zkzWkFeZ", "reference": 0.7101287324255527}], "rebalance_enable": false, "sub_game_modes": {"SpHt0P7M": {"alliance": {"combination": {"alliances": [{"max": 70, "min": 26, "name": "IR7CkyF6"}, {"max": 59, "min": 20, "name": "duuyZ0Gh"}, {"max": 61, "min": 86, "name": "ogqrhBRd"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 89}, "max_number": 53, "min_number": 33, "player_max_number": 98, "player_min_number": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 82, "min": 75, "name": "PRZYdFLI"}, {"max": 54, "min": 45, "name": "jGGJddVC"}, {"max": 43, "min": 13, "name": "u9vx5KQ7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 79}, "duration": 50, "max_number": 55, "min_number": 42, "player_max_number": 45, "player_min_number": 70}, {"combination": {"alliances": [{"max": 1, "min": 84, "name": "a2I9u6Vp"}, {"max": 2, "min": 93, "name": "sx5w8hqU"}, {"max": 71, "min": 45, "name": "06UpOXGS"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 98}, "duration": 36, "max_number": 41, "min_number": 79, "player_max_number": 69, "player_min_number": 6}, {"combination": {"alliances": [{"max": 84, "min": 71, "name": "PlLlkvR8"}, {"max": 37, "min": 40, "name": "KgnuRkgg"}, {"max": 15, "min": 67, "name": "HGCiljvj"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 33}, "duration": 59, "max_number": 39, "min_number": 85, "player_max_number": 92, "player_min_number": 59}], "name": "okahFjkQ"}, "sfCaTmt1": {"alliance": {"combination": {"alliances": [{"max": 6, "min": 12, "name": "67FXGk2s"}, {"max": 37, "min": 88, "name": "V6zwPuo3"}, {"max": 39, "min": 42, "name": "d6TC6I3l"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 36}, "max_number": 91, "min_number": 39, "player_max_number": 99, "player_min_number": 82}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 23, "min": 23, "name": "na7qxNeI"}, {"max": 47, "min": 11, "name": "Pz6MbwL6"}, {"max": 70, "min": 21, "name": "Y69z1UaL"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 91}, "duration": 72, "max_number": 91, "min_number": 99, "player_max_number": 33, "player_min_number": 50}, {"combination": {"alliances": [{"max": 66, "min": 40, "name": "AXQ0yYoN"}, {"max": 89, "min": 49, "name": "Kd3IL5TA"}, {"max": 87, "min": 18, "name": "6iiPlSC2"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 52}, "duration": 12, "max_number": 30, "min_number": 93, "player_max_number": 61, "player_min_number": 97}, {"combination": {"alliances": [{"max": 46, "min": 6, "name": "Bm3MqHcU"}, {"max": 25, "min": 55, "name": "LZZbSqb8"}, {"max": 90, "min": 45, "name": "hpDDWVAl"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 43}, "duration": 55, "max_number": 53, "min_number": 53, "player_max_number": 81, "player_min_number": 18}], "name": "tIuS5S5X"}, "UdjsoqwG": {"alliance": {"combination": {"alliances": [{"max": 49, "min": 62, "name": "zzWi9gwQ"}, {"max": 12, "min": 45, "name": "A8yu7Vk6"}, {"max": 72, "min": 39, "name": "DmrhZv15"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 38}, "max_number": 42, "min_number": 70, "player_max_number": 11, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 44, "min": 5, "name": "BMcaYmvC"}, {"max": 22, "min": 52, "name": "GZ5dAgqx"}, {"max": 31, "min": 62, "name": "BFmaLoxo"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 24}, "duration": 47, "max_number": 45, "min_number": 92, "player_max_number": 10, "player_min_number": 50}, {"combination": {"alliances": [{"max": 80, "min": 23, "name": "PX2bOItR"}, {"max": 78, "min": 77, "name": "vqtlB2jJ"}, {"max": 58, "min": 61, "name": "SQT279ZZ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 37}, "duration": 24, "max_number": 8, "min_number": 81, "player_max_number": 22, "player_min_number": 26}, {"combination": {"alliances": [{"max": 13, "min": 34, "name": "dWyOtXi3"}, {"max": 5, "min": 48, "name": "hoQrpOsD"}, {"max": 56, "min": 60, "name": "U5SepjCh"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 88}, "duration": 32, "max_number": 44, "min_number": 80, "player_max_number": 16, "player_min_number": 61}], "name": "kkK6KKXN"}}}, "session_queue_timeout_seconds": 57, "social_matchmaking": true, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'v0IqmF51' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "TkhjYnaq", "players": [{"results": [{"attribute": "6foWvXa3", "value": 0.02424334995383981}, {"attribute": "MrXsDr6k", "value": 0.5588811591162699}, {"attribute": "LsSSyDdm", "value": 0.4031781789112202}], "user_id": "kmoPYgc2"}, {"results": [{"attribute": "L4jk4Lo0", "value": 0.5971454625273797}, {"attribute": "SP0pf4Ix", "value": 0.1499286267204225}, {"attribute": "Ukl535X3", "value": 0.014149002292955015}], "user_id": "teEKDpAD"}, {"results": [{"attribute": "z1x3poD3", "value": 0.6827906619457373}, {"attribute": "gb3boLQQ", "value": 0.868171265147022}, {"attribute": "MzH7Qm8b", "value": 0.36703122445482395}], "user_id": "bmXgdAPh"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "1EThG96g"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "AFKK2WDg", "client_version": "CcxvONZm", "deployment": "3EeERmDn", "error_code": 49, "error_message": "KTlmVr9X", "game_mode": "uoJbRFQS", "joinable": true, "match_id": "VPHbn4Xx", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 39, "party_attributes": {"QUhAEtrm": {}, "jqU6YE3p": {}, "4lSck0ZH": {}}, "party_id": "n5GI39YB", "party_members": [{"extra_attributes": {"HqaTHeKt": {}, "W18iGeUl": {}, "c9d9sogW": {}}, "user_id": "a24CKNS0"}, {"extra_attributes": {"GqVvUfHQ": {}, "vsHXNUNe": {}, "4mhgo5QB": {}}, "user_id": "65lSAiYn"}, {"extra_attributes": {"NjkfZrQv": {}, "GgbLdLsF": {}, "zHkBMr1y": {}}, "user_id": "rOMlNFSr"}], "ticket_created_at": 96, "ticket_id": "58f7Gc26"}, {"first_ticket_created_at": 92, "party_attributes": {"DmIbeZxz": {}, "fTcyiuAT": {}, "us9hsfpF": {}}, "party_id": "DcSDG8aM", "party_members": [{"extra_attributes": {"VGLiBNrD": {}, "jqoxcwgG": {}, "LXpUL4pp": {}}, "user_id": "2ncYAHdN"}, {"extra_attributes": {"zDmeIP6r": {}, "OvDz9KOs": {}, "b392k6Ym": {}}, "user_id": "JFfRByjl"}, {"extra_attributes": {"BiuFM3FI": {}, "oVk8T3Gp": {}, "AnkCmBUq": {}}, "user_id": "g2SCnqnt"}], "ticket_created_at": 47, "ticket_id": "9y1aZSWM"}, {"first_ticket_created_at": 17, "party_attributes": {"C2DKHRuP": {}, "MMWH8Yb3": {}, "3T5UBJCj": {}}, "party_id": "fcnLRfxe", "party_members": [{"extra_attributes": {"CSz9WEi8": {}, "KlloeH0J": {}, "T1yduat2": {}}, "user_id": "vQR3biBf"}, {"extra_attributes": {"su4jmsRE": {}, "2w1yEkLg": {}, "h3tIYt4S": {}}, "user_id": "qYUTLDx9"}, {"extra_attributes": {"gIiDandp": {}, "GT2t24aO": {}, "Mh5eC3IH": {}}, "user_id": "eHSKLCa3"}], "ticket_created_at": 48, "ticket_id": "AE7WIsfm"}]}, {"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"wH3q31A8": {}, "06DJgas4": {}, "b6z3LNUj": {}}, "party_id": "7fdgLA84", "party_members": [{"extra_attributes": {"Z8YYk6QE": {}, "gJjBbEDo": {}, "Nf3n0hEo": {}}, "user_id": "RCAcf80z"}, {"extra_attributes": {"fFyabWAg": {}, "IUXiI07A": {}, "68eaqC2J": {}}, "user_id": "9jyEW6GL"}, {"extra_attributes": {"bc0NaKDU": {}, "L3sa13lk": {}, "1dQBHO86": {}}, "user_id": "IlBhnetU"}], "ticket_created_at": 85, "ticket_id": "RwTqUXlT"}, {"first_ticket_created_at": 61, "party_attributes": {"O3FgkXhj": {}, "DzaQY3sn": {}, "n2ZkP7cF": {}}, "party_id": "dP43e5dC", "party_members": [{"extra_attributes": {"9XIBudfZ": {}, "grbHDIDm": {}, "4hMzF4Tx": {}}, "user_id": "odenSrUT"}, {"extra_attributes": {"vfqU0bfo": {}, "Mm5cTtFW": {}, "botQyXJR": {}}, "user_id": "cQWsmqPN"}, {"extra_attributes": {"s92epxk0": {}, "i8VxsZNe": {}, "reSvf969": {}}, "user_id": "9mCEHThU"}], "ticket_created_at": 73, "ticket_id": "CMNFIurj"}, {"first_ticket_created_at": 15, "party_attributes": {"gh4TeUTk": {}, "OkAYfJB8": {}, "AT9t4Tv2": {}}, "party_id": "07Y2QD3o", "party_members": [{"extra_attributes": {"D5fLCr3O": {}, "OlXVv8ZG": {}, "F7uYnGzp": {}}, "user_id": "ipNDigNJ"}, {"extra_attributes": {"ma1MbqqZ": {}, "tfNWql4n": {}, "mwAft4gq": {}}, "user_id": "kNNlWkD9"}, {"extra_attributes": {"eOziYRFO": {}, "n0jJLHC9": {}, "LxhvNXTw": {}}, "user_id": "GBCtohLt"}], "ticket_created_at": 23, "ticket_id": "7MUBG7qt"}]}, {"matching_parties": [{"first_ticket_created_at": 84, "party_attributes": {"UDrT6QXC": {}, "s5SPBbRP": {}, "ZTF6oQAX": {}}, "party_id": "VG7tnsZg", "party_members": [{"extra_attributes": {"5QgXjvyG": {}, "JPN4eXbJ": {}, "E5Vs2Gcy": {}}, "user_id": "omQoIXim"}, {"extra_attributes": {"BJehyxlN": {}, "sjUgxBkF": {}, "6wFPoJeQ": {}}, "user_id": "ediogEhh"}, {"extra_attributes": {"M2rIizGd": {}, "KvOPdq5x": {}, "rgxSmy1D": {}}, "user_id": "N9LFkYW5"}], "ticket_created_at": 61, "ticket_id": "UiGKXVFC"}, {"first_ticket_created_at": 25, "party_attributes": {"o2ogaKt2": {}, "ujQSa3Zd": {}, "b65UXmy0": {}}, "party_id": "Zp6iIaTI", "party_members": [{"extra_attributes": {"KUkmkk9Q": {}, "M0NBMA9O": {}, "RxpzwLR2": {}}, "user_id": "AK6eXUGP"}, {"extra_attributes": {"Jsw1fiP8": {}, "0G9Pclxc": {}, "ft2ulIJz": {}}, "user_id": "PyrVEiOG"}, {"extra_attributes": {"4UcqsuGK": {}, "HhMRWLVd": {}, "3DlhLuIp": {}}, "user_id": "omM8sm1M"}], "ticket_created_at": 16, "ticket_id": "UccE536u"}, {"first_ticket_created_at": 13, "party_attributes": {"oARtdbBe": {}, "7udsMrok": {}, "0WvGYYnx": {}}, "party_id": "4V709xbn", "party_members": [{"extra_attributes": {"GezKsDwG": {}, "2omOR2nv": {}, "YI9TVqJd": {}}, "user_id": "vzcWbfUp"}, {"extra_attributes": {"aXp5JMl5": {}, "LL4bTxBm": {}, "ZjdrrIxs": {}}, "user_id": "B0NRsB1f"}, {"extra_attributes": {"PqqRRulp": {}, "qpymDkQh": {}, "trHWwRVn": {}}, "user_id": "wVBOqOHi"}], "ticket_created_at": 15, "ticket_id": "pWGd1juY"}]}], "namespace": "hiqjRJOq", "party_attributes": {"B5F93zFQ": {}, "bJndUDpd": {}, "ONneAczb": {}}, "party_id": "BdHb2slt", "queued_at": 95, "region": "1B1SmZp2", "server_name": "JZp50CnP", "status": "b71ORYcm", "ticket_id": "QbTU5JX8", "updated_at": "1972-05-30T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "cLjMXJRk"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler '0eaKQDOJ' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 44, "userID": "Ixi4YKlO", "weight": 0.6305787186342298}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'k2Q5Y4Jv' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "aizwiila", "description": "tuUjjt9l", "findMatchTimeoutSeconds": 70, "joinable": true, "max_delay_ms": 66, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 64, "min": 33, "name": "7Bl0Lcgh"}, {"max": 98, "min": 70, "name": "HfPEspxw"}, {"max": 16, "min": 11, "name": "RON0bc1e"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 70}, "maxNumber": 80, "minNumber": 19, "playerMaxNumber": 65, "playerMinNumber": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 64, "min": 47, "name": "J1KesKoE"}, {"max": 76, "min": 72, "name": "CpobBEG8"}, {"max": 63, "min": 47, "name": "Dymtj3gi"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 49}, "duration": 16, "max_number": 51, "min_number": 83, "player_max_number": 17, "player_min_number": 85}, {"combination": {"alliances": [{"max": 86, "min": 18, "name": "X6ues1Hh"}, {"max": 14, "min": 13, "name": "kg1yLVbL"}, {"max": 64, "min": 68, "name": "zHEP8cM4"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 13}, "duration": 76, "max_number": 37, "min_number": 69, "player_max_number": 0, "player_min_number": 54}, {"combination": {"alliances": [{"max": 17, "min": 38, "name": "R1DJ7HVW"}, {"max": 33, "min": 18, "name": "MkNSawQU"}, {"max": 100, "min": 60, "name": "plCSVq8P"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 56}, "duration": 73, "max_number": 9, "min_number": 85, "player_max_number": 71, "player_min_number": 96}], "flexingRules": [{"attribute": "XuqDuAXI", "criteria": "66bQ71w0", "duration": 7, "reference": 0.014752381030691653}, {"attribute": "XBWQi6Bq", "criteria": "Pg4xr0lC", "duration": 0, "reference": 0.13816380661501626}, {"attribute": "YNEzvSZI", "criteria": "PkhSgORc", "duration": 53, "reference": 0.6526567558582036}], "match_options": {"options": [{"name": "v7Zy0b65", "type": "uvuKNuy0"}, {"name": "ytZQ7M6N", "type": "zy1adnSK"}, {"name": "OLFKx1dX", "type": "4LuWJu3p"}]}, "matchingRules": [{"attribute": "DMUAeeZ9", "criteria": "7SBROPYu", "reference": 0.5297412183772798}, {"attribute": "6XqP6oo7", "criteria": "G73zdxTg", "reference": 0.6472079399897399}, {"attribute": "fnwIdlNa", "criteria": "29fDLh74", "reference": 0.8647619886111616}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 71, "socialMatchmaking": true, "use_sub_gamemode": false}' 'JlHeb34s' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'ZKHcl5LL' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'LOexL4fZ' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["vWtND2tc", "BFpX8lNt", "FEJ7tnkY"], "party_id": "6Mca5afj", "user_id": "12K2IzrB"}' 'vvWm4udE' '0OXudXgN' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'ne8kJATw' 'lc6esUp6' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'Sw1I98je' 'ZQ7hfxnh' 'Ld3Knakn' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'oed9DHhL' --login_with_auth "Bearer foo"
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
    '{"deployment": "OqQGhCUr", "description": "6iTrjyEg", "find_match_timeout_seconds": 0, "game_mode": "Fc5HTHQI", "joinable": false, "max_delay_ms": 97, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 38, "min": 72, "name": "Go7dwV9D"}, {"max": 56, "min": 44, "name": "qFKHQkET"}, {"max": 72, "min": 61, "name": "yTlUrwDT"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 60}, "max_number": 42, "min_number": 4, "player_max_number": 19, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 88, "min": 12, "name": "D4IEiH9Z"}, {"max": 1, "min": 33, "name": "3yddcbsP"}, {"max": 15, "min": 34, "name": "eTH26IUJ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 43}, "duration": 53, "max_number": 67, "min_number": 14, "player_max_number": 88, "player_min_number": 64}, {"combination": {"alliances": [{"max": 96, "min": 92, "name": "vpZaHCuE"}, {"max": 92, "min": 71, "name": "OiIZsMfB"}, {"max": 78, "min": 9, "name": "H3mtgWgU"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 58}, "duration": 54, "max_number": 94, "min_number": 76, "player_max_number": 71, "player_min_number": 48}, {"combination": {"alliances": [{"max": 71, "min": 9, "name": "JM9XsYII"}, {"max": 80, "min": 47, "name": "xot371W9"}, {"max": 67, "min": 1, "name": "4AvQkqsG"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 50}, "duration": 50, "max_number": 30, "min_number": 30, "player_max_number": 94, "player_min_number": 38}], "flexing_rule": [{"attribute": "JJTUVmb8", "criteria": "GEXFTlEM", "duration": 62, "reference": 0.5625717438869998}, {"attribute": "wMif3BOd", "criteria": "kocVTd4B", "duration": 48, "reference": 0.6059084554956198}, {"attribute": "m7FhJBNX", "criteria": "zAFdO0Kh", "duration": 34, "reference": 0.3433561331951155}], "match_options": {"options": [{"name": "qhnUVLWu", "type": "8olKdxL6"}, {"name": "ozRmDD0j", "type": "JvlfV5Oe"}, {"name": "mPYdYT7D", "type": "ROCjtuzF"}]}, "matching_rule": [{"attribute": "MbAG9YI8", "criteria": "9hmguB8F", "reference": 0.64886295714747}, {"attribute": "TjMLo4b9", "criteria": "rIzqYkEp", "reference": 0.29375893254173713}, {"attribute": "tyVTBcrM", "criteria": "8rG0rH0z", "reference": 0.04441585351810129}], "rebalance_enable": true, "sub_game_modes": {"wK7PpUlc": {"alliance": {"combination": {"alliances": [{"max": 70, "min": 3, "name": "W32iK7MG"}, {"max": 39, "min": 45, "name": "1ixY5rA1"}, {"max": 100, "min": 29, "name": "oVeJIePF"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 9}, "max_number": 87, "min_number": 61, "player_max_number": 51, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 86, "min": 64, "name": "4zvtdxdb"}, {"max": 74, "min": 95, "name": "xbWCYzo8"}, {"max": 51, "min": 83, "name": "pyVwyKQL"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 84}, "duration": 83, "max_number": 32, "min_number": 0, "player_max_number": 89, "player_min_number": 37}, {"combination": {"alliances": [{"max": 3, "min": 13, "name": "z7CYLM8I"}, {"max": 23, "min": 38, "name": "sHqffnrf"}, {"max": 37, "min": 66, "name": "4B1GZgKg"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 60}, "duration": 47, "max_number": 7, "min_number": 0, "player_max_number": 3, "player_min_number": 59}, {"combination": {"alliances": [{"max": 13, "min": 5, "name": "ufPpzwj1"}, {"max": 86, "min": 7, "name": "GIFmlVf4"}, {"max": 20, "min": 91, "name": "vapseE9L"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 36}, "duration": 84, "max_number": 67, "min_number": 36, "player_max_number": 50, "player_min_number": 68}], "name": "sryod3dN"}, "QrmsApRA": {"alliance": {"combination": {"alliances": [{"max": 24, "min": 69, "name": "TIpUA9gx"}, {"max": 30, "min": 9, "name": "8SV38nEh"}, {"max": 29, "min": 25, "name": "vCE48L5o"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 22}, "max_number": 82, "min_number": 28, "player_max_number": 0, "player_min_number": 2}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 22, "min": 73, "name": "opAywelu"}, {"max": 33, "min": 58, "name": "nryEJ0Nq"}, {"max": 29, "min": 21, "name": "Tow0qiOi"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 14}, "duration": 17, "max_number": 21, "min_number": 34, "player_max_number": 39, "player_min_number": 75}, {"combination": {"alliances": [{"max": 26, "min": 15, "name": "0ZPLkLOs"}, {"max": 32, "min": 42, "name": "0LZ5njN8"}, {"max": 68, "min": 13, "name": "l8kUXzt6"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 24}, "duration": 2, "max_number": 43, "min_number": 99, "player_max_number": 5, "player_min_number": 45}, {"combination": {"alliances": [{"max": 5, "min": 13, "name": "KMLhrTrc"}, {"max": 57, "min": 22, "name": "E2ItBS3K"}, {"max": 40, "min": 33, "name": "KZWe8aoF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 49}, "duration": 57, "max_number": 56, "min_number": 49, "player_max_number": 79, "player_min_number": 63}], "name": "vim02jBO"}, "xrZDyvpc": {"alliance": {"combination": {"alliances": [{"max": 77, "min": 59, "name": "OWA8NjxO"}, {"max": 28, "min": 1, "name": "Ur9Sk4lq"}, {"max": 52, "min": 12, "name": "fsflhjbn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 45}, "max_number": 83, "min_number": 49, "player_max_number": 95, "player_min_number": 69}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 27, "min": 32, "name": "8G5MlfDT"}, {"max": 21, "min": 31, "name": "8aG40Nln"}, {"max": 5, "min": 4, "name": "7fH0XrKE"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 14}, "duration": 63, "max_number": 51, "min_number": 15, "player_max_number": 97, "player_min_number": 31}, {"combination": {"alliances": [{"max": 28, "min": 94, "name": "ocGAjci0"}, {"max": 98, "min": 23, "name": "3tBf2jnH"}, {"max": 67, "min": 99, "name": "KXphn50c"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 24}, "duration": 6, "max_number": 19, "min_number": 79, "player_max_number": 15, "player_min_number": 91}, {"combination": {"alliances": [{"max": 88, "min": 20, "name": "qfAacR0L"}, {"max": 12, "min": 84, "name": "B5BUXvjc"}, {"max": 42, "min": 22, "name": "2s6w3Vif"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 63}, "duration": 33, "max_number": 90, "min_number": 25, "player_max_number": 69, "player_min_number": 93}], "name": "EonAZR8G"}}}, "session_queue_timeout_seconds": 25, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'QAYn6WQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "UBEU1QAO", "players": [{"results": [{"attribute": "HfZiGhxO", "value": 0.049740007268736064}, {"attribute": "cuDXSxSc", "value": 0.9025558919353778}, {"attribute": "aZPV87pn", "value": 0.0014089493314545232}], "user_id": "08gxefTY"}, {"results": [{"attribute": "KhuxaEc7", "value": 0.6179768993504271}, {"attribute": "4P7UckSC", "value": 0.9426520734441508}, {"attribute": "ePeN8i4G", "value": 0.2772821249462145}], "user_id": "FES9z7xu"}, {"results": [{"attribute": "eHpATHcc", "value": 0.0770137754490452}, {"attribute": "e9GXhKcj", "value": 0.19641785611429308}, {"attribute": "SEwdrkEn", "value": 0.21875044963431522}], "user_id": "qKzFsLfY"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "alUlfwEQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "KjU7eHGe", "client_version": "bSVu0LQ4", "deployment": "0kepEaC4", "error_code": 8, "error_message": "ZyjMQAg5", "game_mode": "mPYhrLTy", "joinable": false, "match_id": "vc1BZG99", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 77, "party_attributes": {"F4bYXEcE": {}, "Nx9xZlAc": {}, "hob44lON": {}}, "party_id": "DDwMvgI0", "party_members": [{"extra_attributes": {"HlyPR7wZ": {}, "NiVsF6xG": {}, "2mXEQdbz": {}}, "user_id": "IVy8alnc"}, {"extra_attributes": {"V7vWgSHd": {}, "fo07UctP": {}, "ErqxyMyO": {}}, "user_id": "K06MqQBE"}, {"extra_attributes": {"rxgjVByc": {}, "vU4PbmRD": {}, "crg0DjQj": {}}, "user_id": "BECXvea7"}], "ticket_created_at": 68, "ticket_id": "mZEiwxxE"}, {"first_ticket_created_at": 23, "party_attributes": {"3ZprZ60z": {}, "MjhTHeh9": {}, "4TSenE5h": {}}, "party_id": "CFkIf5we", "party_members": [{"extra_attributes": {"qZ18MH57": {}, "l2Zsrh90": {}, "ETtYmGuk": {}}, "user_id": "z3Mnlrjc"}, {"extra_attributes": {"Hp6B8Vj7": {}, "rXFgDnDk": {}, "dZ9bpjb1": {}}, "user_id": "tdA3QhjC"}, {"extra_attributes": {"MW64f4Xh": {}, "IjSoTB2N": {}, "MKtezapP": {}}, "user_id": "r2QEPx3z"}], "ticket_created_at": 94, "ticket_id": "cfoivvQx"}, {"first_ticket_created_at": 8, "party_attributes": {"ppuUSsKo": {}, "Hw2hyd12": {}, "uSE7BEv3": {}}, "party_id": "aevq6ioh", "party_members": [{"extra_attributes": {"U1cg4W1I": {}, "S3Uv1BpW": {}, "oJBaqdg2": {}}, "user_id": "FHcunsS1"}, {"extra_attributes": {"lnaO2m9v": {}, "qjhbeK2q": {}, "N8g6x2Py": {}}, "user_id": "YDo5R3hL"}, {"extra_attributes": {"iD5sf5y1": {}, "JsxJNGmy": {}, "t0SQDUDo": {}}, "user_id": "WBZVGLlk"}], "ticket_created_at": 96, "ticket_id": "PAANjfBo"}]}, {"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"x1aMjgGi": {}, "m51T107X": {}, "IZRZ7tZd": {}}, "party_id": "Is0xf4cz", "party_members": [{"extra_attributes": {"dt7zqmSK": {}, "xOEQlVcx": {}, "6GqsBq8v": {}}, "user_id": "dhWVnuYL"}, {"extra_attributes": {"gpZehK0G": {}, "2nmyuViB": {}, "9kRTcSQd": {}}, "user_id": "TnNYGeAf"}, {"extra_attributes": {"YFG3wSkH": {}, "KufBdS3Z": {}, "OokZB4cX": {}}, "user_id": "nAXyuGz6"}], "ticket_created_at": 76, "ticket_id": "AaH4yCWr"}, {"first_ticket_created_at": 69, "party_attributes": {"agYvDJ3w": {}, "3UNgIGj2": {}, "jZtEYT8s": {}}, "party_id": "IPSE1XXP", "party_members": [{"extra_attributes": {"zySa0sZo": {}, "FS6xCOWM": {}, "pyh9pMsQ": {}}, "user_id": "gb64ELbz"}, {"extra_attributes": {"DMwyo4nI": {}, "RysQdbuf": {}, "XjYnSoIF": {}}, "user_id": "eouC2m38"}, {"extra_attributes": {"kXrDZWlG": {}, "VE9sJ4Np": {}, "UtKp6M9I": {}}, "user_id": "6nEwnZhs"}], "ticket_created_at": 18, "ticket_id": "J3jtDYBo"}, {"first_ticket_created_at": 60, "party_attributes": {"FUTH7CGf": {}, "KSyxgRR1": {}, "DiCqSMzp": {}}, "party_id": "qIFGLkDs", "party_members": [{"extra_attributes": {"7ACC1RgB": {}, "foNrHlFi": {}, "2qJLgmBL": {}}, "user_id": "E35YhyiD"}, {"extra_attributes": {"V90SeI5y": {}, "ppBHoytV": {}, "znCgNyx9": {}}, "user_id": "fbT63ShE"}, {"extra_attributes": {"h8PbGikL": {}, "jgjcj34u": {}, "ulU6FYBZ": {}}, "user_id": "sWFbr3RS"}], "ticket_created_at": 85, "ticket_id": "3OMjAjq2"}]}, {"matching_parties": [{"first_ticket_created_at": 25, "party_attributes": {"f8Q0DtJM": {}, "cYQdN66b": {}, "swAgt65X": {}}, "party_id": "4N1LQZmB", "party_members": [{"extra_attributes": {"61JMdtwC": {}, "VUrYQue8": {}, "4dwmbwFE": {}}, "user_id": "nAZaWsQJ"}, {"extra_attributes": {"tRYoagRJ": {}, "K5PX9UcO": {}, "vhPyE11T": {}}, "user_id": "RT2SKseo"}, {"extra_attributes": {"e8VLie0L": {}, "Ba36KNzj": {}, "f005CXNG": {}}, "user_id": "ehQ2aTjT"}], "ticket_created_at": 61, "ticket_id": "gXchCbkX"}, {"first_ticket_created_at": 66, "party_attributes": {"26uEdCfQ": {}, "aMAQuTKf": {}, "C0I2kNjC": {}}, "party_id": "MDtDMren", "party_members": [{"extra_attributes": {"tgn3Dhqc": {}, "iwIeShF9": {}, "RKb9vvxu": {}}, "user_id": "JlhXbWhb"}, {"extra_attributes": {"wPwToC6k": {}, "njVwVnza": {}, "qSfJiQFC": {}}, "user_id": "2gXoda0k"}, {"extra_attributes": {"g16yUSpS": {}, "OAjHJWwf": {}, "CjYwWkLo": {}}, "user_id": "b9gKLqs2"}], "ticket_created_at": 27, "ticket_id": "tq6j1mqU"}, {"first_ticket_created_at": 1, "party_attributes": {"ZinxNfgP": {}, "AwkMBszn": {}, "lBUqnLT4": {}}, "party_id": "AbGptKaW", "party_members": [{"extra_attributes": {"NvPbpg7y": {}, "rRvXfZ6r": {}, "vgvEY3Hh": {}}, "user_id": "t1SwqTsK"}, {"extra_attributes": {"KKo37NHD": {}, "OQe91Ps3": {}, "ztUIV0dS": {}}, "user_id": "6hIH9c4V"}, {"extra_attributes": {"fkyrwpuX": {}, "xbaERbfg": {}, "Pmi0eHkt": {}}, "user_id": "1mr9EOIF"}], "ticket_created_at": 13, "ticket_id": "ZNCxuogF"}]}], "namespace": "teTHJe4B", "party_attributes": {"hSSQkQD6": {}, "WmOt6D7u": {}, "fFVTOhvQ": {}}, "party_id": "pfbBke8a", "queued_at": 62, "region": "oGGoY7xm", "server_name": "FNAmjDDC", "status": "vs78mcMd", "ticket_id": "iS76YApG", "updated_at": "1989-04-27T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "ufwLYkqI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'gLuZS6hs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 88, "userID": "rIz4NhGz", "weight": 0.31561327165923514}' \
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
    'Zpr4U4fw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "QIiLXgmR", "description": "asvjO4lj", "findMatchTimeoutSeconds": 64, "joinable": false, "max_delay_ms": 72, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 25, "min": 62, "name": "X8qwU1cT"}, {"max": 42, "min": 48, "name": "HHPB5S3D"}, {"max": 45, "min": 37, "name": "PRCzBrVU"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 20}, "maxNumber": 83, "minNumber": 55, "playerMaxNumber": 19, "playerMinNumber": 56}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 8, "min": 5, "name": "Gs9yxahl"}, {"max": 8, "min": 99, "name": "1pO0Gyf5"}, {"max": 85, "min": 83, "name": "Wuk6pQxD"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 74}, "duration": 31, "max_number": 33, "min_number": 53, "player_max_number": 47, "player_min_number": 78}, {"combination": {"alliances": [{"max": 68, "min": 65, "name": "eMvr9Tsv"}, {"max": 4, "min": 79, "name": "IVYa6iZ5"}, {"max": 41, "min": 4, "name": "FRYNn3SH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 25}, "duration": 49, "max_number": 52, "min_number": 64, "player_max_number": 97, "player_min_number": 35}, {"combination": {"alliances": [{"max": 2, "min": 43, "name": "T1Nxw0v1"}, {"max": 7, "min": 99, "name": "MQ9Rrbk6"}, {"max": 58, "min": 4, "name": "0XIZRW49"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 54}, "duration": 20, "max_number": 32, "min_number": 97, "player_max_number": 59, "player_min_number": 83}], "flexingRules": [{"attribute": "D2VXidT7", "criteria": "w0Oc15N8", "duration": 100, "reference": 0.894589132063131}, {"attribute": "IhtCSHy1", "criteria": "ei1fIrPv", "duration": 12, "reference": 0.9044218848961671}, {"attribute": "t7WQnp8j", "criteria": "XZedgt5c", "duration": 51, "reference": 0.6976000043855359}], "match_options": {"options": [{"name": "fk4f9Zcw", "type": "1pEHAyNF"}, {"name": "xcVTKuAQ", "type": "TGh5BxjW"}, {"name": "OozGoDts", "type": "UuYo5p8E"}]}, "matchingRules": [{"attribute": "D5QZAufw", "criteria": "Na8lzfjv", "reference": 0.9907015956126637}, {"attribute": "oYMXMjlV", "criteria": "HY1AHwF3", "reference": 0.3487129833203608}, {"attribute": "Goav7MK0", "criteria": "PcLnEkco", "reference": 0.17589718121892695}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 74, "socialMatchmaking": true, "use_sub_gamemode": false}' \
    'imNhcZsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    '3VAdMDcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    '4qlkiFAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["mqvZI2Kw", "jqPBiWXa", "de41s3rH"], "party_id": "34mB2yPl", "user_id": "RpWjmHZA"}' \
    'AvKTH8Mu' \
    'qIg0Czkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'uwuJCW7E' \
    'EFB67AOD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'bi9BzupB' \
    'sFpYc77G' \
    'tRUcCFeY' \
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
    '5g4XgBsb' \
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
