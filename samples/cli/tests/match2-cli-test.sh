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
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "EAxcVpFrttufHIRd", "sessionId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
match2-get-backfill 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
match2-delete-backfill 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "bQ1g7qbPngUNB1vR", "stop": false}' 'xwElFHHdgs21Jub7' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "4CUkNmKJfh5pUkHO", "stop": true}' 'lFcDtgOjchIua5tW' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "EIC32ogW7olvbTgr", "serviceAppName": "hRTcPiSuL0Sly6XM", "url": "4OI18mAQLnzjMf8G"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "Z2WBZqxYG3aREAu2", "serviceAppName": "D6QVKNCWP75TB0i7", "url": "pKxR8dl0zRVW4EZG"}' '9m0XcgGVbMqSszE8' --login_with_auth "Bearer foo"
match2-delete-match-function 'GHavj7AorKsxwkos' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 97, "backfill_ticket_expiration_seconds": 80, "match_function": "erXpc1C8XfwHuKeb", "match_function_override": {"backfill_matches": "9l3rGN9A3sNm84hd", "enrichment": ["dSpHt0P7MIIR7Cky", "F6C7duuyZ0GhDogq", "rhBRd8lDR6qVNPRZ"], "make_matches": "YdFLIAjGGJddVCvu", "stat_codes": ["9vx5KQ7KYnIuMBva", "O35llzQRaT5kPxUf", "ofvnnSuB0y5WUlrM"], "validation": ["dI4sNveabntBSxTe", "Iv53HGCiljvjKoyD", "6SCwGrncqmLtjQHA"]}, "name": "f8TgoNm03VLisV6z", "rule_set": "wPuo3td6TC6I3lMj", "session_template": "GSWN2laRlxfcjHfY", "ticket_expiration_seconds": 0}' --login_with_auth "Bearer foo"
match2-match-pool-details '6MbwL6IY69z1UaLq' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 72, "match_function": "YWytLPziZMdjxcBZ", "match_function_override": {"backfill_matches": "ufQxGiHPllG4cYEz", "enrichment": ["fTD1ZBm3MqHcUmLZ", "ZbSqb8RwNmn9HrNQ", "y4uZAAiE0mit9RGC"], "make_matches": "CHYzUOcEdscKHPEq", "stat_codes": ["gA8yu7Vk6Jt4Ymos", "9Jcdos4fYcTVU6RB", "t0zYoMcHyCUEXlAv"], "validation": ["xJMdalwSyliWMNW5", "NyLu0M3VHh2EI8Jl", "DbPWbQ6Q9lNmqRBa"]}, "rule_set": "AkLnvxkT1X68cmDc", "session_template": "3fxU8MyKrQpM4hkk", "ticket_expiration_seconds": 74}' 'm6puQ23xoJ8aeCna' --login_with_auth "Bearer foo"
match2-delete-match-pool 'LpUKp44YUDjasWIP' --login_with_auth "Bearer foo"
match2-match-pool-metric 'UvmEejtGeoyIPa8Z' --login_with_auth "Bearer foo"
match2-get-player-metric 'Rrvjj7il35MXbN9o' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'CMNqq98SjTvhZNkS' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"Q70D0H6BXksUC9b6": {}, "i5lZC9xv32e8c5cs": {}, "SovoqsZNBdte9NDU": {}}, "latencies": {"PVJf6c2Z0QZxfgPu": 2, "gCcxvONZm3EeERmD": 28, "KKTlmVr9XuoJbRFQ": 92}, "matchPool": "SD2Tb3g7mSQUhAEt", "sessionID": "rmjqU6YE3p4lSck0"}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'ZHn5GI39YBHqaTHe' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'KtW18iGeUlc9d9so' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"gWa24CKNS0GqVvUf": {}, "HQvsHXNUNe4mhgo5": {}, "QB65lSAiYnNjkfZr": {}}, "enable_custom_match_function": false, "name": "vGgbLdLsFzHkBMr1"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'yrOMlNFSrUEirnjX' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"9fDmIbeZxzfTcyiu": {}, "ATus9hsfpFDcSDG8": {}, "aMVGLiBNrDjqoxcw": {}}, "enable_custom_match_function": false, "name": "Ij88cekdqCt81P1k"}' 'tfIovmv9gsR5cJcH' --login_with_auth "Bearer foo"
match2-delete-rule-set 'm3SZLxoRDFuuuySj' --login_with_auth "Bearer foo"
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
echo "1..32"

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

#- 4 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'EnvironmentVariableList' test.out

#- 5 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "29a9LJE8HoRS1X2P", "sessionId": "FAAMwzHPxB1UskYs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    '4Yw20DOqOBSC2DKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'RuPMMWH8Yb33T5UB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'JCjfcnLRfxeCSz9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "Ei8KlloeH0JT1ydu", "stop": false}' \
    '50x9WT0GfH2rtOa4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "EXsXzOXQAk4mqrxz", "stop": true}' \
    'SqYUTLDx9gIiDand' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "pGT2t24aOMh5eC3I", "serviceAppName": "HeHSKLCa3xreNDUW", "url": "ehwH3q31A806DJga"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "s4b6z3LNUj7fdgLA", "serviceAppName": "84Z8YYk6QEgJjBbE", "url": "DoNf3n0hEoRCAcf8"}' \
    '0zfFyabWAgIUXiI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    '7A68eaqC2J9jyEW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 77, "backfill_ticket_expiration_seconds": 70, "match_function": "bc0NaKDUL3sa13lk", "match_function_override": {"backfill_matches": "1dQBHO86IlBhnetU", "enrichment": ["4RwTqUXlTDBzOuYs", "aZA2yyd4mbqoOfAD", "MMAXFaY9eKa699bR"], "make_matches": "VhyaKwwrAP2aMlu7", "stat_codes": ["WtjCtoYetOO847g8", "OudOfjnCuHZ3c46I", "jGa23YvYmmDg7VYP"], "validation": ["XIuvUYTZBRujIUE1", "Tq5jyAZvkRCMNFIu", "rjh2imdb4rbkXj0Z"]}, "name": "wsVC0gL97ZVJSPqJ", "rule_set": "iwv1qlYB1RSKs6gQ", "session_template": "xC3Gb7S0o4zGYY7K", "ticket_expiration_seconds": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'NJma1MbqqZtfNWql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 27, "backfill_ticket_expiration_seconds": 55, "match_function": "mwAft4gqkNNlWkD9", "match_function_override": {"backfill_matches": "eOziYRFOn0jJLHC9", "enrichment": ["LxhvNXTwGBCtohLt", "l9Zuhytm5UDrT6QX", "Cs5SPBbRPZTF6oQA"], "make_matches": "XVG7tnsZg5QgXjvy", "stat_codes": ["GJPN4eXbJE5Vs2Gc", "yomQoIXimBJehyxl", "NsjUgxBkF6wFPoJe"], "validation": ["QediogEhhM2rIizG", "dKvOPdq5xrgxSmy1", "DN9LFkYW5DQyj4bj"]}, "rule_set": "5Ro2ogaKt2ujQSa3", "session_template": "Zdb65UXmy0Zp6iIa", "ticket_expiration_seconds": 94}' \
    'hvXYck0upMzUYnb7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    '6tFkEORV3bu1bNCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'X7W40V6Do5sYadCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'FrHHC3DpZxkrQDXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'NFviMarv8mnfHK8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetMatchPoolTickets' test.out

#- 23 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"CmE2lPnsbD3SGEdl": {}, "wuUccE536ugBp3HB": {}, "vepnDCjgyJlXe36m": {}}, "latencies": {"gWjLfFmteue9nzJ6": 11, "wG2omOR2nvYI9TVq": 72, "ZpjvsugAOS7u8RiW": 50}, "matchPool": "5LL4bTxBmZjdrrIx", "sessionID": "sB0NRsB1fPqqRRul"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchTicket' test.out

#- 24 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetMyMatchTickets' test.out

#- 25 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'pqpymDkQhtrHWwRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchTicketDetails' test.out

#- 26 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'nwVBOqOHi8pWGd1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchTicket' test.out

#- 27 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RuleSetList' test.out

#- 28 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"uYhiqjRJOqB5F93z": {}, "FQbJndUDpdONneAc": {}, "zbBdHb2slt71B1Sm": {}}, "enable_custom_match_function": false, "name": "p2JZp50CnPb71ORY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateRuleSet' test.out

#- 29 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'cmQbTU5JX8ccLjMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'RuleSetDetails' test.out

#- 30 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"JRk0eaKQDOJvrTef": {}, "glSs6g4iY9u02aCN": {}, "YIWekp18lOC3mNqF": {}}, "enable_custom_match_function": false, "name": "Bl0LcghVHfPEspxw"}' \
    'hRON0bc1eMbEIjow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateRuleSet' test.out

#- 31 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'Lqc3ecjXJbZDKKox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteRuleSet' test.out

#- 32 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
