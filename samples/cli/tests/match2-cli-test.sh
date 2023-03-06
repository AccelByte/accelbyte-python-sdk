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
match2-delete-match-function '6lyzSxwE' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 52, "backfill_ticket_expiration_seconds": 65, "match_function": "S6DaDpv8", "match_function_override": {"backfill_matches": "N7ZQVqGj", "hydration": ["6oDLjWjk", "Y1aXlFcD", "tgOjchIu"], "make_matches": "a5tWEIC3", "stat_codes": ["2ogW7olv", "bTgrhRTc", "PiSuL0Sl"], "validation": ["y6XM4OI1", "8mAQLnzj", "Mf8GZ2WB"]}, "name": "ZqxYG3aR", "rule_set": "EAu2D6QV", "session_template": "KNCWP75T", "ticket_expiration_seconds": 57}' --login_with_auth "Bearer foo"
match2-match-pool-details '7oFgx4c8' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 42, "backfill_ticket_expiration_seconds": 22, "match_function": "mKtPDKJD", "match_function_override": {"backfill_matches": "Xn7Z4U68", "hydration": ["su8Xfqlq", "NiTvB6Sd", "AdIhUDrw"], "make_matches": "oZ5MecdK", "stat_codes": ["i5r6QEa1", "ysLEzth6", "mXhzkzWk"], "validation": ["FeZSoEAc", "BdW19m4e", "u6d5tA5j"]}, "rule_set": "UmiTqpyh", "session_template": "PFdxLzFQ", "ticket_expiration_seconds": 82}' '8lDR6qVN' --login_with_auth "Bearer foo"
match2-delete-match-pool 'PRZYdFLI' --login_with_auth "Bearer foo"
match2-match-pool-metric 'AjGGJddV' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"Cvu9vx5K": {}, "Q7KYnIuM": {}, "BvaO35ll": {}}, "latencies": {"zQRaT5kP": 49, "8hqUI06U": 32, "uB0y5WUl": 36}, "matchPool": "uHOPlLlk", "sessionID": "vR8sKgnu"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'RkgghGoY' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'upD391C2' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"qtPYokah": {}, "FjkQsfCa": {}, "Tmt1d67F": {}}, "enable_custom_match_function": false, "name": "VLisV6zw"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'Puo3td6T' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"C6I3lMjG": {}, "SWN2laRl": {}, "xfcjHfYa": {}}, "enable_custom_match_function": false, "name": "MbwL6IY6"}' '9z1UaLqY' --login_with_auth "Bearer foo"
match2-delete-rule-set 'SYWytLPz' --login_with_auth "Bearer foo"
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
    '{"matchPool": "iZMdjxcB", "sessionId": "ZufQxGiH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'PllG4cYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'zfTD1ZBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    '3MqHcUmL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "ZZbSqb8R", "stop": true}' \
    'hpDDWVAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "a2l5BYNt", "stop": true}' \
    'mit9RGCC' \
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
    '{"match_function": "HYzUOcEd", "url": "scKHPEqg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'A8yu7Vk6' \
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
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 61, "backfill_ticket_expiration_seconds": 26, "match_function": "Ymos9Jcd", "match_function_override": {"backfill_matches": "os4fYcTV", "hydration": ["U6RBt0zY", "oMcHyCUE", "XlAvxJMd"], "make_matches": "alwSyliW", "stat_codes": ["MNW5NyLu", "0M3VHh2E", "I8JlDbPW"], "validation": ["bQ6Q9lNm", "qRBaAkLn", "vxkT1X68"]}, "name": "cmDc3fxU", "rule_set": "8MyKrQpM", "session_template": "4hkkK6KK", "ticket_expiration_seconds": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'NB3Gv0Iq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 58, "backfill_ticket_expiration_seconds": 64, "match_function": "naLpUKp4", "match_function_override": {"backfill_matches": "4YUDjasW", "hydration": ["IPUvmEej", "tGeoyIPa", "8ZRrvjj7"], "make_matches": "il35MXbN", "stat_codes": ["9oCMNqq9", "8SjTvhZN", "kSQ70D0H"], "validation": ["6BXksUC9", "b6i5lZC9", "xv32e8c5"]}, "rule_set": "csSovoqs", "session_template": "ZNBdte9N", "ticket_expiration_seconds": 60}' \
    'APh1EThG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    '96gAFKK2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'WDgCcxvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"NZm3EeER": {}, "mDnyeFoF": {}, "7VSZ6pf3": {}}, "latencies": {"vneSD2Tb": 27, "g7mSQUhA": 62, "RENjEEzt": 47}, "matchPool": "E3p4lSck", "sessionID": "0ZHn5GI3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '9YBHqaTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'eKtW18iG' \
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
    '{"data": {"eUlc9d9s": {}, "ogWa24CK": {}, "NS0GqVvU": {}}, "enable_custom_match_function": false, "name": "yEW4ZJJ4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    '2d3PBddN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"8S48l9ly": {}, "NApflxqM": {}, "rj3oZk03": {}}, "enable_custom_match_function": true, "name": "XcKMDYDD"}' \
    'xHSZjtqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'yJ58f7Gc' \
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
