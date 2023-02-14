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
match2-create-backfill '{"matchPool": "MuhihDg9", "sessionId": "E5kw8SJL"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'YvGZ2fbw' --login_with_auth "Bearer foo"
match2-get-backfill 'jCzceiR9' --login_with_auth "Bearer foo"
match2-delete-backfill 'e9JFexz9' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "xxMDdpol", "stop": true}' 'wLliArSO' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "riVcuyeq", "stop": true}' 'UQd5e6uP' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "UjGvbRjA", "url": "QPAVoYGk"}' --login_with_auth "Bearer foo"
match2-delete-match-function '5BbCA7pc' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 34, "backfill_ticket_expiration_seconds": 63, "match_function": "TzrcToQq", "match_function_override": {"backfill_matches": "XcMtzfLW", "hydration": ["X3xrj3L3", "fduEPICC", "qtZfOiHd"], "make_matches": "SawWyJzK", "stat_codes": ["JI3FvhvW", "lIRf2Lue", "8skXXVdk"], "validation": ["ZfhDyZyN", "obhHWxRc", "1sq5jSx8"]}, "name": "YlXCde5T", "rule_set": "37SrEpUO", "session_template": "217yec9d", "ticket_expiration_seconds": 78}' --login_with_auth "Bearer foo"
match2-match-pool-details 'IKBgxb99' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 5, "backfill_ticket_expiration_seconds": 90, "match_function": "UACYbY10", "match_function_override": {"backfill_matches": "wGivqddB", "hydration": ["OMj4cRQL", "fZMVe0FO", "OQBWgRU3"], "make_matches": "zxmxlVtO", "stat_codes": ["P8Lb0wjV", "tv2qDfRc", "Jlw1YI9U"], "validation": ["v6x7V3Zm", "wcFMyFOQ", "pH7KVbzQ"]}, "rule_set": "9346PN7x", "session_template": "Ga6ZoHRX", "ticket_expiration_seconds": 7}' '3awGPxfY' --login_with_auth "Bearer foo"
match2-delete-match-pool 'm2B7Uq5Q' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"52mDCAnN": {}, "KFhPcHr5": {}, "h2mG4sod": {}}, "latencies": {"xWiUunCX": 51, "y1O5vy9z": 4, "Raqg0K4H": 64}, "matchPool": "xW7ZVo1p", "sessionID": "2oQ1QZXV"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'X0h18QOY' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'CsnKoopv' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"uA3azI1Q": {}, "BCOaVwAJ": {}, "jDMYrdUv": {}}, "enable_custom_match_function": false, "name": "FUTnAtDY"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'qETq4iWt' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"wW0MoOTk": {}, "DNRurkEy": {}, "P7I8lJo4": {}}, "enable_custom_match_function": true, "name": "5UHTwxxP"}' '3TS3LJuC' --login_with_auth "Bearer foo"
match2-delete-rule-set '9BtseNPM' --login_with_auth "Bearer foo"
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
    '{"matchPool": "RXURgoDg", "sessionId": "OAwCJ637"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'GZiaOfFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'WK5IGrFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'U2jGRRlS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "EoIMRUz2", "stop": false}' \
    'Did0Msj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "8lRQYxJp", "stop": false}' \
    'k8hmpn2q' \
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
    '{"match_function": "P1p7WBtm", "url": "1jrtrRsI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'Lm9cD37F' \
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
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 26, "backfill_ticket_expiration_seconds": 54, "match_function": "t3zuZvcM", "match_function_override": {"backfill_matches": "rv6x9kpr", "hydration": ["iwjsz2ox", "0fNXa6yH", "tZe1f2wR"], "make_matches": "iSJKRt5o", "stat_codes": ["MSI1O2Hd", "vuSj8LNb", "ilnxGKBQ"], "validation": ["F7mLEROG", "4n45GYAG", "1yKBDpyr"]}, "name": "MqDr2nyU", "rule_set": "RGVsMCw0", "session_template": "7Gtgo0IY", "ticket_expiration_seconds": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'rD1jsUkh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 28, "backfill_ticket_expiration_seconds": 18, "match_function": "9jQgSyg6", "match_function_override": {"backfill_matches": "xJs7vKgG", "hydration": ["YR2DCixK", "n7vL8FYf", "wYrcKKX4"], "make_matches": "y5uJ4FtQ", "stat_codes": ["4eZy5GNs", "AW7Iy5cp", "iMAQNtMU"], "validation": ["O6HlNVib", "Ry1tOWbr", "w2nmwfN0"]}, "rule_set": "v0VV9suF", "session_template": "z8lJSQp6", "ticket_expiration_seconds": 0}' \
    'xH98kPIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'JH4LYbI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"6pt4pxxB": {}, "bBS17wbR": {}, "eA8fU3kI": {}}, "latencies": {"xClIrxxu": 49, "5b9Q8Xja": 18, "zQH1TMDm": 34}, "matchPool": "UjdhmhbL", "sessionID": "IoxRs25v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchTicket' test.out

#- 19 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '4AstWxZn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchTicketDetails' test.out

#- 20 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'KDzjvjC3' \
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
    '{"data": {"1fqvYhuv": {}, "Z1m6CH3m": {}, "DujjDxtz": {}}, "enable_custom_match_function": false, "name": "mQvxwyk0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateRuleSet' test.out

#- 23 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'WeSaiBuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RuleSetDetails' test.out

#- 24 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"M0vARLAa": {}, "NLDtMpTV": {}, "mxGSQ9AV": {}}, "enable_custom_match_function": true, "name": "BYP60k8U"}' \
    'pwmvzS2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateRuleSet' test.out

#- 25 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'ky91ZXNa' \
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
