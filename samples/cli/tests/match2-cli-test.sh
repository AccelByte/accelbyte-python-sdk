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
match2-create-backfill '{"matchPool": "7TD6q3Rn", "sessionId": "MJ7Mlc5o"}' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "OYZk3tHg", "stop": true}' 'kKbw3Qp6' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "I2fBDiaP", "stop": false}' 'igNoAbGM' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "b7apdocj", "url": "btyTt6i9"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'nlfOdAyG' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"backfill_ticket_expiration_seconds": 21, "match_function": "ulGDHm6V", "name": "BHFy76re", "rule_set": "jPViVt8W", "session_template": "0JdHErif", "ticket_expiration_seconds": 68}' --login_with_auth "Bearer foo"
match2-match-pool-details 'tOyPhKgZ' --login_with_auth "Bearer foo"
match2-update-match-pool '{"backfill_ticket_expiration_seconds": 14, "match_function": "ASCKDg1P", "rule_set": "CRDt9AVg", "session_template": "7E0ghFp5", "ticket_expiration_seconds": 87}' '2zEFTyXw' --login_with_auth "Bearer foo"
match2-delete-match-pool 'svpqFb5F' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"myiK4R2G": {}, "ybGO7m1P": {}, "QbTARFHQ": {}}, "latencies": {"mZmYW4EK": 15, "ahRKaWVD": 41, "gylY3L6d": 80}, "matchPool": "H0YUjFYb", "sessionID": "n9nzRmLV"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'PZRkXall' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'k0goUY0D' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "TxnyKsck", "name": "9I7y4YZ9"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'ig9MUTqR' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "P9wTRaKI"}' '4torMoD5' --login_with_auth "Bearer foo"
match2-delete-rule-set 'C7wjduX6' --login_with_auth "Bearer foo"
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
    '{"matchPool": "d098sF9S", "sessionId": "BqXrKhAI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "0nnsDQqr", "stop": true}' \
    'dZU1sp0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "KOSShxJq", "stop": true}' \
    '0kkW2DYc' \
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
    '{"match_function": "yguvMwEv", "url": "4QFykOkz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'ui3uW7KH' \
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
    '{"backfill_ticket_expiration_seconds": 80, "match_function": "4cdWZSo8", "name": "LLY8YM6s", "rule_set": "AXnpopiY", "session_template": "8tMYI3Zl", "ticket_expiration_seconds": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'mF6mBfyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"backfill_ticket_expiration_seconds": 80, "match_function": "k6h637C1", "rule_set": "NmL1fLct", "session_template": "kWHlkToG", "ticket_expiration_seconds": 100}' \
    '4IRhzWlR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    '7rpUPsjw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"u95OGpgI": {}, "EpTNi6Cv": {}, "pX8LDnrT": {}}, "latencies": {"f9g2IT0v": 34, "9kjbf2Bt": 44, "rBZOjXHB": 54}, "matchPool": "royqHGhM", "sessionID": "ZqXMrZSM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'pDXwKp3f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'A1j16tlm' \
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
    '{"data": "Hmla9pT2", "name": "9XBrB1q0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    '4QPGNCQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "dUCDyn10"}' \
    'g4J2H1pI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'qtWfF3Qc' \
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
