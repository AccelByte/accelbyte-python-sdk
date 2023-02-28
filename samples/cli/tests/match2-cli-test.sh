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
match2-create-backfill '{"matchPool": "MEA19t1L", "sessionId": "0d5dDabw"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'ab4PSX7F' --login_with_auth "Bearer foo"
match2-get-backfill 'yM7vs7rE' --login_with_auth "Bearer foo"
match2-delete-backfill 'uoA0eC8U' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "gt9yGNv5", "stop": false}' 'MQpSMQxa' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "yzYzlDnr", "stop": false}' 'ITnmoqps' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "wi6XNmQR", "url": "0EuTM6z8"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'LTsV9R6P' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 6, "backfill_ticket_expiration_seconds": 76, "match_function": "OV4m8LIk", "match_function_override": {"backfill_matches": "mC52MnsX", "hydration": ["LefdjX0g", "mTat7yPN", "oXjz5wHf"], "make_matches": "shtyCeAp", "stat_codes": ["Yua7Jllf", "V4IkYNqp", "taFqSgQo"], "validation": ["Pjd2Ts9Q", "ef2Py200", "x2zKZcED"]}, "name": "yY5YQN1Y", "rule_set": "sCmaLpAY", "session_template": "LYvopnLB", "ticket_expiration_seconds": 18}' --login_with_auth "Bearer foo"
match2-match-pool-details 'RZWE3eTS' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 32, "backfill_ticket_expiration_seconds": 26, "match_function": "nyssDBnf", "match_function_override": {"backfill_matches": "K8NetXZ0", "hydration": ["9mSR6cEl", "g0aBmeC2", "Cx9QJx4Q"], "make_matches": "nxJsE03H", "stat_codes": ["lCHn8hNW", "SyMI67qG", "wRPpAVWu"], "validation": ["fJ9wkHf8", "CkzkkDMy", "fFoX466d"]}, "rule_set": "1f0Qr3ar", "session_template": "EwHrhbd0", "ticket_expiration_seconds": 11}' 'cGF9C3U2' --login_with_auth "Bearer foo"
match2-delete-match-pool 'KjBJdepq' --login_with_auth "Bearer foo"
match2-match-pool-metric 'qyz1uNgc' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"a6FEYUt1": {}, "vxlESYMe": {}, "CAXavcyK": {}}, "latencies": {"ZvzorKUj": 13, "U79LXfbA": 40, "ihSMeehG": 40}, "matchPool": "mUDrpfFp", "sessionID": "Q2LvvVJw"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'M2texGFo' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'eSI9ReUd' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"7epv1Liq": {}, "Pz7QtXTL": {}, "vI4hamRo": {}}, "enable_custom_match_function": true, "name": "szHSw0wG"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'TCeZE6e6' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"1hIGTOd9": {}, "6au8ZOMq": {}, "gYkiVeIj": {}}, "enable_custom_match_function": true, "name": "5r6Apbqs"}' 'vr8szoht' --login_with_auth "Bearer foo"
match2-delete-rule-set 'iYCPeiOG' --login_with_auth "Bearer foo"
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
echo "1..27"

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
    '{"matchPool": "z8W4mHzB", "sessionId": "FrK0XVod"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'XnCjbZc8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'fmN4SjmZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    '06GvNUCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "5L2GNscp", "stop": true}' \
    'gpqlzsIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "MnmhBDFQ", "stop": false}' \
    'LklFXWIf' \
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
    '{"match_function": "0UiK6JzK", "url": "61CNTnq1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'VrGmAsee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 18, "backfill_ticket_expiration_seconds": 2, "match_function": "NUeJOrSD", "match_function_override": {"backfill_matches": "IBLNU6YD", "hydration": ["NMsD41Ao", "fykbjfEv", "crMYRASb"], "make_matches": "NHzvCMdR", "stat_codes": ["GTbBb4f2", "TI5s1GMo", "yIIyFvdJ"], "validation": ["ON7MptCo", "ySnvV7OM", "21v0G2c6"]}, "name": "rp21fCzT", "rule_set": "4B2mZLlj", "session_template": "jLndI7E9", "ticket_expiration_seconds": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'Hu8iXZNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 30, "backfill_ticket_expiration_seconds": 51, "match_function": "q9SwDxHY", "match_function_override": {"backfill_matches": "HiKWljcA", "hydration": ["rvavoqs3", "wlQi7sBd", "dD6dMKBu"], "make_matches": "GcfRSNF6", "stat_codes": ["bt4CzWD3", "RhZP6FTa", "dMmcYW71"], "validation": ["RItOQpLJ", "BNU5FeIL", "t8om8rdA"]}, "rule_set": "sgfyqxcP", "session_template": "gKv5ImEW", "ticket_expiration_seconds": 47}' \
    'wPSPpWK7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'wKKjQmgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'NUiWjgmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"xr4vAT9n": {}, "Gbpn12SM": {}, "w7LyEcZz": {}}, "latencies": {"XzV2nQWi": 70, "rmvmX4X2": 17, "IfXWTArm": 44}, "matchPool": "JnvbtICC", "sessionID": "TQPlDQB6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'N6H7CwJv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'WvmChLk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchTicket' test.out

#- 22 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'RuleSetList' test.out

#- 23 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"s3aBhpfA": {}, "FW8IIi4u": {}, "NWYdYsFe": {}}, "enable_custom_match_function": true, "name": "GBYGRxfy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'lW7RFXZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"48OTsmnv": {}, "zsNxDsVJ": {}, "EG4jeJOM": {}}, "enable_custom_match_function": true, "name": "WT2Tbu78"}' \
    '70Z5eSA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'RWlPYGl6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteRuleSet' test.out

#- 27 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
