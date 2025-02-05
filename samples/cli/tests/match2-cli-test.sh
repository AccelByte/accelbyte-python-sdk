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
match2-admin-get-log-config --login_with_auth "Bearer foo"
match2-admin-patch-update-log-config '{"logLevel": "info"}' --login_with_auth "Bearer foo"
match2-admin-get-all-config-v1 --login_with_auth "Bearer foo"
match2-admin-get-config-v1 --login_with_auth "Bearer foo"
match2-admin-patch-config-v1 '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["AxcVpFrttufHIRdH", "9UzVRiXbqlAw7r6W", "2ktQG0h5JAav5kRa"], "matchAnyCommon": false, "platformGroup": {"2WopBJHPtcDs8bBZ": ["LCXLx8bbgorQeFbQ", "1g7qbPngUNB1vRod", "wpzS6DaDpv8N7ZQV"], "qGj6oDLjWjkY1aXl": ["FcDtgOjchIua5tWE", "IC32ogW7olvbTgrh", "RTcPiSuL0Sly6XM4"], "OI18mAQLnzjMf8GZ": ["2WBZqxYG3aREAu2D", "6QVKNCWP75TB0i7p", "KxR8dl0zRVW4EZG9"]}}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "m0XcgGVbMqSszE8G", "sessionId": "Havj7AorKsxwkosA"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'VerXpc1C8XfwHuKe' --login_with_auth "Bearer foo"
match2-get-backfill 'b9l3rGN9A3sNm84h' --login_with_auth "Bearer foo"
match2-delete-backfill 'ddSpHt0P7MIIR7Ck' --login_with_auth "Bearer foo"
match2-accept-backfill '{"acceptedTicketIds": ["yF6C7duuyZ0GhDog", "qrhBRd8lDR6qVNPR", "ZYdFLIAjGGJddVCv"], "proposalId": "u9vx5KQ7KYnIuMBv", "stop": false}' '9a2I9u6Vpbsx5w8h' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "qUI06UpOXGSLmCVu", "stop": false}' 'OPlLlkvR8sKgnuRk' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "gghGoYupD391C2qt", "serviceAppName": "PYokahFjkQsfCaTm", "url": "t1d67FXGk2s9Q0mP"}' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "Vo3twu0MesTCf9x4", "serviceAppName": "rt69lna7qxNeIxPz", "url": "6MbwL6IY69z1UaLq"}' 'YSYWytLPziZMdjxc' --login_with_auth "Bearer foo"
match2-delete-match-function 'BZufQxGiHPllG4cY' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 63, "backfill_ticket_expiration_seconds": 52, "best_latency_calculation_method": "4o5Vwdo3fePqIJA8", "crossplay_disabled": false, "match_function": "trkmu0hpDDWVAla2", "match_function_override": {"backfill_matches": "l5BYNtIuS5S5XUdj", "enrichment": ["soqwGyzzWi9gwQYv", "7t1o7TTr1DmrhZv1", "5T7quIOvBMcaYmvC"], "make_matches": "kGZ5dAgqxpBFmaLo", "stat_codes": ["xozr6wfNPX2bOItR", "MvqtlB2jJCSQT279", "ZZPYGu0rdlgdWyOt"], "validation": ["Xi3choQrpOsDBU5S", "epjChB3V0v52Dlym", "6puQ23xoJ8aeCnaL"]}, "name": "pUKp44YUDjasWIPU", "platform_group_enabled": true, "rule_set": "MrXsDr6kILsSSyDd", "session_template": "mykmoPYgc2L4jk4L", "ticket_expiration_seconds": 30}' --login_with_auth "Bearer foo"
match2-match-pool-details 'Nqq98SjTvhZNkSQ7' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 69, "backfill_ticket_expiration_seconds": 1, "best_latency_calculation_method": "6BXksUC9b6i5lZC9", "crossplay_disabled": true, "match_function": "Qgb3boLQQ1MzH7Qm", "match_function_override": {"backfill_matches": "8bwbmXgdAPh1EThG", "enrichment": ["96gAFKK2WDgCcxvO", "NZm3EeERmDnyeFoF", "7VSZ6pf3vneSD2Tb"], "make_matches": "3g7mSQUhAEtrmjqU", "stat_codes": ["6YE3p4lSck0ZHn5G", "I39YBHqaTHeKtW18", "iGeUlc9d9sogWa24"], "validation": ["CKNS0GqVvUfHQvsH", "XNUNe4mhgo5QB65l", "SAiYnNjkfZrQvGgb"]}, "platform_group_enabled": false, "rule_set": "3QXcKMDYDDxHSZjt", "session_template": "qXyJ58f7Gc26SaiG", "ticket_expiration_seconds": 98}' 'eZxzfTcyiuATus9h' --login_with_auth "Bearer foo"
match2-delete-match-pool 'sfpFDcSDG8aMVGLi' --login_with_auth "Bearer foo"
match2-match-pool-metric 'BNrDjqoxcwgGLXpU' --login_with_auth "Bearer foo"
match2-post-match-error-metric '{"type": "connectDS"}' '4pp2ncYAHdNzDmeI' --login_with_auth "Bearer foo"
match2-get-player-metric 'P6rOvDz9KOsb392k' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets '6YmJFfRByjlBiuFM' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"3FIoVk8T3GpAnkCm": {}, "BUqg2SCnqntX9y1a": {}, "ZSWMiVi10sG6vxkf": {}}, "excludedSessions": ["UcmqRRbceJ5i0EeD", "xOgBnhhqElIaDml4", "8wdNFLTm5T50x9WT"], "latencies": {"0GfH2rtOa4EXsXzO": 63, "QAk4mqrxzTtuLl4X": 22, "Dx9gIiDandpGT2t2": 15}, "matchPool": "aOMh5eC3IHeHSKLC", "sessionID": "a3xreNDUWehwH3q3", "storage": {"1A806DJgas4b6z3L": {}, "NUj7fdgLA84Z8YYk": {}, "6QEgJjBbEDoNf3n0": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'hEoRCAcf80zfFyab' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'WAgIUXiI07A68eaq' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"C2J9jyEW6GLbc0Na": {}, "KDUL3sa13lk1dQBH": {}, "O86IlBhnetU4RwTq": {}}, "enable_custom_match_function": true, "name": "XlTDBzOuYsaZA2yy"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'd4mbqoOfADMMAXFa' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"Y9eKa699bRVhyaKw": {}, "wrAP2aMlu7WtjCto": {}, "YetOO847g8OudOfj": {}}, "enable_custom_match_function": false, "name": "tFWbotQyXJRcQWsm"}' 'qPNs92epxk0i8Vxs' --login_with_auth "Bearer foo"
match2-delete-rule-set 'ZNereSvf9699mCEH' --login_with_auth "Bearer foo"
match2-public-get-player-metric 'ThUJkETAsSp7gh4T' --login_with_auth "Bearer foo"
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
echo "1..39"

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

#- 4 AdminGetLogConfig
$PYTHON -m $MODULE 'match2-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'match2-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
$PYTHON -m $MODULE 'match2-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
$PYTHON -m $MODULE 'match2-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
$PYTHON -m $MODULE 'match2-admin-patch-config-v1' \
    '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["UTkOkAYfJB8AT9t4", "Tv207Y2QD3oD5fLC", "r3OOlXVv8ZGF7uYn"], "matchAnyCommon": false, "platformGroup": {"zpipNDigNJma1Mbq": ["qZtfNWql4nmwAft4", "gqkNNlWkD9eOziYR", "FOn0jJLHC9LxhvNX"], "TwGBCtohLtl9Zuhy": ["tm5UDrT6QXCs5SPB", "bRPZTF6oQAXVG7tn", "sZg5QgXjvyGJPN4e"], "XbJE5Vs2GcyomQoI": ["XimBJehyxlNsjUgx", "BkF6wFPoJeQediog", "EhhM2rIizGdKvOPd"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "q5xrgxSmy1DN9LFk", "sessionId": "YW5DQyj4bj5Ro2og"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'aKt2ujQSa3Zdb65U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'Xmy0Zp6iIaTIKUkm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'kk9QM0NBMA9ORxpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["wLR2AK6eXUGPJsw1", "fiP80G9Pclxcft2u", "lIJzPyrVEiOG4Ucq"], "proposalId": "suGKHhMRWLVd3Dlh", "stop": false}' \
    'uIpomM8sm1MiaI1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "X2tJoARtdbBe7uds", "stop": false}' \
    'rok0WvGYYnx4V709' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "xbnGezKsDwG2omOR", "serviceAppName": "2nvYI9TVqJdvzcWb", "url": "fUpaXp5JMl5LL4bT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "xBmZjdrrIxsB0NRs", "serviceAppName": "B1fPqqRRulpqpymD", "url": "kQhtrHWwRVnwVBOq"}' \
    'OHi8pWGd1juYhiqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'RJOqB5F93zFQbJnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 61, "backfill_ticket_expiration_seconds": 40, "best_latency_calculation_method": "pdONneAczbBdHb2s", "crossplay_disabled": false, "match_function": "AQUoY1GjlIIk0iKo", "match_function_override": {"backfill_matches": "TTS1j02o7JjTXAQN", "enrichment": ["0qdskdQV0TqI8EFn", "mDbxIxi4YKlONk2Q", "5Y4JvaizwiilatuU"], "make_matches": "jjt9lIMGql5ElEa9", "stat_codes": ["EIIlGcHB3CfR3ncD", "lwi3v3MFFJ1KesKo", "ELCpobBEG8X645xp"], "validation": ["dXpai0rYaT5hOPja", "f3H0tYighU0VUfcY", "HJbBfAKSiPW3VgsZ"]}, "name": "XiR1DJ7HVWqMkNSa", "platform_group_enabled": true, "rule_set": "URt9plCSVq8PdH6h", "session_template": "JPUAc0RVwXgAgntL", "ticket_expiration_seconds": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'w0deoV9Lx5RDA1l2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 22, "backfill_ticket_expiration_seconds": 35, "best_latency_calculation_method": "CancUZGCHsZYoLfR", "crossplay_disabled": false, "match_function": "tOv7Zy0b65uvuKNu", "match_function_override": {"backfill_matches": "y0ytZQ7M6Nzy1adn", "enrichment": ["SKOLFKx1dX4LuWJu", "3pDMUAeeZ97SBROP", "YuG6XqP6oo7G73zd"], "make_matches": "xTgOfnwIdlNa29fD", "stat_codes": ["Lh741IslKHzGlLKW", "UtDQs61OQAoxyyQp", "RWCiiPDGQhNPEwiJ"], "validation": ["Cf2XJVrlzqQls1oz", "hLVA3kE8jKvgatOE", "BM70TdlNBJYOmpu1"]}, "platform_group_enabled": false, "rule_set": "CarzBsV6xnZ5Jrzz", "session_template": "jrcaug6CWVG8SWP3", "ticket_expiration_seconds": 12}' \
    'd9DHhLOqQGhCUr6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'TrjyEgarAdNJOIG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    '6I6tRbRcrEveMdAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 PostMatchErrorMetric
$PYTHON -m $MODULE 'match2-post-match-error-metric' \
    '{"type": "connectDS"}' \
    'ETJyTlUrwDTnoujQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostMatchErrorMetric' test.out

#- 27 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'D4IEiH9Z5qXn3aoR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetPlayerMetric' test.out

#- 28 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'tlqOECohViHA5Czg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetMatchPoolTickets' test.out

#- 29 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"FSy8X1A3PrIfapq5": {}, "AAeMe4L3mDWORBVX": {}, "TIIJM9XsYIIZxiXN": {}}, "excludedSessions": ["MR9BgaWcFX3SUBhy", "oTsMWPAxUMkawaGp", "AyrIwMif3BOdkocV"], "latencies": {"Td4BxqGWV6mTJ0sQ": 38, "dO0Khqf6kiTdSGv2": 78, "lKdxL6ozRmDD0jJv": 24}, "matchPool": "7kPBom8F9GLLTG8p", "sessionID": "hc3n4iLoIllKlpO2", "storage": {"pqiXJF3WGRaoQomS": {}, "JC4DdrKF7SUQPLG5": {}, "9e0k5ZtX6wK7PpUl": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateMatchTicket' test.out

#- 30 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetMyMatchTickets' test.out

#- 31 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'cIW32iK7MGt1ixY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'MatchTicketDetails' test.out

#- 32 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'rA1WoVeJIePF8ZrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteMatchTicket' test.out

#- 33 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'RuleSetList' test.out

#- 34 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"zP4zvtdxdbZUpd6F": {}, "JtHJ1pyVwyKQLY6F": {}, "EO65Rb3z7CYLM8Il": {}}, "enable_custom_match_function": true, "name": "7QBlk44Z44B1GZgK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateRuleSet' test.out

#- 35 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'g4uKxaCgcGLuC3br' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'RuleSetDetails' test.out

#- 36 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"WdTYCfHkIySok5Di": {}, "XZtLW87rGysryod3": {}, "dNQrmsApRA6HX3Rw": {}}, "enable_custom_match_function": true, "name": "9gxo8SV38nEhoXmM"}' \
    '2W7l6jHMA2rG3nak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateRuleSet' test.out

#- 37 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'opAywelu01nryEJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteRuleSet' test.out

#- 38 PublicGetPlayerMetric
$PYTHON -m $MODULE 'match2-public-get-player-metric' \
    'NqoTow0qiOiC4j0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerMetric' test.out

#- 39 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
