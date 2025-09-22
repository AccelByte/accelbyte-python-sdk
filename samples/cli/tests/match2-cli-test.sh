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
match2-admin-get-x-ray-config --login_with_auth "Bearer foo"
match2-admin-update-x-ray-config '{"whitelistedUsers": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"]}' --login_with_auth "Bearer foo"
match2-admin-get-all-config-v1 --login_with_auth "Bearer foo"
match2-admin-get-config-v1 --login_with_auth "Bearer foo"
match2-admin-patch-config-v1 '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["2WopBJHPtcDs8bBZ", "LCXLx8bbgorQeFbQ", "1g7qbPngUNB1vRod"], "matchAnyCommon": true, "platformGroup": {"ElFHHdgs21Jub74C": ["UkNmKJfh5pUkHODp", "oMF78NY4YkHs1cnz", "1JSDgY1TXp38zsCT"], "CrbCbPOyNQkT7Nvy": ["E3cwyALczNIicXm7", "agSrjJW2OQNOs1PX", "hT5FvdiRilZ7oFgx"], "4c8OumKtPDKJDXn7": ["Z4U68su8XfqlqNiT", "vB6SdAdIhUDrwoZ5", "MecdKi5r6QEa1ysL"]}, "xrayMaxWhitelistedUserCount": 62}' --login_with_auth "Bearer foo"
match2-environment-variable-list --login_with_auth "Bearer foo"
match2-admin-query-backfill --login_with_auth "Bearer foo"
match2-create-backfill '{"matchPool": "9l3rGN9A3sNm84hd", "sessionId": "dSpHt0P7MIIR7Cky"}' --login_with_auth "Bearer foo"
match2-get-backfill-proposal 'F6C7duuyZ0GhDogq' --login_with_auth "Bearer foo"
match2-get-backfill 'rhBRd8lDR6qVNPRZ' --login_with_auth "Bearer foo"
match2-delete-backfill 'YdFLIAjGGJddVCvu' --login_with_auth "Bearer foo"
match2-accept-backfill '{"acceptedTicketIds": ["9vx5KQ7KYnIuMBva", "O35llzQRaT5kPxUf", "ofvnnSuB0y5WUlrM"], "proposalId": "dI4sNveabntBSxTe", "stop": false}' 'v53HGCiljvjKoyD6' --login_with_auth "Bearer foo"
match2-reject-backfill '{"proposalId": "SCwGrncqmLtjQHAf", "stop": false}' 'goNm03VLisV6zwPu' --login_with_auth "Bearer foo"
match2-match-function-list --login_with_auth "Bearer foo"
match2-create-match-function '{"match_function": "o3td6TC6I3lMjGSW", "serviceAppName": "N2laRlxfcjHfYakU", "url": "CTqGkE7wcWfDslpJ"}' --login_with_auth "Bearer foo"
match2-match-function-get 'SqGAXQ0yYoNRKd3I' --login_with_auth "Bearer foo"
match2-update-match-function '{"match_function": "L5TAQ6iiPlSC2uE4", "serviceAppName": "o5Vwdo3fePqIJA8I", "url": "Htrkmu0hpDDWVAla"}' '2l5BYNtIuS5S5XUd' --login_with_auth "Bearer foo"
match2-delete-match-function 'jsoqwGyzzWi9gwQY' --login_with_auth "Bearer foo"
match2-match-pool-list --login_with_auth "Bearer foo"
match2-create-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 54, "backfill_ticket_expiration_seconds": 39, "best_latency_calculation_method": "yu7Vk6Jt4Ymos9Jc", "crossplay_disabled": false, "match_function": "7quIOvBMcaYmvCkG", "match_function_override": {"backfill_matches": "Z5dAgqxpBFmaLoxo", "enrichment": ["zr6wfNPX2bOItRMv", "qtlB2jJCSQT279ZZ", "PYGu0rdlgdWyOtXi"], "make_matches": "3choQrpOsDBU5Sep", "stat_codes": ["jChB3V0v52Dlym6p", "uQ23xoJ8aeCnaLpU", "Kp44YUDjasWIPUvm"], "validation": ["EejtGeoyIPa8ZRrv", "jj7il35MXbN9oCMN", "qq98SjTvhZNkSQ70"]}, "name": "D0H6BXksUC9b6i5l", "platform_group_enabled": false, "rule_set": "C9xv32e8c5csSovo", "session_template": "qsZNBdte9NDUPVJf", "ticket_expiration_seconds": 16}' --login_with_auth "Bearer foo"
match2-match-pool-details 'c2Z0QZxfgPubTDIH' --login_with_auth "Bearer foo"
match2-update-match-pool '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 83, "backfill_ticket_expiration_seconds": 44, "best_latency_calculation_method": "NZm3EeERmDnyeFoF", "crossplay_disabled": true, "match_function": "VSZ6pf3vneSD2Tb3", "match_function_override": {"backfill_matches": "g7mSQUhAEtrmjqU6", "enrichment": ["YE3p4lSck0ZHn5GI", "39YBHqaTHeKtW18i", "GeUlc9d9sogWa24C"], "make_matches": "KNS0GqVvUfHQvsHX", "stat_codes": ["NUNe4mhgo5QB65lS", "AiYnNjkfZrQvGgbL", "dLsFzHkBMr1yrOMl"], "validation": ["NFSrUEirnjX9fDmI", "beZxzfTcyiuATus9", "hsfpFDcSDG8aMVGL"]}, "platform_group_enabled": false, "rule_set": "LtI8ilbyDPUIj88c", "session_template": "ekdqCt81P1ktfIov", "ticket_expiration_seconds": 26}' 'IP6rOvDz9KOsb392' --login_with_auth "Bearer foo"
match2-delete-match-pool 'k6YmJFfRByjlBiuF' --login_with_auth "Bearer foo"
match2-match-pool-metric 'M3FIoVk8T3GpAnkC' --login_with_auth "Bearer foo"
match2-post-match-error-metric '{"type": "connectDS"}' 'HPxB1UskYs4Yw20D' --login_with_auth "Bearer foo"
match2-get-player-metric 'OqOBSC2DKHRuPMMW' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'H8Yb33T5UBJCjfcn' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"LRfxeCSz9WEi8Kll": {}, "oeH0JT1yduat2vQR": {}, "3biBfsu4jmsRE2w1": {}}, "excludedSessions": ["yEkLgh3tIYt4SqYU", "TLDx9gIiDandpGT2", "t24aOMh5eC3IHeHS"], "latencies": {"KLCa3xreNDUWehwH": 82, "q31A806DJgas4b6z": 80, "LNUj7fdgLA84Z8YY": 21}, "matchPool": "ICpnduEEQlULdJz4", "sessionID": "mnRBkMNxvvKgAT8m", "storage": {"JrYq6hRkloqxM3gp": {}, "wxcfMy9XzjjI5Ybs": {}, "KoADkzJEN2VHzih3": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'bit0VWn3CO39PXDN' --login_with_auth "Bearer foo"
match2-delete-match-ticket 'xtXgeO3FgkXhjDza' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"QY3snn2ZkP7cFdP4": {}, "3e5dC9XIBudfZgrb": {}, "HDIDm4hMzF4Txode": {}}, "enable_custom_match_function": false, "name": "oYetOO847g8OudOf"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'jnCuHZ3c46IjGa23' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"YvYmmDg7VYPXIuvU": {}, "YTZBRujIUE1Tq5jy": {}, "AZvkRCMNFIurjh2i": {}}, "enable_custom_match_function": false, "name": "TeUTkOkAYfJB8AT9"}' 't4Tv207Y2QD3oD5f' --login_with_auth "Bearer foo"
match2-delete-rule-set 'LCr3OOlXVv8ZGF7u' --login_with_auth "Bearer foo"
match2-public-get-player-metric 'YnGzpipNDigNJma1' --login_with_auth "Bearer foo"
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
echo "1..46"

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
    '{"logLevel": "trace"}' \
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
    '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
$PYTHON -m $MODULE 'match2-admin-delete-play-feature-flag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetXRayConfig
$PYTHON -m $MODULE 'match2-admin-get-x-ray-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetXRayConfig' test.out

#- 10 AdminUpdateXRayConfig
$PYTHON -m $MODULE 'match2-admin-update-x-ray-config' \
    '{"whitelistedUsers": ["PqaOkvo1aolB4lkK", "B4EYOkQ1jMD3cym8", "xIfkOVW2grREOLx0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateXRayConfig' test.out

#- 11 AdminGetAllConfigV1
$PYTHON -m $MODULE 'match2-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigV1' test.out

#- 12 AdminGetConfigV1
$PYTHON -m $MODULE 'match2-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigV1' test.out

#- 13 AdminPatchConfigV1
$PYTHON -m $MODULE 'match2-admin-patch-config-v1' \
    '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["wGBCtohLtl9Zuhyt", "m5UDrT6QXCs5SPBb", "RPZTF6oQAXVG7tns"], "matchAnyCommon": false, "platformGroup": {"fSiM9331m7Ta1PsK": ["c50Kv6ecnEevcAx2", "K2zkRenmPZnGBt4P", "7WnbdSJtjX7ZshZy"], "Zl5x4bRXBHUTrDzZ": ["SKscfOcYu3dpCROY", "qUiGKXVFCmpo6sPw", "VOEDSJsEK5QpNhlI"], "2iS5EpGhhvXYck0u": ["pMzUYnb76tFkEORV", "3bu1bNCtX7W40V6D", "o5sYadCCFrHHC3Dp"]}, "xrayMaxWhitelistedUserCount": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
$PYTHON -m $MODULE 'match2-environment-variable-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
$PYTHON -m $MODULE 'match2-admin-query-backfill' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
$PYTHON -m $MODULE 'match2-create-backfill' \
    '{"matchPool": "xkrQDXuNFviMarv8", "sessionId": "mnfHK8CCmE2lPnsb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'D3SGEdlwuUccE536' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'ugBp3HBvepnDCjgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'JlXe36mgWjLfFmte' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["ue9nzJ6fH24T805t", "Vg8JqU0jZpjvsugA", "OS7u8RiWyerCSa8S"], "proposalId": "RgwsAj1ik1jglaDX", "stop": false}' \
    'vKCWwNTAhd2wrS0u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "Pdjhdinpng5BLy8w", "stop": false}' \
    '8pWGd1juYhiqjRJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
$PYTHON -m $MODULE 'match2-match-function-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
$PYTHON -m $MODULE 'match2-create-match-function' \
    '{"match_function": "qB5F93zFQbJndUDp", "serviceAppName": "dONneAczbBdHb2sl", "url": "t71B1SmZp2JZp50C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
$PYTHON -m $MODULE 'match2-match-function-get' \
    'nPb71ORYcmQbTU5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "X8ccLjMXJRk0eaKQ", "serviceAppName": "DOJvrTefglSs6g4i", "url": "Y9u02aCNYIWekp18"}' \
    'lOC3mNqF7Bl0Lcgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'VHfPEspxwhRON0bc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
$PYTHON -m $MODULE 'match2-match-pool-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
$PYTHON -m $MODULE 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 9, "backfill_ticket_expiration_seconds": 17, "best_latency_calculation_method": "MbEIjowLqc3ecjXJ", "crossplay_disabled": false, "match_function": "pobBEG8X645xpdXp", "match_function_override": {"backfill_matches": "ai0rYaT5hOPjaf3H", "enrichment": ["0tYighU0VUfcYHJb", "BfAKSiPW3VgsZXiR", "1DJ7HVWqMkNSawQU"], "make_matches": "WDFJvJBWic7UkBeI", "stat_codes": ["XuqDuAXI66bQ71w0", "deoV9Lx5RDA1l2Xc", "rciYNEzvSZIPkhSg"], "validation": ["ORcz5S5BvmgBLxh4", "ijFnE3Tam69qSZ7P", "C6f6QkmZXElW9YfR"]}, "name": "Sse6AAz3S4czz0QK", "platform_group_enabled": false, "rule_set": "PYuG6XqP6oo7G73z", "session_template": "dxTgOfnwIdlNa29f", "ticket_expiration_seconds": 61}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'JhtafxMSJlHeb34s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 68, "backfill_ticket_expiration_seconds": 61, "best_latency_calculation_method": "cl5LLLOexL4fZvWt", "crossplay_disabled": false, "match_function": "D2tcBFpX8lNtFEJ7", "match_function_override": {"backfill_matches": "tnkY6Mca5afj12K2", "enrichment": ["IzrBvvWm4udE0OXu", "dXgNne8kJATwlc6e", "sUp6Sw1I98jeZQ7h"], "make_matches": "fxnhLd3Knaknoed9", "stat_codes": ["DHhLOqQGhCUr6iTr", "jyEgarAdNJOIG36I", "6tRbRcrEveMdAdiP"], "validation": ["KDUVSC00PYeDcagg", "inxnFIna3yddcbsP", "heTH26IUJNvYuGRU"]}, "platform_group_enabled": true, "rule_set": "y8X1A3PrIfapq5AA", "session_template": "eMe4L3mDWORBVXTI", "ticket_expiration_seconds": 71}' \
    'eE70CaunQNxot371' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'W9G4AvQkqsGnmyo5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    'JJTUVmb8GEXFTlEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
$PYTHON -m $MODULE 'match2-post-match-error-metric' \
    '{"type": "getExternalDS"}' \
    'IwMif3BOdkocVTd4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'BxqGWV6mTJ0sQs6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'NbjvqhnUVLWu8olK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"dxL6ozRmDD0jJvlf": {}, "V5OemPYdYT7DROCj": {}, "tuzFMbAG9YI89hmg": {}}, "excludedSessions": ["uB8FOTjMLo4b9rIz", "qYkEpstyVTBcrM8r", "G0rH0zcswwVeMK6M"], "latencies": {"bGIVIu8vvwLc7KY3": 41, "1WoVeJIePF8ZrQzP": 51, "7lGdMiHKxbWCYzo8": 51}, "matchPool": "1pyVwyKQLY6FEO65", "sessionID": "Rb3z7CYLM8IlsHqf", "storage": {"fnrfsGlfPaZKBwa3": {}, "Ddb60ufPpzwj1QGI": {}, "FmlVf4jvapseE9LN": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '9bvhOrHflIOd6X3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'iLvtEk4mTIpUA9gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"o8SV38nEhoXmM2W7": {}, "l6jHMA2rG3nakopA": {}, "ywelu01nryEJ0Nqo": {}}, "enable_custom_match_function": false, "name": "lOX9Sfo95HgXqKhT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'PkwfLM9uSybRzWek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"2gZvRrvr0n9d9lvc": {}, "cKMLhrTrcBE2ItBS": {}, "3KtKZWe8aoFzAyBM": {}}, "enable_custom_match_function": true, "name": "vim02jBOxrZDyvpc"}' \
    'LYOWA8NjxOnaEok4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'nOOCzfsflhjbngJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
$PYTHON -m $MODULE 'match2-public-get-player-metric' \
    'Un18G5MlfDTk8aG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
