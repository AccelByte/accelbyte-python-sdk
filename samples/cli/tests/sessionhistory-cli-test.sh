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
sessionhistory-admin-get-log-config --login_with_auth "Bearer foo"
sessionhistory-admin-patch-update-log-config '{"logLevel": "info"}' --login_with_auth "Bearer foo"
sessionhistory-admin-query-game-session-detail --login_with_auth "Bearer foo"
sessionhistory-get-game-session-detail 'twYCA9kPI6LZrkq6' --login_with_auth "Bearer foo"
sessionhistory-admin-query-matchmaking-detail --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-session-id 'Dc09nIW0Oaiw9B0D' --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-ticket-id '7eHpzSn3ZPUdc0qh' --login_with_auth "Bearer foo"
sessionhistory-admin-query-party-detail --login_with_auth "Bearer foo"
sessionhistory-get-party-detail '4n8mzZ0m8SAMTwE6' --login_with_auth "Bearer foo"
sessionhistory-admin-query-ticket-detail --login_with_auth "Bearer foo"
sessionhistory-admin-ticket-detail-get-by-ticket-id 'I56IaRDBXxyaNoMR' --login_with_auth "Bearer foo"
sessionhistory-public-query-game-session-me --login_with_auth "Bearer foo"
sessionhistory-query-xray-match-pool '["6hkspInrAip6lyzS", "xwElFHHdgs21Jub7", "4CUkNmKJfh5pUkHO"]' 'DpoMF78NY4YkHs1c' 'nz1JSDgY1TXp38zs' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool 'CTCrbCbPOyNQkT7N' 'vyE3cwyALczNIicX' 'm7agSrjJW2OQNOs1' 'PXhT5FvdiRilZ7oF' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-matches 'gx4c8OumKtPDKJDX' 'n7Z4U68su8XfqlqN' 'iTvB6SdAdIhUDrwo' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-ticket 'Z5MecdKi5r6QEa1y' 'sLEzth6mXhzkzWkF' 'eZSoEAcBdW19m4eu' --login_with_auth "Bearer foo"
sessionhistory-query-match-histories '6d5tA5jUmiTqpyhP' --login_with_auth "Bearer foo"
sessionhistory-query-match-ticket-histories 'FdxLzFQN05MYzYiK' --login_with_auth "Bearer foo"
sessionhistory-query-xray-match 'We5dNRljv7IPrDQQ' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds 'Rgat0SevkLGMS0ly' 'uI9a2I9u6Vpbsx5w' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds-wait-time-avg '8hqUI06UpOXGSLmC' 'VuHOPlLlkvR8sKgn' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp-avg 'uRkgghGoYupD391C' '2qtPYokahFjkQsfC' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp99 'aTmt1d67FXGk2s9Q' '0mPVo3twu0MesTCf' --login_with_auth "Bearer foo"
sessionhistory-query-total-active-session '9x4rt69lna7qxNeI' 'xPz6MbwL6IY69z1U' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match 'aLqYSYWytLPziZMd' 'jxcBZufQxGiHPllG' --login_with_auth "Bearer foo"
sessionhistory-query-total-player-persession '4cYEzfTD1ZBm3MqH' 'cUmLZZbSqb8RwNmn' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-canceled '9HrNQy4uZAAiE0mi' 't9RGCCHYzUOcEdsc' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-created 'KHPEqgA8yu7Vk6Jt' '4Ymos9Jcdos4fYcT' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-expired 'VU6RBt0zYoMcHyCU' 'EXlAvxJMdalwSyli' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match-ticket 'WMNW5NyLu0M3VHh2' 'EI8JlDbPWbQ6Q9lN' --login_with_auth "Bearer foo"
sessionhistory-create-xray-ticket-observability '{"action": "mqRBaAkLnvxkT1X6", "activeAllianceRule": {"max_number": 38, "min_number": 5, "player_max_number": 61, "player_min_number": 25}, "activeMatchingRule": [{"attribute": "BU5SepjChB3V0v52", "criteria": "Dlym6puQ23xoJ8ae", "reference": 0.4551193975257528}, {"attribute": "naLpUKp44YUDjasW", "criteria": "IPUvmEejtGeoyIPa", "reference": 0.9714507862859705}, {"attribute": "ZRrvjj7il35MXbN9", "criteria": "oCMNqq98SjTvhZNk", "reference": 0.7198194800837747}], "function": "Q70D0H6BXksUC9b6", "gameMode": "i5lZC9xv32e8c5cs", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 44, "matchID": "H7Qm8bwbmXgdAPh1", "namespace": "EThG96gAFKK2WDgC", "partyID": "cxvONZm3EeERmDny", "remainingPlayersPerTicket": [9, 93, 65], "remainingTickets": 24, "sessionTickID": "oF7VSZ6pf3vneSD2", "tickID": 92, "timeToMatchSec": 0.5324609803159316, "timestamp": "1971-04-23T00:00:00Z", "unbackfillReason": "g7mSQUhAEtrmjqU6", "unmatchReason": "YE3p4lSck0ZHn5GI"}' --login_with_auth "Bearer foo"
sessionhistory-create-xray-bulk-ticket-observability '{"ticketObservabilities": [{"action": "39YBHqaTHeKtW18i", "activeAllianceRule": {"max_number": 66, "min_number": 90, "player_max_number": 8, "player_min_number": 9}, "activeMatchingRule": [{"attribute": "Ulc9d9sogWa24CKN", "criteria": "S0GqVvUfHQvsHXNU", "reference": 0.6348420236736524}, {"attribute": "e4mhgo5QB65lSAiY", "criteria": "nNjkfZrQvGgbLdLs", "reference": 0.5099714550526733}, {"attribute": "zHkBMr1yrOMlNFSr", "criteria": "UEirnjX9fDmIbeZx", "reference": 0.40600380570279226}], "function": "fTcyiuATus9hsfpF", "gameMode": "DcSDG8aMVGLiBNrD", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 34, "matchID": "byDPUIj88cekdqCt", "namespace": "81P1ktfIovmv9gsR", "partyID": "5cJcHm3SZLxoRDFu", "remainingPlayersPerTicket": [43, 11, 41], "remainingTickets": 89, "sessionTickID": "ySj29a9LJE8HoRS1", "tickID": 93, "timeToMatchSec": 0.872423975886736, "timestamp": "1992-09-24T00:00:00Z", "unbackfillReason": "FAAMwzHPxB1UskYs", "unmatchReason": "4Yw20DOqOBSC2DKH"}, {"action": "RuPMMWH8Yb33T5UB", "activeAllianceRule": {"max_number": 73, "min_number": 59, "player_max_number": 16, "player_min_number": 18}, "activeMatchingRule": [{"attribute": "0EeDxOgBnhhqElIa", "criteria": "Dml48wdNFLTm5T50", "reference": 0.37927665068826366}, {"attribute": "9WT0GfH2rtOa4EXs", "criteria": "XzOXQAk4mqrxzTtu", "reference": 0.5993199707315985}, {"attribute": "l4XlbGL8QOxtjzm8", "criteria": "y2wNhmwoYZyI4EFZ", "reference": 0.5951721051506312}], "function": "BcYrCEAE7WIsfmx4", "gameMode": "0NLRc6m8heKnWhzf", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 80, "matchID": "LNUj7fdgLA84Z8YY", "namespace": "k6QEgJjBbEDoNf3n", "partyID": "0hEoRCAcf80zfFya", "remainingPlayersPerTicket": [2, 72, 36], "remainingTickets": 55, "sessionTickID": "Yq6hRkloqxM3gpwx", "tickID": 4, "timeToMatchSec": 0.5806026763521945, "timestamp": "1990-03-12T00:00:00Z", "unbackfillReason": "y9XzjjI5YbsKoADk", "unmatchReason": "zJEN2VHzih3bit0V"}, {"action": "Wn3CO39PXDNxtXge", "activeAllianceRule": {"max_number": 83, "min_number": 55, "player_max_number": 52, "player_min_number": 64}, "activeMatchingRule": [{"attribute": "OuYsaZA2yyd4mbqo", "criteria": "OfADMMAXFaY9eKa6", "reference": 0.989467959432694}, {"attribute": "9bRVhyaKwwrAP2aM", "criteria": "lu7WtjCtoYetOO84", "reference": 0.9659389693373039}, {"attribute": "g8OudOfjnCuHZ3c4", "criteria": "6IjGa23YvYmmDg7V", "reference": 0.8132964251532852}], "function": "PXIuvUYTZBRujIUE", "gameMode": "1Tq5jyAZvkRCMNFI", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 32, "matchID": "jh2imdb4rbkXj0Zw", "namespace": "sVC0gL97ZVJSPqJi", "partyID": "wv1qlYB1RSKs6gQx", "remainingPlayersPerTicket": [58, 68, 64], "remainingTickets": 67, "sessionTickID": "7uYnGzpipNDigNJm", "tickID": 1, "timeToMatchSec": 0.07667688176998944, "timestamp": "1987-11-14T00:00:00Z", "unbackfillReason": "gPqaOkvo1aolB4lk", "unmatchReason": "KB4EYOkQ1jMD3cym"}]}' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-ticket-id '8xIfkOVW2grREOLx' '0KOww3HICQLfl7MU' 'BG7qtPu64yAtURKL' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-user-id 'Rkb738HGS6rDgMdI' 'IlhS1fSiM9331m7T' 'a1PsKc50Kv6ecnEe' --login_with_auth "Bearer foo"
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
echo "1..37"

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

#- 4 AdminGetLogConfig
$PYTHON -m $MODULE 'sessionhistory-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'sessionhistory-admin-patch-update-log-config' \
    '{"logLevel": "fatal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-game-session-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-get-game-session-detail' \
    'oIXimBJehyxlNsjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-matchmaking-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-session-id' \
    'gxBkF6wFPoJeQedi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'ogEhhM2rIizGdKvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-party-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
$PYTHON -m $MODULE 'sessionhistory-get-party-detail' \
    'Pdq5xrgxSmy1DN9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-ticket-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-ticket-detail-get-by-ticket-id' \
    'FkYW5DQyj4bj5Ro2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
$PYTHON -m $MODULE 'sessionhistory-public-query-game-session-me' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-xray-match-pool' \
    '["ogaKt2ujQSa3Zdb6", "5UXmy0Zp6iIaTIKU", "kmkk9QM0NBMA9ORx"]' \
    'pzwLR2AK6eXUGPJs' \
    'w1fiP80G9Pclxcft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    '2ulIJzPyrVEiOG4U' \
    'cqsuGKHhMRWLVd3D' \
    'lhLuIpomM8sm1Mia' \
    'I1mX2tJoARtdbBe7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    'udsMrok0WvGYYnx4' \
    'V709xbnGezKsDwG2' \
    'omOR2nvYI9TVqJdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'zcWbfUpaXp5JMl5L' \
    'L4bTxBmZjdrrIxsB' \
    '0NRsB1fPqqRRulpq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'pymDkQhtrHWwRVnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    'VBOqOHi8pWGd1juY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'hiqjRJOqB5F93zFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    'bJndUDpdONneAczb' \
    'BdHb2slt71B1SmZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    '2JZp50CnPb71ORYc' \
    'mQbTU5JX8ccLjMXJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    'Rk0eaKQDOJvrTefg' \
    'lSs6g4iY9u02aCNY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    'IWekp18lOC3mNqF7' \
    'Bl0LcghVHfPEspxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'hRON0bc1eMbEIjow' \
    'Lqc3ecjXJbZDKKox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    'LE1Y3Dymtj3giPg4' \
    'x4yiPX6ues1Hhhkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    '1yLVbLFzHEP8cM4N' \
    'Twr0KHaAsmTej52W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'Ki6tArAURt9plCSV' \
    'q8PdH6hJPUAc0RVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    'XgAgntLMCuaXBWQi' \
    '6BqPg4xr0lCancUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    'GCHsZYoLfR1KtOv7' \
    'Zy0b65uvuKNuy0yt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'ZQ7M6Nzy1adnSKOL' \
    'FKx1dX4LuWJu3pDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "UAeeZ97SBROPYuG6", "activeAllianceRule": {"max_number": 42, "min_number": 34, "player_max_number": 85, "player_min_number": 53}, "activeMatchingRule": [{"attribute": "6oo7G73zdxTgOfnw", "criteria": "IdlNa29fDLh741Is", "reference": 0.18655487575717689}, {"attribute": "KHzGlLKWUtDQs61O", "criteria": "QAoxyyQpRWCiiPDG", "reference": 0.6895604916783981}, {"attribute": "hNPEwiJCf2XJVrlz", "criteria": "qQls1ozhLVA3kE8j", "reference": 0.5811444728258598}], "function": "vgatOEBM70TdlNBJ", "gameMode": "YOmpu1VCarzBsV6x", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 36, "matchID": "eZQ7hfxnhLd3Knak", "namespace": "noed9DHhLOqQGhCU", "partyID": "r6iTrjyEgarAdNJO", "remainingPlayersPerTicket": [71, 71, 67], "remainingTickets": 29, "sessionTickID": "36I6tRbRcrEveMdA", "tickID": 7, "timeToMatchSec": 0.1772243614135025, "timestamp": "1986-12-05T00:00:00Z", "unbackfillReason": "TJyTlUrwDTnoujQD", "unmatchReason": "4IEiH9Z5qXn3aoRt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{"action": "lqOECohViHA5CzgF", "activeAllianceRule": {"max_number": 92, "min_number": 43, "player_max_number": 50, "player_min_number": 32}, "activeMatchingRule": [{"attribute": "8X1A3PrIfapq5AAe", "criteria": "Me4L3mDWORBVXTII", "reference": 0.5780930630323681}, {"attribute": "M9XsYIIZxiXNMR9B", "criteria": "gaWcFX3SUBhyoTsM", "reference": 0.7863833213371613}, {"attribute": "PAxUMkawaGpAyrIw", "criteria": "Mif3BOdkocVTd4Bx", "reference": 0.2726112098142188}], "function": "GWV6mTJ0sQs6XNbj", "gameMode": "vqhnUVLWu8olKdxL", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 52, "matchID": "bgsWqFWZX7kPBom8", "namespace": "F9GLLTG8phc3n4iL", "partyID": "oIllKlpO2pqiXJF3", "remainingPlayersPerTicket": [99, 20, 67], "remainingTickets": 79, "sessionTickID": "RaoQomSJC4DdrKF7", "tickID": 91, "timeToMatchSec": 0.7676971983689075, "timestamp": "1994-12-14T00:00:00Z", "unbackfillReason": "BcrM8rG0rH0zcsww", "unmatchReason": "VeMK6MbGIVIu8vvw"}, {"action": "Lc7KY3uVoJXTIMtp", "activeAllianceRule": {"max_number": 13, "min_number": 21, "player_max_number": 16, "player_min_number": 36}, "activeMatchingRule": [{"attribute": "eDyF97lGdMiHKxbW", "criteria": "CYzo8yO2KTK9tmmO", "reference": 0.21017548815304687}, {"attribute": "YnOpas6ghP1y4Zi7", "criteria": "s7QBlk44Z44B1GZg", "reference": 0.5816672924988265}, {"attribute": "g4uKxaCgcGLuC3br", "criteria": "WdTYCfHkIySok5Di", "reference": 0.802393011722238}], "function": "ZtLW87rGysryod3d", "gameMode": "NQrmsApRA6HX3Rwr", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 48, "matchID": "2ecozL0TOg54vCE4", "namespace": "8L5oLF6M4lNa4JUM", "partyID": "SHNgqRqCV7usamAN", "remainingPlayersPerTicket": [21, 94, 30], "remainingTickets": 22, "sessionTickID": "w0qiOiC4j0iktm0Z", "tickID": 85, "timeToMatchSec": 0.17700782124155712, "timestamp": "1982-03-27T00:00:00Z", "unbackfillReason": "fLM9uSybRzWek2gZ", "unmatchReason": "vRrvr0n9d9lvccKM"}, {"action": "LhrTrcBE2ItBS3Kt", "activeAllianceRule": {"max_number": 74, "min_number": 78, "player_max_number": 100, "player_min_number": 13}, "activeMatchingRule": [{"attribute": "e8aoFzAyBME74HUt", "criteria": "ipUWYhWV1qx8CzPM", "reference": 0.6019628766540421}, {"attribute": "52faXUr9Sk4lq2fa", "criteria": "BcAXXKlhvyH8paOJ", "reference": 0.31524600969437355}, {"attribute": "xqMPpcVfRwNj547f", "criteria": "H0XrKEDpEY8VnocG", "reference": 0.42948707340141545}], "function": "jci0V3tBf2jnHGKX", "gameMode": "phn50c9tNLDljhZ2", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 48, "matchID": "fAacR0LgB5BUXvjc", "namespace": "u2s6w3VifnKqmTSo", "partyID": "GH1XEfY6QAYn6WQ5", "remainingPlayersPerTicket": [95, 56, 62], "remainingTickets": 43, "sessionTickID": "U1QAOHfZiGhxOdcu", "tickID": 60, "timeToMatchSec": 0.12326794709619093, "timestamp": "1973-12-22T00:00:00Z", "unbackfillReason": "xSc3aZPV87pna08g", "unmatchReason": "xefTYKhuxaEc7M4P"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    '7UckSC6ePeN8i4Gr' \
    'FES9z7xueHpATHcc' \
    'ee9GXhKcjmSEwdrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'EnnqKzFsLfYalUlf' \
    'wEQKjU7eHGebSVu0' \
    'LQ40kepEaC4dfiOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
