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
sessionhistory-query-xray-match-pool '6hkspInrAip6lyzS' 'xwElFHHdgs21Jub7' '4CUkNmKJfh5pUkHO' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool 'DpoMF78NY4YkHs1c' 'nz1JSDgY1TXp38zs' 'CTCrbCbPOyNQkT7N' 'vyE3cwyALczNIicX' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-matches 'm7agSrjJW2OQNOs1' 'PXhT5FvdiRilZ7oF' 'gx4c8OumKtPDKJDX' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-ticket 'n7Z4U68su8XfqlqN' 'iTvB6SdAdIhUDrwo' 'Z5MecdKi5r6QEa1y' --login_with_auth "Bearer foo"
sessionhistory-query-match-histories 'sLEzth6mXhzkzWkF' --login_with_auth "Bearer foo"
sessionhistory-query-match-ticket-histories 'eZSoEAcBdW19m4eu' --login_with_auth "Bearer foo"
sessionhistory-query-xray-match '6d5tA5jUmiTqpyhP' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds 'FdxLzFQN05MYzYiK' 'We5dNRljv7IPrDQQ' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds-wait-time-avg 'Rgat0SevkLGMS0ly' 'uI9a2I9u6Vpbsx5w' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp-avg '8hqUI06UpOXGSLmC' 'VuHOPlLlkvR8sKgn' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp99 'uRkgghGoYupD391C' '2qtPYokahFjkQsfC' --login_with_auth "Bearer foo"
sessionhistory-query-total-active-session 'aTmt1d67FXGk2s9Q' '0mPVo3twu0MesTCf' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match '9x4rt69lna7qxNeI' 'xPz6MbwL6IY69z1U' --login_with_auth "Bearer foo"
sessionhistory-query-total-player-persession 'aLqYSYWytLPziZMd' 'jxcBZufQxGiHPllG' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-canceled '4cYEzfTD1ZBm3MqH' 'cUmLZZbSqb8RwNmn' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-created '9HrNQy4uZAAiE0mi' 't9RGCCHYzUOcEdsc' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-expired 'KHPEqgA8yu7Vk6Jt' '4Ymos9Jcdos4fYcT' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match-ticket 'VU6RBt0zYoMcHyCU' 'EXlAvxJMdalwSyli' --login_with_auth "Bearer foo"
sessionhistory-create-xray-ticket-observability '{"action": "WMNW5NyLu0M3VHh2", "activeAllianceRule": {"max_number": 61, "min_number": 92, "player_max_number": 70, "player_min_number": 86}, "activeMatchingRule": [{"attribute": "8JlDbPWbQ6Q9lNmq", "criteria": "RBaAkLnvxkT1X68c", "reference": 0.19766543389055458}, {"attribute": "Dc3fxU8MyKrQpM4h", "criteria": "kkK6KKXNB3Gv0Iqm", "reference": 0.5046353728477166}, {"attribute": "51TkhjYnaq6foWvX", "criteria": "a3bMrXsDr6kILsSS", "reference": 0.39911652978498113}], "function": "DdmykmoPYgc2L4jk", "gameMode": "4Lo0LSP0pf4IxjUk", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 69, "matchID": "ateEKDpADz1x3poD", "namespace": "3Qgb3boLQQ1MzH7Q", "partyID": "m8bwbmXgdAPh1ETh", "remainingPlayersPerTicket": [67, 13, 87], "remainingTickets": 55, "sessionTickID": "ZxfgPubTDIHrvqAT", "tickID": 16, "timeToMatchSec": 0.4937779406724534, "timestamp": "1973-07-02T00:00:00Z", "unbackfillReason": "ERmDnyeFoF7VSZ6p", "unmatchReason": "f3vneSD2Tb3g7mSQ"}' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-ticket-id 'UhAEtrmjqU6YE3p4' 'lSck0ZHn5GI39YBH' 'qaTHeKtW18iGeUlc' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-user-id '9d9sogWa24CKNS0G' 'qVvUfHQvsHXNUNe4' 'mhgo5QB65lSAiYnN' --login_with_auth "Bearer foo"
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
echo "1..36"

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
    '{"logLevel": "error"}' \
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
    'lxqMrj3oZk03QXcK' \
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
    'MDYDDxHSZjtqXyJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    '8f7Gc26SaiGVkydw' \
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
    'YWQG26yUZNmTBcvr' \
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
    'bYCwZtxFHyPLtI8i' \
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
    'lbyDPUIj88cekdqC' \
    't81P1ktfIovmv9gs' \
    'R5cJcHm3SZLxoRDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    'uuuySj29a9LJE8Ho' \
    'RS1X2PFAAMwzHPxB' \
    '1UskYs4Yw20DOqOB' \
    'SC2DKHRuPMMWH8Yb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    '33T5UBJCjfcnLRfx' \
    'eCSz9WEi8KlloeH0' \
    'JT1yduat2vQR3biB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'fsu4jmsRE2w1yEkL' \
    'gh3tIYt4SqYUTLDx' \
    '9gIiDandpGT2t24a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'OMh5eC3IHeHSKLCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    '3xreNDUWehwH3q31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'A806DJgas4b6z3LN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    'Uj7fdgLA84Z8YYk6' \
    'QEgJjBbEDoNf3n0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    'EoRCAcf80zfFyabW' \
    'AgIUXiI07A68eaqC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    '2J9jyEW6GLbc0NaK' \
    'DUL3sa13lk1dQBHO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    '86IlBhnetU4RwTqU' \
    'XlTDBzOuYsaZA2yy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'd4mbqoOfADMMAXFa' \
    'Y9eKa699bRVhyaKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    'wrAP2aMlu7WtjCto' \
    'YetOO847g8OudOfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    'nCuHZ3c46IjGa23Y' \
    'vYmmDg7VYPXIuvUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'TZBRujIUE1Tq5jyA' \
    'ZvkRCMNFIurjh2im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    'db4rbkXj0ZwsVC0g' \
    'L97ZVJSPqJiwv1ql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    'YB1RSKs6gQxC3Gb7' \
    'S0o4zGYY7KQI1AeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'gPqaOkvo1aolB4lk' \
    'KB4EYOkQ1jMD3cym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "8xIfkOVW2grREOLx", "activeAllianceRule": {"max_number": 81, "min_number": 75, "player_max_number": 82, "player_min_number": 94}, "activeMatchingRule": [{"attribute": "ww3HICQLfl7MUBG7", "criteria": "qtPu64yAtURKLRkb", "reference": 0.9665989331813947}, {"attribute": "38HGS6rDgMdIIlhS", "criteria": "1fSiM9331m7Ta1Ps", "reference": 0.5845456837068258}, {"attribute": "c50Kv6ecnEevcAx2", "criteria": "K2zkRenmPZnGBt4P", "reference": 0.9616140495101612}], "function": "WnbdSJtjX7ZshZyZ", "gameMode": "l5x4bRXBHUTrDzZS", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 48, "matchID": "cfOcYu3dpCROYqUi", "namespace": "GKXVFCmpo6sPwVOE", "partyID": "DSJsEK5QpNhlI2iS", "remainingPlayersPerTicket": [63, 17, 31], "remainingTickets": 71, "sessionTickID": "GhhvXYck0upMzUYn", "tickID": 3, "timeToMatchSec": 0.4279508363856612, "timestamp": "1991-06-09T00:00:00Z", "unbackfillReason": "RxpzwLR2AK6eXUGP", "unmatchReason": "Jsw1fiP80G9Pclxc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'ft2ulIJzPyrVEiOG' \
    '4UcqsuGKHhMRWLVd' \
    '3DlhLuIpomM8sm1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryXrayTimelineByTicketID' test.out

#- 36 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'iaI1mX2tJoARtdbB' \
    'e7udsMrok0WvGYYn' \
    'x4V709xbnGezKsDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
