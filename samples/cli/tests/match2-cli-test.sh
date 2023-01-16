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
match2-create-backfill '{"matchPool": "DbMp5OZA", "sessionId": "HkIypXgs"}' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "nbLMkbAL", "stop": false}' 'WM4T3Eyi' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "BUSsB7j4", "stop": false}' 'suhuXOLi' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "TOJ2YSLI", "url": "xF7AKRJL"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'ffesdUXs' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"backfill_ticket_expiration_seconds": 99, "match_function": "Yj2rDREi", "match_function_override": {"backfill_matches": "OyYHwX9O", "hydration": ["as8wrMaR", "plgUJsHz", "zg42Gb8J"], "make_matches": "3qbPytEy", "stat_codes": ["cvB3bqF3", "uri9xzi4", "B3ML14wV"], "validation": ["hNTm43D3", "NlsE0lHP", "kzVD56NS"]}, "name": "tOQwA9mV", "rule_set": "W63X2SUn", "session_template": "yTWKhOCb", "ticket_expiration_seconds": 24}' --login_with_auth "Bearer foo"
match2-match-pool-details '3PkOhO3t' --login_with_auth "Bearer foo"
match2-update-match-pool '{"backfill_ticket_expiration_seconds": 13, "match_function": "QrXFIeIC", "match_function_override": {"backfill_matches": "ApgqEW15", "hydration": ["pJ6aC2y2", "Qdw9Fxzn", "AZwjfRxt"], "make_matches": "I3vj3uW9", "stat_codes": ["29XUigjM", "3wJC5Vsb", "n3igcqmk"], "validation": ["njot6GOw", "3jEdEzlK", "vFP3vlKO"]}, "rule_set": "WVoKtmAM", "session_template": "UAD8wwFa", "ticket_expiration_seconds": 97}' 'NYRfivmU' --login_with_auth "Bearer foo"
match2-delete-match-pool 'OYvY2DL5' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"djSCNixe": {}, "ZnqJAiZm": {}, "yIhpELIk": {}}, "latencies": {"rycbg3gu": 2, "MmzdBQ3X": 24, "c5tjD7tI": 53}, "matchPool": "MIKZ4qPP", "sessionID": "xgFIHKMq"}' --login_with_auth "Bearer foo"
match2-match-ticket-details '6uwEolJe' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'EZkyaSK0' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "pl4CFD0H", "name": "MNo2b8W6"}' --login_with_auth "Bearer foo"
match2-rule-set-details '8i4Q9t63' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "qdO5TAY6"}' 'xVr0glRx' --login_with_auth "Bearer foo"
match2-delete-rule-set 'XdTE7R7O' --login_with_auth "Bearer foo"
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
    '{"matchPool": "ljt68AS8", "sessionId": "VoDHAJpW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "H42cHRsC", "stop": false}' \
    'DpyPDFjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "Z4HHR7K7", "stop": true}' \
    'hSJotiZ2' \
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
    '{"match_function": "s88qJq6L", "url": "DbImzYIg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'syJwVx8j' \
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
    '{"backfill_ticket_expiration_seconds": 24, "match_function": "u3BlZR8R", "match_function_override": {"backfill_matches": "AzGu9Zag", "hydration": ["IBBPt9UA", "tVqghbMI", "pNcJXZTe"], "make_matches": "7GhisCSx", "stat_codes": ["jkic3eLH", "5bLmgWFV", "I84TFeTa"], "validation": ["6DPJbdeD", "QCV8tAHC", "NHUfZwB1"]}, "name": "xXICg4kL", "rule_set": "NdsqC8TY", "session_template": "91xW1qU7", "ticket_expiration_seconds": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    '8SwlQYsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"backfill_ticket_expiration_seconds": 21, "match_function": "DjiwWwV9", "match_function_override": {"backfill_matches": "CdKm8RHO", "hydration": ["WuLL5Bvq", "nOnRx8UF", "4et8uxfu"], "make_matches": "1Nc6TTvQ", "stat_codes": ["9LFOrKhM", "nsBVzvsI", "uzxxyYO0"], "validation": ["uiETPTgJ", "FcYm4d8F", "U3QxkL97"]}, "rule_set": "Fc4L4fnD", "session_template": "kVZy5w7M", "ticket_expiration_seconds": 93}' \
    'mcIoV50S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'Vi9J4xGa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"3ZQGFUFX": {}, "A2hCCGko": {}, "ZjsBpXbr": {}}, "latencies": {"fJ3cGGeU": 85, "SOc4GRXB": 19, "ZSQ1mTCD": 79}, "matchPool": "iRpfcMf2", "sessionID": "BjICV24v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'VQQveR0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'CG6AopbR' \
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
    '{"data": "sjQYIMO8", "name": "GJ6dWuL5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    't2Rx8R5a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "75VxrQqo"}' \
    '60Eeqs48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'oMdgKCAJ' \
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
