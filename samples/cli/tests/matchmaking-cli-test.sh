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
matchmaking-create-channel-handler '{"deployment": "JTKNPUN6", "description": "uKNsxXRm", "find_match_timeout_seconds": 82, "game_mode": "LymE9XRl", "joinable": true, "max_delay_ms": 60, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 25, "min": 66, "name": "vUGIIfmI"}, {"max": 75, "min": 7, "name": "dbXC3X2X"}, {"max": 30, "min": 98, "name": "kIijci92"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 13}, "max_number": 4, "min_number": 98, "player_max_number": 47, "player_min_number": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 59, "min": 5, "name": "4ZaRj3dU"}, {"max": 79, "min": 82, "name": "9Q6F9eiT"}, {"max": 44, "min": 22, "name": "jQ6uJsYn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 4, "role_flexing_second": 84}, "duration": 35, "max_number": 30, "min_number": 5, "player_max_number": 42, "player_min_number": 81}, {"combination": {"alliances": [{"max": 81, "min": 15, "name": "rKdrG4xM"}, {"max": 56, "min": 79, "name": "M2ZcDxfJ"}, {"max": 6, "min": 59, "name": "fIgg4BnK"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 50}, "duration": 23, "max_number": 52, "min_number": 37, "player_max_number": 10, "player_min_number": 21}, {"combination": {"alliances": [{"max": 38, "min": 93, "name": "QeSdRCSX"}, {"max": 81, "min": 44, "name": "y5e7OUuL"}, {"max": 30, "min": 68, "name": "l1KJPF6X"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 87}, "duration": 93, "max_number": 92, "min_number": 35, "player_max_number": 4, "player_min_number": 42}], "flexing_rule": [{"attribute": "UsbQRaa5", "criteria": "4HSETpTw", "duration": 56, "reference": 0.2381260968919442}, {"attribute": "4xLp2yte", "criteria": "mvJKWbmo", "duration": 97, "reference": 0.030669837191974136}, {"attribute": "34TsPKnN", "criteria": "AYJVMFES", "duration": 28, "reference": 0.19203702440746007}], "match_options": {"options": [{"name": "jnqjbyxc", "type": "lMiVOtYf"}, {"name": "L8iv47pU", "type": "sbCs5gpS"}, {"name": "Hki3Zu3q", "type": "l6ok665Q"}]}, "matching_rule": [{"attribute": "qywkja6B", "criteria": "rrW9v4LW", "reference": 0.28444378962278805}, {"attribute": "ND4eRnbt", "criteria": "SaP9Qgas", "reference": 0.5944529823619022}, {"attribute": "eqi0LLwN", "criteria": "7PQVFPTX", "reference": 0.9511703066523948}], "rebalance_enable": false, "sub_game_modes": {"yoOPHq9s": {"alliance": {"combination": {"alliances": [{"max": 33, "min": 97, "name": "o9Km854d"}, {"max": 44, "min": 73, "name": "TleMhjKe"}, {"max": 21, "min": 63, "name": "9gZzQKCz"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 28}, "max_number": 88, "min_number": 68, "player_max_number": 17, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 37, "min": 43, "name": "QxpXQd39"}, {"max": 3, "min": 58, "name": "6znwAeSV"}, {"max": 74, "min": 51, "name": "EwMJQf3G"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 26}, "duration": 24, "max_number": 13, "min_number": 4, "player_max_number": 30, "player_min_number": 100}, {"combination": {"alliances": [{"max": 28, "min": 34, "name": "EWXmub00"}, {"max": 7, "min": 58, "name": "SxBSirb5"}, {"max": 88, "min": 1, "name": "Mc0RqF9m"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 36}, "duration": 33, "max_number": 81, "min_number": 43, "player_max_number": 82, "player_min_number": 14}, {"combination": {"alliances": [{"max": 79, "min": 57, "name": "eFhPbiVU"}, {"max": 21, "min": 79, "name": "HQqlo5Qp"}, {"max": 6, "min": 38, "name": "FUt6ItpJ"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 29}, "duration": 19, "max_number": 91, "min_number": 39, "player_max_number": 59, "player_min_number": 33}], "name": "VTpw3DeI"}, "ZmWsdCsh": {"alliance": {"combination": {"alliances": [{"max": 29, "min": 74, "name": "7nVWNcaX"}, {"max": 45, "min": 91, "name": "ekXOJmCs"}, {"max": 75, "min": 99, "name": "HctEkNZs"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 31}, "max_number": 32, "min_number": 31, "player_max_number": 1, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 75, "min": 92, "name": "i8Sw32gI"}, {"max": 76, "min": 85, "name": "oGXyolKk"}, {"max": 77, "min": 64, "name": "59m2Vo3W"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 11}, "duration": 24, "max_number": 50, "min_number": 93, "player_max_number": 19, "player_min_number": 69}, {"combination": {"alliances": [{"max": 64, "min": 99, "name": "yG1XcUmJ"}, {"max": 66, "min": 69, "name": "sRqbgJth"}, {"max": 28, "min": 18, "name": "lDQPdr4N"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 92}, "duration": 36, "max_number": 97, "min_number": 39, "player_max_number": 86, "player_min_number": 8}, {"combination": {"alliances": [{"max": 48, "min": 81, "name": "NQBPFNZY"}, {"max": 10, "min": 5, "name": "RyMg1mla"}, {"max": 50, "min": 99, "name": "bGP4rJOP"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 85}, "duration": 48, "max_number": 25, "min_number": 49, "player_max_number": 21, "player_min_number": 83}], "name": "sM2qE0cb"}, "Qxo6Kfx0": {"alliance": {"combination": {"alliances": [{"max": 1, "min": 69, "name": "NnmErUXi"}, {"max": 78, "min": 9, "name": "yo8EHJkx"}, {"max": 28, "min": 34, "name": "0Axpmtem"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 78}, "max_number": 50, "min_number": 10, "player_max_number": 100, "player_min_number": 48}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 93, "min": 56, "name": "mYDHaHvU"}, {"max": 73, "min": 54, "name": "IiipCE3F"}, {"max": 53, "min": 78, "name": "wQzrrJ6O"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 86}, "duration": 57, "max_number": 63, "min_number": 62, "player_max_number": 65, "player_min_number": 32}, {"combination": {"alliances": [{"max": 30, "min": 45, "name": "2613IByc"}, {"max": 71, "min": 90, "name": "c1DiGxR6"}, {"max": 27, "min": 93, "name": "O9qo3zd8"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 76}, "duration": 64, "max_number": 66, "min_number": 27, "player_max_number": 55, "player_min_number": 78}, {"combination": {"alliances": [{"max": 19, "min": 25, "name": "W7zHOp8g"}, {"max": 61, "min": 75, "name": "iVeZCfvY"}, {"max": 71, "min": 5, "name": "rfx4CJNl"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 6}, "duration": 18, "max_number": 97, "min_number": 47, "player_max_number": 26, "player_min_number": 83}], "name": "5PTRb9Mz"}}}, "session_queue_timeout_seconds": 81, "social_matchmaking": true, "use_sub_gamemode": true}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler '7vpSBRk1' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "JJZQda9s", "players": [{"results": [{"attribute": "a8WKvHtD", "value": 0.9073484015523126}, {"attribute": "jviRyhoZ", "value": 0.8888692054056101}, {"attribute": "ST8Gwm9A", "value": 0.8683989134141205}], "user_id": "4WCps4uu"}, {"results": [{"attribute": "K3yZkvzI", "value": 0.3204559811685581}, {"attribute": "VjDEfUqM", "value": 0.7565373696726201}, {"attribute": "pfCUwF8x", "value": 0.7840988741025562}], "user_id": "vpZXrTMR"}, {"results": [{"attribute": "of2dOXl9", "value": 0.41551779818241197}, {"attribute": "fckhAFj2", "value": 0.003416637771900155}, {"attribute": "mLNKodwB", "value": 0.4372571213420906}], "user_id": "YNGIF318"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "v2eutyxb"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "UtqZ2tvN", "client_version": "WhJQEsbW", "deployment": "CKk2BNxv", "error_code": 94, "error_message": "SnvXnHHI", "game_mode": "rgvJm17F", "joinable": false, "match_id": "VqYgCYhQ", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"H0YEWMbq": {}, "IWHN2EAs": {}, "URoz1tWO": {}}, "party_id": "1aVgLJEq", "party_members": [{"extra_attributes": {"BUtcJHcU": {}, "vJsTXCO2": {}, "fhUTw64M": {}}, "user_id": "R7l0cwFJ"}, {"extra_attributes": {"22nVEYTc": {}, "cV0WcVy3": {}, "77BFTnL3": {}}, "user_id": "8ddfivKH"}, {"extra_attributes": {"07hf8jdC": {}, "RLssD4XF": {}, "MkdwuTo3": {}}, "user_id": "I2hLNCLf"}], "ticket_id": "3Bu8BgCV"}, {"first_ticket_created_at": 85, "party_attributes": {"Vh15x65Z": {}, "6R98Ac5n": {}, "nLBnqH9f": {}}, "party_id": "PDGOZq0u", "party_members": [{"extra_attributes": {"kSHXMtiT": {}, "PhuKYIPb": {}, "nwmehLWk": {}}, "user_id": "xKXaVR9F"}, {"extra_attributes": {"pwrFUS54": {}, "uy2hx0I3": {}, "Bdr9B4GL": {}}, "user_id": "VVgvUApi"}, {"extra_attributes": {"oiwxPkYj": {}, "3NLAje9g": {}, "De8wUSPl": {}}, "user_id": "pFccyan4"}], "ticket_id": "fqF3G7WL"}, {"first_ticket_created_at": 72, "party_attributes": {"VK0XP2qy": {}, "FUMN9MqU": {}, "bf44Ayj3": {}}, "party_id": "rnCovwVa", "party_members": [{"extra_attributes": {"jPSFT4aj": {}, "3Tn9flSF": {}, "1K0ehkvi": {}}, "user_id": "f690Jq7Z"}, {"extra_attributes": {"SzwKcWai": {}, "qLRB2xoo": {}, "9pK5yjXM": {}}, "user_id": "qPfbrnpH"}, {"extra_attributes": {"AiGWhmdT": {}, "5Gu1TqOO": {}, "JczH1q6Q": {}}, "user_id": "hHbiYUaw"}], "ticket_id": "TPAtR9YC"}]}, {"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"zKvu5UrR": {}, "HjoBFycu": {}, "IathQZwP": {}}, "party_id": "QJMRRTKO", "party_members": [{"extra_attributes": {"uUmAePi2": {}, "35uLOe5s": {}, "kviZqYlx": {}}, "user_id": "Fa6BYNpe"}, {"extra_attributes": {"oeTQG5LE": {}, "YqQBrTDf": {}, "AUClSJvg": {}}, "user_id": "Nvsowa6R"}, {"extra_attributes": {"NmmYH6NI": {}, "FUNiK8ky": {}, "oqEOyOfh": {}}, "user_id": "B5ul6FJx"}], "ticket_id": "UxdJb1Cf"}, {"first_ticket_created_at": 48, "party_attributes": {"0R4kvehZ": {}, "qrVLgL75": {}, "j9vxAKEV": {}}, "party_id": "5sTJZUDw", "party_members": [{"extra_attributes": {"lbDu96Yy": {}, "kZ2x5aU5": {}, "gsZap9q4": {}}, "user_id": "XgSL1MRh"}, {"extra_attributes": {"pERxAAx2": {}, "MUII0Hii": {}, "HGKM1zGk": {}}, "user_id": "j2Q9ztxn"}, {"extra_attributes": {"hoH3LInw": {}, "4te5fY9H": {}, "Ea5p6GQZ": {}}, "user_id": "7ms6JnM6"}], "ticket_id": "LByMK7FV"}, {"first_ticket_created_at": 95, "party_attributes": {"UBQY6XHz": {}, "fNFy4GuH": {}, "KNlclTbF": {}}, "party_id": "ulxhwqHX", "party_members": [{"extra_attributes": {"W2yrT0WO": {}, "onyerwWG": {}, "TJuuDca5": {}}, "user_id": "CnUExqPm"}, {"extra_attributes": {"VKs7DFI1": {}, "GU3MIlWi": {}, "YBGPEPn1": {}}, "user_id": "EXH9Onnw"}, {"extra_attributes": {"zRnuUJGG": {}, "AYu1ie5M": {}, "rlZk7bY1": {}}, "user_id": "H2Zh8Glx"}], "ticket_id": "JCfDQfI7"}]}, {"matching_parties": [{"first_ticket_created_at": 62, "party_attributes": {"dQ8xzMZX": {}, "df4DCRET": {}, "XRw5KhvK": {}}, "party_id": "NTkTJJAT", "party_members": [{"extra_attributes": {"VmOwFKsf": {}, "EiKNBB3P": {}, "11ZJJ86j": {}}, "user_id": "261ZVuRD"}, {"extra_attributes": {"2onGBcoG": {}, "YVpzZOi7": {}, "iKwGUAdA": {}}, "user_id": "6XP3zX3d"}, {"extra_attributes": {"Y8lGFQVa": {}, "CBDFnrhw": {}, "putlCFFD": {}}, "user_id": "tsw5mZD4"}], "ticket_id": "8JKWcOA4"}, {"first_ticket_created_at": 54, "party_attributes": {"ssI27mem": {}, "45F2mmUy": {}, "WZXEdhyp": {}}, "party_id": "2LmrsfAv", "party_members": [{"extra_attributes": {"s3zYk8Vo": {}, "eXb6LcL4": {}, "l76FijGS": {}}, "user_id": "Rvqjk151"}, {"extra_attributes": {"2tuk31Ou": {}, "QJ3RmiFW": {}, "pZx9Uree": {}}, "user_id": "ocxT7f8n"}, {"extra_attributes": {"YGzPo0Em": {}, "Ms40azRE": {}, "ddxVzjj3": {}}, "user_id": "xmb7GGOa"}], "ticket_id": "Kw09FPDO"}, {"first_ticket_created_at": 50, "party_attributes": {"7faoNodj": {}, "7HrJhXdX": {}, "ZcAUfSeU": {}}, "party_id": "mwjEuOUo", "party_members": [{"extra_attributes": {"gFX0jOun": {}, "TcbvQ87c": {}, "EcmyZL4g": {}}, "user_id": "DCUkLED9"}, {"extra_attributes": {"AwTrgCDU": {}, "goyThVzv": {}, "cioSaIj4": {}}, "user_id": "nyeXdUOq"}, {"extra_attributes": {"dL9JqRx0": {}, "69csju3W": {}, "dBW8QpNJ": {}}, "user_id": "mD7FzCZK"}], "ticket_id": "Fo1hXChj"}]}], "namespace": "JWdOlSWe", "party_attributes": {"DkfT1Znq": {}, "FNyx4bYQ": {}, "iZAvIVkq": {}}, "party_id": "PLQvdfvP", "queued_at": 89, "region": "XUyLJRqM", "server_name": "X79c2lV7", "status": "A14zncdN", "ticket_id": "p310kcgt", "updated_at": "1999-11-28T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "Yv2jKCAO"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'YzVKudB4' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 56, "userID": "IE3uctjR", "weight": 0.9815537305232086}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'Q5UoA7FX' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "dpNuiWrM", "description": "rOFQ2YBS", "findMatchTimeoutSeconds": 70, "joinable": false, "max_delay_ms": 29, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 0, "min": 13, "name": "ukAah7Zl"}, {"max": 81, "min": 60, "name": "VGs7hf6A"}, {"max": 15, "min": 79, "name": "xIIyY1zn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 48}, "maxNumber": 92, "minNumber": 27, "playerMaxNumber": 6, "playerMinNumber": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 15, "min": 65, "name": "ldcnp79i"}, {"max": 34, "min": 63, "name": "uBrFM4mm"}, {"max": 97, "min": 10, "name": "QopdB5Mv"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 67}, "duration": 62, "max_number": 71, "min_number": 73, "player_max_number": 12, "player_min_number": 19}, {"combination": {"alliances": [{"max": 96, "min": 25, "name": "LCHxOc7G"}, {"max": 96, "min": 53, "name": "euSnAIKI"}, {"max": 57, "min": 21, "name": "Dkkd2E1l"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 47}, "duration": 44, "max_number": 17, "min_number": 67, "player_max_number": 6, "player_min_number": 37}, {"combination": {"alliances": [{"max": 70, "min": 50, "name": "QCeNU7E7"}, {"max": 57, "min": 44, "name": "M2fAThiD"}, {"max": 12, "min": 77, "name": "J4aZZj67"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 97}, "duration": 57, "max_number": 87, "min_number": 99, "player_max_number": 64, "player_min_number": 79}], "flexingRules": [{"attribute": "66AJTiPA", "criteria": "iIwz8NpG", "duration": 37, "reference": 0.3016012281978303}, {"attribute": "OEIqy4Gq", "criteria": "LQmo0pIX", "duration": 96, "reference": 0.17605046188687412}, {"attribute": "a80aSDko", "criteria": "249I71VF", "duration": 76, "reference": 0.8233186340824403}], "match_options": {"options": [{"name": "WIeG2Pga", "type": "aPQDjjJa"}, {"name": "MKfAoOGY", "type": "dMi178fN"}, {"name": "SLYN5wB4", "type": "wrS9DHAo"}]}, "matchingRules": [{"attribute": "w4T28ru5", "criteria": "AekqrIui", "reference": 0.42147053536104473}, {"attribute": "gz69rU6M", "criteria": "qBygMhF0", "reference": 0.806088377054949}, {"attribute": "FWSXqDTp", "criteria": "Wzl5QAEP", "reference": 0.18241584415231715}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 1, "socialMatchmaking": false, "use_sub_gamemode": true}' 'Fg0suKrR' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'EdPUKrfb' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'YmdtMYFH' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["nwq8k2vS", "bRDVCH5d", "RrUITyXt"], "party_id": "SzrMfKBb", "user_id": "nIypxJJh"}' 'cRICDwKD' '6NxYDPSb' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'P1PQxcfW' 'iuZ5X2qn' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'la3tgpty' '1xHvIGZM' 'mdJSSa3P' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'QnfLkDSQ' --login_with_auth "Bearer foo"
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
    '{"deployment": "iwil30bT", "description": "WwZYFvXn", "find_match_timeout_seconds": 63, "game_mode": "DgKHLXU4", "joinable": false, "max_delay_ms": 9, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 67, "min": 100, "name": "DzGcERWV"}, {"max": 78, "min": 56, "name": "hFrQBp9P"}, {"max": 50, "min": 90, "name": "23UqJc2N"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 17}, "max_number": 34, "min_number": 12, "player_max_number": 33, "player_min_number": 51}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 81, "min": 72, "name": "CDS8NW2a"}, {"max": 99, "min": 0, "name": "E7FE83oe"}, {"max": 14, "min": 57, "name": "gbqF6Bxh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 79}, "duration": 2, "max_number": 78, "min_number": 96, "player_max_number": 20, "player_min_number": 39}, {"combination": {"alliances": [{"max": 2, "min": 9, "name": "89MIBVme"}, {"max": 51, "min": 13, "name": "C64Zl59F"}, {"max": 62, "min": 29, "name": "JeKHUtny"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 66}, "duration": 17, "max_number": 90, "min_number": 25, "player_max_number": 72, "player_min_number": 82}, {"combination": {"alliances": [{"max": 39, "min": 12, "name": "NKrUWr6l"}, {"max": 12, "min": 96, "name": "hpQA0OaR"}, {"max": 78, "min": 28, "name": "hvzwsiJ8"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 66}, "duration": 57, "max_number": 18, "min_number": 88, "player_max_number": 38, "player_min_number": 89}], "flexing_rule": [{"attribute": "yHSoDmSO", "criteria": "qOiROKbT", "duration": 38, "reference": 0.11434441226960446}, {"attribute": "jlSi7OOI", "criteria": "xl16ppgC", "duration": 64, "reference": 0.8672489782806843}, {"attribute": "FIgj15V9", "criteria": "JaRTz09K", "duration": 22, "reference": 0.38825910478118175}], "match_options": {"options": [{"name": "J4VZgIld", "type": "wcPjhrZh"}, {"name": "sxGOFwnz", "type": "NvQwYQKf"}, {"name": "wR7kxHjO", "type": "M5WfjOcA"}]}, "matching_rule": [{"attribute": "WK3jurmg", "criteria": "KU2q4Yrf", "reference": 0.6702843286594732}, {"attribute": "gWyLWI98", "criteria": "craecBLm", "reference": 0.1525380774719317}, {"attribute": "WLNztMtk", "criteria": "yl1ROW8O", "reference": 0.14746923892430275}], "rebalance_enable": false, "sub_game_modes": {"ezB0KdDN": {"alliance": {"combination": {"alliances": [{"max": 44, "min": 76, "name": "bD7i5AVD"}, {"max": 31, "min": 87, "name": "8obPgWOQ"}, {"max": 23, "min": 82, "name": "8D24Zc0J"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 18}, "max_number": 38, "min_number": 63, "player_max_number": 66, "player_min_number": 9}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 50, "min": 25, "name": "5hl6lxGu"}, {"max": 20, "min": 58, "name": "sqg1AF4v"}, {"max": 92, "min": 49, "name": "f5arXO2R"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 2}, "duration": 13, "max_number": 29, "min_number": 64, "player_max_number": 17, "player_min_number": 82}, {"combination": {"alliances": [{"max": 2, "min": 100, "name": "VKGn2rgU"}, {"max": 100, "min": 64, "name": "tXoFZWGs"}, {"max": 10, "min": 74, "name": "B5kmJzTx"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 16}, "duration": 7, "max_number": 99, "min_number": 51, "player_max_number": 4, "player_min_number": 63}, {"combination": {"alliances": [{"max": 63, "min": 18, "name": "eTmmDEzx"}, {"max": 62, "min": 30, "name": "DpmatnqB"}, {"max": 57, "min": 44, "name": "5BunfIv2"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 95}, "duration": 3, "max_number": 95, "min_number": 64, "player_max_number": 56, "player_min_number": 63}], "name": "WZJPCfAe"}, "sz0eCGIP": {"alliance": {"combination": {"alliances": [{"max": 88, "min": 55, "name": "Diw75od2"}, {"max": 99, "min": 68, "name": "FViIIp0U"}, {"max": 12, "min": 53, "name": "YFxwIHF7"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 66}, "max_number": 84, "min_number": 46, "player_max_number": 6, "player_min_number": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 21, "min": 46, "name": "N1NKbC1Z"}, {"max": 30, "min": 59, "name": "zASBsAg1"}, {"max": 15, "min": 45, "name": "wpjXDksP"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 99}, "duration": 100, "max_number": 15, "min_number": 96, "player_max_number": 74, "player_min_number": 93}, {"combination": {"alliances": [{"max": 34, "min": 64, "name": "K3rKbKtd"}, {"max": 100, "min": 13, "name": "JKH2Y28r"}, {"max": 50, "min": 46, "name": "OBG2cV8d"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 48}, "duration": 16, "max_number": 80, "min_number": 11, "player_max_number": 98, "player_min_number": 66}, {"combination": {"alliances": [{"max": 69, "min": 4, "name": "kBUIIOtZ"}, {"max": 33, "min": 21, "name": "HlrmIu5K"}, {"max": 89, "min": 85, "name": "Xicc3Wbh"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 95}, "duration": 93, "max_number": 71, "min_number": 38, "player_max_number": 33, "player_min_number": 88}], "name": "N7v7GcXe"}, "CSCDJ2FT": {"alliance": {"combination": {"alliances": [{"max": 69, "min": 13, "name": "pP9O0uO5"}, {"max": 84, "min": 63, "name": "tn2MttFR"}, {"max": 20, "min": 97, "name": "mzQGDIJB"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 79}, "max_number": 44, "min_number": 90, "player_max_number": 35, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 56, "name": "kjrI91Rn"}, {"max": 66, "min": 98, "name": "G04T1mzu"}, {"max": 39, "min": 21, "name": "Tso1CYYh"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 58}, "duration": 6, "max_number": 26, "min_number": 57, "player_max_number": 10, "player_min_number": 84}, {"combination": {"alliances": [{"max": 92, "min": 48, "name": "PqdnpZp2"}, {"max": 32, "min": 72, "name": "uGBUmslg"}, {"max": 89, "min": 27, "name": "DCdiPEro"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 78}, "duration": 80, "max_number": 55, "min_number": 34, "player_max_number": 52, "player_min_number": 67}, {"combination": {"alliances": [{"max": 48, "min": 9, "name": "FReZEgqQ"}, {"max": 14, "min": 39, "name": "8wJkgme1"}, {"max": 0, "min": 17, "name": "xVH7msHc"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 91}, "duration": 72, "max_number": 33, "min_number": 21, "player_max_number": 98, "player_min_number": 39}], "name": "yt7zpQnC"}}}, "session_queue_timeout_seconds": 80, "social_matchmaking": true, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'R53mlJPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "THDrhOdP", "players": [{"results": [{"attribute": "9e8E47I0", "value": 0.7927610361222839}, {"attribute": "m0uer65V", "value": 0.8343832954157205}, {"attribute": "xPTN6Ty5", "value": 0.20443405821190042}], "user_id": "IuhFC0vH"}, {"results": [{"attribute": "mA7hCHxR", "value": 0.9220347477860709}, {"attribute": "3dx5lI2D", "value": 0.5058549266005697}, {"attribute": "0QfrF0cw", "value": 0.5724235493710941}], "user_id": "SpwjWA6e"}, {"results": [{"attribute": "aRqbM8E4", "value": 0.14446208219238976}, {"attribute": "bPfFyUmf", "value": 0.7765249216255805}, {"attribute": "6E88orWz", "value": 0.3661877525738808}], "user_id": "5CRKB4Bb"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "4sN9VtkT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "KoCHnAA7", "client_version": "VpGLcFBg", "deployment": "bPwxujcp", "error_code": 100, "error_message": "zBYc3u6B", "game_mode": "QtQl4DWn", "joinable": false, "match_id": "228cxDzV", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 1, "party_attributes": {"lGcHBCA9": {}, "DHajUXQN": {}, "8BSyQbE9": {}}, "party_id": "Wz9pdiGb", "party_members": [{"extra_attributes": {"C1wnpxTd": {}, "PpjtAWXo": {}, "0J3hExoI": {}}, "user_id": "qwYakhn1"}, {"extra_attributes": {"k2JXqwNu": {}, "tarL3cql": {}, "7AvGfqId": {}}, "user_id": "z6wPua75"}, {"extra_attributes": {"4DBRxoPQ": {}, "QpzdsmOv": {}, "VWMqR9ki": {}}, "user_id": "htnWt81z"}], "ticket_id": "hDDrFXWC"}, {"first_ticket_created_at": 63, "party_attributes": {"6NZOgFFx": {}, "nEt22cYs": {}, "HArZVJeu": {}}, "party_id": "brVeAmio", "party_members": [{"extra_attributes": {"zizGNCH1": {}, "hFoaa7GK": {}, "qD4EnrKk": {}}, "user_id": "IAXQi6JC"}, {"extra_attributes": {"chjqXmYL": {}, "0z44iJsR": {}, "wE0s5HBb": {}}, "user_id": "9HmnINws"}, {"extra_attributes": {"bpoU3D36": {}, "Eu2WJZyX": {}, "5ehw0yOv": {}}, "user_id": "YSCe1mxf"}], "ticket_id": "wQsSKjoH"}, {"first_ticket_created_at": 98, "party_attributes": {"AmBS9R6Y": {}, "MDekaZmD": {}, "3ErDftef": {}}, "party_id": "FjLYvBBn", "party_members": [{"extra_attributes": {"32bs1ZQA": {}, "J4jSfVpJ": {}, "IH7iKR3Y": {}}, "user_id": "XKmI1pIT"}, {"extra_attributes": {"iuTJkdRb": {}, "lwJUlXdq": {}, "k09Cz8vH": {}}, "user_id": "vog08ZHx"}, {"extra_attributes": {"AYZbotf5": {}, "IQdka3fM": {}, "wsxBgZ5e": {}}, "user_id": "oW8ADZ0w"}], "ticket_id": "IuZFHOP2"}]}, {"matching_parties": [{"first_ticket_created_at": 28, "party_attributes": {"3d07GW5s": {}, "cVLjcLaY": {}, "AlI8Zlqs": {}}, "party_id": "9ccm3l1r", "party_members": [{"extra_attributes": {"iKrnx1Nk": {}, "xXI8JDjU": {}, "txPgohFU": {}}, "user_id": "xK1q21xb"}, {"extra_attributes": {"s9M8Lda6": {}, "5aqAkZiR": {}, "M5v1M2Vm": {}}, "user_id": "4H65gKGQ"}, {"extra_attributes": {"3Ycl9xhH": {}, "9joHRdcI": {}, "UdcbHvP8": {}}, "user_id": "A7aGJzyj"}], "ticket_id": "oEZqKp7x"}, {"first_ticket_created_at": 85, "party_attributes": {"UwcOKEXb": {}, "zuz2sTfM": {}, "JGJHdsKp": {}}, "party_id": "gTE50bfB", "party_members": [{"extra_attributes": {"6nvQm5W6": {}, "5qw3EiXp": {}, "4b5wZyv7": {}}, "user_id": "QtmkMhmc"}, {"extra_attributes": {"WA3DsA7i": {}, "dClJ1ZGU": {}, "oZlQpNKS": {}}, "user_id": "kOpS7LSv"}, {"extra_attributes": {"vhA4Y0Zs": {}, "f77FaED8": {}, "5PZl3lhm": {}}, "user_id": "G01jGPoC"}], "ticket_id": "ZbWFPHMn"}, {"first_ticket_created_at": 83, "party_attributes": {"RRkb7dw2": {}, "d8aDnStn": {}, "mh8l4f9u": {}}, "party_id": "9p8nWyfm", "party_members": [{"extra_attributes": {"TzbWoHma": {}, "2OYgOBcZ": {}, "6f0ChIfc": {}}, "user_id": "2XvHMgLp"}, {"extra_attributes": {"TUYLxviL": {}, "iGsnYcPf": {}, "zG72HNRW": {}}, "user_id": "26wq9Z5A"}, {"extra_attributes": {"9pgLTLlB": {}, "3Z6QxCH7": {}, "utHMYRiL": {}}, "user_id": "4U6MqPsn"}], "ticket_id": "9hitmG5l"}]}, {"matching_parties": [{"first_ticket_created_at": 20, "party_attributes": {"AMq4QHrh": {}, "8toXX0hk": {}, "bfhTtML5": {}}, "party_id": "tl4JBcFx", "party_members": [{"extra_attributes": {"TbMVm6X9": {}, "4yRpsvHZ": {}, "w5b1h4ez": {}}, "user_id": "uLqLDsq5"}, {"extra_attributes": {"rAFrBm8Z": {}, "EWrKWjH4": {}, "cAauLhVF": {}}, "user_id": "EugMpe1O"}, {"extra_attributes": {"OmOsnKVT": {}, "LKTWRRG5": {}, "Rt67FhIO": {}}, "user_id": "X7a5erGZ"}], "ticket_id": "V6pRcRX0"}, {"first_ticket_created_at": 74, "party_attributes": {"7Xou9i3R": {}, "xTb90UHz": {}, "vVWWEdcT": {}}, "party_id": "a1SrI3Ns", "party_members": [{"extra_attributes": {"eeioY0P9": {}, "7Lvp7lJB": {}, "dxBIvBip": {}}, "user_id": "pxi40Ys8"}, {"extra_attributes": {"1WYVDh5n": {}, "K745Fnev": {}, "qfAXQWtN": {}}, "user_id": "TjChuF50"}, {"extra_attributes": {"iRRwkT1a": {}, "xf1Vl3dp": {}, "IWYxGJUT": {}}, "user_id": "mJ75TASx"}], "ticket_id": "makisc2D"}, {"first_ticket_created_at": 79, "party_attributes": {"g0MugfTo": {}, "oZ83uHmn": {}, "HVKtrv2I": {}}, "party_id": "zS7WXI3B", "party_members": [{"extra_attributes": {"q1jfuqVh": {}, "eIWkoyt0": {}, "i4iMn5dO": {}}, "user_id": "fu12GqJZ"}, {"extra_attributes": {"M5GXpUPX": {}, "RBy0DeIj": {}, "xUf7XHuK": {}}, "user_id": "YkTszxoo"}, {"extra_attributes": {"tTNCScjB": {}, "hPNM4Kjm": {}, "cl7nWnZH": {}}, "user_id": "GtRXMoQc"}], "ticket_id": "eJoO6Cil"}]}], "namespace": "Vs1VJSgg", "party_attributes": {"wywiWvaB": {}, "S8JThurU": {}, "sYgYAWyK": {}}, "party_id": "283IoIX0", "queued_at": 29, "region": "LRqUcQb0", "server_name": "qa0vVbPw", "status": "fwH8Gqcf", "ticket_id": "8acHlypB", "updated_at": "1985-04-18T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "0Yq7DQ46"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'r8OG0xdo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 71, "userID": "gBabQOs0", "weight": 0.22220382137500916}' \
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
    'T61r0If8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "i40qceAw", "description": "l36lmiEo", "findMatchTimeoutSeconds": 60, "joinable": false, "max_delay_ms": 97, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 62, "min": 51, "name": "CBKQ43Rd"}, {"max": 28, "min": 20, "name": "LskG7inJ"}, {"max": 64, "min": 31, "name": "gR2PMSYH"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 83}, "maxNumber": 62, "minNumber": 14, "playerMaxNumber": 48, "playerMinNumber": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 14, "min": 18, "name": "BUX2Z7n2"}, {"max": 7, "min": 100, "name": "eXwl4hz0"}, {"max": 94, "min": 63, "name": "9zvAB5ps"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 100}, "duration": 70, "max_number": 28, "min_number": 43, "player_max_number": 100, "player_min_number": 3}, {"combination": {"alliances": [{"max": 12, "min": 98, "name": "dxSsVxBC"}, {"max": 26, "min": 72, "name": "SjG2jYaF"}, {"max": 68, "min": 71, "name": "IZGbPzkw"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 69}, "duration": 42, "max_number": 40, "min_number": 3, "player_max_number": 22, "player_min_number": 73}, {"combination": {"alliances": [{"max": 65, "min": 2, "name": "ema4JNHz"}, {"max": 83, "min": 93, "name": "KGgFysPr"}, {"max": 71, "min": 13, "name": "m0Bv36ZO"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 19}, "duration": 30, "max_number": 37, "min_number": 85, "player_max_number": 26, "player_min_number": 57}], "flexingRules": [{"attribute": "hwu8edJx", "criteria": "2NhVJlev", "duration": 34, "reference": 0.4091994094729018}, {"attribute": "7FAL3b3k", "criteria": "Vm37yM9v", "duration": 63, "reference": 0.5698437975120507}, {"attribute": "I4hRShYf", "criteria": "TO2QI7BK", "duration": 29, "reference": 0.6519713470895669}], "match_options": {"options": [{"name": "c8BA16kN", "type": "TpIWbgwR"}, {"name": "h2mXRju9", "type": "Oz1BbM6F"}, {"name": "HHSY8VAY", "type": "DsmV6CbD"}]}, "matchingRules": [{"attribute": "zdSzPxTk", "criteria": "YhsQC6zW", "reference": 0.9966740176760428}, {"attribute": "hd3qZ4uT", "criteria": "t9ASt3Bx", "reference": 0.24086673609017917}, {"attribute": "1eQincWW", "criteria": "PjqcEU4V", "reference": 0.46140553124161654}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 17, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'vJf4ZvhC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'xm2sikZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'In29KofE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["LX4fByY8", "f255sny5", "da1Pq7Ko"], "party_id": "Sxg9Make", "user_id": "urKvJKkx"}' \
    'fREwPkNr' \
    '1wJBqD6Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'CF1Eb0bW' \
    'YAxQSspU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'twleEYSi' \
    'AlEKTKz6' \
    '19w8Q7pY' \
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
    'AMbLqE73' \
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
