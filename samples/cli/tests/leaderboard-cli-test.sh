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
leaderboard-get-leaderboard-configurations-admin-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "EAxcVpFrttufHIRd"}, "descending": true, "iconURL": "9UzVRiXbqlAw7r6W", "leaderboardCode": "2ktQG0h5JAav5kRa", "monthly": {"resetDate": 27, "resetTime": "2WopBJHPtcDs8bBZ"}, "name": "LCXLx8bbgorQeFbQ", "seasonPeriod": 21, "startTime": "g7qbPngUNB1vRodw", "statCode": "pzS6DaDpv8N7ZQVq", "weekly": {"resetDay": 67, "resetTime": "kNmKJfh5pUkHODpo"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler 'MF78NY4YkHs1cnz1' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["JSDgY1TXp38zsCTC", "rbCbPOyNQkT7NvyE", "3cwyALczNIicXm7a"], "limit": 13, "slug": "BZqxYG3aREAu2D6Q"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["VKNCWP75TB0i7pKx", "R8dl0zRVW4EZG9m0", "XcgGVbMqSszE8GHa"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'vj7AorKsxwkosAVe' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "rXpc1C8XfwHuKeb9"}, "descending": false, "iconURL": "th6mXhzkzWkFeZSo", "monthly": {"resetDate": 63, "resetTime": "pHt0P7MIIR7CkyF6"}, "name": "C7duuyZ0GhDogqrh", "seasonPeriod": 55, "startTime": "FQN05MYzYiKWe5dN", "statCode": "Rljv7IPrDQQRgat0", "weekly": {"resetDay": 91, "resetTime": "5KQ7KYnIuMBvaO35"}}' 'llzQRaT5kPxUfofv' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 'nnSuB0y5WUlrMdI4' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'sNveabntBSxTeIv5' --login_with_auth "Bearer foo"
leaderboard-hard-delete-leaderboard-admin-v1 '3HGCiljvjKoyD6SC' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'wGrncqmLtjQHAf8T' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1 'goNm03VLisV6zwPu' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 'o3td6TC6I3lMjGSW' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 'N2laRlxfcjHfYakU' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'CTqGkE7wcWfDslpJ' 'SqGAXQ0yYoNRKd3I' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.6022577217893396, "latestValue": 0.9222845187699217}' 'TAQ6iiPlSC2uE4o5' 'Vwdo3fePqIJA8IHt' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'rkmu0hpDDWVAla2l' '5BYNtIuS5S5XUdjs' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 'oqwGyzzWi9gwQYv7' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 't1o7TTr1DmrhZv15' '["T7quIOvBMcaYmvCk", "GZ5dAgqxpBFmaLox", "ozr6wfNPX2bOItRM"]' --login_with_auth "Bearer foo"
leaderboard-admin-anonymize-user-leaderboard-admin-v1 'vqtlB2jJCSQT279Z' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 'ZPYGu0rdlgdWyOtX' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "i3choQrpOsDBU5Se"}, "descending": false, "iconURL": "U8MyKrQpM4hkkK6K", "leaderboardCode": "KXNB3Gv0IqmF51Tk", "monthly": {"resetDate": 16, "resetTime": "Kp44YUDjasWIPUvm"}, "name": "EejtGeoyIPa8ZRrv", "seasonPeriod": 19, "startTime": "kmoPYgc2L4jk4Lo0", "statCode": "LSP0pf4IxjUkl535", "weekly": {"resetDay": 69, "resetTime": "ateEKDpADz1x3poD"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 '3Qgb3boLQQ1MzH7Q' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'm8bwbmXgdAPh1ETh' 'G96gAFKK2WDgCcxv' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 'ONZm3EeERmDnyeFo' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 'F7VSZ6pf3vneSD2T' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'b3g7mSQUhAEtrmjq' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'U6YE3p4lSck0ZHn5' 'GI39YBHqaTHeKtW1' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 '8iGeUlc9d9sogWa2' '4CKNS0GqVvUfHQvs' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 'HXNUNe4mhgo5QB65' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'lSAiYnNjkfZrQvGg' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 'bLdLsFzHkBMr1yrO' 'MlNFSrUEirnjX9fD' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": false}' 'iGVkydwYWQG26yUZ' 'NmTBcvrbYCwZtxFH' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": true}' 'LiBNrDjqoxcwgGLX' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 'pUL4pp2ncYAHdNzD' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-admin-v3 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-admin-v3 '{"allTime": false, "cycleIds": ["vmv9gsR5cJcHm3SZ", "LxoRDFuuuySj29a9", "LJE8HoRS1X2PFAAM"], "descending": true, "description": "CmBUqg2SCnqntX9y", "iconURL": "1aZSWMiVi10sG6vx", "leaderboardCode": "kfUcmqRRbceJ5i0E", "name": "eDxOgBnhhqElIaDm", "statCode": "l48wdNFLTm5T50x9"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v3 '{"leaderboardCodes": ["WT0GfH2rtOa4EXsX", "zOXQAk4mqrxzTtuL", "l4XlbGL8QOxtjzm8"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v3 'y2wNhmwoYZyI4EFZ' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v3 '{"allTime": true, "cycleIds": ["KLCa3xreNDUWehwH", "3q31A806DJgas4b6", "z3LNUj7fdgLA84Z8"], "descending": true, "description": "Yk6QEgJjBbEDoNf3", "iconURL": "n0hEoRCAcf80zfFy", "name": "abWAgIUXiI07A68e"}' 'aqC2J9jyEW6GLbc0' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v3 'NaKDUL3sa13lk1dQ' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v3 'BHO86IlBhnetU4Rw' --login_with_auth "Bearer foo"
leaderboard-get-current-cycle-leaderboard-ranking-admin-v3 'TqUXlTDBzOuYsaZA' '2yyd4mbqoOfADMMA' --login_with_auth "Bearer foo"
leaderboard-hard-delete-leaderboard-admin-v3 'XFaY9eKa699bRVhy' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3 'aKwwrAP2aMlu7Wtj' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v3 'CtoYetOO847g8Oud' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v3 'OfjnCuHZ3c46IjGa' '23YvYmmDg7VYPXIu' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v3 'vUYTZBRujIUE1Tq5' 'jyAZvkRCMNFIurjh' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v3 '2imdb4rbkXj0ZwsV' 'C0gL97ZVJSPqJiwv' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-v3 '{"visibility": true}' 'fLCr3OOlXVv8ZGF7' 'uYnGzpipNDigNJma' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v3 '1MbqqZtfNWql4nmw' '["Aft4gqkNNlWkD9eO", "ziYRFOn0jJLHC9Lx", "hvNXTwGBCtohLtl9"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v3 'Zuhytm5UDrT6QXCs' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-v3 '{"visibility": false}' 'BbRPZTF6oQAXVG7t' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v3 --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-public-v3 'nsZg5QgXjvyGJPN4' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v3 'eXbJE5Vs2GcyomQo' --login_with_auth "Bearer foo"
leaderboard-get-current-cycle-leaderboard-ranking-public-v3 'IXimBJehyxlNsjUg' 'xBkF6wFPoJeQedio' --login_with_auth "Bearer foo"
leaderboard-bulk-get-users-ranking-public-v3 '{"userIds": ["gEhhM2rIizGdKvOP", "dq5xrgxSmy1DN9LF", "kYW5DQyj4bj5Ro2o"]}' 'gaKt2ujQSa3Zdb65' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v3 'UXmy0Zp6iIaTIKUk' 'mkk9QM0NBMA9ORxp' --login_with_auth "Bearer foo"
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
echo "1..62"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetLeaderboardConfigurationsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "zwLR2AK6eXUGPJsw"}, "descending": false, "iconURL": "6Do5sYadCCFrHHC3", "leaderboardCode": "DpZxkrQDXuNFviMa", "monthly": {"resetDate": 37, "resetTime": "uGKHhMRWLVd3DlhL"}, "name": "uIpomM8sm1MiaI1m", "seasonPeriod": 40, "startTime": "ugBp3HBvepnDCjgy", "statCode": "JlXe36mgWjLfFmte", "weekly": {"resetDay": 42, "resetTime": "nGezKsDwG2omOR2n"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'vYI9TVqJdvzcWbfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["paXp5JMl5LL4bTxB", "mZjdrrIxsB0NRsB1", "fPqqRRulpqpymDkQ"], "limit": 14, "slug": "Pdjhdinpng5BLy8w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["bhMssAHjapIkY9Rf", "4wP57dBZNR88YbCt", "mKy8M9zVrjfGXZnq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'AQUoY1GjlIIk0iKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "TTS1j02o7JjTXAQN"}, "descending": true, "iconURL": "8ccLjMXJRk0eaKQD", "monthly": {"resetDate": 82, "resetTime": "bxIxi4YKlONk2Q5Y"}, "name": "4JvaizwiilatuUjj", "seasonPeriod": 40, "startTime": "C3mNqF7Bl0LcghVH", "statCode": "fPEspxwhRON0bc1e", "weekly": {"resetDay": 80, "resetTime": "3v3MFFJ1KesKoELC"}}' \
    'pobBEG8X645xpdXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'ai0rYaT5hOPjaf3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    '0tYighU0VUfcYHJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'BfAKSiPW3VgsZXiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    '1DJ7HVWqMkNSawQU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'WDFJvJBWic7UkBeI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'XuqDuAXI66bQ71w0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'deoV9Lx5RDA1l2Xc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'rciYNEzvSZIPkhSg' \
    'ORcz5S5BvmgBLxh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.14294265685280994, "latestValue": 0.15207588170629172}' \
    'FnE3Tam69qSZ7PC6' \
    'f6QkmZXElW9YfRSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'e6AAz3S4czz0QKFl' \
    'AVmVLu4AOec0z8eB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'eeoip68J1nsv4W2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'JhtafxMSJlHeb34s' \
    '["ZKHcl5LLLOexL4fZ", "vWtND2tcBFpX8lNt", "FEJ7tnkY6Mca5afj"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    '12K2IzrBvvWm4udE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    '0OXudXgNne8kJATw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-public-v1' \
    '{"daily": {"resetTime": "lc6esUp6Sw1I98je"}, "descending": true, "iconURL": "Q7hfxnhLd3Knakno", "leaderboardCode": "ed9DHhLOqQGhCUr6", "monthly": {"resetDate": 18, "resetTime": "Aa7j0riFc5HTHQIo"}, "name": "VsGo7dwV9DBqFKHQ", "seasonPeriod": 22, "startTime": "iPKDUVSC00PYeDca", "statCode": "gginxnFIna3yddcb", "weekly": {"resetDay": 37, "resetTime": "tlqOECohViHA5Czg"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'FSy8X1A3PrIfapq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'AAeMe4L3mDWORBVX' \
    'TIIJM9XsYIIZxiXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'MR9BgaWcFX3SUBhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'oTsMWPAxUMkawaGp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'AyrIwMif3BOdkocV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'Td4BxqGWV6mTJ0sQ' \
    's6XNbjvqhnUVLWu8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'olKdxL6ozRmDD0jJ' \
    'vlfV5OemPYdYT7DR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'OCjtuzFMbAG9YI89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'hmguB8FOTjMLo4b9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'rIzqYkEpstyVTBcr' \
    'M8rG0rH0zcswwVeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    '6MbGIVIu8vvwLc7K' \
    'Y3uVoJXTIMtpgkie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'zP4zvtdxdbZUpd6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v2' \
    'JtHJ1pyVwyKQLY6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-admin-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-admin-v3' \
    '{"allTime": true, "cycleIds": ["nOpas6ghP1y4Zi7s", "7QBlk44Z44B1GZgK", "g4uKxaCgcGLuC3br"], "descending": false, "description": "GIFmlVf4jvapseE9", "iconURL": "LN9bvhOrHflIOd6X", "leaderboardCode": "3viLvtEk4mTIpUA9", "name": "gxo8SV38nEhoXmM2", "statCode": "W7l6jHMA2rG3nako"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["pAywelu01nryEJ0N", "qoTow0qiOiC4j0ik", "tm0ZPLkLOsp0LZ5n"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'jN86Hl8kUXzt6bSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["bWvgpVyW9dD1kOmv", "rAejcq2LgkQuaS7R", "Bx3vim02jBOxrZDy"], "descending": true, "description": "1qx8CzPML52faXUr", "iconURL": "9Sk4lq2faBcAXXKl", "name": "hvyH8paOJtxqMPpc"}' \
    'VfRwNj547fH0XrKE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'DpEY8VnocGAjci0V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    '3tBf2jnHGKXphn50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'c9tNLDljhZ2jxLRX' \
    '3z46OCaGBeMfPlNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v3' \
    's4yBRjrERHEonAZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    '8GmEu0q1p6QCyY6v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v3' \
    'SkVFWdsbYuVEGVxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v3' \
    'heR3j5mNZ6vwv7K8' \
    'Asvt1j1Rx59hesNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v3' \
    'y2NvZ85DDKDAF8KD' \
    'sBZOuYQJ03BAHZ7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v3' \
    '53q7akMpcmnnx6RV' \
    'Brop9v7aZK3h65hb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-v3' \
    '{"visibility": false}' \
    '15zfQSfQrtfF3TQN' \
    '0OcNDLr36vzohZyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v3' \
    'MQAg5mPYhrLTyU8O' \
    '["hgfY9JQYGF4bYXEc", "ENx9xZlAchob44lO", "NDDwMvgI0HlyPR7w"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v3' \
    'ZNiVsF6xG2mXEQdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-v3' \
    '{"visibility": true}' \
    '5wWaDhukU4khGG4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-public-v3' \
    'ZFTYnPkmSu4PWam1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'jxR7SETWjteoc8fg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    'vZDDhoO05oKqymxL' \
    'D1Lcvw6T6mZEiwxx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-bulk-get-users-ranking-public-v3' \
    '{"userIds": ["ElpMYSWIeVzm7z9n", "oowmlTIKVowi0RY2", "VN4ZONJREdUQ3z9F"]}' \
    '1BxNNgnke4akncw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v3' \
    'wu9TmXfJWBPrx9Ns' \
    '8eLzYEvwSWTaLQjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
