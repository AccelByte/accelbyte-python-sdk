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
match2-get-player-metric 'L4pp2ncYAHdNzDme' --login_with_auth "Bearer foo"
match2-admin-get-match-pool-tickets 'IP6rOvDz9KOsb392' --login_with_auth "Bearer foo"
match2-create-match-ticket '{"attributes": {"k6YmJFfRByjlBiuF": {}, "M3FIoVk8T3GpAnkC": {}, "mBUqg2SCnqntX9y1": {}}, "excludedSessions": ["aZSWMiVi10sG6vxk", "fUcmqRRbceJ5i0Ee", "DxOgBnhhqElIaDml"], "latencies": {"48wdNFLTm5T50x9W": 94, "3biBfsu4jmsRE2w1": 50, "XQAk4mqrxzTtuLl4": 77}, "matchPool": "lbGL8QOxtjzm8y2w", "sessionID": "NhmwoYZyI4EFZKBc", "storage": {"YrCEAE7WIsfmx40N": {}, "LRc6m8heKnWhzfe2": {}, "NubeoKFeIaFQCYoD": {}}}' --login_with_auth "Bearer foo"
match2-get-my-match-tickets --login_with_auth "Bearer foo"
match2-match-ticket-details 'PICpnduEEQlULdJz' --login_with_auth "Bearer foo"
match2-delete-match-ticket '4mnRBkMNxvvKgAT8' --login_with_auth "Bearer foo"
match2-rule-set-list --login_with_auth "Bearer foo"
match2-create-rule-set '{"data": {"mJrYq6hRkloqxM3g": {}, "pwxcfMy9XzjjI5Yb": {}, "sKoADkzJEN2VHzih": {}}, "enable_custom_match_function": false, "name": "O86IlBhnetU4RwTq"}' --login_with_auth "Bearer foo"
match2-rule-set-details 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
match2-update-rule-set '{"data": {"yd4mbqoOfADMMAXF": {}, "aY9eKa699bRVhyaK": {}, "wwrAP2aMlu7WtjCt": {}}, "enable_custom_match_function": false, "name": "SrUTvfqU0bfoMm5c"}' 'TtFWbotQyXJRcQWs' --login_with_auth "Bearer foo"
match2-delete-rule-set 'mqPNs92epxk0i8Vx' --login_with_auth "Bearer foo"
match2-public-get-player-metric 'sZNereSvf9699mCE' --login_with_auth "Bearer foo"
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
echo "1..38"

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
    '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["hUJkETAsSp7gh4Te", "UTkOkAYfJB8AT9t4", "Tv207Y2QD3oD5fLC"], "matchAnyCommon": true, "platformGroup": {"1RSKs6gQxC3Gb7S0": ["o4zGYY7KQI1AeFgP", "qaOkvo1aolB4lkKB", "4EYOkQ1jMD3cym8x"], "IfkOVW2grREOLx0K": ["Oww3HICQLfl7MUBG", "7qtPu64yAtURKLRk", "b738HGS6rDgMdIIl"], "hS1fSiM9331m7Ta1": ["PsKc50Kv6ecnEevc", "Ax2K2zkRenmPZnGB", "t4P7WnbdSJtjX7Zs"]}}' \
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
    '{"matchPool": "hZyZl5x4bRXBHUTr", "sessionId": "DzZSKscfOcYu3dpC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
$PYTHON -m $MODULE 'match2-get-backfill-proposal' \
    'ROYqUiGKXVFCmpo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
$PYTHON -m $MODULE 'match2-get-backfill' \
    'sPwVOEDSJsEK5QpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
$PYTHON -m $MODULE 'match2-delete-backfill' \
    'hlI2iS5EpGhhvXYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
$PYTHON -m $MODULE 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["k0upMzUYnb76tFkE", "ORV3bu1bNCtX7W40", "V6Do5sYadCCFrHHC"], "proposalId": "3DpZxkrQDXuNFviM", "stop": false}' \
    'suGKHhMRWLVd3Dlh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
$PYTHON -m $MODULE 'match2-reject-backfill' \
    '{"proposalId": "LuIpomM8sm1MiaI1", "stop": false}' \
    '536ugBp3HBvepnDC' \
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
    '{"match_function": "jgyJlXe36mgWjLfF", "serviceAppName": "mteue9nzJ6fH24T8", "url": "05tVg8JqU0jZpjvs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
$PYTHON -m $MODULE 'match2-update-match-function' \
    '{"match_function": "ugAOS7u8RiWyerCS", "serviceAppName": "a8SRgwsAj1ik1jgl", "url": "aDXTvKCWwNTAhd2w"}' \
    'rS0uPdjhdinpng5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
$PYTHON -m $MODULE 'match2-delete-match-function' \
    'Ly8wbhMssAHjapIk' \
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
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 88, "backfill_ticket_expiration_seconds": 89, "best_latency_calculation_method": "JOqB5F93zFQbJndU", "crossplay_disabled": true, "match_function": "tmKy8M9zVrjfGXZn", "match_function_override": {"backfill_matches": "qAQUoY1GjlIIk0iK", "enrichment": ["oTTS1j02o7JjTXAQ", "N0qdskdQV0TqI8EF", "nmDbxIxi4YKlONk2"], "make_matches": "Q5Y4Jvaizwiilatu", "stat_codes": ["Ujjt9lIMGql5ElEa", "9EIIlGcHB3CfR3nc", "Dlwi3v3MFFJ1KesK"], "validation": ["oELCpobBEG8X645x", "pdXpai0rYaT5hOPj", "af3H0tYighU0VUfc"]}, "name": "YHJbBfAKSiPW3Vgs", "platform_group_enabled": false, "rule_set": "XiR1DJ7HVWqMkNSa", "session_template": "wQUWDFJvJBWic7Uk", "ticket_expiration_seconds": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
$PYTHON -m $MODULE 'match2-match-pool-details' \
    'JPUAc0RVwXgAgntL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
$PYTHON -m $MODULE 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 58, "backfill_ticket_expiration_seconds": 41, "best_latency_calculation_method": "deoV9Lx5RDA1l2Xc", "crossplay_disabled": true, "match_function": "CancUZGCHsZYoLfR", "match_function_override": {"backfill_matches": "1KtOv7Zy0b65uvuK", "enrichment": ["Nuy0ytZQ7M6Nzy1a", "dnSKOLFKx1dX4LuW", "Ju3pDMUAeeZ97SBR"], "make_matches": "OPYuG6XqP6oo7G73", "stat_codes": ["zdxTgOfnwIdlNa29", "fDLh741IslKHzGlL", "KWUtDQs61OQAoxyy"], "validation": ["QpRWCiiPDGQhNPEw", "iJCf2XJVrlzqQls1", "ozhLVA3kE8jKvgat"]}, "platform_group_enabled": true, "rule_set": "EBM70TdlNBJYOmpu", "session_template": "1VCarzBsV6xnZ5Jr", "ticket_expiration_seconds": 52}' \
    'ZQ7hfxnhLd3Knakn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
$PYTHON -m $MODULE 'match2-delete-match-pool' \
    'oed9DHhLOqQGhCUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
$PYTHON -m $MODULE 'match2-match-pool-metric' \
    '6iTrjyEgarAdNJOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
$PYTHON -m $MODULE 'match2-get-player-metric' \
    'G36I6tRbRcrEveMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
$PYTHON -m $MODULE 'match2-admin-get-match-pool-tickets' \
    'AdiPKDUVSC00PYeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
$PYTHON -m $MODULE 'match2-create-match-ticket' \
    '{"attributes": {"cagginxnFIna3ydd": {}, "cbsPheTH26IUJNvY": {}, "uGRUvpZaHCuESOiI": {}}, "excludedSessions": ["ZsMfB4ZH3mtgWgU4", "pCAKxeE70CaunQNx", "ot371W9G4AvQkqsG"], "latencies": {"nmyo5JJTUVmb8GEX": 64, "GpAyrIwMif3BOdko": 5, "5nodqpLm7FhJBNXz": 54}, "matchPool": "Qs6XNbjvqhnUVLWu", "sessionID": "8olKdxL6ozRmDD0j", "storage": {"JvlfV5OemPYdYT7D": {}, "ROCjtuzFMbAG9YI8": {}, "9hmguB8FOTjMLo4b": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
$PYTHON -m $MODULE 'match2-get-my-match-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
$PYTHON -m $MODULE 'match2-match-ticket-details' \
    '9rIzqYkEpstyVTBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
$PYTHON -m $MODULE 'match2-delete-match-ticket' \
    'rM8rG0rH0zcswwVe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
$PYTHON -m $MODULE 'match2-rule-set-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
$PYTHON -m $MODULE 'match2-create-rule-set' \
    '{"data": {"MK6MbGIVIu8vvwLc": {}, "7KY3uVoJXTIMtpgk": {}, "ieDyF97lGdMiHKxb": {}}, "enable_custom_match_function": true, "name": "FJtHJ1pyVwyKQLY6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
$PYTHON -m $MODULE 'match2-rule-set-details' \
    'FEO65Rb3z7CYLM8I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
$PYTHON -m $MODULE 'match2-update-rule-set' \
    '{"data": {"lsHqffnrfsGlfPaZ": {}, "KBwa3Ddb60ufPpzw": {}, "j1QGIFmlVf4jvaps": {}}, "enable_custom_match_function": false, "name": "iXZtLW87rGysryod"}' \
    '3dNQrmsApRA6HX3R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
$PYTHON -m $MODULE 'match2-delete-rule-set' \
    'wrKt2ecozL0TOg54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 PublicGetPlayerMetric
$PYTHON -m $MODULE 'match2-public-get-player-metric' \
    'vCE48L5oLF6M4lNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPlayerMetric' test.out

#- 38 VersionCheckHandler
$PYTHON -m $MODULE 'match2-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
