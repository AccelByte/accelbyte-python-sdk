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
match2-create-backfill '{"matchPool": "OJ9Q11rr", "sessionId": "asPeh3x8"}' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "AYyLrbtQ", "stop": true}' 'YxQZoGe0' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "1heW1BQ7", "stop": false}' 'F5ED99zl' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "kp8VMgsm", "url": "FBZGphtZ"}' --login_with_auth "Bearer foo"
match2-delete-match-function '5A3NIN3M' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"backfill_ticket_expiration_seconds": 90, "match_function": "9uMO4uVn", "name": "8Zrxstoh", "rule_set": "yQ0zgEMp", "session_template": "dOzgM4st", "ticket_expiration_seconds": 48}' --login_with_auth "Bearer foo"
match2-match-pool-details '8SR2vLgk' --login_with_auth "Bearer foo"
match2-update-match-pool '{"backfill_ticket_expiration_seconds": 83, "match_function": "of03GJH6", "rule_set": "IapzdJo0", "session_template": "KtYZadCQ", "ticket_expiration_seconds": 0}' 'VuVUNa1J' --login_with_auth "Bearer foo"
match2-delete-match-pool 'K3wgRYNJ' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"mDWyXgEy": {}, "LE0YHSdg": {}, "TUptgWQR": {}}, "latencies": {"v3fAHpWD": 52, "smwUwj2J": 26, "iXpmyKwa": 79}, "matchPool": "dCzCkJnk", "sessionID": "XJzzGnHF"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'x4dq4VgQ' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'XMtILhLr' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "Brz4MEua", "name": "5kpue2ia"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'DjJEBMZh' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "SFFVKJ8b"}' 'ZAqt2oh2' --login_with_auth "Bearer foo"
match2-delete-rule-set 'MnaU4ZGr' --login_with_auth "Bearer foo"
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
    '{"matchPool": "z2Yg8T4K", "sessionId": "U0QI1X96"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "JIwJ02ev", "stop": false}' \
    'rQtU3g10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "lpM6QekK", "stop": true}' \
    'JTnj5lK8' \
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
    '{"match_function": "1EzFNkE7", "url": "hTHITIal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'VMqfP2p0' \
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
    '{"backfill_ticket_expiration_seconds": 25, "match_function": "YZ13rQZ3", "name": "9nJktL3u", "rule_set": "LlcTFG3i", "session_template": "wvOJGTla", "ticket_expiration_seconds": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'TEQZlNHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"backfill_ticket_expiration_seconds": 15, "match_function": "BvRwGn9d", "rule_set": "Bh3P35iW", "session_template": "5kR6Ccei", "ticket_expiration_seconds": 80}' \
    'BjuEar1t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'fbyQGCHr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"SyE9GkyO": {}, "OwNmNs4z": {}, "ZFpnJqyc": {}}, "latencies": {"jW6XManb": 28, "VnFFQbsd": 26, "mhD3rFtS": 39}, "matchPool": "BHv8ErnC", "sessionID": "ygF0Z3Nu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'HX2kryq7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'bndbRrwt' \
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
    '{"data": "1HRAdWtk", "name": "VNsQwKJc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'hIYoDHXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "phxHG0Z1"}' \
    'ouZrh8NK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'arQ262tx' \
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
