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
sessionhistory-query-xray-timeline-by-ticket-id 'WMNW5NyLu0M3VHh2' 'EI8JlDbPWbQ6Q9lN' 'mqRBaAkLnvxkT1X6' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-user-id '8cmDc3fxU8MyKrQp' 'M4hkkK6KKXNB3Gv0' 'IqmF51TkhjYnaq6f' --login_with_auth "Bearer foo"
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
echo "1..34"

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
    'asWIPUvmEejtGeoy' \
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
    'IPa8ZRrvjj7il35M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'XbN9oCMNqq98SjTv' \
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
    'hZNkSQ70D0H6BXks' \
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
    'UC9b6i5lZC9xv32e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 QueryXrayMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-xray-match-pool' \
    '8c5csSovoqsZNBdt' \
    'e9NDUPVJf6c2Z0QZ' \
    'xfgPubTDIHrvqATh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'QueryXrayMatchPool' test.out

#- 16 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    'uwjRHpKKTlmVr9Xu' \
    'oJbRFQSKVPHbn4Xx' \
    'tu7LQRENjEEztx1W' \
    'sYSiZqan0nSBJroa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPool' test.out

#- 17 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    'v91GXlvPG6bFYReV' \
    'HQipcCx9Zw5D2L7v' \
    'IYhGGSyEW4ZJJ42d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPoolMatches' test.out

#- 18 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    '3PBddN8S48l9lyNA' \
    'pflxqMrj3oZk03QX' \
    'cKMDYDDxHSZjtqXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolTicket' test.out

#- 19 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'J58f7Gc26SaiGVky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryMatchHistories' test.out

#- 20 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    'dwYWQG26yUZNmTBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchTicketHistories' test.out

#- 21 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'vrbYCwZtxFHyPLtI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryXrayMatch' test.out

#- 22 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    '8ilbyDPUIj88cekd' \
    'qCt81P1ktfIovmv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryAcquiringDS' test.out

#- 23 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    'gsR5cJcHm3SZLxoR' \
    'DFuuuySj29a9LJE8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDSWaitTimeAvg' test.out

#- 24 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    'HoRS1X2PFAAMwzHP' \
    'xB1UskYs4Yw20DOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryMatchLengthDurationpAvg' test.out

#- 25 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    'OBSC2DKHRuPMMWH8' \
    'Yb33T5UBJCjfcnLR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationp99' test.out

#- 26 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'fxeCSz9WEi8Klloe' \
    'H0JT1yduat2vQR3b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalActiveSession' test.out

#- 27 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    'iBfsu4jmsRE2w1yE' \
    'kLgh3tIYt4SqYUTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingMatch' test.out

#- 28 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    'Dx9gIiDandpGT2t2' \
    '4aOMh5eC3IHeHSKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalPlayerPersession' test.out

#- 29 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'Ca3xreNDUWehwH3q' \
    '31A806DJgas4b6z3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingCanceled' test.out

#- 30 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    'LNUj7fdgLA84Z8YY' \
    'k6QEgJjBbEDoNf3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCreated' test.out

#- 31 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    '0hEoRCAcf80zfFya' \
    'bWAgIUXiI07A68ea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingExpired' test.out

#- 32 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'qC2J9jyEW6GLbc0N' \
    'aKDUL3sa13lk1dQB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingMatchTicket' test.out

#- 33 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'HO86IlBhnetU4RwT' \
    'qUXlTDBzOuYsaZA2' \
    'yyd4mbqoOfADMMAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QueryXrayTimelineByTicketID' test.out

#- 34 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'FaY9eKa699bRVhya' \
    'KwwrAP2aMlu7WtjC' \
    'toYetOO847g8OudO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
