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
sessionhistory-create-xray-ticket-observability '{"action": "mqRBaAkLnvxkT1X6", "activeAllianceRule": {"max_number": 38, "min_number": 5, "player_max_number": 61, "player_min_number": 25}, "activeMatchingRule": [{"attribute": "BU5SepjChB3V0v52", "criteria": "Dlym6puQ23xoJ8ae", "reference": 0.4551193975257528}, {"attribute": "naLpUKp44YUDjasW", "criteria": "IPUvmEejtGeoyIPa", "reference": 0.9714507862859705}, {"attribute": "ZRrvjj7il35MXbN9", "criteria": "oCMNqq98SjTvhZNk", "reference": 0.7198194800837747}], "function": "Q70D0H6BXksUC9b6", "gameMode": "i5lZC9xv32e8c5cs", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 44, "matchID": "H7Qm8bwbmXgdAPh1", "namespace": "EThG96gAFKK2WDgC", "remainingPlayersPerTicket": [4, 71, 49], "remainingTickets": 69, "sessionTickID": "vONZm3EeERmDnyeF", "tickID": 29, "ticketID": "mVr9XuoJbRFQSKVP", "timeToMatchSec": 0.5324609803159316, "timestamp": "1971-04-23T00:00:00Z", "unbackfillReason": "g7mSQUhAEtrmjqU6", "unmatchReason": "YE3p4lSck0ZHn5GI"}' --login_with_auth "Bearer foo"
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
    '{"logLevel": "trace"}' \
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
    'vcAx2K2zkRenmPZn' \
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
    'GBt4P7WnbdSJtjX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'ZshZyZl5x4bRXBHU' \
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
    'TrDzZSKscfOcYu3d' \
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
    'pCROYqUiGKXVFCmp' \
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
    '["o6sPwVOEDSJsEK5Q", "pNhlI2iS5EpGhhvX", "Yck0upMzUYnb76tF"]' \
    'kEORV3bu1bNCtX7W' \
    '40V6Do5sYadCCFrH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    'HC3DpZxkrQDXuNFv' \
    'iMarv8mnfHK8CCmE' \
    '2lPnsbD3SGEdlwuU' \
    'ccE536ugBp3HBvep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    'nDCjgyJlXe36mgWj' \
    'LfFmteue9nzJ6fH2' \
    '4T805tVg8JqU0jZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'jvsugAOS7u8RiWye' \
    'rCSa8SRgwsAj1ik1' \
    'jglaDXTvKCWwNTAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'd2wrS0uPdjhdinpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    'g5BLy8wbhMssAHja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'pIkY9Rf4wP57dBZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    'R88YbCtmKy8M9zVr' \
    'jfGXZnqAQUoY1Gjl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    'IIk0iKoTTS1j02o7' \
    'JjTXAQN0qdskdQV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    'TqI8EFnmDbxIxi4Y' \
    'KlONk2Q5Y4Jvaizw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    'iilatuUjjt9lIMGq' \
    'l5ElEa9EIIlGcHB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'CfR3ncDlwi3v3MFF' \
    'J1KesKoELCpobBEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    '8X645xpdXpai0rYa' \
    'T5hOPjaf3H0tYigh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    'U0VUfcYHJbBfAKSi' \
    'PW3VgsZXiR1DJ7HV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'WqMkNSawQUWDFJvJ' \
    'BWic7UkBeIXuqDuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    'XI66bQ71w0deoV9L' \
    'x5RDA1l2XcrciYNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    'zvSZIPkhSgORcz5S' \
    '5BvmgBLxh4ijFnE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'Tam69qSZ7PC6f6Qk' \
    'mZXElW9YfRSse6AA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "z3S4czz0QKFlAVmV", "activeAllianceRule": {"max_number": 77, "min_number": 42, "player_max_number": 34, "player_min_number": 85}, "activeMatchingRule": [{"attribute": "AOec0z8eBeeoip68", "criteria": "J1nsv4W2OJhtafxM", "reference": 0.7201033844542121}, {"attribute": "JlHeb34sZKHcl5LL", "criteria": "LOexL4fZvWtND2tc", "reference": 0.4477703324672616}, {"attribute": "FpX8lNtFEJ7tnkY6", "criteria": "Mca5afj12K2IzrBv", "reference": 0.34120184616107097}], "function": "Wm4udE0OXudXgNne", "gameMode": "8kJATwlc6esUp6Sw", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 36, "matchID": "eZQ7hfxnhLd3Knak", "namespace": "noed9DHhLOqQGhCU", "remainingPlayersPerTicket": [35, 21, 18], "remainingTickets": 55, "sessionTickID": "TrjyEgarAdNJOIG3", "tickID": 38, "ticketID": "I6tRbRcrEveMdAdi", "timeToMatchSec": 0.667876599272256, "timestamp": "1990-10-14T00:00:00Z", "unbackfillReason": "DUVSC00PYeDcaggi", "unmatchReason": "nxnFIna3yddcbsPh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{"action": "eTH26IUJNvYuGRUv", "activeAllianceRule": {"max_number": 32, "min_number": 1, "player_max_number": 69, "player_min_number": 54}, "activeMatchingRule": [{"attribute": "CuESOiIZsMfB4ZH3", "criteria": "mtgWgU4pCAKxeE70", "reference": 0.45508650169254006}, {"attribute": "aunQNxot371W9G4A", "criteria": "vQkqsGnmyo5JJTUV", "reference": 0.2006017100355122}, {"attribute": "b8GEXFTlEMEsFzYq", "criteria": "wgK1Np5nodqpLm7F", "reference": 0.11563400876209651}], "function": "JBNXzAFdO0Khqf6k", "gameMode": "iTdSGv2LFjAKY7Cb", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 37, "matchID": "DD0jJvlfV5OemPYd", "namespace": "YT7DROCjtuzFMbAG", "remainingPlayersPerTicket": [23, 75, 71], "remainingTickets": 24, "sessionTickID": "89hmguB8FOTjMLo4", "tickID": 3, "ticketID": "omSJC4DdrKF7SUQP", "timeToMatchSec": 0.6077385491746069, "timestamp": "1987-11-11T00:00:00Z", "unbackfillReason": "59e0k5ZtX6wK7PpU", "unmatchReason": "lcIW32iK7MGt1ixY"}, {"action": "5rA1WoVeJIePF8Zr", "activeAllianceRule": {"max_number": 87, "min_number": 61, "player_max_number": 51, "player_min_number": 50}, "activeMatchingRule": [{"attribute": "P4zvtdxdbZUpd6FJ", "criteria": "tHJ1pyVwyKQLY6FE", "reference": 0.6609245438241628}, {"attribute": "65Rb3z7CYLM8IlsH", "criteria": "qffnrfsGlfPaZKBw", "reference": 0.012750739840084568}, {"attribute": "3Ddb60ufPpzwj1QG", "criteria": "IFmlVf4jvapseE9L", "reference": 0.6371790067209069}], "function": "9bvhOrHflIOd6X3v", "gameMode": "iLvtEk4mTIpUA9gx", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 4, "matchID": "SV38nEhoXmM2W7l6", "namespace": "jHMA2rG3nakopAyw", "remainingPlayersPerTicket": [10, 13, 23], "remainingTickets": 33, "sessionTickID": "u01nryEJ0NqoTow0", "tickID": 34, "ticketID": "9Sfo95HgXqKhTPkw", "timeToMatchSec": 0.0853768856182534, "timestamp": "1990-11-24T00:00:00Z", "unbackfillReason": "M9uSybRzWek2gZvR", "unmatchReason": "rvr0n9d9lvccKMLh"}, {"action": "rTrcBE2ItBS3KtKZ", "activeAllianceRule": {"max_number": 100, "min_number": 13, "player_max_number": 8, "player_min_number": 21}, "activeMatchingRule": [{"attribute": "8aoFzAyBME74HUti", "criteria": "pUWYhWV1qx8CzPML", "reference": 0.9346661131971772}, {"attribute": "2faXUr9Sk4lq2faB", "criteria": "cAXXKlhvyH8paOJt", "reference": 0.37503276835182653}, {"attribute": "qMPpcVfRwNj547fH", "criteria": "0XrKEDpEY8VnocGA", "reference": 0.14969447940092295}], "function": "ci0V3tBf2jnHGKXp", "gameMode": "hn50c9tNLDljhZ2j", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 76, "matchID": "AacR0LgB5BUXvjcu", "namespace": "2s6w3VifnKqmTSoG", "remainingPlayersPerTicket": [68, 89, 62], "remainingTickets": 66, "sessionTickID": "fY6QAYn6WQ5UBEU1", "tickID": 86, "ticketID": "VFWdsbYuVEGVxYhe", "timeToMatchSec": 0.6944201840369625, "timestamp": "1999-03-16T00:00:00Z", "unbackfillReason": "c3aZPV87pna08gxe", "unmatchReason": "fTYKhuxaEc7M4P7U"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'ckSC6ePeN8i4GrFE' \
    'S9z7xueHpATHccee' \
    '9GXhKcjmSEwdrkEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'nqKzFsLfYalUlfwE' \
    'QKjU7eHGebSVu0LQ' \
    '40kepEaC4dfiOMZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
