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
match2-get-healthcheck-info --login_with_auth "Bearer foo"
match2-get-healthcheck-info-v1 --login_with_auth "Bearer foo"
match2-admin-get-log-config --login_with_auth "Bearer foo"
match2-admin-patch-update-log-config '{"logLevel": "info"}' --login_with_auth "Bearer foo"
match2-admin-get-all-config-v1 --login_with_auth "Bearer foo"
match2-admin-get-config-v1 --login_with_auth "Bearer foo"
match2-admin-patch-config-v1 '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["AxcVpFrttufHIRdH", "9UzVRiXbqlAw7r6W", "2ktQG0h5JAav5kRa"], "matchAnyCommon": false, "platformGroup": {"2WopBJHPtcDs8bBZ": ["LCXLx8bbgorQeFbQ", "1g7qbPngUNB1vRod", "wpzS6DaDpv8N7ZQV"], "qGj6oDLjWjkY1aXl": ["FcDtgOjchIua5tWE", "IC32ogW7olvbTgrh", "RTcPiSuL0Sly6XM4"], "OI18mAQLnzjMf8GZ": ["2WBZqxYG3aREAu2D", "6QVKNCWP75TB0i7p", "KxR8dl0zRVW4EZG9"]}}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "m0XcgGVbMqSszE8G", "sessionId": "Havj7AorKsxwkosA"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'VerXpc1C8XfwHuKe' --login_with_auth "Bearer foo"
match2-get-backfill 'b9l3rGN9A3sNm84h' --login_with_auth "Bearer foo"
match2-delete-backfill 'ddSpHt0P7MIIR7Ck' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "yF6C7duuyZ0GhDog", "stop": true}' 'xLzFQN05MYzYiKWe' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "5dNRljv7IPrDQQRg", "stop": false}' '9vx5KQ7KYnIuMBva' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "O35llzQRaT5kPxUf", "serviceAppName": "ofvnnSuB0y5WUlrM", "url": "dI4sNveabntBSxTe"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "Iv53HGCiljvjKoyD", "serviceAppName": "6SCwGrncqmLtjQHA", "url": "f8TgoNm03VLisV6z"}' 'wPuo3td6TC6I3lMj' --login_with_auth "Bearer foo"
match2-delete-match-function 'GSWN2laRlxfcjHfY' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 21, "backfill_ticket_expiration_seconds": 78, "best_latency_calculation_method": "UCTqGkE7wcWfDslp", "crossplay_disabled": true, "match_function": "ytLPziZMdjxcBZuf", "match_function_override": {"backfill_matches": "QxGiHPllG4cYEzfT", "enrichment": ["D1ZBm3MqHcUmLZZb", "Sqb8RwNmn9HrNQy4", "uZAAiE0mit9RGCCH"], "make_matches": "YzUOcEdscKHPEqgA", "stat_codes": ["8yu7Vk6Jt4Ymos9J", "cdos4fYcTVU6RBt0", "zYoMcHyCUEXlAvxJ"], "validation": ["MdalwSyliWMNW5Ny", "Lu0M3VHh2EI8JlDb", "PWbQ6Q9lNmqRBaAk"]}, "name": "LnvxkT1X68cmDc3f", "platform_group_enabled": true, "rule_set": "pjChB3V0v52Dlym6", "session_template": "puQ23xoJ8aeCnaLp", "ticket_expiration_seconds": 96}' --login_with_auth "Bearer foo"
match2-match-pool-details 'hjYnaq6foWvXa3bM' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 62, "backfill_ticket_expiration_seconds": 8, "best_latency_calculation_method": "sDr6kILsSSyDdmyk", "crossplay_disabled": false, "match_function": "7il35MXbN9oCMNqq", "match_function_override": {"backfill_matches": "98SjTvhZNkSQ70D0", "enrichment": ["H6BXksUC9b6i5lZC", "9xv32e8c5csSovoq", "sZNBdte9NDUPVJf6"], "make_matches": "c2Z0QZxfgPubTDIH", "stat_codes": ["rvqAThuwjRHpKKTl", "mVr9XuoJbRFQSKVP", "Hbn4Xxtu7LQRENjE"], "validation": ["Eztx1WsYSiZqan0n", "SBJroav91GXlvPG6", "bFYReVHQipcCx9Zw"]}, "platform_group_enabled": true, "rule_set": "CKNS0GqVvUfHQvsH", "session_template": "XNUNe4mhgo5QB65l", "ticket_expiration_seconds": 92}' 'lyNApflxqMrj3oZk' --login_with_auth "Bearer foo"
match2-delete-match-pool '03QXcKMDYDDxHSZj' --login_with_auth "Bearer foo"
match2-match-pool-metric 'tqXyJ58f7Gc26Sai' --login_with_auth "Bearer foo"
match2-get-player-metric 'GVkydwYWQG26yUZN' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'mTBcvrbYCwZtxFHy' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"PLtI8ilbyDPUIj88": {}, "cekdqCt81P1ktfIo": {}, "vmv9gsR5cJcHm3SZ": {}}, "latencies": {"LxoRDFuuuySj29a9": 77, "FM3FIoVk8T3GpAnk": 59, "zHPxB1UskYs4Yw20": 60}, "matchPool": "aZSWMiVi10sG6vxk", "sessionID": "fUcmqRRbceJ5i0Ee", "storage": {"DxOgBnhhqElIaDml": {}, "48wdNFLTm5T50x9W": {}, "T0GfH2rtOa4EXsXz": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'OXQAk4mqrxzTtuLl' --login_with_auth "Bearer foo"
match2-delete-match-ticket '4XlbGL8QOxtjzm8y' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"2wNhmwoYZyI4EFZK": {}, "BcYrCEAE7WIsfmx4": {}, "0NLRc6m8heKnWhzf": {}}, "enable_custom_match_function": false, "name": "z3LNUj7fdgLA84Z8"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'YYk6QEgJjBbEDoNf' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"3n0hEoRCAcf80zfF": {}, "yabWAgIUXiI07A68": {}, "eaqC2J9jyEW6GLbc": {}}, "enable_custom_match_function": false, "name": "NaKDUL3sa13lk1dQ"}' 'BHO86IlBhnetU4Rw' --login_with_auth "Bearer foo"
match2-delete-rule-set 'TqUXlTDBzOuYsaZA' --login_with_auth "Bearer foo"
match2-version-check-handler --login_with_auth "Bearer foo"
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
echo "1..37"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'match2-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'match2-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetLogConfig
$PYTHON -m $MODULE 'match2-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'match2-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
$PYTHON -m $MODULE 'match2-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
$PYTHON -m $MODULE 'match2-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
$PYTHON -m $MODULE 'match2-admin-patch-config-v1' \
    '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["QY3snn2ZkP7cFdP4", "3e5dC9XIBudfZgrb", "HDIDm4hMzF4Txode"], "matchAnyCommon": false, "platformGroup": {"oYetOO847g8OudOf": ["jnCuHZ3c46IjGa23", "YvYmmDg7VYPXIuvU", "YTZBRujIUE1Tq5jy"], "AZvkRCMNFIurjh2i": ["mdb4rbkXj0ZwsVC0", "gL97ZVJSPqJiwv1q", "lYB1RSKs6gQxC3Gb"], "7S0o4zGYY7KQI1Ae": ["FgPqaOkvo1aolB4l", "kKB4EYOkQ1jMD3cy", "m8xIfkOVW2grREOL"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "x0KOww3HICQLfl7M", "sessionId": "UBG7qtPu64yAtURK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'LRkb738HGS6rDgMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'IIlhS1fSiM9331m7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'Ta1PsKc50Kv6ecnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "evcAx2K2zkRenmPZ", "stop": false}' \
    'UgxBkF6wFPoJeQed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "iogEhhM2rIizGdKv", "stop": true}' \
    'dq5xrgxSmy1DN9LF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "kYW5DQyj4bj5Ro2o", "serviceAppName": "gaKt2ujQSa3Zdb65", "url": "UXmy0Zp6iIaTIKUk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "mkk9QM0NBMA9ORxp", "serviceAppName": "zwLR2AK6eXUGPJsw", "url": "1fiP80G9Pclxcft2"}' \
    'ulIJzPyrVEiOG4Uc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'qsuGKHhMRWLVd3Dl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 85, "backfill_ticket_expiration_seconds": 77, "best_latency_calculation_method": "nsbD3SGEdlwuUccE", "crossplay_disabled": true, "match_function": "ugBp3HBvepnDCjgy", "match_function_override": {"backfill_matches": "JlXe36mgWjLfFmte", "enrichment": ["ue9nzJ6fH24T805t", "Vg8JqU0jZpjvsugA", "OS7u8RiWyerCSa8S"], "make_matches": "RgwsAj1ik1jglaDX", "stat_codes": ["TvKCWwNTAhd2wrS0", "uPdjhdinpng5BLy8", "wbhMssAHjapIkY9R"], "validation": ["f4wP57dBZNR88YbC", "tmKy8M9zVrjfGXZn", "qAQUoY1GjlIIk0iK"]}, "name": "oTTS1j02o7JjTXAQ", "platform_group_enabled": true, "rule_set": "8ccLjMXJRk0eaKQD", "session_template": "OJvrTefglSs6g4iY", "ticket_expiration_seconds": 42}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'JvaizwiilatuUjjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 26, "backfill_ticket_expiration_seconds": 70, "best_latency_calculation_method": "NqF7Bl0LcghVHfPE", "crossplay_disabled": true, "match_function": "HB3CfR3ncDlwi3v3", "match_function_override": {"backfill_matches": "MFFJ1KesKoELCpob", "enrichment": ["BEG8X645xpdXpai0", "rYaT5hOPjaf3H0tY", "ighU0VUfcYHJbBfA"], "make_matches": "KSiPW3VgsZXiR1DJ", "stat_codes": ["7HVWqMkNSawQUWDF", "JvJBWic7UkBeIXuq", "DuAXI66bQ71w0deo"], "validation": ["V9Lx5RDA1l2Xcrci", "YNEzvSZIPkhSgORc", "z5S5BvmgBLxh4ijF"]}, "platform_group_enabled": false, "rule_set": "0ytZQ7M6Nzy1adnS", "session_template": "KOLFKx1dX4LuWJu3", "ticket_expiration_seconds": 32}' \
    'AAz3S4czz0QKFlAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'mVLu4AOec0z8eBee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'oip68J1nsv4W2OJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'tafxMSJlHeb34sZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'Hcl5LLLOexL4fZvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"tND2tcBFpX8lNtFE": {}, "J7tnkY6Mca5afj12": {}, "K2IzrBvvWm4udE0O": {}}, "latencies": {"XudXgNne8kJATwlc": 0, "esUp6Sw1I98jeZQ7": 16, "caug6CWVG8SWP3gl": 95}, "matchPool": "DHhLOqQGhCUr6iTr", "sessionID": "jyEgarAdNJOIG36I", "storage": {"6tRbRcrEveMdAdiP": {}, "KDUVSC00PYeDcagg": {}, "inxnFIna3yddcbsP": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'heTH26IUJNvYuGRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'vpZaHCuESOiIZsMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"B4ZH3mtgWgU4pCAK": {}, "xeE70CaunQNxot37": {}, "1W9G4AvQkqsGnmyo": {}}, "enable_custom_match_function": true, "name": "JJTUVmb8GEXFTlEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'EsFzYqwgK1Np5nod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"qpLm7FhJBNXzAFdO": {}, "0Khqf6kiTdSGv2LF": {}, "jAKY7CbgsWqFWZX7": {}}, "enable_custom_match_function": false, "name": "V5OemPYdYT7DROCj"}' \
    'tuzFMbAG9YI89hmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'uB8FOTjMLo4b9rIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
