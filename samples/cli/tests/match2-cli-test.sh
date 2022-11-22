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
match2-create-backfill '{"matchPool": "wkFsTuzl", "sessionId": "HItSgnZj"}' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "TKFzkDQ9", "stop": true}' 'GnCmXRGR' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "1NbfGwxN", "stop": false}' '2FYlejKR' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "7fsLgXGb", "url": "lVY7Ae0d"}' --login_with_auth "Bearer foo"
match2-delete-match-function 'aJ7vWy8J' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"backfill_ticket_expiration_seconds": 61, "match_function": "RLT5iTwT", "name": "t8pD1uOb", "rule_set": "PQmrDpud", "session_template": "M96TDg1y", "ticket_expiration_seconds": 62}' --login_with_auth "Bearer foo"
match2-match-pool-details 'rm9eFAsd' --login_with_auth "Bearer foo"
match2-update-match-pool '{"backfill_ticket_expiration_seconds": 63, "match_function": "uCC2Yo2m", "rule_set": "yxQ9jXUv", "session_template": "Q2rUas5q", "ticket_expiration_seconds": 57}' '7FotHReJ' --login_with_auth "Bearer foo"
match2-delete-match-pool 'dYcLUhTd' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"jmDBb6R6": {}, "J7rXdX8f": {}, "mOmQqe5V": {}}, "latencies": {"xfAln5E6": 24, "hLPRmCvn": 36, "r3fxvWVk": 26}, "matchPool": "0suCpm1V", "sessionID": "XsJWYv48"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'rCrzm1U3' --login_with_auth "Bearer foo"
match2-delete-match-ticket '4qa414dx' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": "0FP7iZjR", "name": "2wKjf5ht"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'zwTDButn' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": "COs85JzS"}' 'eh3qTiII' --login_with_auth "Bearer foo"
match2-delete-rule-set 'YXRKjitf' --login_with_auth "Bearer foo"
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
    '{"matchPool": "6W7aVV83", "sessionId": "whV7aL9x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "KLrJyWmK", "stop": false}' \
    'l4K5Zchx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AcceptBackfill' test.out

#- 6 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "5pd58yyQ", "stop": false}' \
    'TcWh6cXw' \
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
    '{"match_function": "KFSaKXer", "url": "QcXQWgbc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateMatchFunction' test.out

#- 9 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    '1JpKq78h' \
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
    '{"backfill_ticket_expiration_seconds": 79, "match_function": "jK0WTa23", "name": "ykK8aJ7F", "rule_set": "YFr1CEhW", "session_template": "D49OY9el", "ticket_expiration_seconds": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchPool' test.out

#- 12 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'J9QelzBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'MatchPoolDetails' test.out

#- 13 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"backfill_ticket_expiration_seconds": 42, "match_function": "kAI79fxj", "rule_set": "FrMeOu0d", "session_template": "NtrwCjBc", "ticket_expiration_seconds": 9}' \
    'vcRREHeI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchPool' test.out

#- 14 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'ggcmeVbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchPool' test.out

#- 15 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"MH6MhPtW": {}, "tEJg0Q3F": {}, "a1vCJy7w": {}}, "latencies": {"4jRZT45A": 3, "PX9MqaZK": 91, "bZ7tD5wm": 28}, "matchPool": "o4sCP0rc", "sessionID": "62D06f59"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchTicket' test.out

#- 16 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '4nbeyf8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchTicketDetails' test.out

#- 17 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'e4PUpCRS' \
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
    '{"data": "VoyuSnBl", "name": "Gg00QfWH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRuleSet' test.out

#- 20 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'bZzfu3tj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RuleSetDetails' test.out

#- 21 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": "YBGFhPcR"}' \
    'zeOvJmsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRuleSet' test.out

#- 22 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'ulmeE9zr' \
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
