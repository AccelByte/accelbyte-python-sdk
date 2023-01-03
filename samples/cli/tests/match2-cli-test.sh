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
match2-create-backfill '{"matchPool": "gIFTcYgb", "sessionId": "ZHFcxXvg"}' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "3kgpu0kb", "stop": true}' '94opzBTU' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "zoWjSXCZ", "stop": false}' 'conHvSsK' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "hpaRlBQg", "url": "ygqv5b3G"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'Qxj4VmFy' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"backfill_ticket_expiration_seconds": 92, "match_function": "jptz5f4n", "name": "rhbgmReQ", "rule_set": "iq97KE1b", "session_template": "CZgjzQoY", "ticket_expiration_seconds": 94}' --login_with_auth "Bearer foo"
match2-match-pool-details 'HO1Jb1Uz' --login_with_auth "Bearer foo"
match2-update-match-pool '{"backfill_ticket_expiration_seconds": 88, "match_function": "6x3F87mw", "rule_set": "tGmY8TkP", "session_template": "HZt61Swm", "ticket_expiration_seconds": 87}' 'UjWdrusG' --login_with_auth "Bearer foo"
match2-delete-match-pool 'x0eyjJIn' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"fDheEiJN": {}, "8z8qD8yy": {}, "hcvAbKVU": {}}, "latencies": {"ay9tjVX4": 7, "afGvWDT9": 30, "mYU7L7CV": 99}, "matchPool": "lhJOBaaP", "sessionID": "nHdo5Qys"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'WssqRc7B' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'SLEI0zhI' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "koxpX7sD", "name": "9I14AHbB"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'DLySsFJ5' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "3YEoWj3G"}' 'da0f6Lnw' --login_with_auth "Bearer foo"
match2-delete-rule-set 'RjnQUC3q' --login_with_auth "Bearer foo"
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
echo "1..23"

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
    '{"matchPool": "jv8uFhLZ", "sessionId": "ON0iN4et"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "1wQhqEpY", "stop": true}' \
    'yT68dUoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "rINrvnyW", "stop": false}' \
    'S7tbfeLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'RejectBackfill' test.out

#- 7 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'MatchFunctionList' test.out

#- 8 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "jwDTQPWr", "url": "sqbR0BES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'nS26aJcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteMatchFunction' test.out

#- 10 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'MatchPoolList' test.out

#- 11 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"backfill_ticket_expiration_seconds": 7, "match_function": "EMsr0yHS", "name": "nExmH0he", "rule_set": "qkcdooGf", "session_template": "dZbOOODA", "ticket_expiration_seconds": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'GXQUDugE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"backfill_ticket_expiration_seconds": 96, "match_function": "iguti2Sr", "rule_set": "8BzAwZeK", "session_template": "iYQSNNs0", "ticket_expiration_seconds": 35}' \
    '4lMaLbxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'iGMimUkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"F9V27mkS": {}, "qaUmnMK1": {}, "HttauVAK": {}}, "latencies": {"SYLWuVEj": 57, "8qlJGl3D": 95, "NHWrGHIt": 81}, "matchPool": "akw3iC9X", "sessionID": "Wn5wUBpg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'I1zGuGmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    '4TxK3dXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchTicket' test.out

#- 18 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RuleSetList' test.out

#- 19 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": "1rBMbHwe", "name": "6hwqnnNn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'DKDoNidJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "gKPG6WQ8"}' \
    'uygvrJ9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'OQr8CMol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteRuleSet' test.out

#- 23 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
