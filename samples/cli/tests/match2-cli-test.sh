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
match2-create-backfill '{"matchPool": "jCrUqhQh", "sessionId": "DPFkEAdJ"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'HsXqXs9d' --login_with_auth "Bearer foo"
match2-get-backfill 'vDZDALs9' --login_with_auth "Bearer foo"
match2-delete-backfill '0553SK7b' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "88l4dWjP", "stop": true}' 'tUd1q54g' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "SJU9Lfn7", "stop": true}' 'mxVNmNoS' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "a3NVkb7G", "url": "ouXilkoo"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'prYmaCes' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 27, "backfill_ticket_expiration_seconds": 23, "match_function": "LhmGriDt", "match_function_override": {"backfill_matches": "sWjoQ0gX", "hydration": ["D9IL4fJf", "RC9ijUIJ", "03nxzkfM"], "make_matches": "v7qe96fE", "stat_codes": ["T5vjaJZt", "KKVeNxor", "GG4EuG2P"], "validation": ["WRbnAheF", "83sM3myk", "R844nkrV"]}, "name": "U9nt91mF", "rule_set": "lFv82yb5", "session_template": "M0bJ1955", "ticket_expiration_seconds": 60}' --login_with_auth "Bearer foo"
match2-match-pool-details 'AEx364Un' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 13, "backfill_ticket_expiration_seconds": 97, "match_function": "6eVXwQRb", "match_function_override": {"backfill_matches": "IOSk0uiF", "hydration": ["rDmYjixr", "GpRuTGv0", "x3yx0inY"], "make_matches": "qjRpdhzB", "stat_codes": ["eextr6tD", "IT11U9Lp", "H4BJToxP"], "validation": ["FTFu9qPq", "wddS3ioT", "imeR18y8"]}, "rule_set": "TrJ5ALWT", "session_template": "ENoQffYr", "ticket_expiration_seconds": 11}' 'JjDkZRCQ' --login_with_auth "Bearer foo"
match2-delete-match-pool 'WOrNRGZP' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"mSvAX772": {}, "ZSyYm1y9": {}, "YMbEdJSK": {}}, "latencies": {"dMiU1qDU": 98, "kms4Sgqo": 67, "knom1kVN": 93}, "matchPool": "CWXiqZ7e", "sessionID": "d2hGkkmY"}' --login_with_auth "Bearer foo"
match2-match-ticket-details '0OBQt8rF' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'QZ8rMLPu' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "ftR2g9QX", "name": "6WohNPow"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'NojJYRSS' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "FXbXBNcK"}' 'SLR9zvhm' --login_with_auth "Bearer foo"
match2-delete-rule-set 'tdME7HBt' --login_with_auth "Bearer foo"
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
echo "1..26"

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
    '{"matchPool": "WdnZw6jA", "sessionId": "PNArh79d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'fGtHsINp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'Y6SOT5M2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'DNvQg9mB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "MGnQ5sxb", "stop": false}' \
    'H5vAIdhE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "7TRlXyFO", "stop": true}' \
    'yPHfN8p0' \
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
    '{"match_function": "IK2n9628", "url": "yDYCOMEy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'n4oqWdHH' \
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
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 19, "backfill_ticket_expiration_seconds": 76, "match_function": "EfOZEhD0", "match_function_override": {"backfill_matches": "PdADjpaP", "hydration": ["wWwLNag3", "L8sHPz7H", "W8cj68Ip"], "make_matches": "smmZL3D6", "stat_codes": ["EsVgViVI", "FG2mWXAA", "DG3A3GZR"], "validation": ["wz4oQzzc", "hUbYLN7E", "27f9a02Z"]}, "name": "3XqZTMv3", "rule_set": "ZDIBXvZZ", "session_template": "2W2behjb", "ticket_expiration_seconds": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'y6xTikpu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 79, "backfill_ticket_expiration_seconds": 57, "match_function": "9FVXdxd5", "match_function_override": {"backfill_matches": "1J9P61It", "hydration": ["mPUOHXLB", "VzZxgIgn", "VoqIvbfN"], "make_matches": "sgC0czSS", "stat_codes": ["OJpLbGEg", "i2TerQdd", "77l5gHRZ"], "validation": ["zZ99bMtd", "B0qDygDW", "U73kuIeH"]}, "rule_set": "XLcFb6eB", "session_template": "dIhG1HRF", "ticket_expiration_seconds": 80}' \
    '7A0KYPXE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'tFyxbBIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"XJSWuA1I": {}, "TtmnjkLE": {}, "MvHHQYDE": {}}, "latencies": {"etJyVqFS": 80, "MJ4Da8fa": 22, "k2sg5QFL": 89}, "matchPool": "MIgVIYmJ", "sessionID": "HlYLNWt0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchTicket' test.out

#- 19 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'Fmcn02W4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchTicketDetails' test.out

#- 20 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'pjiQ9yw9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteMatchTicket' test.out

#- 21 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RuleSetList' test.out

#- 22 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": "FGSvCbzj", "name": "DP0twObx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateRuleSet' test.out

#- 23 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'ksYFWODg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RuleSetDetails' test.out

#- 24 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "PI9peXxc"}' \
    'dftvKxgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateRuleSet' test.out

#- 25 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'KdrWObhP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteRuleSet' test.out

#- 26 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
