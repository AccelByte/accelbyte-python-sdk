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
match2-create-backfill '{"matchPool": "EAxcVpFrttufHIRd", "sessionId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
match2-get-backfill 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
match2-delete-backfill 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "bQ1g7qbPngUNB1vR", "stop": false}' 'xwElFHHdgs21Jub7' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "4CUkNmKJfh5pUkHO", "stop": true}' 'lFcDtgOjchIua5tW' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "EIC32ogW7olvbTgr", "url": "hRTcPiSuL0Sly6XM"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "4OI18mAQLnzjMf8G", "url": "Z2WBZqxYG3aREAu2"}' 'D6QVKNCWP75TB0i7' --login_with_auth "Bearer foo"
match2-delete-match-function 'pKxR8dl0zRVW4EZG' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 96, "backfill_ticket_expiration_seconds": 4, "match_function": "68su8XfqlqNiTvB6", "match_function_override": {"backfill_matches": "SdAdIhUDrwoZ5Mec", "enrichment": ["dKi5r6QEa1ysLEzt", "h6mXhzkzWkFeZSoE", "AcBdW19m4eu6d5tA"], "make_matches": "5jUmiTqpyhPFdxLz", "stat_codes": ["FQN05MYzYiKWe5dN", "Rljv7IPrDQQRgat0", "SevkLGMS0lyuI9a2"], "validation": ["I9u6Vpbsx5w8hqUI", "06UpOXGSLmCVuHOP", "lLlkvR8sKgnuRkgg"]}, "name": "hGoYupD391C2qtPY", "rule_set": "okahFjkQsfCaTmt1", "session_template": "d67FXGk2s9Q0mPVo", "ticket_expiration_seconds": 29}' --login_with_auth "Bearer foo"
match2-match-pool-details 'twu0MesTCf9x4rt6' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 23, "backfill_ticket_expiration_seconds": 27, "match_function": "aRlxfcjHfYakUCTq", "match_function_override": {"backfill_matches": "GkE7wcWfDslpJSqG", "enrichment": ["AXQ0yYoNRKd3IL5T", "AQ6iiPlSC2uE4o5V", "wdo3fePqIJA8IHtr"], "make_matches": "kmu0hpDDWVAla2l5", "stat_codes": ["BYNtIuS5S5XUdjso", "qwGyzzWi9gwQYv7t", "1o7TTr1DmrhZv15T"], "validation": ["7quIOvBMcaYmvCkG", "Z5dAgqxpBFmaLoxo", "zr6wfNPX2bOItRMv"]}, "rule_set": "qtlB2jJCSQT279ZZ", "session_template": "PYGu0rdlgdWyOtXi", "ticket_expiration_seconds": 44}' 'choQrpOsDBU5Sepj' --login_with_auth "Bearer foo"
match2-delete-match-pool 'ChB3V0v52Dlym6pu' --login_with_auth "Bearer foo"
match2-match-pool-metric 'Q23xoJ8aeCnaLpUK' --login_with_auth "Bearer foo"
match2-get-player-metric 'p44YUDjasWIPUvmE' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"ejtGeoyIPa8ZRrvj": {}, "j7il35MXbN9oCMNq": {}, "q98SjTvhZNkSQ70D": {}}, "latencies": {"0H6BXksUC9b6i5lZ": 58, "D3Qgb3boLQQ1MzH7": 86, "sZNBdte9NDUPVJf6": 5}, "matchPool": "G96gAFKK2WDgCcxv", "sessionID": "ONZm3EeERmDnyeFo"}' --login_with_auth "Bearer foo"
match2-match-ticket-details 'F7VSZ6pf3vneSD2T' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'b3g7mSQUhAEtrmjq' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"U6YE3p4lSck0ZHn5": {}, "GI39YBHqaTHeKtW1": {}, "8iGeUlc9d9sogWa2": {}}, "enable_custom_match_function": true, "name": "CKNS0GqVvUfHQvsH"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'XNUNe4mhgo5QB65l' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"SAiYnNjkfZrQvGgb": {}, "LdLsFzHkBMr1yrOM": {}, "lNFSrUEirnjX9fDm": {}}, "enable_custom_match_function": false, "name": "VkydwYWQG26yUZNm"}' 'TBcvrbYCwZtxFHyP' --login_with_auth "Bearer foo"
match2-delete-rule-set 'LtI8ilbyDPUIj88c' --login_with_auth "Bearer foo"
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
    '{"matchPool": "ekdqCt81P1ktfIov", "sessionId": "mv9gsR5cJcHm3SZL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'xoRDFuuuySj29a9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'JE8HoRS1X2PFAAMw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'zHPxB1UskYs4Yw20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "DOqOBSC2DKHRuPMM", "stop": false}' \
    'H8Yb33T5UBJCjfcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "LRfxeCSz9WEi8Kll", "stop": false}' \
    '8wdNFLTm5T50x9WT' \
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
    '{"match_function": "0GfH2rtOa4EXsXzO", "url": "XQAk4mqrxzTtuLl4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "XlbGL8QOxtjzm8y2", "url": "wNhmwoYZyI4EFZKB"}' \
    'cYrCEAE7WIsfmx40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'NLRc6m8heKnWhzfe' \
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
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 80, "backfill_ticket_expiration_seconds": 3, "match_function": "Uj7fdgLA84Z8YYk6", "match_function_override": {"backfill_matches": "QEgJjBbEDoNf3n0h", "enrichment": ["EoRCAcf80zfFyabW", "AgIUXiI07A68eaqC", "2J9jyEW6GLbc0NaK"], "make_matches": "DUL3sa13lk1dQBHO", "stat_codes": ["86IlBhnetU4RwTqU", "XlTDBzOuYsaZA2yy", "d4mbqoOfADMMAXFa"], "validation": ["Y9eKa699bRVhyaKw", "wrAP2aMlu7WtjCto", "YetOO847g8OudOfj"]}, "name": "nCuHZ3c46IjGa23Y", "rule_set": "vYmmDg7VYPXIuvUY", "session_template": "TZBRujIUE1Tq5jyA", "ticket_expiration_seconds": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'vkRCMNFIurjh2imd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 96, "backfill_ticket_expiration_seconds": 93, "match_function": "rbkXj0ZwsVC0gL97", "match_function_override": {"backfill_matches": "ZVJSPqJiwv1qlYB1", "enrichment": ["RSKs6gQxC3Gb7S0o", "4zGYY7KQI1AeFgPq", "aOkvo1aolB4lkKB4"], "make_matches": "EYOkQ1jMD3cym8xI", "stat_codes": ["fkOVW2grREOLx0KO", "ww3HICQLfl7MUBG7", "qtPu64yAtURKLRkb"], "validation": ["738HGS6rDgMdIIlh", "S1fSiM9331m7Ta1P", "sKc50Kv6ecnEevcA"]}, "rule_set": "x2K2zkRenmPZnGBt", "session_template": "4P7WnbdSJtjX7Zsh", "ticket_expiration_seconds": 15}' \
    'yZl5x4bRXBHUTrDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'ZSKscfOcYu3dpCRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'YqUiGKXVFCmpo6sP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'wVOEDSJsEK5QpNhl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"I2iS5EpGhhvXYck0": {}, "upMzUYnb76tFkEOR": {}, "V3bu1bNCtX7W40V6": {}}, "latencies": {"Do5sYadCCFrHHC3D": 31, "JzPyrVEiOG4Ucqsu": 67, "8mnfHK8CCmE2lPns": 2}, "matchPool": "pomM8sm1MiaI1mX2", "sessionID": "tJoARtdbBe7udsMr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'ok0WvGYYnx4V709x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'bnGezKsDwG2omOR2' \
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
    '{"data": {"nvYI9TVqJdvzcWbf": {}, "UpaXp5JMl5LL4bTx": {}, "BmZjdrrIxsB0NRsB": {}}, "enable_custom_match_function": false, "name": "vKCWwNTAhd2wrS0u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'Pdjhdinpng5BLy8w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"bhMssAHjapIkY9Rf": {}, "4wP57dBZNR88YbCt": {}, "mKy8M9zVrjfGXZnq": {}}, "enable_custom_match_function": true, "name": "t71B1SmZp2JZp50C"}' \
    'nPb71ORYcmQbTU5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'X8ccLjMXJRk0eaKQ' \
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
