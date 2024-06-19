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
match2-admin-patch-config-v1 '{"extraPlatforms": ["twYCA9kPI6LZrkq6", "Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh"], "platformGroup": {"4n8mzZ0m8SAMTwE6": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "4CUkNmKJfh5pUkHO": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "vyE3cwyALczNIicX": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"]}}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "n7Z4U68su8XfqlqN", "sessionId": "iTvB6SdAdIhUDrwo"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'Z5MecdKi5r6QEa1y' --login_with_auth "Bearer foo"
match2-get-backfill 'sLEzth6mXhzkzWkF' --login_with_auth "Bearer foo"
match2-delete-backfill 'eZSoEAcBdW19m4eu' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "6d5tA5jUmiTqpyhP", "stop": false}' 'dxLzFQN05MYzYiKW' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "e5dNRljv7IPrDQQR", "stop": false}' 'u9vx5KQ7KYnIuMBv' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "aO35llzQRaT5kPxU", "serviceAppName": "fofvnnSuB0y5WUlr", "url": "MdI4sNveabntBSxT"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "eIv53HGCiljvjKoy", "serviceAppName": "D6SCwGrncqmLtjQH", "url": "Af8TgoNm03VLisV6"}' 'zwPuo3td6TC6I3lM' --login_with_auth "Bearer foo"
match2-delete-match-function 'jGSWN2laRlxfcjHf' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 0, "backfill_ticket_expiration_seconds": 21, "crossplay_disabled": false, "match_function": "CTqGkE7wcWfDslpJ", "match_function_override": {"backfill_matches": "SqGAXQ0yYoNRKd3I", "enrichment": ["L5TAQ6iiPlSC2uE4", "o5Vwdo3fePqIJA8I", "Htrkmu0hpDDWVAla"], "make_matches": "2l5BYNtIuS5S5XUd", "stat_codes": ["jsoqwGyzzWi9gwQY", "v7t1o7TTr1DmrhZv", "15T7quIOvBMcaYmv"], "validation": ["CkGZ5dAgqxpBFmaL", "oxozr6wfNPX2bOIt", "RMvqtlB2jJCSQT27"]}, "name": "9ZZPYGu0rdlgdWyO", "platform_group_enabled": true, "rule_set": "kLnvxkT1X68cmDc3", "session_template": "fxU8MyKrQpM4hkkK", "ticket_expiration_seconds": 75}' --login_with_auth "Bearer foo"
match2-match-pool-details 'puQ23xoJ8aeCnaLp' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 74, "backfill_ticket_expiration_seconds": 19, "crossplay_disabled": true, "match_function": "Ynaq6foWvXa3bMrX", "match_function_override": {"backfill_matches": "sDr6kILsSSyDdmyk", "enrichment": ["moPYgc2L4jk4Lo0L", "SP0pf4IxjUkl535X", "3ateEKDpADz1x3po"], "make_matches": "D3Qgb3boLQQ1MzH7", "stat_codes": ["Qm8bwbmXgdAPh1ET", "hG96gAFKK2WDgCcx", "vONZm3EeERmDnyeF"], "validation": ["oF7VSZ6pf3vneSD2", "Tb3g7mSQUhAEtrmj", "qU6YE3p4lSck0ZHn"]}, "platform_group_enabled": true, "rule_set": "I39YBHqaTHeKtW18", "session_template": "iGeUlc9d9sogWa24", "ticket_expiration_seconds": 59}' '2L7vIYhGGSyEW4ZJ' --login_with_auth "Bearer foo"
match2-delete-match-pool 'J42d3PBddN8S48l9' --login_with_auth "Bearer foo"
match2-match-pool-metric 'lyNApflxqMrj3oZk' --login_with_auth "Bearer foo"
match2-get-player-metric '03QXcKMDYDDxHSZj' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'tqXyJ58f7Gc26Sai' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"GVkydwYWQG26yUZN": {}, "mTBcvrbYCwZtxFHy": {}, "PLtI8ilbyDPUIj88": {}}, "latencies": {"cekdqCt81P1ktfIo": 44, "eIP6rOvDz9KOsb39": 49, "k6YmJFfRByjlBiuF": 80}, "matchPool": "E8HoRS1X2PFAAMwz", "sessionID": "HPxB1UskYs4Yw20D", "storage": {"OqOBSC2DKHRuPMMW": {}, "H8Yb33T5UBJCjfcn": {}, "LRfxeCSz9WEi8Kll": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'oeH0JT1yduat2vQR' --login_with_auth "Bearer foo"
match2-delete-match-ticket '3biBfsu4jmsRE2w1' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"yEkLgh3tIYt4SqYU": {}, "TLDx9gIiDandpGT2": {}, "t24aOMh5eC3IHeHS": {}}, "enable_custom_match_function": false, "name": "LCa3xreNDUWehwH3"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'q31A806DJgas4b6z' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"3LNUj7fdgLA84Z8Y": {}, "Yk6QEgJjBbEDoNf3": {}, "n0hEoRCAcf80zfFy": {}}, "enable_custom_match_function": false, "name": "mJrYq6hRkloqxM3g"}' 'pwxcfMy9XzjjI5Yb' --login_with_auth "Bearer foo"
match2-delete-rule-set 'sKoADkzJEN2VHzih' --login_with_auth "Bearer foo"
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
    '{"logLevel": "panic"}' \
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
    '{"extraPlatforms": ["bit0VWn3CO39PXDN", "xtXgeO3FgkXhjDza", "QY3snn2ZkP7cFdP4"], "platformGroup": {"3e5dC9XIBudfZgrb": ["HDIDm4hMzF4Txode", "nSrUTvfqU0bfoMm5", "cTtFWbotQyXJRcQW"], "smqPNs92epxk0i8V": ["xsZNereSvf9699mC", "EHThUJkETAsSp7gh", "4TeUTkOkAYfJB8AT"], "9t4Tv207Y2QD3oD5": ["fLCr3OOlXVv8ZGF7", "uYnGzpipNDigNJma", "1MbqqZtfNWql4nmw"]}}' \
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
    '{"matchPool": "Aft4gqkNNlWkD9eO", "sessionId": "ziYRFOn0jJLHC9Lx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'hvNXTwGBCtohLtl9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'Zuhytm5UDrT6QXCs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    '5SPBbRPZTF6oQAXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "G7tnsZg5QgXjvyGJ", "stop": false}' \
    '4eXbJE5Vs2GcyomQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "oIXimBJehyxlNsjU", "stop": false}' \
    'Bt4P7WnbdSJtjX7Z' \
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
    '{"match_function": "shZyZl5x4bRXBHUT", "serviceAppName": "rDzZSKscfOcYu3dp", "url": "CROYqUiGKXVFCmpo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "6sPwVOEDSJsEK5Qp", "serviceAppName": "NhlI2iS5EpGhhvXY", "url": "ck0upMzUYnb76tFk"}' \
    'EORV3bu1bNCtX7W4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    '0V6Do5sYadCCFrHH' \
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
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 42, "backfill_ticket_expiration_seconds": 23, "crossplay_disabled": true, "match_function": "IJzPyrVEiOG4Ucqs", "match_function_override": {"backfill_matches": "uGKHhMRWLVd3DlhL", "enrichment": ["uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70"], "make_matches": "9xbnGezKsDwG2omO", "stat_codes": ["R2nvYI9TVqJdvzcW", "bfUpaXp5JMl5LL4b", "TxBmZjdrrIxsB0NR"], "validation": ["sB1fPqqRRulpqpym", "DkQhtrHWwRVnwVBO", "qOHi8pWGd1juYhiq"]}, "name": "jRJOqB5F93zFQbJn", "platform_group_enabled": false, "rule_set": "bCtmKy8M9zVrjfGX", "session_template": "ZnqAQUoY1GjlIIk0", "ticket_expiration_seconds": 16}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    '50CnPb71ORYcmQbT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 6, "backfill_ticket_expiration_seconds": 4, "crossplay_disabled": true, "match_function": "cLjMXJRk0eaKQDOJ", "match_function_override": {"backfill_matches": "vrTefglSs6g4iY9u", "enrichment": ["02aCNYIWekp18lOC", "3mNqF7Bl0LcghVHf", "PEspxwhRON0bc1eM"], "make_matches": "bEIjowLqc3ecjXJb", "stat_codes": ["ZDKKoxLE1Y3Dymtj", "3giPg4x4yiPX6ues", "1Hhhkg1yLVbLFzHE"], "validation": ["P8cM4NTwr0KHaAsm", "Tej52WKi6tArAURt", "9plCSVq8PdH6hJPU"]}, "platform_group_enabled": true, "rule_set": "uqDuAXI66bQ71w0d", "session_template": "eoV9Lx5RDA1l2Xcr", "ticket_expiration_seconds": 5}' \
    'ancUZGCHsZYoLfR1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'KtOv7Zy0b65uvuKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'uy0ytZQ7M6Nzy1ad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'nSKOLFKx1dX4LuWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'u3pDMUAeeZ97SBRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"PYuG6XqP6oo7G73z": {}, "dxTgOfnwIdlNa29f": {}, "DLh741IslKHzGlLK": {}}, "latencies": {"WUtDQs61OQAoxyyQ": 31, "vWtND2tcBFpX8lNt": 64, "Cf2XJVrlzqQls1oz": 15}, "matchPool": "2K2IzrBvvWm4udE0", "sessionID": "OXudXgNne8kJATwl", "storage": {"c6esUp6Sw1I98jeZ": {}, "Q7hfxnhLd3Knakno": {}, "ed9DHhLOqQGhCUr6": {}}}' \
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
    'iTrjyEgarAdNJOIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    '36I6tRbRcrEveMdA' \
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
    '{"data": {"diPKDUVSC00PYeDc": {}, "agginxnFIna3yddc": {}, "bsPheTH26IUJNvYu": {}}, "enable_custom_match_function": false, "name": "RUvpZaHCuESOiIZs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'MfB4ZH3mtgWgU4pC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"AKxeE70CaunQNxot": {}, "371W9G4AvQkqsGnm": {}, "yo5JJTUVmb8GEXFT": {}}, "enable_custom_match_function": false, "name": "AyrIwMif3BOdkocV"}' \
    'Td4BxqGWV6mTJ0sQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    's6XNbjvqhnUVLWu8' \
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
