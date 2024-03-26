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
match2-admin-get-all-config-v1 --login_with_auth "Bearer foo"
match2-admin-get-config-v1 --login_with_auth "Bearer foo"
match2-admin-patch-config-v1 '{"platformGroup": {"EAxcVpFrttufHIRd": ["H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b"], "BZLCXLx8bbgorQeF": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "XlFcDtgOjchIua5t": ["WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X", "M4OI18mAQLnzjMf8"]}}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "GZ2WBZqxYG3aREAu", "sessionId": "2D6QVKNCWP75TB0i"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
match2-get-backfill 'G9m0XcgGVbMqSszE' --login_with_auth "Bearer foo"
match2-delete-backfill '8GHavj7AorKsxwko' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "sAVerXpc1C8XfwHu", "stop": true}' 'eb9l3rGN9A3sNm84' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "hddSpHt0P7MIIR7C", "stop": false}' 'd5tA5jUmiTqpyhPF' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "dxLzFQN05MYzYiKW", "serviceAppName": "e5dNRljv7IPrDQQR", "url": "gat0SevkLGMS0lyu"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "I9a2I9u6Vpbsx5w8", "serviceAppName": "hqUI06UpOXGSLmCV", "url": "uHOPlLlkvR8sKgnu"}' 'RkgghGoYupD391C2' --login_with_auth "Bearer foo"
match2-delete-match-function 'qtPYokahFjkQsfCa' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 25, "backfill_ticket_expiration_seconds": 11, "crossplay_disabled": true, "match_function": "8TgoNm03VLisV6zw", "match_function_override": {"backfill_matches": "Puo3td6TC6I3lMjG", "enrichment": ["SWN2laRlxfcjHfYa", "kUCTqGkE7wcWfDsl", "pJSqGAXQ0yYoNRKd"], "make_matches": "3IL5TAQ6iiPlSC2u", "stat_codes": ["E4o5Vwdo3fePqIJA", "8IHtrkmu0hpDDWVA", "la2l5BYNtIuS5S5X"], "validation": ["UdjsoqwGyzzWi9gw", "QYv7t1o7TTr1Dmrh", "Zv15T7quIOvBMcaY"]}, "name": "mvCkGZ5dAgqxpBFm", "platfrom_group_enabled": false, "rule_set": "vxJMdalwSyliWMNW", "session_template": "5NyLu0M3VHh2EI8J", "ticket_expiration_seconds": 22}' --login_with_auth "Bearer foo"
match2-match-pool-details '79ZZPYGu0rdlgdWy' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 39, "backfill_ticket_expiration_seconds": 20, "crossplay_disabled": false, "match_function": "nvxkT1X68cmDc3fx", "match_function_override": {"backfill_matches": "U8MyKrQpM4hkkK6K", "enrichment": ["KXNB3Gv0IqmF51Tk", "hjYnaq6foWvXa3bM", "rXsDr6kILsSSyDdm"], "make_matches": "ykmoPYgc2L4jk4Lo", "stat_codes": ["0LSP0pf4IxjUkl53", "5X3ateEKDpADz1x3", "poD3Qgb3boLQQ1Mz"], "validation": ["H7Qm8bwbmXgdAPh1", "EThG96gAFKK2WDgC", "cxvONZm3EeERmDny"]}, "platfrom_group_enabled": false, "rule_set": "TlmVr9XuoJbRFQSK", "session_template": "VPHbn4Xxtu7LQREN", "ticket_expiration_seconds": 19}' 'jqU6YE3p4lSck0ZH' --login_with_auth "Bearer foo"
match2-delete-match-pool 'n5GI39YBHqaTHeKt' --login_with_auth "Bearer foo"
match2-match-pool-metric 'W18iGeUlc9d9sogW' --login_with_auth "Bearer foo"
match2-get-player-metric 'a24CKNS0GqVvUfHQ' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'vsHXNUNe4mhgo5QB' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"65lSAiYnNjkfZrQv": {}, "GgbLdLsFzHkBMr1y": {}, "rOMlNFSrUEirnjX9": {}}, "latencies": {"fDmIbeZxzfTcyiuA": 94, "UZNmTBcvrbYCwZtx": 64, "VGLiBNrDjqoxcwgG": 77}, "matchPool": "88cekdqCt81P1ktf", "sessionID": "Iovmv9gsR5cJcHm3"}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'SZLxoRDFuuuySj29' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'a9LJE8HoRS1X2PFA' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"AMwzHPxB1UskYs4Y": {}, "w20DOqOBSC2DKHRu": {}, "PMMWH8Yb33T5UBJC": {}}, "enable_custom_match_function": false, "name": "0EeDxOgBnhhqElIa"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'Dml48wdNFLTm5T50' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"x9WT0GfH2rtOa4EX": {}, "sXzOXQAk4mqrxzTt": {}, "uLl4XlbGL8QOxtjz": {}}, "enable_custom_match_function": false, "name": "GT2t24aOMh5eC3IH"}' 'eHSKLCa3xreNDUWe' --login_with_auth "Bearer foo"
match2-delete-rule-set 'hwH3q31A806DJgas' --login_with_auth "Bearer foo"
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
echo "1..35"

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

#- 4 AdminGetAllConfigV1
$PYTHON -m $MODULE 'match2-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAllConfigV1' test.out

#- 5 AdminGetConfigV1
$PYTHON -m $MODULE 'match2-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigV1' test.out

#- 6 AdminPatchConfigV1
$PYTHON -m $MODULE 'match2-admin-patch-config-v1' \
    '{"platformGroup": {"4b6z3LNUj7fdgLA8": ["4Z8YYk6QEgJjBbED", "oNf3n0hEoRCAcf80", "zfFyabWAgIUXiI07"], "A68eaqC2J9jyEW6G": ["Lbc0NaKDUL3sa13l", "k1dQBHO86IlBhnet", "U4RwTqUXlTDBzOuY"], "saZA2yyd4mbqoOfA": ["DMMAXFaY9eKa699b", "RVhyaKwwrAP2aMlu", "7WtjCtoYetOO847g"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "8OudOfjnCuHZ3c46", "sessionId": "IjGa23YvYmmDg7VY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'PXIuvUYTZBRujIUE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    '1Tq5jyAZvkRCMNFI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'urjh2imdb4rbkXj0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "ZwsVC0gL97ZVJSPq", "stop": true}' \
    'iwv1qlYB1RSKs6gQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "xC3Gb7S0o4zGYY7K", "stop": false}' \
    'AeFgPqaOkvo1aolB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "4lkKB4EYOkQ1jMD3", "serviceAppName": "cym8xIfkOVW2grRE", "url": "OLx0KOww3HICQLfl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "7MUBG7qtPu64yAtU", "serviceAppName": "RKLRkb738HGS6rDg", "url": "MdIIlhS1fSiM9331"}' \
    'm7Ta1PsKc50Kv6ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'nEevcAx2K2zkRenm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 19, "backfill_ticket_expiration_seconds": 28, "crossplay_disabled": false, "match_function": "Bt4P7WnbdSJtjX7Z", "match_function_override": {"backfill_matches": "shZyZl5x4bRXBHUT", "enrichment": ["rDzZSKscfOcYu3dp", "CROYqUiGKXVFCmpo", "6sPwVOEDSJsEK5Qp"], "make_matches": "NhlI2iS5EpGhhvXY", "stat_codes": ["ck0upMzUYnb76tFk", "EORV3bu1bNCtX7W4", "0V6Do5sYadCCFrHH"], "validation": ["C3DpZxkrQDXuNFvi", "Marv8mnfHK8CCmE2", "lPnsbD3SGEdlwuUc"]}, "name": "cE536ugBp3HBvepn", "platfrom_group_enabled": true, "rule_set": "dsMrok0WvGYYnx4V", "session_template": "709xbnGezKsDwG2o", "ticket_expiration_seconds": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    '805tVg8JqU0jZpjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 100, "backfill_ticket_expiration_seconds": 43, "crossplay_disabled": false, "match_function": "gAOS7u8RiWyerCSa", "match_function_override": {"backfill_matches": "8SRgwsAj1ik1jgla", "enrichment": ["DXTvKCWwNTAhd2wr", "S0uPdjhdinpng5BL", "y8wbhMssAHjapIkY"], "make_matches": "9Rf4wP57dBZNR88Y", "stat_codes": ["bCtmKy8M9zVrjfGX", "ZnqAQUoY1GjlIIk0", "iKoTTS1j02o7JjTX"], "validation": ["AQN0qdskdQV0TqI8", "EFnmDbxIxi4YKlON", "k2Q5Y4Jvaizwiila"]}, "platfrom_group_enabled": true, "rule_set": "p18lOC3mNqF7Bl0L", "session_template": "cghVHfPEspxwhRON", "ticket_expiration_seconds": 4}' \
    'bc1eMbEIjowLqc3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'cjXJbZDKKoxLE1Y3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'Dymtj3giPg4x4yiP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'X6ues1Hhhkg1yLVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'LFzHEP8cM4NTwr0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"HaAsmTej52WKi6tA": {}, "rAURt9plCSVq8PdH": {}, "6hJPUAc0RVwXgAgn": {}}, "latencies": {"tLMCuaXBWQi6BqPg": 24, "xr0lCancUZGCHsZY": 30, "hSgORcz5S5BvmgBL": 48}, "matchPool": "vuKNuy0ytZQ7M6Nz", "sessionID": "y1adnSKOLFKx1dX4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'LuWJu3pDMUAeeZ97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'SBROPYuG6XqP6oo7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"G73zdxTgOfnwIdlN": {}, "a29fDLh741IslKHz": {}, "GlLKWUtDQs61OQAo": {}}, "enable_custom_match_function": true, "name": "L4fZvWtND2tcBFpX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    '8lNtFEJ7tnkY6Mca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"5afj12K2IzrBvvWm": {}, "4udE0OXudXgNne8k": {}, "JATwlc6esUp6Sw1I": {}}, "enable_custom_match_function": false, "name": "rzzjrcaug6CWVG8S"}' \
    'WP3glU6muswVJnNn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'N7kAa7j0riFc5HTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
