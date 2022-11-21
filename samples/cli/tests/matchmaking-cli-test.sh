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
matchmaking-create-channel-handler '{"deployment": "MnVvIRbs", "description": "i8XUJUg0", "find_match_timeout_seconds": 17, "game_mode": "jpRcFWo6", "joinable": false, "max_delay_ms": 56, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 31, "min": 93, "name": "wgjpxq9u"}, {"max": 54, "min": 39, "name": "M25BWA86"}, {"max": 53, "min": 31, "name": "Z4XZlyJK"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 73}, "max_number": 24, "min_number": 48, "player_max_number": 68, "player_min_number": 1}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 90, "min": 80, "name": "4XJ3cUQ8"}, {"max": 78, "min": 91, "name": "Tzs1P5AJ"}, {"max": 94, "min": 23, "name": "FRTcIg2R"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 27}, "duration": 24, "max_number": 14, "min_number": 85, "player_max_number": 81, "player_min_number": 56}, {"combination": {"alliances": [{"max": 11, "min": 2, "name": "ugLrmLOF"}, {"max": 5, "min": 55, "name": "lVcMu836"}, {"max": 62, "min": 16, "name": "COXiA12J"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 93}, "duration": 78, "max_number": 57, "min_number": 100, "player_max_number": 44, "player_min_number": 18}, {"combination": {"alliances": [{"max": 39, "min": 29, "name": "mt2wtZTG"}, {"max": 23, "min": 86, "name": "0IYf3QRp"}, {"max": 81, "min": 62, "name": "5C8O3Mp5"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 35}, "duration": 90, "max_number": 61, "min_number": 100, "player_max_number": 82, "player_min_number": 86}], "flexing_rule": [{"attribute": "5jBOgSVq", "criteria": "Oxpqt6S6", "duration": 7, "reference": 0.9026897310089869}, {"attribute": "LP1ujcex", "criteria": "izDRdVIB", "duration": 31, "reference": 0.806537020265412}, {"attribute": "h1ZoXC5z", "criteria": "pOIEu8W5", "duration": 30, "reference": 0.941015635636045}], "match_options": {"options": [{"name": "pGZhGiPX", "type": "L7CVpnZk"}, {"name": "68TLNZwa", "type": "egwEFiYV"}, {"name": "PQ2qXlpd", "type": "W6Clk2E6"}]}, "matching_rule": [{"attribute": "iC68BmN0", "criteria": "kNSkZpxS", "reference": 0.21895800370358987}, {"attribute": "ngeQGuxo", "criteria": "iQs8A7iC", "reference": 0.013502172618440444}, {"attribute": "tmDMy4lY", "criteria": "WfCpO7jh", "reference": 0.525547881085161}], "rebalance_enable": true, "sub_game_modes": {"zelyODKr": {"alliance": {"combination": {"alliances": [{"max": 61, "min": 54, "name": "bUrhYUcf"}, {"max": 73, "min": 18, "name": "BnrziYti"}, {"max": 69, "min": 77, "name": "BDuQdLda"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 63}, "max_number": 87, "min_number": 60, "player_max_number": 43, "player_min_number": 57}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 76, "min": 81, "name": "dhKO1f2T"}, {"max": 93, "min": 81, "name": "vDWxz5Ca"}, {"max": 34, "min": 47, "name": "iuUaUctq"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 4}, "duration": 49, "max_number": 74, "min_number": 62, "player_max_number": 11, "player_min_number": 71}, {"combination": {"alliances": [{"max": 0, "min": 29, "name": "iCYoFQ18"}, {"max": 95, "min": 86, "name": "uU403vXl"}, {"max": 62, "min": 97, "name": "YG2jdD8F"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 1}, "duration": 38, "max_number": 19, "min_number": 22, "player_max_number": 87, "player_min_number": 86}, {"combination": {"alliances": [{"max": 63, "min": 43, "name": "EafZYFTi"}, {"max": 93, "min": 9, "name": "0jPaseAx"}, {"max": 67, "min": 21, "name": "aUfPfp0A"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 19}, "duration": 0, "max_number": 7, "min_number": 83, "player_max_number": 32, "player_min_number": 55}], "name": "GG1yXgHb"}, "Hcwc7GJH": {"alliance": {"combination": {"alliances": [{"max": 58, "min": 21, "name": "xxy37sSD"}, {"max": 1, "min": 39, "name": "pnKK9t0F"}, {"max": 52, "min": 76, "name": "fHlsgRK1"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 91}, "max_number": 57, "min_number": 3, "player_max_number": 77, "player_min_number": 1}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 70, "min": 4, "name": "mCsbs5ye"}, {"max": 61, "min": 11, "name": "bbPuXXhZ"}, {"max": 28, "min": 73, "name": "PoUeFtRH"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 90}, "duration": 27, "max_number": 62, "min_number": 54, "player_max_number": 64, "player_min_number": 10}, {"combination": {"alliances": [{"max": 2, "min": 92, "name": "lY7UYinr"}, {"max": 18, "min": 20, "name": "Lckmuxrw"}, {"max": 88, "min": 48, "name": "wE7ga7Ox"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 6}, "duration": 97, "max_number": 13, "min_number": 34, "player_max_number": 35, "player_min_number": 89}, {"combination": {"alliances": [{"max": 18, "min": 85, "name": "DaKYRNcV"}, {"max": 51, "min": 51, "name": "arQPEmre"}, {"max": 44, "min": 87, "name": "R5gvSvSZ"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 100}, "duration": 98, "max_number": 69, "min_number": 64, "player_max_number": 75, "player_min_number": 92}], "name": "GN7PJPV9"}, "x7cwtj6T": {"alliance": {"combination": {"alliances": [{"max": 53, "min": 70, "name": "JB7aqjEC"}, {"max": 33, "min": 23, "name": "8fSkFlk0"}, {"max": 99, "min": 75, "name": "2a64uhrn"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 92}, "max_number": 90, "min_number": 15, "player_max_number": 17, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 13, "name": "t1Hm5upH"}, {"max": 28, "min": 49, "name": "vtCwzxKt"}, {"max": 74, "min": 64, "name": "241tuCAi"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 92}, "duration": 33, "max_number": 75, "min_number": 100, "player_max_number": 90, "player_min_number": 71}, {"combination": {"alliances": [{"max": 18, "min": 12, "name": "my0fzxx9"}, {"max": 86, "min": 38, "name": "YhOkD48H"}, {"max": 94, "min": 91, "name": "20L1D4uA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 93}, "duration": 18, "max_number": 72, "min_number": 31, "player_max_number": 45, "player_min_number": 60}, {"combination": {"alliances": [{"max": 62, "min": 74, "name": "APCIy8cy"}, {"max": 25, "min": 52, "name": "ixlpSmgh"}, {"max": 63, "min": 36, "name": "BYiPcQvI"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 57}, "duration": 28, "max_number": 83, "min_number": 100, "player_max_number": 71, "player_min_number": 8}], "name": "kkbfQWwy"}}}, "session_queue_timeout_seconds": 22, "social_matchmaking": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler '7KJswcBI' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "FedEATBc", "players": [{"results": [{"attribute": "nuAvyN3Q", "value": 0.05717339080499262}, {"attribute": "RtSWsioD", "value": 0.9043810948578627}, {"attribute": "YL5dqhAV", "value": 0.831296946693254}], "user_id": "jk5Qd3Ct"}, {"results": [{"attribute": "tEqd2Ymn", "value": 0.37760561704389806}, {"attribute": "NmcjoJ3U", "value": 0.7632267658137705}, {"attribute": "XM0dL3UU", "value": 0.42454883603200033}], "user_id": "8e8gGsg1"}, {"results": [{"attribute": "OWeiOkSB", "value": 0.03158961299844687}, {"attribute": "yi9Z9JSY", "value": 0.24558891172410258}, {"attribute": "LbobuSJg", "value": 0.08829105458758801}], "user_id": "GR6XW3u8"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "Vtaln23V"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "sgh8ClrS", "client_version": "IueoEFpC", "deployment": "2Z8oGulx", "error_code": 6, "error_message": "FK8ALUrh", "game_mode": "E6NbW6ZO", "joinable": true, "match_id": "mJqLlUPl", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 7, "party_attributes": {"4SNQPz0h": {}, "101HVtqV": {}, "CmxtFQA4": {}}, "party_id": "mpdvhQgA", "party_members": [{"extra_attributes": {"L7OAxGyi": {}, "w9UHOtAb": {}, "Pz6EsZcD": {}}, "user_id": "tHLMeUEi"}, {"extra_attributes": {"j6cOWeBh": {}, "ppcX7EA4": {}, "3A37T6TP": {}}, "user_id": "dmBS5SKs"}, {"extra_attributes": {"iFNXzs7C": {}, "MkZOePJJ": {}, "IhXgo2To": {}}, "user_id": "fg78Xjhd"}], "ticket_id": "YkZ4bBk8"}, {"first_ticket_created_at": 0, "party_attributes": {"lL2tveej": {}, "LkmwjBC6": {}, "Xu4O1uM7": {}}, "party_id": "1olPqL7T", "party_members": [{"extra_attributes": {"XkADEpAR": {}, "uReBsHWO": {}, "UEfMt2Cc": {}}, "user_id": "srPYf0EI"}, {"extra_attributes": {"6GgyXWOZ": {}, "T6lV5XRp": {}, "JmWTJ3np": {}}, "user_id": "un3wzvC4"}, {"extra_attributes": {"aoj9LDWP": {}, "TmpjaH3F": {}, "VIBAPlpM": {}}, "user_id": "vlogdKMr"}], "ticket_id": "VEdDdWft"}, {"first_ticket_created_at": 11, "party_attributes": {"xmfKnlvy": {}, "TCg9guXP": {}, "mMYuqCYU": {}}, "party_id": "Dq7jnMqD", "party_members": [{"extra_attributes": {"kFCAOKsr": {}, "usv10qN9": {}, "p5NBIO2o": {}}, "user_id": "qInkDoOk"}, {"extra_attributes": {"VroBSSou": {}, "hAMih3a8": {}, "x2gLYsnw": {}}, "user_id": "EZSiXOjs"}, {"extra_attributes": {"XbrqTXdV": {}, "H1JKhZ4g": {}, "o5r5AF9X": {}}, "user_id": "w1yXKBtG"}], "ticket_id": "z7ah5XW7"}]}, {"matching_parties": [{"first_ticket_created_at": 55, "party_attributes": {"mADinmRl": {}, "VzSdllF0": {}, "Owc1TxOl": {}}, "party_id": "UzVwzRaU", "party_members": [{"extra_attributes": {"kEdlEzL6": {}, "IgjcypMk": {}, "rD2dq17f": {}}, "user_id": "A9zLSBb3"}, {"extra_attributes": {"HNXvLUeZ": {}, "jalKHItY": {}, "8mHtNY9n": {}}, "user_id": "JDjllb4O"}, {"extra_attributes": {"Fo9BvfAY": {}, "elWbAtqU": {}, "lvJzu7pj": {}}, "user_id": "V0T0nzXx"}], "ticket_id": "PjZWAzwa"}, {"first_ticket_created_at": 46, "party_attributes": {"OO5xVx4N": {}, "VW4HnWvB": {}, "g01X0EqY": {}}, "party_id": "6oOl2ZH1", "party_members": [{"extra_attributes": {"A9ss0Jrk": {}, "M7Y5lHIX": {}, "0ebFpeJM": {}}, "user_id": "L1ClpN6d"}, {"extra_attributes": {"HWyYK73Z": {}, "8IN0IHUW": {}, "FNOiArQd": {}}, "user_id": "hJjrW9nH"}, {"extra_attributes": {"qbxHyOf3": {}, "RshMsnAM": {}, "qjq8XpBa": {}}, "user_id": "F24UuL5I"}], "ticket_id": "yDXte4Pi"}, {"first_ticket_created_at": 1, "party_attributes": {"N1S9mVAs": {}, "uEhhX6Ey": {}, "nnpPXAdk": {}}, "party_id": "7D5n7LKq", "party_members": [{"extra_attributes": {"D3mHm74Q": {}, "yxFynJTv": {}, "flBt5o5w": {}}, "user_id": "MdcqCNGE"}, {"extra_attributes": {"kbbxLgLl": {}, "6Aecah3z": {}, "RkfRJU5d": {}}, "user_id": "a9Tj4Utt"}, {"extra_attributes": {"aOFAZiia": {}, "H3GOGdcw": {}, "Anv6EOd3": {}}, "user_id": "WXGj7f7Z"}], "ticket_id": "20KRX8J6"}]}, {"matching_parties": [{"first_ticket_created_at": 76, "party_attributes": {"hzkqVBRs": {}, "LBmX7sX2": {}, "94Unc1eT": {}}, "party_id": "o5J7jkte", "party_members": [{"extra_attributes": {"2a2JcUDz": {}, "1CpooANA": {}, "l08bO0LC": {}}, "user_id": "gJL2kFxN"}, {"extra_attributes": {"4QY6pDIT": {}, "bjxQNZtq": {}, "XXtxMr3u": {}}, "user_id": "48rhzFPJ"}, {"extra_attributes": {"DtVU82O6": {}, "UKTLgiiX": {}, "6jkfKmOs": {}}, "user_id": "pclMK2tq"}], "ticket_id": "KRlZ4iUk"}, {"first_ticket_created_at": 42, "party_attributes": {"htpa022C": {}, "vZRpRjJA": {}, "GjmzjQAp": {}}, "party_id": "zCnApn27", "party_members": [{"extra_attributes": {"RID8OPEA": {}, "RgjCTjcA": {}, "EGX3byBZ": {}}, "user_id": "rmSxBv4V"}, {"extra_attributes": {"r5iprYHF": {}, "zmRv0u2o": {}, "syi40ptG": {}}, "user_id": "MGAjc19O"}, {"extra_attributes": {"gg3wRxuh": {}, "IHRsGrvj": {}, "ACSPGhUO": {}}, "user_id": "gDdGTZOk"}], "ticket_id": "6lXWgxyl"}, {"first_ticket_created_at": 78, "party_attributes": {"AjQstNST": {}, "40dn1Jpl": {}, "lp1Xd7Yf": {}}, "party_id": "6EDLcKuh", "party_members": [{"extra_attributes": {"zhVIFzrj": {}, "cPRiuk4L": {}, "2jjt526V": {}}, "user_id": "reYqU5sU"}, {"extra_attributes": {"EnoqKJX7": {}, "pigYV7cC": {}, "NgPcSNqC": {}}, "user_id": "IZXFPacq"}, {"extra_attributes": {"kd16xgm4": {}, "l27B8n3S": {}, "MabA8sS2": {}}, "user_id": "lswkEwuE"}], "ticket_id": "8o1rnPff"}]}], "namespace": "mFSjgJ4t", "party_attributes": {"Vvvq9XdR": {}, "PCTIVG0o": {}, "XhUswmOm": {}}, "party_id": "ZiwiHDDu", "queued_at": 56, "region": "f5FB7aHD", "server_name": "DwADnLWr", "status": "8rQR0iad", "ticket_id": "NHti228Z", "updated_at": "1983-03-25T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "E6Ktqq6z"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'IiJXxe8A' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 43, "userID": "nTZlqFzo", "weight": 0.38857276056975687}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'pghSiWYr' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "dR5VZUW4", "description": "WNhgrHSF", "findMatchTimeoutSeconds": 59, "joinable": false, "max_delay_ms": 16, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 60, "min": 29, "name": "nv0Jylws"}, {"max": 88, "min": 45, "name": "kOecmg3j"}, {"max": 12, "min": 53, "name": "lHO7VVrn"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 99}, "maxNumber": 74, "minNumber": 74, "playerMaxNumber": 14, "playerMinNumber": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 12, "min": 87, "name": "gKBLaUSC"}, {"max": 38, "min": 47, "name": "sxqp3trn"}, {"max": 17, "min": 60, "name": "pUgKEp9n"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 93}, "duration": 79, "max_number": 98, "min_number": 75, "player_max_number": 58, "player_min_number": 82}, {"combination": {"alliances": [{"max": 34, "min": 24, "name": "rnJYHqnt"}, {"max": 56, "min": 31, "name": "tB06oepG"}, {"max": 10, "min": 20, "name": "l6uxdvCQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 87}, "duration": 99, "max_number": 41, "min_number": 11, "player_max_number": 64, "player_min_number": 100}, {"combination": {"alliances": [{"max": 65, "min": 53, "name": "IqzQehe0"}, {"max": 35, "min": 21, "name": "KUhqVROq"}, {"max": 26, "min": 77, "name": "sCMdhJWY"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 64}, "duration": 11, "max_number": 89, "min_number": 50, "player_max_number": 6, "player_min_number": 44}], "flexingRules": [{"attribute": "1UVWP2hM", "criteria": "NJ1xqIMp", "duration": 1, "reference": 0.5988155406148485}, {"attribute": "JKS7ApfK", "criteria": "gfh3vSt0", "duration": 22, "reference": 0.6558944495120368}, {"attribute": "GcEzIsLm", "criteria": "RK3FwN0q", "duration": 100, "reference": 0.14957731731535495}], "match_options": {"options": [{"name": "Z9jb5BUZ", "type": "1l8GWJFM"}, {"name": "9v0r9nyr", "type": "Mrf3cBmz"}, {"name": "RqggczWE", "type": "qOmmUv1k"}]}, "matchingRules": [{"attribute": "MYzMr0di", "criteria": "Z4sn1zSw", "reference": 0.2359531743381037}, {"attribute": "HDaAJRFg", "criteria": "QqQIEVib", "reference": 0.01811879649803738}, {"attribute": "mVg4lnu1", "criteria": "dPekBeaK", "reference": 0.6604674610028707}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 7, "socialMatchmaking": false, "use_sub_gamemode": false}' 'ZxhcgiA9' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'avtegJFh' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'KPqxNbIe' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["MAOKnQ4k", "MoO3eIcU", "IJisakRo"], "party_id": "51HnHmYb", "user_id": "kvLX5Eij"}' 'EKUx9ZGI' 'kHzR8I54' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'RxK8MeeI' 'XwzVzcSO' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'UAeIxEyb' 'I1ViVAGl' 'a9t91iB5' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'GLT9woFP' --login_with_auth "Bearer foo"
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
    '{"deployment": "yDEVG599", "description": "u0bBeU4o", "find_match_timeout_seconds": 34, "game_mode": "oXWaorEL", "joinable": true, "max_delay_ms": 30, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 49, "min": 49, "name": "pwNtjec0"}, {"max": 89, "min": 17, "name": "JU5XizhA"}, {"max": 65, "min": 56, "name": "ixv09Ti1"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 100}, "max_number": 52, "min_number": 25, "player_max_number": 87, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 22, "min": 83, "name": "SyEubMcy"}, {"max": 38, "min": 31, "name": "D5dZchBV"}, {"max": 5, "min": 88, "name": "Ni9KDWzf"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 24}, "duration": 80, "max_number": 73, "min_number": 57, "player_max_number": 47, "player_min_number": 43}, {"combination": {"alliances": [{"max": 54, "min": 43, "name": "vqL7Zn5l"}, {"max": 16, "min": 86, "name": "qnxXLoBC"}, {"max": 75, "min": 53, "name": "3AtufVpn"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 0}, "duration": 26, "max_number": 88, "min_number": 43, "player_max_number": 70, "player_min_number": 81}, {"combination": {"alliances": [{"max": 7, "min": 6, "name": "bNp4tY7g"}, {"max": 82, "min": 86, "name": "t8qJNhW2"}, {"max": 53, "min": 12, "name": "jgQOy93j"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 77}, "duration": 24, "max_number": 53, "min_number": 52, "player_max_number": 23, "player_min_number": 28}], "flexing_rule": [{"attribute": "UN5Djchp", "criteria": "u6KhZrek", "duration": 25, "reference": 0.08764724689607073}, {"attribute": "ZTzGy8HB", "criteria": "KILBlBxX", "duration": 87, "reference": 0.2181155686251932}, {"attribute": "23gSDwFQ", "criteria": "v5S2QFS0", "duration": 94, "reference": 0.6053545506124559}], "match_options": {"options": [{"name": "j6OoLe9Z", "type": "CqFRJAvT"}, {"name": "JHoVMLBw", "type": "2eLez2uN"}, {"name": "NzpdAYfy", "type": "WuuT3qFD"}]}, "matching_rule": [{"attribute": "OpYhDrRN", "criteria": "mH6YQBK8", "reference": 0.6493134628719299}, {"attribute": "F7pzcKPD", "criteria": "oE8CHQDC", "reference": 0.7241779405291141}, {"attribute": "A8YTC2NN", "criteria": "WIwIBnR2", "reference": 0.9365459581870714}], "rebalance_enable": true, "sub_game_modes": {"Du6AKhDs": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 1, "name": "SgrSByw8"}, {"max": 72, "min": 77, "name": "xwCXP3NX"}, {"max": 60, "min": 74, "name": "SXRPpfyl"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 61}, "max_number": 98, "min_number": 45, "player_max_number": 53, "player_min_number": 80}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 50, "min": 99, "name": "vmxdPZ4K"}, {"max": 19, "min": 63, "name": "ev6zWbPa"}, {"max": 31, "min": 97, "name": "qy959zZd"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 4, "role_flexing_second": 28}, "duration": 95, "max_number": 8, "min_number": 89, "player_max_number": 15, "player_min_number": 20}, {"combination": {"alliances": [{"max": 95, "min": 40, "name": "oFTXa6UG"}, {"max": 38, "min": 92, "name": "Ft23zac5"}, {"max": 83, "min": 8, "name": "WA75rRW9"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 2}, "duration": 78, "max_number": 42, "min_number": 20, "player_max_number": 75, "player_min_number": 78}, {"combination": {"alliances": [{"max": 31, "min": 48, "name": "zMXpz8XE"}, {"max": 67, "min": 57, "name": "Mw5aBMLP"}, {"max": 6, "min": 61, "name": "I68EEitW"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 92}, "duration": 67, "max_number": 63, "min_number": 78, "player_max_number": 22, "player_min_number": 52}], "name": "5zI8vWKm"}, "alWmjicz": {"alliance": {"combination": {"alliances": [{"max": 64, "min": 14, "name": "ju8j4qY7"}, {"max": 85, "min": 27, "name": "blWpcEUw"}, {"max": 39, "min": 51, "name": "hTrlzf7v"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 37}, "max_number": 5, "min_number": 92, "player_max_number": 5, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 72, "min": 63, "name": "82gIHFVl"}, {"max": 58, "min": 50, "name": "jYdNUsqk"}, {"max": 0, "min": 89, "name": "mVt0TPj6"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 45}, "duration": 15, "max_number": 37, "min_number": 17, "player_max_number": 91, "player_min_number": 23}, {"combination": {"alliances": [{"max": 71, "min": 7, "name": "EsqzjpSC"}, {"max": 19, "min": 37, "name": "q338vZG5"}, {"max": 57, "min": 77, "name": "ZtZKeOnE"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 66}, "duration": 36, "max_number": 82, "min_number": 29, "player_max_number": 93, "player_min_number": 22}, {"combination": {"alliances": [{"max": 48, "min": 68, "name": "JTIMHRn5"}, {"max": 42, "min": 64, "name": "agZzwPms"}, {"max": 74, "min": 54, "name": "GncslyZq"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 71}, "duration": 83, "max_number": 22, "min_number": 4, "player_max_number": 35, "player_min_number": 57}], "name": "WJNMlH2G"}, "yuBB5N2J": {"alliance": {"combination": {"alliances": [{"max": 29, "min": 25, "name": "pzn5U4es"}, {"max": 24, "min": 6, "name": "cTX7jEDl"}, {"max": 43, "min": 24, "name": "F25Ps79I"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 54}, "max_number": 69, "min_number": 42, "player_max_number": 72, "player_min_number": 49}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 28, "min": 8, "name": "tvugqA8p"}, {"max": 75, "min": 18, "name": "8SUeK7VH"}, {"max": 89, "min": 97, "name": "C3pefC8z"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 4}, "duration": 51, "max_number": 62, "min_number": 77, "player_max_number": 10, "player_min_number": 92}, {"combination": {"alliances": [{"max": 61, "min": 77, "name": "md4eSUjy"}, {"max": 86, "min": 52, "name": "hktLu8Sa"}, {"max": 21, "min": 51, "name": "tfWWXieB"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 30}, "duration": 25, "max_number": 29, "min_number": 99, "player_max_number": 100, "player_min_number": 69}, {"combination": {"alliances": [{"max": 59, "min": 57, "name": "WjLwoILX"}, {"max": 66, "min": 51, "name": "qMz40Bkn"}, {"max": 54, "min": 19, "name": "xHq9NALL"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 57}, "duration": 62, "max_number": 62, "min_number": 20, "player_max_number": 48, "player_min_number": 39}], "name": "vrKue4Bo"}}}, "session_queue_timeout_seconds": 79, "social_matchmaking": true, "use_sub_gamemode": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    '1hXXhxQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "I5SJgZSY", "players": [{"results": [{"attribute": "00N0Fjrv", "value": 0.32986829682091856}, {"attribute": "jGqprp5T", "value": 0.5869964818899088}, {"attribute": "NFULVa44", "value": 0.5266002603284677}], "user_id": "mfyXd1x6"}, {"results": [{"attribute": "BygzGH5h", "value": 0.8750055369282207}, {"attribute": "DN7X9xbZ", "value": 0.545487300082872}, {"attribute": "HTOS4lve", "value": 0.06670931965033267}], "user_id": "2927hvRh"}, {"results": [{"attribute": "IYm5PktH", "value": 0.4962701723947278}, {"attribute": "QICsIhJj", "value": 0.2789557671583911}, {"attribute": "wPrHUp28", "value": 0.09479446220121268}], "user_id": "v859wygK"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "pSuhe6iH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "SJ3K9gBP", "client_version": "MaOv5hNX", "deployment": "JLnKOtPt", "error_code": 77, "error_message": "F71ugrFx", "game_mode": "k8BdEli5", "joinable": false, "match_id": "vxKN4o4q", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"gFoJukDe": {}, "VWHEYhNF": {}, "pNsr5Vtn": {}}, "party_id": "YFKORQqx", "party_members": [{"extra_attributes": {"NrIa5vE8": {}, "Zav3h4F7": {}, "YQjC7zeI": {}}, "user_id": "6ZZcwY12"}, {"extra_attributes": {"98d5wZPp": {}, "meO8sqo0": {}, "hGypxhJp": {}}, "user_id": "AAwdICEV"}, {"extra_attributes": {"7V29MW15": {}, "E78kvg7C": {}, "2NxDnAO3": {}}, "user_id": "y5fOKJ4A"}], "ticket_id": "S11hDxR1"}, {"first_ticket_created_at": 18, "party_attributes": {"qu9axURp": {}, "ndPvaUVK": {}, "Pk5GTAsS": {}}, "party_id": "fraPlvKR", "party_members": [{"extra_attributes": {"W3bYud8w": {}, "l3kBjUm2": {}, "5czBFHYB": {}}, "user_id": "u6ail3ih"}, {"extra_attributes": {"NodyWTZw": {}, "SQ0xXQrw": {}, "06vXIyEU": {}}, "user_id": "tN1OCiTs"}, {"extra_attributes": {"71s7ovOO": {}, "fm6cb1GR": {}, "Svyzb5lP": {}}, "user_id": "Rz0X3MXU"}], "ticket_id": "z6Hqogk7"}, {"first_ticket_created_at": 80, "party_attributes": {"E71SBfSQ": {}, "ApwRO1E1": {}, "bpntEgDF": {}}, "party_id": "vWSODxOc", "party_members": [{"extra_attributes": {"XPH9TZ7D": {}, "gTw1WRIL": {}, "5weBYJc8": {}}, "user_id": "cCvSkvVu"}, {"extra_attributes": {"R6OzTj3o": {}, "3Z8SXFyf": {}, "9YDqfQ7r": {}}, "user_id": "cUBBssAC"}, {"extra_attributes": {"IgTSQ8IW": {}, "nTYz5D7W": {}, "gCaRuCQa": {}}, "user_id": "Yuu9DS7a"}], "ticket_id": "j9xUmLuw"}]}, {"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"jvUFay72": {}, "aKniAj1G": {}, "SNTu5HDZ": {}}, "party_id": "DKC3rZDi", "party_members": [{"extra_attributes": {"XiPK6TXL": {}, "A9Ar1ahL": {}, "sMb73jIT": {}}, "user_id": "z99WumoN"}, {"extra_attributes": {"XkxymOxo": {}, "h83vk2p1": {}, "zEAK0aBh": {}}, "user_id": "O9z4snFg"}, {"extra_attributes": {"goKaBrMB": {}, "EbMeTwBJ": {}, "m5rzG5g0": {}}, "user_id": "JCQZmrr3"}], "ticket_id": "OdAwHH1u"}, {"first_ticket_created_at": 36, "party_attributes": {"gZ51AXCe": {}, "TfDtTL4V": {}, "l203HEwd": {}}, "party_id": "2TQgPTEQ", "party_members": [{"extra_attributes": {"hgPaS2zy": {}, "caPhHF6Z": {}, "EuuYzmaU": {}}, "user_id": "AItwbfVJ"}, {"extra_attributes": {"JQYGVkie": {}, "qfJxzHjj": {}, "YzcJL7uz": {}}, "user_id": "grlXNWfV"}, {"extra_attributes": {"E7ZD1k7U": {}, "VFewDNue": {}, "X2DnDb3T": {}}, "user_id": "kpEeTxAj"}], "ticket_id": "Ix3Tpfnk"}, {"first_ticket_created_at": 52, "party_attributes": {"K3plUy9O": {}, "j5JJcRr6": {}, "ABbeEPUu": {}}, "party_id": "SNwThdLQ", "party_members": [{"extra_attributes": {"bOwupZCK": {}, "aORlYLSv": {}, "K6PrBjy3": {}}, "user_id": "mxOjZI7v"}, {"extra_attributes": {"a2AgKF7A": {}, "z5waJZjc": {}, "3jPFZ4Sx": {}}, "user_id": "o5TpFJt1"}, {"extra_attributes": {"kBKKb9MO": {}, "Gd6GG6tw": {}, "7NczxT0n": {}}, "user_id": "D84W9tTs"}], "ticket_id": "sWJusPsk"}]}, {"matching_parties": [{"first_ticket_created_at": 21, "party_attributes": {"5igJTk1X": {}, "9QVE3wTa": {}, "7XABjtKR": {}}, "party_id": "4K5XgvBF", "party_members": [{"extra_attributes": {"xCHCVW22": {}, "YWLpWfGK": {}, "9gKSURHB": {}}, "user_id": "2mEykVsU"}, {"extra_attributes": {"TVjFMkdp": {}, "45q4t7Mr": {}, "YPiFXk2c": {}}, "user_id": "gawtkFff"}, {"extra_attributes": {"Do8XsQwg": {}, "tQuRu1Bl": {}, "2vJn5KdR": {}}, "user_id": "sEt2vz2T"}], "ticket_id": "ntUs7EY9"}, {"first_ticket_created_at": 14, "party_attributes": {"UY7aGfIi": {}, "p0rQWKYh": {}, "YxaUSLxs": {}}, "party_id": "GwyWe8Y2", "party_members": [{"extra_attributes": {"9zDamubH": {}, "kCrnc9Wi": {}, "vzKtUEOM": {}}, "user_id": "LKio63ez"}, {"extra_attributes": {"R3Fb20Cp": {}, "Z1HEsTZF": {}, "9ey1B6rk": {}}, "user_id": "ZcfECwtK"}, {"extra_attributes": {"TF5c6BH0": {}, "Io97qFce": {}, "jJat8NmQ": {}}, "user_id": "vYtI63GI"}], "ticket_id": "d9Gby8GE"}, {"first_ticket_created_at": 46, "party_attributes": {"c2db2GH3": {}, "aMhrzpdz": {}, "GIhghqro": {}}, "party_id": "2n9XYHgI", "party_members": [{"extra_attributes": {"Fa0mslPQ": {}, "luwIiVEX": {}, "aaXeQJ2j": {}}, "user_id": "j4EK3PfT"}, {"extra_attributes": {"AgFsTlRE": {}, "S0inlVme": {}, "1I2HQDHn": {}}, "user_id": "vVRrm7RG"}, {"extra_attributes": {"SCUmrV8q": {}, "XWSdo68H": {}, "bVTiH3vk": {}}, "user_id": "DBbwXiJa"}], "ticket_id": "bsSE7BEA"}]}], "namespace": "HjSFM78P", "party_attributes": {"AUzQDnP2": {}, "J6YtIEax": {}, "MliT4T03": {}}, "party_id": "wzVqZA0Z", "queued_at": 26, "region": "463GF8wd", "server_name": "xhLJBj5n", "status": "FohmvF9L", "ticket_id": "oZyGvk6p", "updated_at": "1973-07-31T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "MeT7G5Ea"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'XIT97mtX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 90, "userID": "Mt7LdjfU", "weight": 0.29373445533231946}' \
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
    'zMMuBloG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "8h94rWFT", "description": "tj1exJLz", "findMatchTimeoutSeconds": 94, "joinable": true, "max_delay_ms": 25, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 4, "min": 3, "name": "SXHgNoap"}, {"max": 97, "min": 8, "name": "7ihDIYso"}, {"max": 12, "min": 0, "name": "lomYPViU"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 94}, "maxNumber": 18, "minNumber": 34, "playerMaxNumber": 70, "playerMinNumber": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 55, "min": 5, "name": "RJbT4esI"}, {"max": 37, "min": 68, "name": "RV3fOjg0"}, {"max": 47, "min": 7, "name": "VOO80rlH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 30}, "duration": 57, "max_number": 72, "min_number": 50, "player_max_number": 23, "player_min_number": 93}, {"combination": {"alliances": [{"max": 50, "min": 74, "name": "Rby4YWVT"}, {"max": 2, "min": 90, "name": "0sbRJ6R3"}, {"max": 65, "min": 68, "name": "Ey8KwlTf"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 2}, "duration": 36, "max_number": 32, "min_number": 46, "player_max_number": 22, "player_min_number": 49}, {"combination": {"alliances": [{"max": 82, "min": 31, "name": "7blYG3vL"}, {"max": 85, "min": 95, "name": "1SG0jiXo"}, {"max": 75, "min": 48, "name": "SHcoBgdt"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 32}, "duration": 24, "max_number": 70, "min_number": 45, "player_max_number": 78, "player_min_number": 47}], "flexingRules": [{"attribute": "bhX5nV6r", "criteria": "c7qsnwMo", "duration": 62, "reference": 0.8465810607529044}, {"attribute": "ZfGyKhNX", "criteria": "tYwT3KiM", "duration": 13, "reference": 0.9233295245995383}, {"attribute": "WG0dlFNV", "criteria": "RVpzS1vd", "duration": 56, "reference": 0.521331294063922}], "match_options": {"options": [{"name": "l7XdMKOs", "type": "PLfGuYPm"}, {"name": "BHzhRHr1", "type": "TcXRfzvx"}, {"name": "UiWa0RGi", "type": "tnHwFXN1"}]}, "matchingRules": [{"attribute": "hBMMe0cV", "criteria": "JLs4xhmy", "reference": 0.9771294654453061}, {"attribute": "WquHAsex", "criteria": "Bop1mKnt", "reference": 0.23745886867052524}, {"attribute": "yg52QX7W", "criteria": "uN7Zz2WR", "reference": 0.9408234790413391}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 44, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    'VkNYVV2p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'i0JIEf1S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'w1Xysdtv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["bShIhY0H", "yBZVsJe5", "BeBUK8Om"], "party_id": "MAws6rqg", "user_id": "pVxD6zLz"}' \
    '0mSx2Ang' \
    'YeoOw3po' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'v2vgZ5xt' \
    'U8AIkINF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'PIPH0iuM' \
    'pLYBx3AE' \
    'SpxGkONp' \
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
    'LJ9e9dlH' \
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
