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
leaderboard-get-user-ranking-public-v3 'gEhhM2rIizGdKvOP' 'dq5xrgxSmy1DN9LF' --login_with_auth "Bearer foo"
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
echo "1..61"

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
    '{"daily": {"resetTime": "kYW5DQyj4bj5Ro2o"}, "descending": false, "iconURL": "sPwVOEDSJsEK5QpN", "leaderboardCode": "hlI2iS5EpGhhvXYc", "monthly": {"resetDate": 22, "resetTime": "kk9QM0NBMA9ORxpz"}, "name": "wLR2AK6eXUGPJsw1", "seasonPeriod": 11, "startTime": "6Do5sYadCCFrHHC3", "statCode": "DpZxkrQDXuNFviMa", "weekly": {"resetDay": 37, "resetTime": "uGKHhMRWLVd3DlhL"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'uIpomM8sm1MiaI1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70", "9xbnGezKsDwG2omO"], "limit": 89, "slug": "5tVg8JqU0jZpjvsu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["gAOS7u8RiWyerCSa", "8SRgwsAj1ik1jgla", "DXTvKCWwNTAhd2wr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'S0uPdjhdinpng5BL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "y8wbhMssAHjapIkY"}, "descending": false, "iconURL": "OqB5F93zFQbJndUD", "monthly": {"resetDate": 31, "resetTime": "mKy8M9zVrjfGXZnq"}, "name": "AQUoY1GjlIIk0iKo", "seasonPeriod": 93, "startTime": "nPb71ORYcmQbTU5J", "statCode": "X8ccLjMXJRk0eaKQ", "weekly": {"resetDay": 61, "resetTime": "DbxIxi4YKlONk2Q5"}}' \
    'Y4JvaizwiilatuUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'jt9lIMGql5ElEa9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'IIlGcHB3CfR3ncDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'wi3v3MFFJ1KesKoE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'LCpobBEG8X645xpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'Xpai0rYaT5hOPjaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    '3H0tYighU0VUfcYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'JbBfAKSiPW3VgsZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'iR1DJ7HVWqMkNSaw' \
    'QUWDFJvJBWic7UkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.07060214629850892, "latestValue": 0.560209153245197}' \
    'XuqDuAXI66bQ71w0' \
    'deoV9Lx5RDA1l2Xc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'rciYNEzvSZIPkhSg' \
    'ORcz5S5BvmgBLxh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'ijFnE3Tam69qSZ7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'C6f6QkmZXElW9YfR' \
    '["Sse6AAz3S4czz0QK", "FlAVmVLu4AOec0z8", "eBeeoip68J1nsv4W"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    '2OJhtafxMSJlHeb3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    '4sZKHcl5LLLOexL4' \
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
    '{"daily": {"resetTime": "fZvWtND2tcBFpX8l"}, "descending": false, "iconURL": "tFEJ7tnkY6Mca5af", "leaderboardCode": "j12K2IzrBvvWm4ud", "monthly": {"resetDate": 62, "resetTime": "EBM70TdlNBJYOmpu"}, "name": "1VCarzBsV6xnZ5Jr", "seasonPeriod": 52, "startTime": "ZQ7hfxnhLd3Knakn", "statCode": "oed9DHhLOqQGhCUr", "weekly": {"resetDay": 21, "resetTime": "iTrjyEgarAdNJOIG"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    '36I6tRbRcrEveMdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'diPKDUVSC00PYeDc' \
    'agginxnFIna3yddc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'bsPheTH26IUJNvYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'GRUvpZaHCuESOiIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'sMfB4ZH3mtgWgU4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'CAKxeE70CaunQNxo' \
    't371W9G4AvQkqsGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'myo5JJTUVmb8GEXF' \
    'TlEMEsFzYqwgK1Np' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    '5nodqpLm7FhJBNXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'AFdO0Khqf6kiTdSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'v2LFjAKY7CbgsWqF' \
    'WZX7kPBom8F9GLLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": true}' \
    'CjtuzFMbAG9YI89h' \
    'mguB8FOTjMLo4b9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'C4DdrKF7SUQPLG59' \
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
    'e0k5ZtX6wK7PpUlc' \
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
    '{"allTime": false, "cycleIds": ["W32iK7MGt1ixY5rA", "1WoVeJIePF8ZrQzP", "4zvtdxdbZUpd6FJt"], "descending": true, "description": "1pyVwyKQLY6FEO65", "iconURL": "Rb3z7CYLM8IlsHqf", "leaderboardCode": "fnrfsGlfPaZKBwa3", "name": "Ddb60ufPpzwj1QGI", "statCode": "FmlVf4jvapseE9LN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["9bvhOrHflIOd6X3v", "iLvtEk4mTIpUA9gx", "o8SV38nEhoXmM2W7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'l6jHMA2rG3nakopA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": true, "cycleIds": ["HNgqRqCV7usamANk", "ZlOX9Sfo95HgXqKh", "TPkwfLM9uSybRzWe"], "descending": false, "description": "6Hl8kUXzt6bSc6bW", "iconURL": "vgpVyW9dD1kOmvrA", "name": "ejcq2LgkQuaS7RBx"}' \
    '3vim02jBOxrZDyvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'cLYOWA8NjxOnaEok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    '4nOOCzfsflhjbngJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'OUn18G5MlfDTk8aG' \
    '40NlncceIZSwgAIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v3' \
    'gzh4pTU0Am4DZhl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    'bQxFJ3sWCqQpQ2Fb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v3' \
    'KPFMycMSQ4qfAacR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v3' \
    '0LgB5BUXvjcu2s6w' \
    '3VifnKqmTSoGH1XE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v3' \
    'fY6QAYn6WQ5UBEU1' \
    'QAOHfZiGhxOdcuDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v3' \
    'SxSc3aZPV87pna08' \
    'gxefTYKhuxaEc7M4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-v3' \
    '{"visibility": true}' \
    'UckSC6ePeN8i4GrF' \
    'ES9z7xueHpATHcce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v3' \
    'e9GXhKcjmSEwdrkE' \
    '["nnqKzFsLfYalUlfw", "EQKjU7eHGebSVu0L", "Q40kepEaC4dfiOMZ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v3' \
    'fEhHr39pysFO3Zvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-v3' \
    '{"visibility": true}' \
    '9JQYGF4bYXEcENx9' \
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
    'xZlAchob44lONDDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'MvgI0HlyPR7wZNiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    'sF6xG2mXEQdbzIVy' \
    '8alncV7vWgSHdfo0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 GetUserRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v3' \
    '7UctPErqxyMyOK06' \
    'MqQBErxgjVBycvU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetUserRankingPublicV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
