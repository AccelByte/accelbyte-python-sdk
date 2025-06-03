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
match2-admin-get-play-feature-flag --login_with_auth "Bearer foo"
match2-admin-upsert-play-feature-flag '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' --login_with_auth "Bearer foo"
match2-admin-delete-play-feature-flag --login_with_auth "Bearer foo"
match2-admin-get-all-config-v1 --login_with_auth "Bearer foo"
match2-admin-get-config-v1 --login_with_auth "Bearer foo"
match2-admin-patch-config-v1 '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["xcVpFrttufHIRdH9", "UzVRiXbqlAw7r6W2", "ktQG0h5JAav5kRa6"], "matchAnyCommon": false, "platformGroup": {"opBJHPtcDs8bBZLC": ["XLx8bbgorQeFbQ1g", "7qbPngUNB1vRodwp", "zS6DaDpv8N7ZQVqG"], "j6oDLjWjkY1aXlFc": ["DtgOjchIua5tWEIC", "32ogW7olvbTgrhRT", "cPiSuL0Sly6XM4OI"], "18mAQLnzjMf8GZ2W": ["BZqxYG3aREAu2D6Q", "VKNCWP75TB0i7pKx", "R8dl0zRVW4EZG9m0"]}}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-admin-query-backfill --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "XcgGVbMqSszE8GHa", "sessionId": "vj7AorKsxwkosAVe"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'rXpc1C8XfwHuKeb9' --login_with_auth "Bearer foo"
match2-get-backfill 'l3rGN9A3sNm84hdd' --login_with_auth "Bearer foo"
match2-delete-backfill 'SpHt0P7MIIR7CkyF' --login_with_auth "Bearer foo"
match2-accept-backfill '{"acceptedTicketIds": ["6C7duuyZ0GhDogqr", "hBRd8lDR6qVNPRZY", "dFLIAjGGJddVCvu9"], "proposalId": "vx5KQ7KYnIuMBvaO", "stop": false}' '9u6Vpbsx5w8hqUI0' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "6UpOXGSLmCVuHOPl", "stop": false}' 'veabntBSxTeIv53H' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "GCiljvjKoyD6SCwG", "serviceAppName": "rncqmLtjQHAf8Tgo", "url": "Nm03VLisV6zwPuo3"}' --login_with_auth "Bearer foo"
match2-match-function-get 'td6TC6I3lMjGSWN2' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "laRlxfcjHfYakUCT", "serviceAppName": "qGkE7wcWfDslpJSq", "url": "GAXQ0yYoNRKd3IL5"}' 'TAQ6iiPlSC2uE4o5' --login_with_auth "Bearer foo"
match2-delete-match-function 'Vwdo3fePqIJA8IHt' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 34, "backfill_ticket_expiration_seconds": 21, "best_latency_calculation_method": "b8RwNmn9HrNQy4uZ", "crossplay_disabled": true, "match_function": "YNtIuS5S5XUdjsoq", "match_function_override": {"backfill_matches": "wGyzzWi9gwQYv7t1", "enrichment": ["o7TTr1DmrhZv15T7", "quIOvBMcaYmvCkGZ", "5dAgqxpBFmaLoxoz"], "make_matches": "r6wfNPX2bOItRMvq", "stat_codes": ["tlB2jJCSQT279ZZP", "YGu0rdlgdWyOtXi3", "choQrpOsDBU5Sepj"], "validation": ["ChB3V0v52Dlym6pu", "Q23xoJ8aeCnaLpUK", "p44YUDjasWIPUvmE"]}, "name": "ejtGeoyIPa8ZRrvj", "platform_group_enabled": false, "rule_set": "moPYgc2L4jk4Lo0L", "session_template": "SP0pf4IxjUkl535X", "ticket_expiration_seconds": 69}' --login_with_auth "Bearer foo"
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
echo "1..44"

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

#- 6 AdminGetPlayFeatureFlag
$PYTHON -m $MODULE 'match2-admin-get-play-feature-flag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetPlayFeatureFlag' test.out

#- 7 AdminUpsertPlayFeatureFlag
$PYTHON -m $MODULE 'match2-admin-upsert-play-feature-flag' \
    '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
$PYTHON -m $MODULE 'match2-admin-delete-play-feature-flag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetAllConfigV1
$PYTHON -m $MODULE 'match2-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetAllConfigV1' test.out

#- 10 AdminGetConfigV1
$PYTHON -m $MODULE 'match2-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetConfigV1' test.out

#- 11 AdminPatchConfigV1
$PYTHON -m $MODULE 'match2-admin-patch-config-v1' \
    '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["iwv1qlYB1RSKs6gQ", "xC3Gb7S0o4zGYY7K", "QI1AeFgPqaOkvo1a"], "matchAnyCommon": false, "platformGroup": {"4nmwAft4gqkNNlWk": ["D9eOziYRFOn0jJLH", "C9LxhvNXTwGBCtoh", "Ltl9Zuhytm5UDrT6"], "QXCs5SPBbRPZTF6o": ["QAXVG7tnsZg5QgXj", "vyGJPN4eXbJE5Vs2", "GcyomQoIXimBJehy"], "xlNsjUgxBkF6wFPo": ["JeQediogEhhM2rIi", "zGdKvOPdq5xrgxSm", "y1DN9LFkYW5DQyj4"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPatchConfigV1' test.out

#- 12 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'EnvironmentVariableList' test.out

#- 13 AdminQueryBackfill
$PYTHON -m $MODULE 'match2-admin-query-backfill' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryBackfill' test.out

#- 14 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "bj5Ro2ogaKt2ujQS", "sessionId": "a3Zdb65UXmy0Zp6i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateBackfill' test.out

#- 15 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'IaTIKUkmkk9QM0NB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetBackfillProposal' test.out

#- 16 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'MA9ORxpzwLR2AK6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetBackfill' test.out

#- 17 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'XUGPJsw1fiP80G9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteBackfill' test.out

#- 18 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["clxcft2ulIJzPyrV", "EiOG4UcqsuGKHhMR", "WLVd3DlhLuIpomM8"], "proposalId": "sm1MiaI1mX2tJoAR", "stop": true}' \
    'HBvepnDCjgyJlXe3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AcceptBackfill' test.out

#- 19 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "6mgWjLfFmteue9nz", "stop": true}' \
    '6fH24T805tVg8JqU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RejectBackfill' test.out

#- 20 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'MatchFunctionList' test.out

#- 21 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "0jZpjvsugAOS7u8R", "serviceAppName": "iWyerCSa8SRgwsAj", "url": "1ik1jglaDXTvKCWw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchFunction' test.out

#- 22 MatchFunctionGet
$PYTHON -m $MODULE 'match2-match-function-get' \
    'NTAhd2wrS0uPdjhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionGet' test.out

#- 23 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "inpng5BLy8wbhMss", "serviceAppName": "AHjapIkY9Rf4wP57", "url": "dBZNR88YbCtmKy8M"}' \
    '9zVrjfGXZnqAQUoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchFunction' test.out

#- 24 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    '1GjlIIk0iKoTTS1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchFunction' test.out

#- 25 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolList' test.out

#- 26 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 5, "backfill_ticket_expiration_seconds": 73, "best_latency_calculation_method": "mQbTU5JX8ccLjMXJ", "crossplay_disabled": true, "match_function": "k0eaKQDOJvrTefgl", "match_function_override": {"backfill_matches": "Ss6g4iY9u02aCNYI", "enrichment": ["Wekp18lOC3mNqF7B", "l0LcghVHfPEspxwh", "RON0bc1eMbEIjowL"], "make_matches": "qc3ecjXJbZDKKoxL", "stat_codes": ["E1Y3Dymtj3giPg4x", "4yiPX6ues1Hhhkg1", "yLVbLFzHEP8cM4NT"], "validation": ["wr0KHaAsmTej52WK", "i6tArAURt9plCSVq", "8PdH6hJPUAc0RVwX"]}, "name": "gAgntLMCuaXBWQi6", "platform_group_enabled": true, "rule_set": "RDA1l2XcrciYNEzv", "session_template": "SZIPkhSgORcz5S5B", "ticket_expiration_seconds": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchPool' test.out

#- 27 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    '0b65uvuKNuy0ytZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolDetails' test.out

#- 28 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 81, "backfill_ticket_expiration_seconds": 92, "best_latency_calculation_method": "zy1adnSKOLFKx1dX", "crossplay_disabled": false, "match_function": "uWJu3pDMUAeeZ97S", "match_function_override": {"backfill_matches": "BROPYuG6XqP6oo7G", "enrichment": ["73zdxTgOfnwIdlNa", "29fDLh741IslKHzG", "lLKWUtDQs61OQAox"], "make_matches": "yyQpRWCiiPDGQhNP", "stat_codes": ["EwiJCf2XJVrlzqQl", "s1ozhLVA3kE8jKvg", "atOEBM70TdlNBJYO"], "validation": ["mpu1VCarzBsV6xnZ", "5Jrzzjrcaug6CWVG", "8SWP3glU6muswVJn"]}, "platform_group_enabled": true, "rule_set": "nN7kAa7j0riFc5HT", "session_template": "HQIoVsGo7dwV9DBq", "ticket_expiration_seconds": 64}' \
    'MdAdiPKDUVSC00PY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UpdateMatchPool' test.out

#- 29 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'eDcagginxnFIna3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchPool' test.out

#- 30 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'ddcbsPheTH26IUJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'MatchPoolMetric' test.out

#- 31 PostMatchErrorMetric
$PYTHON -m $MODULE 'match2-post-match-error-metric' \
    '{"type": "getExternalDS"}' \
    '5CzgFSy8X1A3PrIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PostMatchErrorMetric' test.out

#- 32 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'apq5AAeMe4L3mDWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetPlayerMetric' test.out

#- 33 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'RBVXTIIJM9XsYIIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetMatchPoolTickets' test.out

#- 34 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"xiXNMR9BgaWcFX3S": {}, "UBhyoTsMWPAxUMka": {}, "waGpAyrIwMif3BOd": {}}, "excludedSessions": ["kocVTd4BxqGWV6mT", "J0sQs6XNbjvqhnUV", "LWu8olKdxL6ozRmD"], "latencies": {"D0jJvlfV5OemPYdY": 94, "LTG8phc3n4iLoIll": 75, "I89hmguB8FOTjMLo": 88}, "matchPool": "b9rIzqYkEpstyVTB", "sessionID": "crM8rG0rH0zcswwV", "storage": {"eMK6MbGIVIu8vvwL": {}, "c7KY3uVoJXTIMtpg": {}, "kieDyF97lGdMiHKx": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateMatchTicket' test.out

#- 35 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetMyMatchTickets' test.out

#- 36 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    'bWCYzo8yO2KTK9tm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'MatchTicketDetails' test.out

#- 37 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'mOnYnOpas6ghP1y4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteMatchTicket' test.out

#- 38 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RuleSetList' test.out

#- 39 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"Zi7s7QBlk44Z44B1": {}, "GZgKg4uKxaCgcGLu": {}, "C3brWdTYCfHkIySo": {}}, "enable_custom_match_function": false, "name": "pseE9LN9bvhOrHfl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'CreateRuleSet' test.out

#- 40 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'IOd6X3viLvtEk4mT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RuleSetDetails' test.out

#- 41 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"IpUA9gxo8SV38nEh": {}, "oXmM2W7l6jHMA2rG": {}, "3nakopAywelu01nr": {}}, "enable_custom_match_function": true, "name": "usamANkZlOX9Sfo9"}' \
    '5HgXqKhTPkwfLM9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateRuleSet' test.out

#- 42 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'SybRzWek2gZvRrvr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteRuleSet' test.out

#- 43 PublicGetPlayerMetric
$PYTHON -m $MODULE 'match2-public-get-player-metric' \
    '0n9d9lvccKMLhrTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerMetric' test.out

#- 44 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
