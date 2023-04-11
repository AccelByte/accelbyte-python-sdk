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
match2-get-player-metric 'u6Vpbsx5' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"w8hqUI06": {}, "UpOXGSLm": {}, "CVuHOPlL": {}}, "latencies": {"lkvR8sKg": 28, "xTeIv53H": 66, "YupD391C": 49}, "matchPool": "qtPYokah", "sessionID": "FjkQsfCa"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'Tmt1d67F' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'XGk2s9Q0' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"mPVo3twu": {}, "0MesTCf9": {}, "x4rt69ln": {}}, "enable_custom_match_function": false, "name": "RlxfcjHf"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'YakUCTqG' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"kE7wcWfD": {}, "slpJSqGA": {}, "XQ0yYoNR": {}}, "enable_custom_match_function": false, "name": "d3IL5TAQ"}' '6iiPlSC2' --login_with_auth "Bearer foo"
match2-delete-rule-set 'uE4o5Vwd' --login_with_auth "Bearer foo"
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
echo "1..29"

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
    '{"matchPool": "o3fePqIJ", "sessionId": "A8IHtrkm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'u0hpDDWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'Ala2l5BY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'NtIuS5S5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "XUdjsoqw", "stop": false}' \
    'yzzWi9gw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "QYv7t1o7", "stop": false}' \
    'Tr1DmrhZ' \
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
    '{"match_function": "v15T7quI", "url": "OvBMcaYm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "vCkGZ5dA", "url": "gqxpBFma"}' \
    'Loxozr6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'fNPX2bOI' \
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
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 81, "backfill_ticket_expiration_seconds": 90, "match_function": "yLu0M3VH", "match_function_override": {"backfill_matches": "h2EI8JlD", "enrichment": ["bPWbQ6Q9", "lNmqRBaA", "kLnvxkT1"], "make_matches": "X68cmDc3", "stat_codes": ["fxU8MyKr", "QpM4hkkK", "6KKXNB3G"], "validation": ["v0IqmF51", "TkhjYnaq", "6foWvXa3"]}, "name": "bMrXsDr6", "rule_set": "kILsSSyD", "session_template": "dmykmoPY", "ticket_expiration_seconds": 13}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    '5MXbN9oC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 82, "backfill_ticket_expiration_seconds": 33, "match_function": "LSP0pf4I", "match_function_override": {"backfill_matches": "xjUkl535", "enrichment": ["X3ateEKD", "pADz1x3p", "oD3Qgb3b"], "make_matches": "oLQQ1MzH", "stat_codes": ["7Qm8bwbm", "XgdAPh1E", "ThG96gAF"], "validation": ["KK2WDgCc", "xvONZm3E", "eERmDnye"]}, "rule_set": "FoF7VSZ6", "session_template": "pf3vneSD", "ticket_expiration_seconds": 85}' \
    'Tb3g7mSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'UhAEtrmj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'qU6YE3p4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'lSck0ZHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"5GI39YBH": {}, "qaTHeKtW": {}, "18iGeUlc": {}}, "latencies": {"9d9sogWa": 61, "CKNS0GqV": 45, "GSyEW4ZJ": 74}, "matchPool": "NUNe4mhg", "sessionID": "o5QB65lS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'AiYnNjkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'ZrQvGgbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"dLsFzHkB": {}, "Mr1yrOMl": {}, "NFSrUEir": {}}, "enable_custom_match_function": false, "name": "Gc26SaiG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'VkydwYWQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"G26yUZNm": {}, "TBcvrbYC": {}, "wZtxFHyP": {}}, "enable_custom_match_function": true, "name": "tI8ilbyD"}' \
    'PUIj88ce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'kdqCt81P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
