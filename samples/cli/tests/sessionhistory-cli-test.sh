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
sessionhistory-get-healthcheck-info --login_with_auth "Bearer foo"
sessionhistory-get-healthcheck-info-v1 --login_with_auth "Bearer foo"
sessionhistory-admin-get-env-config --login_with_auth "Bearer foo"
sessionhistory-admin-patch-update-env-config '{"SESSION_DELETION_GRACE_PERIOD": 62}' --login_with_auth "Bearer foo"
sessionhistory-admin-get-log-config --login_with_auth "Bearer foo"
sessionhistory-admin-patch-update-log-config '{"logLevel": "fatal"}' --login_with_auth "Bearer foo"
sessionhistory-admin-query-game-session-detail --login_with_auth "Bearer foo"
sessionhistory-get-game-session-detail 'AxcVpFrttufHIRdH' --login_with_auth "Bearer foo"
sessionhistory-admin-query-matchmaking-detail --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-session-id '9UzVRiXbqlAw7r6W' --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-ticket-id '2ktQG0h5JAav5kRa' --login_with_auth "Bearer foo"
sessionhistory-admin-query-party-detail --login_with_auth "Bearer foo"
sessionhistory-get-party-detail '62WopBJHPtcDs8bB' --login_with_auth "Bearer foo"
sessionhistory-admin-query-ticket-detail --login_with_auth "Bearer foo"
sessionhistory-admin-ticket-detail-get-by-ticket-id 'ZLCXLx8bbgorQeFb' --login_with_auth "Bearer foo"
sessionhistory-public-query-game-session-me --login_with_auth "Bearer foo"
sessionhistory-query-xray-match-pool '["Q1g7qbPngUNB1vRo", "dwpzS6DaDpv8N7ZQ", "VqGj6oDLjWjkY1aX"]' 'lFcDtgOjchIua5tW' 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool 'hRTcPiSuL0Sly6XM' '4OI18mAQLnzjMf8G' 'Z2WBZqxYG3aREAu2' 'D6QVKNCWP75TB0i7' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-matches 'pKxR8dl0zRVW4EZG' '9m0XcgGVbMqSszE8' 'GHavj7AorKsxwkos' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-ticket 'AVerXpc1C8XfwHuK' 'eb9l3rGN9A3sNm84' 'hddSpHt0P7MIIR7C' --login_with_auth "Bearer foo"
sessionhistory-query-match-histories 'kyF6C7duuyZ0GhDo' --login_with_auth "Bearer foo"
sessionhistory-query-match-ticket-histories 'gqrhBRd8lDR6qVNP' --login_with_auth "Bearer foo"
sessionhistory-query-xray-match 'RZYdFLIAjGGJddVC' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds 'vu9vx5KQ7KYnIuMB' 'vaO35llzQRaT5kPx' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds-wait-time-avg 'UfofvnnSuB0y5WUl' 'rMdI4sNveabntBSx' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp-avg 'TeIv53HGCiljvjKo' 'yD6SCwGrncqmLtjQ' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp99 'HAf8TgoNm03VLisV' '6zwPuo3td6TC6I3l' --login_with_auth "Bearer foo"
sessionhistory-query-total-active-session 'MjGSWN2laRlxfcjH' 'fYakUCTqGkE7wcWf' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match 'DslpJSqGAXQ0yYoN' 'RKd3IL5TAQ6iiPlS' --login_with_auth "Bearer foo"
sessionhistory-query-total-player-persession 'C2uE4o5Vwdo3fePq' 'IJA8IHtrkmu0hpDD' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-canceled 'WVAla2l5BYNtIuS5' 'S5XUdjsoqwGyzzWi' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-created '9gwQYv7t1o7TTr1D' 'mrhZv15T7quIOvBM' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-expired 'caYmvCkGZ5dAgqxp' 'BFmaLoxozr6wfNPX' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match-ticket '2bOItRMvqtlB2jJC' 'SQT279ZZPYGu0rdl' --login_with_auth "Bearer foo"
sessionhistory-create-xray-ticket-observability '{"action": "gdWyOtXi3choQrpO", "activeAllianceRule": {"max_number": 38, "min_number": 5, "player_max_number": 61, "player_min_number": 25}, "activeMatchingRule": [{"attribute": "BU5SepjChB3V0v52", "criteria": "Dlym6puQ23xoJ8ae", "reference": 0.4551193975257528}, {"attribute": "naLpUKp44YUDjasW", "criteria": "IPUvmEejtGeoyIPa", "reference": 0.9714507862859705}, {"attribute": "ZRrvjj7il35MXbN9", "criteria": "oCMNqq98SjTvhZNk", "reference": 0.7198194800837747}], "function": "Q70D0H6BXksUC9b6", "gameMode": "i5lZC9xv32e8c5cs", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 44, "matchID": "H7Qm8bwbmXgdAPh1", "namespace": "EThG96gAFKK2WDgC", "remainingPlayersPerTicket": [4, 71, 49], "remainingTickets": 69, "sessionTickID": "vONZm3EeERmDnyeF", "tickID": 29, "ticketID": "mVr9XuoJbRFQSKVP", "timeToMatchSec": 0.5324609803159316, "timestamp": "1971-04-23T00:00:00Z", "unbackfillReason": "g7mSQUhAEtrmjqU6", "unmatchReason": "YE3p4lSck0ZHn5GI"}' --login_with_auth "Bearer foo"
sessionhistory-create-xray-bulk-ticket-observability '{"ticketObservabilities": [{"action": "39YBHqaTHeKtW18i", "activeAllianceRule": {"max_number": 66, "min_number": 90, "player_max_number": 8, "player_min_number": 9}, "activeMatchingRule": [{"attribute": "Ulc9d9sogWa24CKN", "criteria": "S0GqVvUfHQvsHXNU", "reference": 0.6348420236736524}, {"attribute": "e4mhgo5QB65lSAiY", "criteria": "nNjkfZrQvGgbLdLs", "reference": 0.5099714550526733}, {"attribute": "zHkBMr1yrOMlNFSr", "criteria": "UEirnjX9fDmIbeZx", "reference": 0.40600380570279226}], "function": "fTcyiuATus9hsfpF", "gameMode": "DcSDG8aMVGLiBNrD", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 34, "matchID": "byDPUIj88cekdqCt", "namespace": "81P1ktfIovmv9gsR", "remainingPlayersPerTicket": [61, 5, 52], "remainingTickets": 74, "sessionTickID": "9KOsb392k6YmJFfR", "tickID": 56, "ticketID": "Sj29a9LJE8HoRS1X", "timeToMatchSec": 0.872423975886736, "timestamp": "1992-09-24T00:00:00Z", "unbackfillReason": "FAAMwzHPxB1UskYs", "unmatchReason": "4Yw20DOqOBSC2DKH"}, {"action": "RuPMMWH8Yb33T5UB", "activeAllianceRule": {"max_number": 73, "min_number": 59, "player_max_number": 16, "player_min_number": 18}, "activeMatchingRule": [{"attribute": "0EeDxOgBnhhqElIa", "criteria": "Dml48wdNFLTm5T50", "reference": 0.37927665068826366}, {"attribute": "9WT0GfH2rtOa4EXs", "criteria": "XzOXQAk4mqrxzTtu", "reference": 0.5993199707315985}, {"attribute": "l4XlbGL8QOxtjzm8", "criteria": "y2wNhmwoYZyI4EFZ", "reference": 0.5951721051506312}], "function": "BcYrCEAE7WIsfmx4", "gameMode": "0NLRc6m8heKnWhzf", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 80, "matchID": "LNUj7fdgLA84Z8YY", "namespace": "k6QEgJjBbEDoNf3n", "remainingPlayersPerTicket": [25, 15, 26], "remainingTickets": 62, "sessionTickID": "RBkMNxvvKgAT8mJr", "tickID": 12, "ticketID": "q6hRkloqxM3gpwxc", "timeToMatchSec": 0.09071089319764247, "timestamp": "1990-03-12T00:00:00Z", "unbackfillReason": "y9XzjjI5YbsKoADk", "unmatchReason": "zJEN2VHzih3bit0V"}, {"action": "Wn3CO39PXDNxtXge", "activeAllianceRule": {"max_number": 83, "min_number": 55, "player_max_number": 52, "player_min_number": 64}, "activeMatchingRule": [{"attribute": "OuYsaZA2yyd4mbqo", "criteria": "OfADMMAXFaY9eKa6", "reference": 0.989467959432694}, {"attribute": "9bRVhyaKwwrAP2aM", "criteria": "lu7WtjCtoYetOO84", "reference": 0.9659389693373039}, {"attribute": "g8OudOfjnCuHZ3c4", "criteria": "6IjGa23YvYmmDg7V", "reference": 0.8132964251532852}], "function": "PXIuvUYTZBRujIUE", "gameMode": "1Tq5jyAZvkRCMNFI", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 32, "matchID": "jh2imdb4rbkXj0Zw", "namespace": "sVC0gL97ZVJSPqJi", "remainingPlayersPerTicket": [45, 29, 45], "remainingTickets": 61, "sessionTickID": "1qlYB1RSKs6gQxC3", "tickID": 67, "ticketID": "7uYnGzpipNDigNJm", "timeToMatchSec": 0.012702406024015511, "timestamp": "1998-09-11T00:00:00Z", "unbackfillReason": "MbqqZtfNWql4nmwA", "unmatchReason": "ft4gqkNNlWkD9eOz"}]}' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-ticket-id 'iYRFOn0jJLHC9Lxh' 'vNXTwGBCtohLtl9Z' 'uhytm5UDrT6QXCs5' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-user-id 'SPBbRPZTF6oQAXVG' '7tnsZg5QgXjvyGJP' 'N4eXbJE5Vs2Gcyom' --login_with_auth "Bearer foo"
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
$PYTHON -m $MODULE 'sessionhistory-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'sessionhistory-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetEnvConfig
$PYTHON -m $MODULE 'sessionhistory-admin-get-env-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetEnvConfig' test.out

#- 5 AdminPatchUpdateEnvConfig
$PYTHON -m $MODULE 'sessionhistory-admin-patch-update-env-config' \
    '{"SESSION_DELETION_GRACE_PERIOD": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateEnvConfig' test.out

#- 6 AdminGetLogConfig
$PYTHON -m $MODULE 'sessionhistory-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetLogConfig' test.out

#- 7 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'sessionhistory-admin-patch-update-log-config' \
    '{"logLevel": "fatal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminPatchUpdateLogConfig' test.out

#- 8 AdminQueryGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-game-session-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryGameSessionDetail' test.out

#- 9 GetGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-get-game-session-detail' \
    'oIXimBJehyxlNsjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetGameSessionDetail' test.out

#- 10 AdminQueryMatchmakingDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-matchmaking-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryMatchmakingDetail' test.out

#- 11 AdminGetMatchmakingDetailBySessionID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-session-id' \
    'gxBkF6wFPoJeQedi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetMatchmakingDetailBySessionID' test.out

#- 12 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'ogEhhM2rIizGdKvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetMatchmakingDetailByTicketID' test.out

#- 13 AdminQueryPartyDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-party-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryPartyDetail' test.out

#- 14 GetPartyDetail
$PYTHON -m $MODULE 'sessionhistory-get-party-detail' \
    'Pdq5xrgxSmy1DN9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetPartyDetail' test.out

#- 15 AdminQueryTicketDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-ticket-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryTicketDetail' test.out

#- 16 AdminTicketDetailGetByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-ticket-detail-get-by-ticket-id' \
    'FkYW5DQyj4bj5Ro2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminTicketDetailGetByTicketID' test.out

#- 17 PublicQueryGameSessionMe
$PYTHON -m $MODULE 'sessionhistory-public-query-game-session-me' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicQueryGameSessionMe' test.out

#- 18 QueryXrayMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-xray-match-pool' \
    '["ogaKt2ujQSa3Zdb6", "5UXmy0Zp6iIaTIKU", "kmkk9QM0NBMA9ORx"]' \
    'pzwLR2AK6eXUGPJs' \
    'w1fiP80G9Pclxcft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryXrayMatchPool' test.out

#- 19 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    '2ulIJzPyrVEiOG4U' \
    'cqsuGKHhMRWLVd3D' \
    'lhLuIpomM8sm1Mia' \
    'I1mX2tJoARtdbBe7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPool' test.out

#- 20 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    'udsMrok0WvGYYnx4' \
    'V709xbnGezKsDwG2' \
    'omOR2nvYI9TVqJdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryDetailTickMatchPoolMatches' test.out

#- 21 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'zcWbfUpaXp5JMl5L' \
    'L4bTxBmZjdrrIxsB' \
    '0NRsB1fPqqRRulpq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryDetailTickMatchPoolTicket' test.out

#- 22 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'pymDkQhtrHWwRVnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchHistories' test.out

#- 23 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    'VBOqOHi8pWGd1juY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchTicketHistories' test.out

#- 24 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'hiqjRJOqB5F93zFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryXrayMatch' test.out

#- 25 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    'bJndUDpdONneAczb' \
    'BdHb2slt71B1SmZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryAcquiringDS' test.out

#- 26 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    '2JZp50CnPb71ORYc' \
    'mQbTU5JX8ccLjMXJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryAcquiringDSWaitTimeAvg' test.out

#- 27 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    'Rk0eaKQDOJvrTefg' \
    'lSs6g4iY9u02aCNY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryMatchLengthDurationpAvg' test.out

#- 28 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    'IWekp18lOC3mNqF7' \
    'Bl0LcghVHfPEspxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryMatchLengthDurationp99' test.out

#- 29 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'hRON0bc1eMbEIjow' \
    'Lqc3ecjXJbZDKKox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalActiveSession' test.out

#- 30 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    'LE1Y3Dymtj3giPg4' \
    'x4yiPX6ues1Hhhkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatch' test.out

#- 31 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    '1yLVbLFzHEP8cM4N' \
    'Twr0KHaAsmTej52W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalPlayerPersession' test.out

#- 32 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'Ki6tArAURt9plCSV' \
    'q8PdH6hJPUAc0RVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingCanceled' test.out

#- 33 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    'XgAgntLMCuaXBWQi' \
    '6BqPg4xr0lCancUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingCreated' test.out

#- 34 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    'GCHsZYoLfR1KtOv7' \
    'Zy0b65uvuKNuy0yt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'QueryTotalMatchmakingExpired' test.out

#- 35 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'ZQ7M6Nzy1adnSKOL' \
    'FKx1dX4LuWJu3pDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryTotalMatchmakingMatchTicket' test.out

#- 36 CreateXrayTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "UAeeZ97SBROPYuG6", "activeAllianceRule": {"max_number": 42, "min_number": 34, "player_max_number": 85, "player_min_number": 53}, "activeMatchingRule": [{"attribute": "6oo7G73zdxTgOfnw", "criteria": "IdlNa29fDLh741Is", "reference": 0.18655487575717689}, {"attribute": "KHzGlLKWUtDQs61O", "criteria": "QAoxyyQpRWCiiPDG", "reference": 0.6895604916783981}, {"attribute": "hNPEwiJCf2XJVrlz", "criteria": "qQls1ozhLVA3kE8j", "reference": 0.5811444728258598}], "function": "vgatOEBM70TdlNBJ", "gameMode": "YOmpu1VCarzBsV6x", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 36, "matchID": "eZQ7hfxnhLd3Knak", "namespace": "noed9DHhLOqQGhCU", "remainingPlayersPerTicket": [35, 21, 18], "remainingTickets": 55, "sessionTickID": "TrjyEgarAdNJOIG3", "tickID": 38, "ticketID": "I6tRbRcrEveMdAdi", "timeToMatchSec": 0.667876599272256, "timestamp": "1990-10-14T00:00:00Z", "unbackfillReason": "DUVSC00PYeDcaggi", "unmatchReason": "nxnFIna3yddcbsPh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateXrayTicketObservability' test.out

#- 37 CreateXrayBulkTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{"action": "eTH26IUJNvYuGRUv", "activeAllianceRule": {"max_number": 32, "min_number": 1, "player_max_number": 69, "player_min_number": 54}, "activeMatchingRule": [{"attribute": "CuESOiIZsMfB4ZH3", "criteria": "mtgWgU4pCAKxeE70", "reference": 0.45508650169254006}, {"attribute": "aunQNxot371W9G4A", "criteria": "vQkqsGnmyo5JJTUV", "reference": 0.2006017100355122}, {"attribute": "b8GEXFTlEMEsFzYq", "criteria": "wgK1Np5nodqpLm7F", "reference": 0.11563400876209651}], "function": "JBNXzAFdO0Khqf6k", "gameMode": "iTdSGv2LFjAKY7Cb", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 37, "matchID": "DD0jJvlfV5OemPYd", "namespace": "YT7DROCjtuzFMbAG", "remainingPlayersPerTicket": [23, 75, 71], "remainingTickets": 24, "sessionTickID": "89hmguB8FOTjMLo4", "tickID": 3, "ticketID": "omSJC4DdrKF7SUQP", "timeToMatchSec": 0.6077385491746069, "timestamp": "1987-11-11T00:00:00Z", "unbackfillReason": "59e0k5ZtX6wK7PpU", "unmatchReason": "lcIW32iK7MGt1ixY"}, {"action": "5rA1WoVeJIePF8Zr", "activeAllianceRule": {"max_number": 87, "min_number": 61, "player_max_number": 51, "player_min_number": 50}, "activeMatchingRule": [{"attribute": "P4zvtdxdbZUpd6FJ", "criteria": "tHJ1pyVwyKQLY6FE", "reference": 0.6609245438241628}, {"attribute": "65Rb3z7CYLM8IlsH", "criteria": "qffnrfsGlfPaZKBw", "reference": 0.012750739840084568}, {"attribute": "3Ddb60ufPpzwj1QG", "criteria": "IFmlVf4jvapseE9L", "reference": 0.6371790067209069}], "function": "9bvhOrHflIOd6X3v", "gameMode": "iLvtEk4mTIpUA9gx", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 4, "matchID": "SV38nEhoXmM2W7l6", "namespace": "jHMA2rG3nakopAyw", "remainingPlayersPerTicket": [10, 13, 23], "remainingTickets": 33, "sessionTickID": "u01nryEJ0NqoTow0", "tickID": 34, "ticketID": "9Sfo95HgXqKhTPkw", "timeToMatchSec": 0.0853768856182534, "timestamp": "1990-11-24T00:00:00Z", "unbackfillReason": "M9uSybRzWek2gZvR", "unmatchReason": "rvr0n9d9lvccKMLh"}, {"action": "rTrcBE2ItBS3KtKZ", "activeAllianceRule": {"max_number": 100, "min_number": 13, "player_max_number": 8, "player_min_number": 21}, "activeMatchingRule": [{"attribute": "8aoFzAyBME74HUti", "criteria": "pUWYhWV1qx8CzPML", "reference": 0.9346661131971772}, {"attribute": "2faXUr9Sk4lq2faB", "criteria": "cAXXKlhvyH8paOJt", "reference": 0.37503276835182653}, {"attribute": "qMPpcVfRwNj547fH", "criteria": "0XrKEDpEY8VnocGA", "reference": 0.14969447940092295}], "function": "ci0V3tBf2jnHGKXp", "gameMode": "hn50c9tNLDljhZ2j", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 76, "matchID": "AacR0LgB5BUXvjcu", "namespace": "2s6w3VifnKqmTSoG", "remainingPlayersPerTicket": [68, 89, 62], "remainingTickets": 66, "sessionTickID": "fY6QAYn6WQ5UBEU1", "tickID": 86, "ticketID": "VFWdsbYuVEGVxYhe", "timeToMatchSec": 0.6944201840369625, "timestamp": "1999-03-16T00:00:00Z", "unbackfillReason": "c3aZPV87pna08gxe", "unmatchReason": "fTYKhuxaEc7M4P7U"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateXrayBulkTicketObservability' test.out

#- 38 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'ckSC6ePeN8i4GrFE' \
    'S9z7xueHpATHccee' \
    '9GXhKcjmSEwdrkEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryXrayTimelineByTicketID' test.out

#- 39 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'nqKzFsLfYalUlfwE' \
    'QKjU7eHGebSVu0LQ' \
    '40kepEaC4dfiOMZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
