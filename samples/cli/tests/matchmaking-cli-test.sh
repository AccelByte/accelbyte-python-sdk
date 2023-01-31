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
matchmaking-create-channel-handler '{"deployment": "nyIYirFm", "description": "QCg1Sion", "find_match_timeout_seconds": 46, "game_mode": "fM8zv5CM", "joinable": false, "max_delay_ms": 32, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 68, "min": 26, "name": "bUh063Uk"}, {"max": 22, "min": 58, "name": "FQQqMYct"}, {"max": 56, "min": 85, "name": "W1asQcFl"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 47}, "max_number": 89, "min_number": 17, "player_max_number": 71, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 56, "min": 91, "name": "95JelOmR"}, {"max": 56, "min": 17, "name": "rBzatyja"}, {"max": 16, "min": 86, "name": "oJRY8uTo"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 97}, "duration": 90, "max_number": 27, "min_number": 68, "player_max_number": 82, "player_min_number": 92}, {"combination": {"alliances": [{"max": 7, "min": 1, "name": "dtGytsQk"}, {"max": 54, "min": 82, "name": "Texbu1qn"}, {"max": 60, "min": 75, "name": "w6uW7XT6"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 84}, "duration": 51, "max_number": 46, "min_number": 39, "player_max_number": 33, "player_min_number": 88}, {"combination": {"alliances": [{"max": 59, "min": 25, "name": "jGDIIGiE"}, {"max": 89, "min": 92, "name": "NrPGHvfT"}, {"max": 91, "min": 97, "name": "fYd5e5uW"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 57, "role_flexing_second": 45}, "duration": 55, "max_number": 90, "min_number": 7, "player_max_number": 83, "player_min_number": 47}], "flexing_rule": [{"attribute": "6yVErXOp", "criteria": "pdjdFi86", "duration": 85, "reference": 0.3991950259275724}, {"attribute": "zB6ua4nk", "criteria": "po0c5srQ", "duration": 57, "reference": 0.3858837201533949}, {"attribute": "19NleA0h", "criteria": "XjUVC6tx", "duration": 24, "reference": 0.2809479098555886}], "match_options": {"options": [{"name": "9gVFm8Dm", "type": "X9DBMS9x"}, {"name": "blsVSpcz", "type": "jcrOG61t"}, {"name": "j9DaknO3", "type": "ZRSI8BpT"}]}, "matching_rule": [{"attribute": "3SoBqXeJ", "criteria": "pxkSRR6t", "reference": 0.5513505169412277}, {"attribute": "QlI483Wc", "criteria": "fooNZmxV", "reference": 0.1925563210474397}, {"attribute": "ZJuHFFM8", "criteria": "JthKSBYS", "reference": 0.9137641725054182}], "rebalance_enable": false, "sub_game_modes": {"bOfbCnY2": {"alliance": {"combination": {"alliances": [{"max": 16, "min": 6, "name": "qv2TLNqz"}, {"max": 61, "min": 8, "name": "RS4VJ9t9"}, {"max": 48, "min": 73, "name": "8ftYvsj6"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 70}, "max_number": 66, "min_number": 32, "player_max_number": 11, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 66, "min": 47, "name": "tR8SOma1"}, {"max": 47, "min": 96, "name": "oiPWdAfA"}, {"max": 46, "min": 21, "name": "4zS5GFPs"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 60}, "duration": 5, "max_number": 58, "min_number": 86, "player_max_number": 70, "player_min_number": 92}, {"combination": {"alliances": [{"max": 93, "min": 39, "name": "HC1Swkek"}, {"max": 62, "min": 79, "name": "pLRbcKOJ"}, {"max": 98, "min": 82, "name": "5IaP9iX1"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 16}, "duration": 16, "max_number": 100, "min_number": 59, "player_max_number": 11, "player_min_number": 13}, {"combination": {"alliances": [{"max": 17, "min": 41, "name": "1YoWTobh"}, {"max": 8, "min": 37, "name": "qS0THBmQ"}, {"max": 26, "min": 10, "name": "CUUNK0SV"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 33}, "duration": 93, "max_number": 70, "min_number": 38, "player_max_number": 95, "player_min_number": 47}], "name": "1Bv88t9S"}, "qJoHkvDm": {"alliance": {"combination": {"alliances": [{"max": 57, "min": 10, "name": "Uoud6nFo"}, {"max": 38, "min": 0, "name": "HH0I9rBi"}, {"max": 88, "min": 38, "name": "YEmzNXpC"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 19}, "max_number": 74, "min_number": 18, "player_max_number": 72, "player_min_number": 36}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 75, "min": 12, "name": "8NoluHfX"}, {"max": 70, "min": 26, "name": "mwkUGDq0"}, {"max": 58, "min": 46, "name": "xS2GPKsK"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 78}, "duration": 85, "max_number": 46, "min_number": 97, "player_max_number": 10, "player_min_number": 86}, {"combination": {"alliances": [{"max": 52, "min": 69, "name": "tHYOJIKV"}, {"max": 20, "min": 68, "name": "vzTyUw4w"}, {"max": 81, "min": 37, "name": "vuPUklmj"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 28}, "duration": 48, "max_number": 53, "min_number": 41, "player_max_number": 77, "player_min_number": 16}, {"combination": {"alliances": [{"max": 42, "min": 2, "name": "oAFQOF5D"}, {"max": 56, "min": 66, "name": "thNJsXLD"}, {"max": 80, "min": 79, "name": "EZZaZNGT"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 31}, "duration": 39, "max_number": 1, "min_number": 50, "player_max_number": 71, "player_min_number": 15}], "name": "Flwc6xlH"}, "dvk7GAnU": {"alliance": {"combination": {"alliances": [{"max": 78, "min": 14, "name": "2BZbRsxT"}, {"max": 53, "min": 40, "name": "rL5z8Wkp"}, {"max": 76, "min": 84, "name": "ZiRF4r8f"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 21}, "max_number": 0, "min_number": 57, "player_max_number": 10, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 45, "name": "iGXakyNh"}, {"max": 37, "min": 0, "name": "xsu1NLji"}, {"max": 75, "min": 61, "name": "ILREVmzm"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 11}, "duration": 14, "max_number": 29, "min_number": 18, "player_max_number": 27, "player_min_number": 49}, {"combination": {"alliances": [{"max": 3, "min": 100, "name": "SG0oXtyD"}, {"max": 77, "min": 31, "name": "8sI64V8G"}, {"max": 35, "min": 85, "name": "Z6cOPhR3"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 77}, "duration": 44, "max_number": 66, "min_number": 22, "player_max_number": 9, "player_min_number": 69}, {"combination": {"alliances": [{"max": 70, "min": 49, "name": "XzaUMhTo"}, {"max": 100, "min": 11, "name": "fLmmJgM3"}, {"max": 28, "min": 52, "name": "iSRgZlNu"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 62}, "duration": 93, "max_number": 89, "min_number": 81, "player_max_number": 55, "player_min_number": 37}], "name": "dvxggp4P"}}}, "session_queue_timeout_seconds": 66, "social_matchmaking": true, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'qGJo0xpC' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "dG8C7j35", "players": [{"results": [{"attribute": "vaaOI1p8", "value": 0.8888395827289799}, {"attribute": "grK9grC1", "value": 0.052931912118144187}, {"attribute": "1W3HpiVm", "value": 0.1793802008585451}], "user_id": "onXkaZnG"}, {"results": [{"attribute": "F6snCnX7", "value": 0.6025701224096165}, {"attribute": "qmOVsuoF", "value": 0.6827830330061954}, {"attribute": "pSRHE2YN", "value": 0.4404920850620885}], "user_id": "FAFhCZnY"}, {"results": [{"attribute": "9hMIDqJf", "value": 0.7951612183755311}, {"attribute": "gKmvBg5i", "value": 0.7498222523307612}, {"attribute": "QlZOkXLH", "value": 0.2311621229613534}], "user_id": "saaDueGV"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "5DzJBKzA"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "yVsdgl84", "client_version": "eL8JBR1M", "deployment": "bD8FglaR", "error_code": 79, "error_message": "0IUybUuf", "game_mode": "SKCCwnGr", "joinable": true, "match_id": "1yhbZUep", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 88, "party_attributes": {"WpRODQ64": {}, "TVv9XPK4": {}, "ZegliVRb": {}}, "party_id": "Va9YApZJ", "party_members": [{"extra_attributes": {"jnG4qtpZ": {}, "aMkJifGU": {}, "jaWRAKqB": {}}, "user_id": "OSTsIVtn"}, {"extra_attributes": {"cURa8IDy": {}, "jRuW3BNX": {}, "h4CrsXnF": {}}, "user_id": "S93Dju20"}, {"extra_attributes": {"qmdRmC5O": {}, "uzKOVL55": {}, "ru0MQiWI": {}}, "user_id": "txFUgFJb"}], "ticket_id": "By0pqzAz"}, {"first_ticket_created_at": 37, "party_attributes": {"FoxS8Nx7": {}, "eoA9lUdr": {}, "e93BY4T5": {}}, "party_id": "kjAFqzbM", "party_members": [{"extra_attributes": {"cVWti356": {}, "Us29xxji": {}, "O1LVKMDW": {}}, "user_id": "Gb9VP0O7"}, {"extra_attributes": {"C8mON0Pg": {}, "TMrRanXa": {}, "3Wdc46Z8": {}}, "user_id": "kxZfATjo"}, {"extra_attributes": {"SVgeLfxh": {}, "qHAjR7wd": {}, "z0fSdTa7": {}}, "user_id": "gOCcDFvo"}], "ticket_id": "D6dgH0U9"}, {"first_ticket_created_at": 6, "party_attributes": {"YYxW9izN": {}, "RWyxeZEX": {}, "coWjZkFH": {}}, "party_id": "qcnLcHgI", "party_members": [{"extra_attributes": {"vtocyy3W": {}, "gURcWiCv": {}, "MPYhIWkb": {}}, "user_id": "x7Jke7Bg"}, {"extra_attributes": {"pg92xArV": {}, "vZb8QRYW": {}, "XX9dcqF1": {}}, "user_id": "jus9x8oC"}, {"extra_attributes": {"L23XZldF": {}, "894qq27b": {}, "8nte1wDp": {}}, "user_id": "gHoWU4Xe"}], "ticket_id": "QHstTt4Z"}]}, {"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"WD1kBG4D": {}, "WRtGtYKF": {}, "pmRf1LAH": {}}, "party_id": "fUzFLZj8", "party_members": [{"extra_attributes": {"Sr8E26DE": {}, "ZuusaGFo": {}, "N7zrAlyp": {}}, "user_id": "qQ6Uot2r"}, {"extra_attributes": {"QH0HNVqh": {}, "bpDI2S2U": {}, "GYyRGEyh": {}}, "user_id": "UcOHQAEM"}, {"extra_attributes": {"2vgoHbxG": {}, "h2dObjtx": {}, "urV6fdby": {}}, "user_id": "hHioJyhT"}], "ticket_id": "wjLw9mDD"}, {"first_ticket_created_at": 50, "party_attributes": {"rohHyape": {}, "4aBhjWjo": {}, "dnFF3gcj": {}}, "party_id": "U2PZASke", "party_members": [{"extra_attributes": {"y5xcZDu1": {}, "TZdVHXOq": {}, "4KaQpq57": {}}, "user_id": "HIXfZoH6"}, {"extra_attributes": {"PePM7Ly5": {}, "12Y4eF3t": {}, "6rSY7uQH": {}}, "user_id": "pXx4gMy5"}, {"extra_attributes": {"Vd7NZ66Z": {}, "rMu6BbIA": {}, "1HTxwtjf": {}}, "user_id": "zyZk8jMl"}], "ticket_id": "QUf9WbKx"}, {"first_ticket_created_at": 93, "party_attributes": {"4kEUtYcH": {}, "v1Q5mXLB": {}, "ZaKwiPjJ": {}}, "party_id": "8a8UfKFc", "party_members": [{"extra_attributes": {"5RbIRN63": {}, "1e6G4qNk": {}, "07Zz3DPW": {}}, "user_id": "SPI23JsI"}, {"extra_attributes": {"sXBzbJlg": {}, "uDqNp40h": {}, "9dqNyL6O": {}}, "user_id": "nOxsNuZG"}, {"extra_attributes": {"H3AtKIuI": {}, "j3o5zCeT": {}, "JZLBwGTr": {}}, "user_id": "hqmTlNuT"}], "ticket_id": "IbYabX9K"}]}, {"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"zS6ZUtng": {}, "dQ0HbgGK": {}, "wcN9BlyI": {}}, "party_id": "FC9zX85H", "party_members": [{"extra_attributes": {"EmtjcZCS": {}, "7ELRcKEQ": {}, "3z6jKBJY": {}}, "user_id": "OmVLwsSj"}, {"extra_attributes": {"6jfuRYRM": {}, "mPCFHBzC": {}, "7pDkXGQT": {}}, "user_id": "zL7zKqh8"}, {"extra_attributes": {"jWFDRbm7": {}, "FRch5OJU": {}, "6NHtJSVw": {}}, "user_id": "3J1Jo2Ly"}], "ticket_id": "Yn96KW6Z"}, {"first_ticket_created_at": 70, "party_attributes": {"X0VahFvJ": {}, "SLdL0yv4": {}, "jsbcKnGT": {}}, "party_id": "vZSjZmTJ", "party_members": [{"extra_attributes": {"Tgul3kAp": {}, "pEwd5fJa": {}, "uHwpNSP4": {}}, "user_id": "pgyKsomw"}, {"extra_attributes": {"0K9uMByR": {}, "kKzwBwbJ": {}, "qDSi1OYu": {}}, "user_id": "294yiCI7"}, {"extra_attributes": {"Y3l3ySvZ": {}, "ix8HnOi4": {}, "4DyzceQ2": {}}, "user_id": "NQ0CxE2a"}], "ticket_id": "N4D7iann"}, {"first_ticket_created_at": 29, "party_attributes": {"CORlqawD": {}, "7rBMlBoa": {}, "jX9oODEP": {}}, "party_id": "UlpEX4at", "party_members": [{"extra_attributes": {"KqsQqYP6": {}, "ZsXHLS6z": {}, "uQGCGJLi": {}}, "user_id": "7zsN9DSa"}, {"extra_attributes": {"1jVDfLRY": {}, "uk2XrYAj": {}, "2ptXHVba": {}}, "user_id": "7WhzJ8nx"}, {"extra_attributes": {"MV57P4oF": {}, "bx1kyBPL": {}, "mYlwQgzA": {}}, "user_id": "XTZ10HGU"}], "ticket_id": "TfgcxtUT"}]}], "namespace": "UmjKkaKr", "party_attributes": {"mYuFNl8E": {}, "212IKVrK": {}, "giXQgcYS": {}}, "party_id": "BoBm7rkh", "queued_at": 40, "region": "DziHJHLV", "server_name": "BrqBbbri", "status": "We4jCHig", "ticket_id": "3rQMFTm0", "updated_at": "1989-01-30T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "LXEjYMPj"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'sThsl0Le' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 66, "userID": "jKVSpMVm", "weight": 0.45477007575201644}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'aJ9dIcQI' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "3TAIW29R", "description": "sxbnF4fb", "findMatchTimeoutSeconds": 90, "joinable": true, "max_delay_ms": 54, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 54, "min": 80, "name": "4uWiFJYC"}, {"max": 53, "min": 86, "name": "swGYE0Ni"}, {"max": 43, "min": 8, "name": "3Qlccjpz"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 24}, "maxNumber": 44, "minNumber": 70, "playerMaxNumber": 58, "playerMinNumber": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 30, "min": 71, "name": "FKoYZ0FU"}, {"max": 44, "min": 8, "name": "8SYzzhNP"}, {"max": 89, "min": 70, "name": "H7ZBJduK"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 61}, "duration": 59, "max_number": 55, "min_number": 94, "player_max_number": 6, "player_min_number": 4}, {"combination": {"alliances": [{"max": 26, "min": 23, "name": "t6WmW8aV"}, {"max": 72, "min": 1, "name": "COMBYXB6"}, {"max": 78, "min": 72, "name": "OboPw84V"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 61}, "duration": 93, "max_number": 7, "min_number": 14, "player_max_number": 69, "player_min_number": 1}, {"combination": {"alliances": [{"max": 40, "min": 39, "name": "9HcQbtcS"}, {"max": 83, "min": 9, "name": "QX9HdKiE"}, {"max": 25, "min": 79, "name": "GE5cBe0Q"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 38}, "duration": 4, "max_number": 53, "min_number": 15, "player_max_number": 11, "player_min_number": 67}], "flexingRules": [{"attribute": "yKpOMBv8", "criteria": "BdEuIp7C", "duration": 39, "reference": 0.8754065809121846}, {"attribute": "DOkUK61M", "criteria": "IqNMsjKB", "duration": 80, "reference": 0.8364446426100698}, {"attribute": "iZ4WFyK9", "criteria": "ogk314aD", "duration": 75, "reference": 0.8745059069964768}], "match_options": {"options": [{"name": "tqKDA9nc", "type": "gO9aKOXJ"}, {"name": "8501pzwJ", "type": "5iZimoH6"}, {"name": "o2xVWvB5", "type": "eI69psyA"}]}, "matchingRules": [{"attribute": "gR0VL49T", "criteria": "N6FWg3Tb", "reference": 0.7799547521827989}, {"attribute": "tC3LdQ2B", "criteria": "kaUHjXfc", "reference": 0.19538823637827607}, {"attribute": "lV65aglz", "criteria": "evNSUCfK", "reference": 0.5499451748587255}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 36, "socialMatchmaking": false, "use_sub_gamemode": true}' 'jorCwun6' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel '4E43BWqs' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'd9T7Boxn' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["SXKqcrOM", "6TWO9AbY", "1qJtCSMP"], "party_id": "4ZPSZcLJ", "user_id": "S11vC3LU"}' 'ymiedZuA' 'TQKnodOI' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel '87XWGu7x' 'LTGtgCxt' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'hsnAeWmn' 'SsNWSeXQ' '9H4lo9Ze' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'q7KpkPyy' --login_with_auth "Bearer foo"
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
    '{"deployment": "2X0UXuFE", "description": "miTWBJfH", "find_match_timeout_seconds": 29, "game_mode": "TA9bqwOc", "joinable": true, "max_delay_ms": 38, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 41, "min": 39, "name": "hATZqweD"}, {"max": 46, "min": 20, "name": "O3l8ZV5D"}, {"max": 62, "min": 24, "name": "5EOsWvOQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 94}, "max_number": 31, "min_number": 74, "player_max_number": 88, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 9, "min": 66, "name": "wGsV7DRb"}, {"max": 66, "min": 95, "name": "LNhTv92O"}, {"max": 52, "min": 70, "name": "QfXNdqdc"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 53}, "duration": 23, "max_number": 14, "min_number": 98, "player_max_number": 67, "player_min_number": 84}, {"combination": {"alliances": [{"max": 31, "min": 37, "name": "U7xct0pg"}, {"max": 69, "min": 3, "name": "lkFdoGAk"}, {"max": 44, "min": 11, "name": "IZlbNbUR"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 12}, "duration": 35, "max_number": 56, "min_number": 75, "player_max_number": 2, "player_min_number": 82}, {"combination": {"alliances": [{"max": 20, "min": 68, "name": "DXaJWenJ"}, {"max": 31, "min": 10, "name": "zLkbXx2V"}, {"max": 64, "min": 2, "name": "W1tOm9Wk"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 55}, "duration": 0, "max_number": 34, "min_number": 47, "player_max_number": 25, "player_min_number": 87}], "flexing_rule": [{"attribute": "oFA5JCQR", "criteria": "0rnW7VWH", "duration": 16, "reference": 0.6204241731532292}, {"attribute": "g4oBdyZO", "criteria": "yr2qs8Mq", "duration": 61, "reference": 0.799335768279196}, {"attribute": "WiwPvPZq", "criteria": "UVzf0xmC", "duration": 70, "reference": 0.6422156603644577}], "match_options": {"options": [{"name": "7ZlFrdmG", "type": "PrOlxOLa"}, {"name": "9uKHnNE0", "type": "4m76lJlN"}, {"name": "MHAEnGHT", "type": "jT85coLW"}]}, "matching_rule": [{"attribute": "Qnn4m8R5", "criteria": "d2wmwXvm", "reference": 0.367787317260305}, {"attribute": "50T27EDM", "criteria": "LeDx1JBk", "reference": 0.7664833799651237}, {"attribute": "A332k6oG", "criteria": "EQiZrnO6", "reference": 0.1511219925014029}], "rebalance_enable": true, "sub_game_modes": {"mnt1LVjZ": {"alliance": {"combination": {"alliances": [{"max": 71, "min": 80, "name": "aPrXlMds"}, {"max": 61, "min": 74, "name": "USk9E7kv"}, {"max": 99, "min": 33, "name": "x24hbcJQ"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 90}, "max_number": 30, "min_number": 26, "player_max_number": 73, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 92, "name": "bZIY84xa"}, {"max": 41, "min": 33, "name": "MT9TkTVS"}, {"max": 75, "min": 46, "name": "WwUfPKhs"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 91}, "duration": 19, "max_number": 15, "min_number": 27, "player_max_number": 36, "player_min_number": 66}, {"combination": {"alliances": [{"max": 83, "min": 65, "name": "hDOW18Gn"}, {"max": 0, "min": 10, "name": "PMKp2xTf"}, {"max": 23, "min": 68, "name": "De2xnZoD"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 14}, "duration": 47, "max_number": 58, "min_number": 70, "player_max_number": 64, "player_min_number": 49}, {"combination": {"alliances": [{"max": 61, "min": 15, "name": "QZSLTOI9"}, {"max": 35, "min": 37, "name": "k9MKDvJd"}, {"max": 29, "min": 50, "name": "VGBjg4Am"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 61}, "duration": 19, "max_number": 42, "min_number": 71, "player_max_number": 42, "player_min_number": 45}], "name": "Wc9WfD8P"}, "CgKHqcVo": {"alliance": {"combination": {"alliances": [{"max": 98, "min": 50, "name": "JZ3dGev8"}, {"max": 60, "min": 92, "name": "NR0YcJXg"}, {"max": 77, "min": 40, "name": "jEscnGJd"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 36}, "max_number": 46, "min_number": 23, "player_max_number": 7, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 81, "name": "UzAqp2dh"}, {"max": 25, "min": 1, "name": "vRaxZ89U"}, {"max": 82, "min": 75, "name": "7JtWECAG"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 42}, "duration": 38, "max_number": 34, "min_number": 74, "player_max_number": 35, "player_min_number": 34}, {"combination": {"alliances": [{"max": 49, "min": 56, "name": "BljTrywS"}, {"max": 43, "min": 71, "name": "HapQE7kt"}, {"max": 98, "min": 75, "name": "KNVkwmyO"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 19}, "duration": 19, "max_number": 4, "min_number": 35, "player_max_number": 42, "player_min_number": 58}, {"combination": {"alliances": [{"max": 100, "min": 65, "name": "eD69el5v"}, {"max": 33, "min": 88, "name": "sY2S9ZY8"}, {"max": 86, "min": 90, "name": "fp1yzvLe"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 23}, "duration": 93, "max_number": 54, "min_number": 33, "player_max_number": 0, "player_min_number": 92}], "name": "aORmwxVV"}, "TxVxpBQ5": {"alliance": {"combination": {"alliances": [{"max": 91, "min": 80, "name": "tdlaYlM1"}, {"max": 95, "min": 89, "name": "lCZM2un9"}, {"max": 10, "min": 0, "name": "Qovn8jvG"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 41}, "max_number": 49, "min_number": 68, "player_max_number": 12, "player_min_number": 19}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 85, "min": 23, "name": "QUWCSTOY"}, {"max": 43, "min": 3, "name": "rEggurbk"}, {"max": 29, "min": 98, "name": "om5Tq5bM"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 63}, "duration": 81, "max_number": 30, "min_number": 72, "player_max_number": 22, "player_min_number": 12}, {"combination": {"alliances": [{"max": 32, "min": 33, "name": "Y9OsmoTk"}, {"max": 25, "min": 72, "name": "eO47MKtL"}, {"max": 87, "min": 62, "name": "BMsY0OX9"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 16}, "duration": 24, "max_number": 23, "min_number": 28, "player_max_number": 53, "player_min_number": 84}, {"combination": {"alliances": [{"max": 84, "min": 18, "name": "zLFoXWk5"}, {"max": 70, "min": 72, "name": "8w03IZEF"}, {"max": 17, "min": 6, "name": "tnJGLr3N"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 97}, "duration": 33, "max_number": 30, "min_number": 25, "player_max_number": 45, "player_min_number": 22}], "name": "4pKDkBHU"}}}, "session_queue_timeout_seconds": 50, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'CiXyUPZZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "MLaeO8QR", "players": [{"results": [{"attribute": "L9EtC4cA", "value": 0.015637960767258985}, {"attribute": "1HHV6ILz", "value": 0.8246456978446692}, {"attribute": "14jqJOly", "value": 0.7541183730765881}], "user_id": "jlqApgTG"}, {"results": [{"attribute": "3DosvheC", "value": 0.2982915471420883}, {"attribute": "kd5uFyPK", "value": 0.573772917620998}, {"attribute": "tlZCukeP", "value": 0.4003889374411628}], "user_id": "dHJTx2dS"}, {"results": [{"attribute": "SF7FmN3P", "value": 0.165661996422642}, {"attribute": "ZqduVPKF", "value": 0.8126322132389606}, {"attribute": "09iCfJTK", "value": 0.9712096723564881}], "user_id": "vsby4K5k"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "YICDfXhd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "sCS55yvT", "client_version": "142wf9GU", "deployment": "KyIEwEKZ", "error_code": 46, "error_message": "eLuY7glj", "game_mode": "4yTk37a1", "joinable": false, "match_id": "NAfBDkT2", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 78, "party_attributes": {"UJtdFAWP": {}, "eTeHtgOr": {}, "1C8lTtQS": {}}, "party_id": "WQLyr9kV", "party_members": [{"extra_attributes": {"IVneX6TG": {}, "VA4S1FWI": {}, "Fwi5Absa": {}}, "user_id": "riROp3r7"}, {"extra_attributes": {"BF2eJch8": {}, "8QFPKxdu": {}, "qSMcNF49": {}}, "user_id": "SiZwL4Oo"}, {"extra_attributes": {"3Jb993Jt": {}, "BPQPc8X6": {}, "GmpftP96": {}}, "user_id": "LE1ESBAU"}], "ticket_id": "Q1lg3I4V"}, {"first_ticket_created_at": 38, "party_attributes": {"bDjLeNdv": {}, "BnIU9Dss": {}, "NSVPhBMU": {}}, "party_id": "rVNzrzSJ", "party_members": [{"extra_attributes": {"N4zXIhGF": {}, "mMXUvoeA": {}, "NeF30jxo": {}}, "user_id": "YLzpg5VQ"}, {"extra_attributes": {"AHUDKqav": {}, "Lh2418Fr": {}, "VRxOZXpc": {}}, "user_id": "Xxzb0TWe"}, {"extra_attributes": {"ksVdgb8Y": {}, "VwxX5kWI": {}, "wYHg4sR4": {}}, "user_id": "hiKh2yN3"}], "ticket_id": "7tpNEM8X"}, {"first_ticket_created_at": 89, "party_attributes": {"NjmqlYN1": {}, "qosCPc8p": {}, "6elHIoDs": {}}, "party_id": "UIcS5pBA", "party_members": [{"extra_attributes": {"naIHthvr": {}, "dvCbxDmK": {}, "rXSEgWZv": {}}, "user_id": "znXSc2wb"}, {"extra_attributes": {"I94qvG81": {}, "bBrOyfxn": {}, "BA00uPz5": {}}, "user_id": "G7VjoU6m"}, {"extra_attributes": {"cQUAucWd": {}, "HWz1QnBP": {}, "oYsIQv3W": {}}, "user_id": "cDz22Ms8"}], "ticket_id": "OwEUMvLj"}]}, {"matching_parties": [{"first_ticket_created_at": 87, "party_attributes": {"K1BvmVIR": {}, "dlGzHest": {}, "HaKQ2ru1": {}}, "party_id": "4mEXauQZ", "party_members": [{"extra_attributes": {"SO5hKFG7": {}, "b22dLYSI": {}, "vtfrwTRH": {}}, "user_id": "YBxTAnl6"}, {"extra_attributes": {"lSqodUUq": {}, "D50d1x6G": {}, "sayxSkFL": {}}, "user_id": "AtI9MZUx"}, {"extra_attributes": {"f5aDKSda": {}, "27qdfGnz": {}, "Hxv1jAk3": {}}, "user_id": "3iRGSF2V"}], "ticket_id": "RyzW2Er7"}, {"first_ticket_created_at": 2, "party_attributes": {"tAnwff5t": {}, "TRWBmE0r": {}, "8UAuhmKK": {}}, "party_id": "1TucxhVI", "party_members": [{"extra_attributes": {"OL56LNPO": {}, "GRb71DhX": {}, "bbOyCHN6": {}}, "user_id": "2Etvf6gw"}, {"extra_attributes": {"ttGsDUG2": {}, "XUZNMAnl": {}, "7YCqDt9i": {}}, "user_id": "qP0juNGQ"}, {"extra_attributes": {"70zV4lH9": {}, "kbfE8J4Q": {}, "UlEcY2Yy": {}}, "user_id": "mPEWbHsI"}], "ticket_id": "Dvdueyfc"}, {"first_ticket_created_at": 38, "party_attributes": {"7zjYtWKG": {}, "PmRS8QUT": {}, "ybuq7Xoc": {}}, "party_id": "ayjuWrcd", "party_members": [{"extra_attributes": {"xXWB1ObY": {}, "ZzbBzcuM": {}, "qrelpnNO": {}}, "user_id": "HZNDJdhH"}, {"extra_attributes": {"745XSFyQ": {}, "h5xhB5sv": {}, "BsQULeu8": {}}, "user_id": "bVBdQBRy"}, {"extra_attributes": {"OS0r5cu0": {}, "IVHBm9Em": {}, "kAiTihH0": {}}, "user_id": "7d25QvRg"}], "ticket_id": "lxpKlZVs"}]}, {"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"SieycXdF": {}, "Ac5f2E6B": {}, "ebxF5ccm": {}}, "party_id": "nStDqnUy", "party_members": [{"extra_attributes": {"ww3w1RWb": {}, "0991kdFH": {}, "IuOyYeMf": {}}, "user_id": "q8KV0u4p"}, {"extra_attributes": {"HXQHXg7B": {}, "LVrzr8OZ": {}, "DGMtCmLH": {}}, "user_id": "8j7fNpXj"}, {"extra_attributes": {"TVYzm8sE": {}, "EGHAKdyC": {}, "DOjpIbn2": {}}, "user_id": "IEJXrcY9"}], "ticket_id": "KDP1Wkbf"}, {"first_ticket_created_at": 33, "party_attributes": {"xDCVqHdM": {}, "5dqlkRVr": {}, "SlRKu7ur": {}}, "party_id": "KPVoiJQ7", "party_members": [{"extra_attributes": {"lIBA4e1d": {}, "3XspDekU": {}, "Ctx9hZtu": {}}, "user_id": "ssSRJczr"}, {"extra_attributes": {"dDRYiWoc": {}, "CQ63u1Xk": {}, "JMmer3vE": {}}, "user_id": "LITurCze"}, {"extra_attributes": {"bnZPMq4e": {}, "s8vILP74": {}, "84NkbE9c": {}}, "user_id": "zyk62Ieu"}], "ticket_id": "4HVqU6xM"}, {"first_ticket_created_at": 19, "party_attributes": {"pesktRDU": {}, "kGTTaTwB": {}, "Bw6MN7Rk": {}}, "party_id": "BjGGfU5w", "party_members": [{"extra_attributes": {"26YaR5pB": {}, "6idItlRt": {}, "v40ksL9j": {}}, "user_id": "LGtv9MKr"}, {"extra_attributes": {"gg4cpeD2": {}, "R8byR4kt": {}, "VrqYAeu1": {}}, "user_id": "VGH7GNSA"}, {"extra_attributes": {"ho6uzBJK": {}, "V9R1Edwz": {}, "TCOvoZC0": {}}, "user_id": "kZyaoHrf"}], "ticket_id": "cgAGsnhq"}]}], "namespace": "DG6EOWTb", "party_attributes": {"atyc9qIW": {}, "Av3auzt4": {}, "gnRCRSaG": {}}, "party_id": "AUJdj1JP", "queued_at": 26, "region": "hq6EEcrT", "server_name": "BZ5hoJml", "status": "GLwiOlMn", "ticket_id": "ZnodUyPs", "updated_at": "1971-12-16T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "w7eCi7kD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    '1vGwc3SR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 10, "userID": "2snKfLxE", "weight": 0.9599601697025514}' \
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
    '1JvLNOvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "uWAWvtWi", "description": "rM7R5b2j", "findMatchTimeoutSeconds": 22, "joinable": false, "max_delay_ms": 19, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 46, "min": 21, "name": "BycDvPOn"}, {"max": 52, "min": 37, "name": "m2eEmINa"}, {"max": 97, "min": 95, "name": "moIZxTJo"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 100}, "maxNumber": 46, "minNumber": 90, "playerMaxNumber": 95, "playerMinNumber": 4}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 11, "min": 77, "name": "dRjaF6Av"}, {"max": 78, "min": 49, "name": "IL931lAa"}, {"max": 80, "min": 63, "name": "BRabe9mt"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 25}, "duration": 52, "max_number": 61, "min_number": 39, "player_max_number": 62, "player_min_number": 42}, {"combination": {"alliances": [{"max": 32, "min": 43, "name": "zbD4wE9j"}, {"max": 19, "min": 5, "name": "5IimQweS"}, {"max": 71, "min": 23, "name": "WheSmvp0"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 13}, "duration": 23, "max_number": 13, "min_number": 42, "player_max_number": 12, "player_min_number": 43}, {"combination": {"alliances": [{"max": 74, "min": 84, "name": "ex0vduRC"}, {"max": 89, "min": 43, "name": "b0tvN1wn"}, {"max": 4, "min": 71, "name": "9xm4XzN5"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 7}, "duration": 36, "max_number": 16, "min_number": 31, "player_max_number": 36, "player_min_number": 80}], "flexingRules": [{"attribute": "n2sDQcdb", "criteria": "717j5OYm", "duration": 2, "reference": 0.8986922688735337}, {"attribute": "HsNFUL1g", "criteria": "4crTpDZZ", "duration": 72, "reference": 0.37856383180014863}, {"attribute": "GIy15qHR", "criteria": "XjyvWF5E", "duration": 62, "reference": 0.2541782201229956}], "match_options": {"options": [{"name": "YkUGnY9j", "type": "CPMYRpTr"}, {"name": "IrO3q210", "type": "I1asMc2j"}, {"name": "LCyx0S9S", "type": "4l7XCUb4"}]}, "matchingRules": [{"attribute": "LkxQYoB7", "criteria": "dqWBuqYr", "reference": 0.23600351521098262}, {"attribute": "DncJdguw", "criteria": "Nl9KxWYB", "reference": 0.9471535046484898}, {"attribute": "ueLqOTFL", "criteria": "uonujpcW", "reference": 0.061283202603270914}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 9, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    'LNhwE2Y0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'Lz3GNUZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'rguw1sZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["LL7LKs7A", "uyfEtHRB", "BJRjg446"], "party_id": "pHfA1RkL", "user_id": "nzXtuSVs"}' \
    '0DBAQwN8' \
    '00TLwGxU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    '5JvLw3pc' \
    'MRAvcZ3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'Z7J6r0TY' \
    'VLRat0pe' \
    'nDqda8YV' \
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
    'BScADWwT' \
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
