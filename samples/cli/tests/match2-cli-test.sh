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
match2-create-backfill '{"matchPool": "EAxcVpFr", "sessionId": "ttufHIRd"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'H9UzVRiX' --login_with_auth "Bearer foo"
match2-get-backfill 'bqlAw7r6' --login_with_auth "Bearer foo"
match2-delete-backfill 'W2ktQG0h' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "5JAav5kR", "stop": false}' '4n8mzZ0m' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "8SAMTwE6", "stop": true}' 'IaRDBXxy' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "aNoMR6hk", "url": "spInrAip"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "6lyzSxwE", "url": "lFHHdgs2"}' '1Jub74CU' --login_with_auth "Bearer foo"
match2-delete-match-function 'kNmKJfh5' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 21, "backfill_ticket_expiration_seconds": 95, "match_function": "Y1aXlFcD", "match_function_override": {"backfill_matches": "tgOjchIu", "enrichment": ["a5tWEIC3", "2ogW7olv", "bTgrhRTc"], "make_matches": "PiSuL0Sl", "stat_codes": ["y6XM4OI1", "8mAQLnzj", "Mf8GZ2WB"], "validation": ["ZqxYG3aR", "EAu2D6QV", "KNCWP75T"]}, "name": "B0i7pKxR", "rule_set": "8dl0zRVW", "session_template": "4EZG9m0X", "ticket_expiration_seconds": 4}' --login_with_auth "Bearer foo"
match2-match-pool-details '68su8Xfq' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 34, "match_function": "E8GHavj7", "match_function_override": {"backfill_matches": "AorKsxwk", "enrichment": ["osAVerXp", "c1C8XfwH", "uKeb9l3r"], "make_matches": "GN9A3sNm", "stat_codes": ["84hddSpH", "t0P7MIIR", "7CkyF6C7"], "validation": ["duuyZ0Gh", "DogqrhBR", "d8lDR6qV"]}, "rule_set": "NPRZYdFL", "session_template": "IAjGGJdd", "ticket_expiration_seconds": 98}' 'QRgat0Se' --login_with_auth "Bearer foo"
match2-delete-match-pool 'vkLGMS0l' --login_with_auth "Bearer foo"
match2-match-pool-metric 'yuI9a2I9' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"u6Vpbsx5": {}, "w8hqUI06": {}, "UpOXGSLm": {}}, "latencies": {"CVuHOPlL": 23, "veabntBS": 47, "uRkgghGo": 58}, "matchPool": "upD391C2", "sessionID": "qtPYokah"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'FjkQsfCa' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'Tmt1d67F' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"XGk2s9Q0": {}, "mPVo3twu": {}, "0MesTCf9": {}}, "enable_custom_match_function": true, "name": "jGSWN2la"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'RlxfcjHf' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"YakUCTqG": {}, "kE7wcWfD": {}, "slpJSqGA": {}}, "enable_custom_match_function": true, "name": "0yYoNRKd"}' '3IL5TAQ6' --login_with_auth "Bearer foo"
match2-delete-rule-set 'iiPlSC2u' --login_with_auth "Bearer foo"
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
echo "1..28"

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

#- 4 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "E4o5Vwdo", "sessionId": "3fePqIJA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    '8IHtrkmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    '0hpDDWVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'la2l5BYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "tIuS5S5X", "stop": true}' \
    'djsoqwGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "zzWi9gwQ", "stop": false}' \
    'v7t1o7TT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "r1DmrhZv", "url": "15T7quIO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "vBMcaYmv", "url": "CkGZ5dAg"}' \
    'qxpBFmaL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'oxozr6wf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 85, "backfill_ticket_expiration_seconds": 16, "match_function": "X2bOItRM", "match_function_override": {"backfill_matches": "vqtlB2jJ", "enrichment": ["CSQT279Z", "ZPYGu0rd", "lgdWyOtX"], "make_matches": "i3choQrp", "stat_codes": ["OsDBU5Se", "pjChB3V0", "v52Dlym6"], "validation": ["puQ23xoJ", "8aeCnaLp", "UKp44YUD"]}, "name": "jasWIPUv", "rule_set": "mEejtGeo", "session_template": "yIPa8ZRr", "ticket_expiration_seconds": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'ykmoPYgc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 80, "backfill_ticket_expiration_seconds": 18, "match_function": "9oCMNqq9", "match_function_override": {"backfill_matches": "8SjTvhZN", "enrichment": ["kSQ70D0H", "6BXksUC9", "b6i5lZC9"], "make_matches": "xv32e8c5", "stat_codes": ["csSovoqs", "ZNBdte9N", "DUPVJf6c"], "validation": ["2Z0QZxfg", "PubTDIHr", "vqAThuwj"]}, "rule_set": "RHpKKTlm", "session_template": "Vr9XuoJb", "ticket_expiration_seconds": 89}' \
    'vneSD2Tb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    '3g7mSQUh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'AEtrmjqU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"6YE3p4lS": {}, "ck0ZHn5G": {}, "I39YBHqa": {}}, "latencies": {"THeKtW18": 18, "YReVHQip": 5, "sogWa24C": 76}, "matchPool": "L7vIYhGG", "sessionID": "SyEW4ZJJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreateMatchTicket' test.out

#- 21 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '42d3PBdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'MatchTicketDetails' test.out

#- 22 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'N8S48l9l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchTicket' test.out

#- 23 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RuleSetList' test.out

#- 24 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"yNApflxq": {}, "Mrj3oZk0": {}, "3QXcKMDY": {}}, "enable_custom_match_function": true, "name": "r1yrOMlN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateRuleSet' test.out

#- 25 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'FSrUEirn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RuleSetDetails' test.out

#- 26 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"jX9fDmIb": {}, "eZxzfTcy": {}, "iuATus9h": {}}, "enable_custom_match_function": true, "name": "BcvrbYCw"}' \
    'ZtxFHyPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateRuleSet' test.out

#- 27 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'tI8ilbyD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteRuleSet' test.out

#- 28 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
