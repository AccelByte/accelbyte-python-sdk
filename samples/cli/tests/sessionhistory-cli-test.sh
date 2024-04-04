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
sessionhistory-admin-query-game-session-detail --login_with_auth "Bearer foo"
sessionhistory-get-game-session-detail 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
sessionhistory-admin-query-matchmaking-detail --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-session-id 'H9UzVRiXbqlAw7r6' --login_with_auth "Bearer foo"
sessionhistory-admin-get-matchmaking-detail-by-ticket-id 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
sessionhistory-admin-query-party-detail --login_with_auth "Bearer foo"
sessionhistory-get-party-detail 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
sessionhistory-admin-query-ticket-detail --login_with_auth "Bearer foo"
sessionhistory-admin-ticket-detail-get-by-ticket-id 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
sessionhistory-query-xray-match-pool 'bQ1g7qbPngUNB1vR' 'odwpzS6DaDpv8N7Z' 'QVqGj6oDLjWjkY1a' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool 'XlFcDtgOjchIua5t' 'WEIC32ogW7olvbTg' 'rhRTcPiSuL0Sly6X' 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-matches 'GZ2WBZqxYG3aREAu' '2D6QVKNCWP75TB0i' '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
sessionhistory-query-detail-tick-match-pool-ticket 'G9m0XcgGVbMqSszE' '8GHavj7AorKsxwko' 'sAVerXpc1C8XfwHu' --login_with_auth "Bearer foo"
sessionhistory-query-match-histories 'Keb9l3rGN9A3sNm8' --login_with_auth "Bearer foo"
sessionhistory-query-match-ticket-histories '4hddSpHt0P7MIIR7' --login_with_auth "Bearer foo"
sessionhistory-query-xray-match 'CkyF6C7duuyZ0GhD' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds 'ogqrhBRd8lDR6qVN' 'PRZYdFLIAjGGJddV' --login_with_auth "Bearer foo"
sessionhistory-query-acquiring-ds-wait-time-avg 'Cvu9vx5KQ7KYnIuM' 'BvaO35llzQRaT5kP' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp-avg 'xUfofvnnSuB0y5WU' 'lrMdI4sNveabntBS' --login_with_auth "Bearer foo"
sessionhistory-query-match-length-durationp99 'xTeIv53HGCiljvjK' 'oyD6SCwGrncqmLtj' --login_with_auth "Bearer foo"
sessionhistory-query-total-active-session 'QHAf8TgoNm03VLis' 'V6zwPuo3td6TC6I3' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match 'lMjGSWN2laRlxfcj' 'HfYakUCTqGkE7wcW' --login_with_auth "Bearer foo"
sessionhistory-query-total-player-persession 'fDslpJSqGAXQ0yYo' 'NRKd3IL5TAQ6iiPl' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-canceled 'SC2uE4o5Vwdo3feP' 'qIJA8IHtrkmu0hpD' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-created 'DWVAla2l5BYNtIuS' '5S5XUdjsoqwGyzzW' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-expired 'i9gwQYv7t1o7TTr1' 'DmrhZv15T7quIOvB' --login_with_auth "Bearer foo"
sessionhistory-query-total-matchmaking-match-ticket 'McaYmvCkGZ5dAgqx' 'pBFmaLoxozr6wfNP' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-ticket-id 'X2bOItRMvqtlB2jJ' 'CSQT279ZZPYGu0rd' 'lgdWyOtXi3choQrp' --login_with_auth "Bearer foo"
sessionhistory-query-xray-timeline-by-user-id 'OsDBU5SepjChB3V0' 'v52Dlym6puQ23xoJ' '8aeCnaLpUKp44YUD' --login_with_auth "Bearer foo"
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
echo "1..32"

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

#- 4 AdminQueryGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-game-session-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
$PYTHON -m $MODULE 'sessionhistory-get-game-session-detail' \
    'jasWIPUvmEejtGeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-matchmaking-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-session-id' \
    'yIPa8ZRrvjj7il35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'MXbN9oCMNqq98SjT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-party-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
$PYTHON -m $MODULE 'sessionhistory-get-party-detail' \
    'vhZNkSQ70D0H6BXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
$PYTHON -m $MODULE 'sessionhistory-admin-query-ticket-detail' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
$PYTHON -m $MODULE 'sessionhistory-admin-ticket-detail-get-by-ticket-id' \
    'sUC9b6i5lZC9xv32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-xray-match-pool' \
    'e8c5csSovoqsZNBd' \
    'te9NDUPVJf6c2Z0Q' \
    'ZxfgPubTDIHrvqAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool' \
    'huwjRHpKKTlmVr9X' \
    'uoJbRFQSKVPHbn4X' \
    'xtu7LQRENjEEztx1' \
    'WsYSiZqan0nSBJro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-matches' \
    'av91GXlvPG6bFYRe' \
    'VHQipcCx9Zw5D2L7' \
    'vIYhGGSyEW4ZJJ42' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
$PYTHON -m $MODULE 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'd3PBddN8S48l9lyN' \
    'ApflxqMrj3oZk03Q' \
    'XcKMDYDDxHSZjtqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-histories' \
    'yJ58f7Gc26SaiGVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
$PYTHON -m $MODULE 'sessionhistory-query-match-ticket-histories' \
    'ydwYWQG26yUZNmTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
$PYTHON -m $MODULE 'sessionhistory-query-xray-match' \
    'cvrbYCwZtxFHyPLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds' \
    'I8ilbyDPUIj88cek' \
    'dqCt81P1ktfIovmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
$PYTHON -m $MODULE 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    '9gsR5cJcHm3SZLxo' \
    'RDFuuuySj29a9LJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp-avg' \
    '8HoRS1X2PFAAMwzH' \
    'PxB1UskYs4Yw20DO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
$PYTHON -m $MODULE 'sessionhistory-query-match-length-durationp99' \
    'qOBSC2DKHRuPMMWH' \
    '8Yb33T5UBJCjfcnL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
$PYTHON -m $MODULE 'sessionhistory-query-total-active-session' \
    'RfxeCSz9WEi8Kllo' \
    'eH0JT1yduat2vQR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match' \
    'biBfsu4jmsRE2w1y' \
    'EkLgh3tIYt4SqYUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
$PYTHON -m $MODULE 'sessionhistory-query-total-player-persession' \
    'LDx9gIiDandpGT2t' \
    '24aOMh5eC3IHeHSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-canceled' \
    'LCa3xreNDUWehwH3' \
    'q31A806DJgas4b6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-created' \
    '3LNUj7fdgLA84Z8Y' \
    'Yk6QEgJjBbEDoNf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-expired' \
    'n0hEoRCAcf80zfFy' \
    'abWAgIUXiI07A68e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
$PYTHON -m $MODULE 'sessionhistory-query-total-matchmaking-match-ticket' \
    'aqC2J9jyEW6GLbc0' \
    'NaKDUL3sa13lk1dQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'BHO86IlBhnetU4Rw' \
    'TqUXlTDBzOuYsaZA' \
    '2yyd4mbqoOfADMMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
$PYTHON -m $MODULE 'sessionhistory-query-xray-timeline-by-user-id' \
    'XFaY9eKa699bRVhy' \
    'aKwwrAP2aMlu7Wtj' \
    'CtoYetOO847g8Oud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
