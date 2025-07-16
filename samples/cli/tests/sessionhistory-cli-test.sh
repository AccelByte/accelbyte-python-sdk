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
sessionhistory-create-xray-ticket-observability '{"action": "EAxcVpFrttufHIRd", "activeAllianceRule": {"max_number": 68, "min_number": 59, "player_max_number": 4, "player_min_number": 95}, "activeMatchingRule": [{"attribute": "09nIW0Oaiw9B0D7e", "criteria": "HpzSn3ZPUdc0qh4n", "reference": 0.9696652873308939}, {"attribute": "mzZ0m8SAMTwE6I56", "criteria": "IaRDBXxyaNoMR6hk", "reference": 0.29507084159218033}, {"attribute": "pInrAip6lyzSxwEl", "criteria": "FHHdgs21Jub74CUk", "reference": 0.6437975760118728}], "function": "mKJfh5pUkHODpoMF", "gameMode": "78NY4YkHs1cnz1JS", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 13, "matchID": "gW7olvbTgrhRTcPi", "namespace": "SuL0Sly6XM4OI18m", "remainingPlayersPerTicket": [55, 54, 88], "remainingTickets": 76, "sessionTickID": "LnzjMf8GZ2WBZqxY", "tickID": 66, "ticketID": "2OQNOs1PXhT5Fvdi", "timeToMatchSec": 0.6982226517617746, "timestamp": "1975-04-08T00:00:00Z", "unbackfillReason": "TB0i7pKxR8dl0zRV", "unmatchReason": "W4EZG9m0XcgGVbMq"}' --login_with_auth "Bearer foo"
sessionhistory-create-xray-bulk-ticket-observability '{"ticketObservabilities": [{"action": "SszE8GHavj7AorKs", "activeAllianceRule": {"max_number": 49, "min_number": 61, "player_max_number": 46, "player_min_number": 35}, "activeMatchingRule": [{"attribute": "kosAVerXpc1C8Xfw", "criteria": "HuKeb9l3rGN9A3sN", "reference": 0.20136001836735962}, {"attribute": "84hddSpHt0P7MIIR", "criteria": "7CkyF6C7duuyZ0Gh", "reference": 0.48234820867962735}, {"attribute": "ogqrhBRd8lDR6qVN", "criteria": "PRZYdFLIAjGGJddV", "reference": 0.46741799787527916}], "function": "vu9vx5KQ7KYnIuMB", "gameMode": "vaO35llzQRaT5kPx", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 33, "matchID": "ofvnnSuB0y5WUlrM", "namespace": "dI4sNveabntBSxTe", "remainingPlayersPerTicket": [70, 13, 43], "remainingTickets": 13, "sessionTickID": "53HGCiljvjKoyD6S", "tickID": 59, "ticketID": "okahFjkQsfCaTmt1", "timeToMatchSec": 0.054299996037950105, "timestamp": "1978-11-26T00:00:00Z", "unbackfillReason": "FXGk2s9Q0mPVo3tw", "unmatchReason": "u0MesTCf9x4rt69l"}, {"action": "na7qxNeIxPz6MbwL", "activeAllianceRule": {"max_number": 67, "min_number": 70, "player_max_number": 21, "player_min_number": 62}, "activeMatchingRule": [{"attribute": "69z1UaLqYSYWytLP", "criteria": "ziZMdjxcBZufQxGi", "reference": 0.5372604812688304}, {"attribute": "PllG4cYEzfTD1ZBm", "criteria": "3MqHcUmLZZbSqb8R", "reference": 0.3589146146034815}, {"attribute": "Nmn9HrNQy4uZAAiE", "criteria": "0mit9RGCCHYzUOcE", "reference": 0.05065644091795485}], "function": "scKHPEqgA8yu7Vk6", "gameMode": "Jt4Ymos9Jcdos4fY", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 94, "matchID": "McaYmvCkGZ5dAgqx", "namespace": "pBFmaLoxozr6wfNP", "remainingPlayersPerTicket": [100, 79, 3], "remainingTickets": 81, "sessionTickID": "OItRMvqtlB2jJCSQ", "tickID": 94, "ticketID": "JlDbPWbQ6Q9lNmqR", "timeToMatchSec": 0.4440664306506802, "timestamp": "1971-11-29T00:00:00Z", "unbackfillReason": "AkLnvxkT1X68cmDc", "unmatchReason": "3fxU8MyKrQpM4hkk"}, {"action": "K6KKXNB3Gv0IqmF5", "activeAllianceRule": {"max_number": 78, "min_number": 93, "player_max_number": 31, "player_min_number": 22}, "activeMatchingRule": [{"attribute": "UKp44YUDjasWIPUv", "criteria": "mEejtGeoyIPa8ZRr", "reference": 0.3473538339374823}, {"attribute": "jj7il35MXbN9oCMN", "criteria": "qq98SjTvhZNkSQ70", "reference": 0.4695026785071339}, {"attribute": "0H6BXksUC9b6i5lZ", "criteria": "C9xv32e8c5csSovo", "reference": 0.27063695102091945}], "function": "sZNBdte9NDUPVJf6", "gameMode": "c2Z0QZxfgPubTDIH", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 80, "matchID": "qAThuwjRHpKKTlmV", "namespace": "r9XuoJbRFQSKVPHb", "remainingPlayersPerTicket": [27, 14, 26], "remainingTickets": 48, "sessionTickID": "SQUhAEtrmjqU6YE3", "tickID": 31, "ticketID": "sYSiZqan0nSBJroa", "timeToMatchSec": 0.3436993699102727, "timestamp": "1979-01-04T00:00:00Z", "unbackfillReason": "GXlvPG6bFYReVHQi", "unmatchReason": "pcCx9Zw5D2L7vIYh"}]}' --login_with_auth "Bearer foo"
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
echo "1..3"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 CreateXrayTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "GGSyEW4ZJJ42d3PB", "activeAllianceRule": {"max_number": 7, "min_number": 13, "player_max_number": 6, "player_min_number": 30}, "activeMatchingRule": [{"attribute": "N8S48l9lyNApflxq", "criteria": "Mrj3oZk03QXcKMDY", "reference": 0.4733386061021079}, {"attribute": "DxHSZjtqXyJ58f7G", "criteria": "c26SaiGVkydwYWQG", "reference": 0.8725779378804075}, {"attribute": "6yUZNmTBcvrbYCwZ", "criteria": "txFHyPLtI8ilbyDP", "reference": 0.748312213322721}], "function": "Ij88cekdqCt81P1k", "gameMode": "tfIovmv9gsR5cJcH", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 3, "matchID": "SZLxoRDFuuuySj29", "namespace": "a9LJE8HoRS1X2PFA", "remainingPlayersPerTicket": [54, 27, 80], "remainingTickets": 22, "sessionTickID": "wzHPxB1UskYs4Yw2", "tickID": 60, "ticketID": "aZSWMiVi10sG6vxk", "timeToMatchSec": 0.0828471522484081, "timestamp": "1995-01-20T00:00:00Z", "unbackfillReason": "Yb33T5UBJCjfcnLR", "unmatchReason": "fxeCSz9WEi8Klloe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
$PYTHON -m $MODULE 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{"action": "H0JT1yduat2vQR3b", "activeAllianceRule": {"max_number": 16, "min_number": 11, "player_max_number": 56, "player_min_number": 69}, "activeMatchingRule": [{"attribute": "fsu4jmsRE2w1yEkL", "criteria": "gh3tIYt4SqYUTLDx", "reference": 0.9945754677922354}, {"attribute": "gIiDandpGT2t24aO", "criteria": "Mh5eC3IHeHSKLCa3", "reference": 0.3814098941872497}, {"attribute": "reNDUWehwH3q31A8", "criteria": "06DJgas4b6z3LNUj", "reference": 0.9559074311816667}], "function": "fdgLA84Z8YYk6QEg", "gameMode": "JjBbEDoNf3n0hEoR", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 81, "matchID": "cf80zfFyabWAgIUX", "namespace": "iI07A68eaqC2J9jy", "remainingPlayersPerTicket": [61, 100, 53], "remainingTickets": 19, "sessionTickID": "GLbc0NaKDUL3sa13", "tickID": 22, "ticketID": "VHzih3bit0VWn3CO", "timeToMatchSec": 0.8935408572997413, "timestamp": "1992-12-21T00:00:00Z", "unbackfillReason": "XDNxtXgeO3FgkXhj", "unmatchReason": "DzaQY3snn2ZkP7cF"}, {"action": "dP43e5dC9XIBudfZ", "activeAllianceRule": {"max_number": 13, "min_number": 50, "player_max_number": 35, "player_min_number": 1}, "activeMatchingRule": [{"attribute": "bHDIDm4hMzF4Txod", "criteria": "enSrUTvfqU0bfoMm", "reference": 0.9294006979866903}, {"attribute": "cTtFWbotQyXJRcQW", "criteria": "smqPNs92epxk0i8V", "reference": 0.3815303580141389}, {"attribute": "sZNereSvf9699mCE", "criteria": "HThUJkETAsSp7gh4", "reference": 0.729905225743802}], "function": "eUTkOkAYfJB8AT9t", "gameMode": "4Tv207Y2QD3oD5fL", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 36, "matchID": "1RSKs6gQxC3Gb7S0", "namespace": "o4zGYY7KQI1AeFgP", "remainingPlayersPerTicket": [33, 34, 1], "remainingTickets": 83, "sessionTickID": "tfNWql4nmwAft4gq", "tickID": 20, "ticketID": "OkQ1jMD3cym8xIfk", "timeToMatchSec": 0.6557939338638374, "timestamp": "1995-03-18T00:00:00Z", "unbackfillReason": "W2grREOLx0KOww3H", "unmatchReason": "ICQLfl7MUBG7qtPu"}, {"action": "64yAtURKLRkb738H", "activeAllianceRule": {"max_number": 67, "min_number": 64, "player_max_number": 91, "player_min_number": 30}, "activeMatchingRule": [{"attribute": "rDgMdIIlhS1fSiM9", "criteria": "331m7Ta1PsKc50Kv", "reference": 0.9439273069033591}, {"attribute": "ecnEevcAx2K2zkRe", "criteria": "nmPZnGBt4P7WnbdS", "reference": 0.5689205011091686}, {"attribute": "tjX7ZshZyZl5x4bR", "criteria": "XBHUTrDzZSKscfOc", "reference": 0.8188182821904425}], "function": "u3dpCROYqUiGKXVF", "gameMode": "Cmpo6sPwVOEDSJsE", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 87, "matchID": "65UXmy0Zp6iIaTIK", "namespace": "Ukmkk9QM0NBMA9OR", "remainingPlayersPerTicket": [49, 21, 32], "remainingTickets": 63, "sessionTickID": "zwLR2AK6eXUGPJsw", "tickID": 97, "ticketID": "fiP80G9Pclxcft2u", "timeToMatchSec": 0.18314071357091988, "timestamp": "1988-05-04T00:00:00Z", "unbackfillReason": "JzPyrVEiOG4Ucqsu", "unmatchReason": "GKHhMRWLVd3DlhLu"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
