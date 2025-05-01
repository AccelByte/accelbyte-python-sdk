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
match2-admin-query-backfill --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "m0XcgGVbMqSszE8G", "sessionId": "Havj7AorKsxwkosA"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'VerXpc1C8XfwHuKe' --login_with_auth "Bearer foo"
match2-get-backfill 'b9l3rGN9A3sNm84h' --login_with_auth "Bearer foo"
match2-delete-backfill 'ddSpHt0P7MIIR7Ck' --login_with_auth "Bearer foo"
match2-accept-backfill '{"acceptedTicketIds": ["yF6C7duuyZ0GhDog", "qrhBRd8lDR6qVNPR", "ZYdFLIAjGGJddVCv"], "proposalId": "u9vx5KQ7KYnIuMBv", "stop": false}' '9a2I9u6Vpbsx5w8h' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "qUI06UpOXGSLmCVu", "stop": false}' 'OPlLlkvR8sKgnuRk' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "gghGoYupD391C2qt", "serviceAppName": "PYokahFjkQsfCaTm", "url": "t1d67FXGk2s9Q0mP"}' --login_with_auth "Bearer foo"
match2-match-function-get 'Vo3twu0MesTCf9x4' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "rt69lna7qxNeIxPz", "serviceAppName": "6MbwL6IY69z1UaLq", "url": "YSYWytLPziZMdjxc"}' 'BZufQxGiHPllG4cY' --login_with_auth "Bearer foo"
match2-delete-match-function 'EzfTD1ZBm3MqHcUm' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 40, "backfill_ticket_expiration_seconds": 91, "best_latency_calculation_method": "rkmu0hpDDWVAla2l", "crossplay_disabled": true, "match_function": "AAiE0mit9RGCCHYz", "match_function_override": {"backfill_matches": "UOcEdscKHPEqgA8y", "enrichment": ["u7Vk6Jt4Ymos9Jcd", "os4fYcTVU6RBt0zY", "oMcHyCUEXlAvxJMd"], "make_matches": "alwSyliWMNW5NyLu", "stat_codes": ["0M3VHh2EI8JlDbPW", "bQ6Q9lNmqRBaAkLn", "vxkT1X68cmDc3fxU"], "validation": ["8MyKrQpM4hkkK6KK", "XNB3Gv0IqmF51Tkh", "jYnaq6foWvXa3bMr"]}, "name": "XsDr6kILsSSyDdmy", "platform_group_enabled": false, "rule_set": "j7il35MXbN9oCMNq", "session_template": "q98SjTvhZNkSQ70D", "ticket_expiration_seconds": 69}' --login_with_auth "Bearer foo"
match2-match-pool-details 'ateEKDpADz1x3poD' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 87, "backfill_ticket_expiration_seconds": 44, "best_latency_calculation_method": "gb3boLQQ1MzH7Qm8", "crossplay_disabled": false, "match_function": "Bdte9NDUPVJf6c2Z", "match_function_override": {"backfill_matches": "0QZxfgPubTDIHrvq", "enrichment": ["AThuwjRHpKKTlmVr", "9XuoJbRFQSKVPHbn", "4Xxtu7LQRENjEEzt"], "make_matches": "x1WsYSiZqan0nSBJ", "stat_codes": ["roav91GXlvPG6bFY", "ReVHQipcCx9Zw5D2", "L7vIYhGGSyEW4ZJJ"], "validation": ["42d3PBddN8S48l9l", "yNApflxqMrj3oZk0", "3QXcKMDYDDxHSZjt"]}, "platform_group_enabled": true, "rule_set": "FSrUEirnjX9fDmIb", "session_template": "eZxzfTcyiuATus9h", "ticket_expiration_seconds": 39}' 'BcvrbYCwZtxFHyPL' --login_with_auth "Bearer foo"
match2-delete-match-pool 'tI8ilbyDPUIj88ce' --login_with_auth "Bearer foo"
match2-match-pool-metric 'kdqCt81P1ktfIovm' --login_with_auth "Bearer foo"
match2-post-match-error-metric '{"type": "getExternalDS"}' 'P6rOvDz9KOsb392k' --login_with_auth "Bearer foo"
match2-get-player-metric '6YmJFfRByjlBiuFM' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets '3FIoVk8T3GpAnkCm' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"BUqg2SCnqntX9y1a": {}, "ZSWMiVi10sG6vxkf": {}, "UcmqRRbceJ5i0EeD": {}}, "excludedSessions": ["xOgBnhhqElIaDml4", "8wdNFLTm5T50x9WT", "0GfH2rtOa4EXsXzO"], "latencies": {"XQAk4mqrxzTtuLl4": 77, "lbGL8QOxtjzm8y2w": 80, "4aOMh5eC3IHeHSKL": 58}, "matchPool": "rCEAE7WIsfmx40NL", "sessionID": "Rc6m8heKnWhzfe2N", "storage": {"ubeoKFeIaFQCYoDP": {}, "ICpnduEEQlULdJz4": {}, "mnRBkMNxvvKgAT8m": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'JrYq6hRkloqxM3gp' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'wxcfMy9XzjjI5Ybs' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"KoADkzJEN2VHzih3": {}, "bit0VWn3CO39PXDN": {}, "xtXgeO3FgkXhjDza": {}}, "enable_custom_match_function": true, "name": "Y3snn2ZkP7cFdP43"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'e5dC9XIBudfZgrbH' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"DIDm4hMzF4Txoden": {}, "SrUTvfqU0bfoMm5c": {}, "TtFWbotQyXJRcQWs": {}}, "enable_custom_match_function": false, "name": "vYmmDg7VYPXIuvUY"}' 'TZBRujIUE1Tq5jyA' --login_with_auth "Bearer foo"
match2-delete-rule-set 'ZvkRCMNFIurjh2im' --login_with_auth "Bearer foo"
match2-public-get-player-metric 'db4rbkXj0ZwsVC0g' --login_with_auth "Bearer foo"
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
echo "1..41"

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
    '{"logLevel": "panic"}' \
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
    '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["ZVJSPqJiwv1qlYB1", "RSKs6gQxC3Gb7S0o", "4zGYY7KQI1AeFgPq"], "matchAnyCommon": false, "platformGroup": {"ZtfNWql4nmwAft4g": ["qkNNlWkD9eOziYRF", "On0jJLHC9LxhvNXT", "wGBCtohLtl9Zuhyt"], "m5UDrT6QXCs5SPBb": ["RPZTF6oQAXVG7tns", "Zg5QgXjvyGJPN4eX", "bJE5Vs2GcyomQoIX"], "imBJehyxlNsjUgxB": ["kF6wFPoJeQediogE", "hhM2rIizGdKvOPdq", "5xrgxSmy1DN9LFkY"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 AdminQueryBackfill
$PYTHON -m $MODULE 'match2-admin-query-backfill' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryBackfill' test.out

#- 11 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "W5DQyj4bj5Ro2oga", "sessionId": "Kt2ujQSa3Zdb65UX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateBackfill' test.out

#- 12 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'my0Zp6iIaTIKUkmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetBackfillProposal' test.out

#- 13 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'k9QM0NBMA9ORxpzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetBackfill' test.out

#- 14 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'LR2AK6eXUGPJsw1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteBackfill' test.out

#- 15 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["iP80G9Pclxcft2ul", "IJzPyrVEiOG4Ucqs", "uGKHhMRWLVd3DlhL"], "proposalId": "uIpomM8sm1MiaI1m", "stop": true}' \
    'ugBp3HBvepnDCjgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AcceptBackfill' test.out

#- 16 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "JlXe36mgWjLfFmte", "stop": true}' \
    'nGezKsDwG2omOR2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RejectBackfill' test.out

#- 17 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'MatchFunctionList' test.out

#- 18 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "vYI9TVqJdvzcWbfU", "serviceAppName": "paXp5JMl5LL4bTxB", "url": "mZjdrrIxsB0NRsB1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchFunction' test.out

#- 19 MatchFunctionGet
$PYTHON -m $MODULE 'match2-match-function-get' \
    'fPqqRRulpqpymDkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'MatchFunctionGet' test.out

#- 20 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "htrHWwRVnwVBOqOH", "serviceAppName": "i8pWGd1juYhiqjRJ", "url": "OqB5F93zFQbJndUD"}' \
    'pdONneAczbBdHb2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateMatchFunction' test.out

#- 21 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'lt71B1SmZp2JZp50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchFunction' test.out

#- 22 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolList' test.out

#- 23 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 93, "backfill_ticket_expiration_seconds": 28, "best_latency_calculation_method": "TS1j02o7JjTXAQN0", "crossplay_disabled": true, "match_function": "8ccLjMXJRk0eaKQD", "match_function_override": {"backfill_matches": "OJvrTefglSs6g4iY", "enrichment": ["9u02aCNYIWekp18l", "OC3mNqF7Bl0LcghV", "HfPEspxwhRON0bc1"], "make_matches": "eMbEIjowLqc3ecjX", "stat_codes": ["JbZDKKoxLE1Y3Dym", "tj3giPg4x4yiPX6u", "es1Hhhkg1yLVbLFz"], "validation": ["HEP8cM4NTwr0KHaA", "smTej52WKi6tArAU", "Rt9plCSVq8PdH6hJ"]}, "name": "PUAc0RVwXgAgntLM", "platform_group_enabled": true, "rule_set": "0deoV9Lx5RDA1l2X", "session_template": "crciYNEzvSZIPkhS", "ticket_expiration_seconds": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchPool' test.out

#- 24 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'R1KtOv7Zy0b65uvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'MatchPoolDetails' test.out

#- 25 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 81, "backfill_ticket_expiration_seconds": 19, "best_latency_calculation_method": "uy0ytZQ7M6Nzy1ad", "crossplay_disabled": false, "match_function": "f6QkmZXElW9YfRSs", "match_function_override": {"backfill_matches": "e6AAz3S4czz0QKFl", "enrichment": ["AVmVLu4AOec0z8eB", "eeoip68J1nsv4W2O", "JhtafxMSJlHeb34s"], "make_matches": "ZKHcl5LLLOexL4fZ", "stat_codes": ["vWtND2tcBFpX8lNt", "FEJ7tnkY6Mca5afj", "12K2IzrBvvWm4udE"], "validation": ["0OXudXgNne8kJATw", "lc6esUp6Sw1I98je", "ZQ7hfxnhLd3Knakn"]}, "platform_group_enabled": false, "rule_set": "3glU6muswVJnNnN7", "session_template": "kAa7j0riFc5HTHQI", "ticket_expiration_seconds": 29}' \
    '36I6tRbRcrEveMdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchPool' test.out

#- 26 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'diPKDUVSC00PYeDc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchPool' test.out

#- 27 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'agginxnFIna3yddc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolMetric' test.out

#- 28 PostMatchErrorMetric
$PYTHON -m $MODULE 'match2-post-match-error-metric' \
    '{"type": "connectDS"}' \
    'RtlqOECohViHA5Cz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PostMatchErrorMetric' test.out

#- 29 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'gFSy8X1A3PrIfapq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerMetric' test.out

#- 30 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    '5AAeMe4L3mDWORBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetMatchPoolTickets' test.out

#- 31 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"XTIIJM9XsYIIZxiX": {}, "NMR9BgaWcFX3SUBh": {}, "yoTsMWPAxUMkawaG": {}}, "excludedSessions": ["pAyrIwMif3BOdkoc", "VTd4BxqGWV6mTJ0s", "Qs6XNbjvqhnUVLWu"], "latencies": {"8olKdxL6ozRmDD0j": 72, "ZX7kPBom8F9GLLTG": 83, "phc3n4iLoIllKlpO": 25}, "matchPool": "pqiXJF3WGRaoQomS", "sessionID": "JC4DdrKF7SUQPLG5", "storage": {"9e0k5ZtX6wK7PpUl": {}, "cIW32iK7MGt1ixY5": {}, "rA1WoVeJIePF8ZrQ": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateMatchTicket' test.out

#- 32 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetMyMatchTickets' test.out

#- 33 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'zP4zvtdxdbZUpd6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'MatchTicketDetails' test.out

#- 34 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'JtHJ1pyVwyKQLY6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteMatchTicket' test.out

#- 35 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'RuleSetList' test.out

#- 36 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"EO65Rb3z7CYLM8Il": {}, "sHqffnrfsGlfPaZK": {}, "Bwa3Ddb60ufPpzwj": {}}, "enable_custom_match_function": false, "name": "GIFmlVf4jvapseE9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateRuleSet' test.out

#- 37 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'LN9bvhOrHflIOd6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RuleSetDetails' test.out

#- 38 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"3viLvtEk4mTIpUA9": {}, "gxo8SV38nEhoXmM2": {}, "W7l6jHMA2rG3nako": {}}, "enable_custom_match_function": true, "name": "MSHNgqRqCV7usamA"}' \
    'NkZlOX9Sfo95HgXq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateRuleSet' test.out

#- 39 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'KhTPkwfLM9uSybRz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteRuleSet' test.out

#- 40 PublicGetPlayerMetric
$PYTHON -m $MODULE 'match2-public-get-player-metric' \
    'Wek2gZvRrvr0n9d9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetPlayerMetric' test.out

#- 41 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
