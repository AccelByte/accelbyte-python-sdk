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
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "EAxcVpFrttufHIRd", "sessionId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
match2-get-backfill 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
match2-delete-backfill 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
match2-accept-backfill '{"proposalId": "bQ1g7qbPngUNB1vR", "stop": false}' 'xwElFHHdgs21Jub7' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "4CUkNmKJfh5pUkHO", "stop": true}' 'lFcDtgOjchIua5tW' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "EIC32ogW7olvbTgr", "serviceAppName": "hRTcPiSuL0Sly6XM", "url": "4OI18mAQLnzjMf8G"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "Z2WBZqxYG3aREAu2", "serviceAppName": "D6QVKNCWP75TB0i7", "url": "pKxR8dl0zRVW4EZG"}' '9m0XcgGVbMqSszE8' --login_with_auth "Bearer foo"
match2-delete-match-function 'GHavj7AorKsxwkos' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 97, "backfill_ticket_expiration_seconds": 80, "match_function": "erXpc1C8XfwHuKeb", "match_function_override": {"backfill_matches": "9l3rGN9A3sNm84hd", "enrichment": ["dSpHt0P7MIIR7Cky", "F6C7duuyZ0GhDogq", "rhBRd8lDR6qVNPRZ"], "make_matches": "YdFLIAjGGJddVCvu", "stat_codes": ["9vx5KQ7KYnIuMBva", "O35llzQRaT5kPxUf", "ofvnnSuB0y5WUlrM"], "validation": ["dI4sNveabntBSxTe", "Iv53HGCiljvjKoyD", "6SCwGrncqmLtjQHA"]}, "name": "f8TgoNm03VLisV6z", "rule_set": "wPuo3td6TC6I3lMj", "session_template": "GSWN2laRlxfcjHfY", "ticket_expiration_seconds": 0}' --login_with_auth "Bearer foo"
match2-match-pool-details '6MbwL6IY69z1UaLq' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 72, "match_function": "YWytLPziZMdjxcBZ", "match_function_override": {"backfill_matches": "ufQxGiHPllG4cYEz", "enrichment": ["fTD1ZBm3MqHcUmLZ", "ZbSqb8RwNmn9HrNQ", "y4uZAAiE0mit9RGC"], "make_matches": "CHYzUOcEdscKHPEq", "stat_codes": ["gA8yu7Vk6Jt4Ymos", "9Jcdos4fYcTVU6RB", "t0zYoMcHyCUEXlAv"], "validation": ["xJMdalwSyliWMNW5", "NyLu0M3VHh2EI8Jl", "DbPWbQ6Q9lNmqRBa"]}, "rule_set": "AkLnvxkT1X68cmDc", "session_template": "3fxU8MyKrQpM4hkk", "ticket_expiration_seconds": 74}' 'm6puQ23xoJ8aeCna' --login_with_auth "Bearer foo"
match2-delete-match-pool 'LpUKp44YUDjasWIP' --login_with_auth "Bearer foo"
match2-match-pool-metric 'UvmEejtGeoyIPa8Z' --login_with_auth "Bearer foo"
match2-get-player-metric 'Rrvjj7il35MXbN9o' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"CMNqq98SjTvhZNkS": {}, "Q70D0H6BXksUC9b6": {}, "i5lZC9xv32e8c5cs": {}}, "latencies": {"SovoqsZNBdte9NDU": 85, "h1EThG96gAFKK2WD": 12, "TDIHrvqAThuwjRHp": 74}, "matchPool": "yeFoF7VSZ6pf3vne", "sessionID": "SD2Tb3g7mSQUhAEt"}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'rmjqU6YE3p4lSck0' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'ZHn5GI39YBHqaTHe' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"KtW18iGeUlc9d9so": {}, "gWa24CKNS0GqVvUf": {}, "HQvsHXNUNe4mhgo5": {}}, "enable_custom_match_function": true, "name": "48l9lyNApflxqMrj"}' --login_with_auth "Bearer foo"
match2-rule-set-details '3oZk03QXcKMDYDDx' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"HSZjtqXyJ58f7Gc2": {}, "6SaiGVkydwYWQG26": {}, "yUZNmTBcvrbYCwZt": {}}, "enable_custom_match_function": true, "name": "MVGLiBNrDjqoxcwg"}' 'GLXpUL4pp2ncYAHd' --login_with_auth "Bearer foo"
match2-delete-rule-set 'NzDmeIP6rOvDz9KO' --login_with_auth "Bearer foo"
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
echo "1..31"

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

#- 4 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'EnvironmentVariableList' test.out

#- 5 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "sb392k6YmJFfRByj", "sessionId": "lBiuFM3FIoVk8T3G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'pAnkCmBUqg2SCnqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'tX9y1aZSWMiVi10s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'G6vxkfUcmqRRbceJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"proposalId": "5i0EeDxOgBnhhqEl", "stop": false}' \
    'aDml48wdNFLTm5T5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "0x9WT0GfH2rtOa4E", "stop": true}' \
    'sXzOXQAk4mqrxzTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "uLl4XlbGL8QOxtjz", "serviceAppName": "m8y2wNhmwoYZyI4E", "url": "FZKBcYrCEAE7WIsf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "mx40NLRc6m8heKnW", "serviceAppName": "hzfe2NubeoKFeIaF", "url": "QCYoDPICpnduEEQl"}' \
    'ULdJz4mnRBkMNxvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'KgAT8mJrYq6hRklo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 54, "backfill_ticket_expiration_seconds": 47, "match_function": "68eaqC2J9jyEW6GL", "match_function_override": {"backfill_matches": "bc0NaKDUL3sa13lk", "enrichment": ["1dQBHO86IlBhnetU", "4RwTqUXlTDBzOuYs", "aZA2yyd4mbqoOfAD"], "make_matches": "MMAXFaY9eKa699bR", "stat_codes": ["VhyaKwwrAP2aMlu7", "WtjCtoYetOO847g8", "OudOfjnCuHZ3c46I"], "validation": ["jGa23YvYmmDg7VYP", "XIuvUYTZBRujIUE1", "Tq5jyAZvkRCMNFIu"]}, "name": "rjh2imdb4rbkXj0Z", "rule_set": "wsVC0gL97ZVJSPqJ", "session_template": "iwv1qlYB1RSKs6gQ", "ticket_expiration_seconds": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'ZGF7uYnGzpipNDig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 55, "backfill_ticket_expiration_seconds": 1, "match_function": "eFgPqaOkvo1aolB4", "match_function_override": {"backfill_matches": "lkKB4EYOkQ1jMD3c", "enrichment": ["ym8xIfkOVW2grREO", "Lx0KOww3HICQLfl7", "MUBG7qtPu64yAtUR"], "make_matches": "KLRkb738HGS6rDgM", "stat_codes": ["dIIlhS1fSiM9331m", "7Ta1PsKc50Kv6ecn", "EevcAx2K2zkRenmP"], "validation": ["ZnGBt4P7WnbdSJtj", "X7ZshZyZl5x4bRXB", "HUTrDzZSKscfOcYu"]}, "rule_set": "3dpCROYqUiGKXVFC", "session_template": "mpo6sPwVOEDSJsEK", "ticket_expiration_seconds": 4}' \
    'QpNhlI2iS5EpGhhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'XYck0upMzUYnb76t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'FkEORV3bu1bNCtX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'W40V6Do5sYadCCFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"HHC3DpZxkrQDXuNF": {}, "viMarv8mnfHK8CCm": {}, "E2lPnsbD3SGEdlwu": {}}, "latencies": {"UccE536ugBp3HBve": 32, "7udsMrok0WvGYYnx": 76, "V709xbnGezKsDwG2": 29}, "matchPool": "T805tVg8JqU0jZpj", "sessionID": "vsugAOS7u8RiWyer"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'CSa8SRgwsAj1ik1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'glaDXTvKCWwNTAhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"2wrS0uPdjhdinpng": {}, "5BLy8wbhMssAHjap": {}, "IkY9Rf4wP57dBZNR": {}}, "enable_custom_match_function": false, "name": "YbCtmKy8M9zVrjfG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'XZnqAQUoY1GjlIIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"0iKoTTS1j02o7JjT": {}, "XAQN0qdskdQV0TqI": {}, "8EFnmDbxIxi4YKlO": {}}, "enable_custom_match_function": false, "name": "g4iY9u02aCNYIWek"}' \
    'p18lOC3mNqF7Bl0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'cghVHfPEspxwhRON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
