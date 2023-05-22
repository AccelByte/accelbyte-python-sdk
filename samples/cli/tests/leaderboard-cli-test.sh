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
leaderboard-set-user-visibility-v3 '{"visibility": true}' 'BG7qtPu64yAtURKL' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v3 --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-public-v3 'Rkb738HGS6rDgMdI' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v3 'IlhS1fSiM9331m7T' --login_with_auth "Bearer foo"
leaderboard-get-current-cycle-leaderboard-ranking-public-v3 'a1PsKc50Kv6ecnEe' 'vcAx2K2zkRenmPZn' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v3 'GBt4P7WnbdSJtjX7' 'ZshZyZl5x4bRXBHU' --login_with_auth "Bearer foo"
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
echo "1..60"

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
    '{"daily": {"resetTime": "TrDzZSKscfOcYu3d"}, "descending": true, "iconURL": "FkYW5DQyj4bj5Ro2", "leaderboardCode": "ogaKt2ujQSa3Zdb6", "monthly": {"resetDate": 82, "resetTime": "UXmy0Zp6iIaTIKUk"}, "name": "mkk9QM0NBMA9ORxp", "seasonPeriod": 51, "startTime": "ORV3bu1bNCtX7W40", "statCode": "V6Do5sYadCCFrHHC", "weekly": {"resetDay": 23, "resetTime": "DpZxkrQDXuNFviMa"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'rv8mnfHK8CCmE2lP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["nsbD3SGEdlwuUccE", "536ugBp3HBvepnDC", "jgyJlXe36mgWjLfF"], "limit": 26, "slug": "9xbnGezKsDwG2omO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["R2nvYI9TVqJdvzcW", "bfUpaXp5JMl5LL4b", "TxBmZjdrrIxsB0NR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'sB1fPqqRRulpqpym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "DkQhtrHWwRVnwVBO"}, "descending": true, "iconURL": "y8wbhMssAHjapIkY", "monthly": {"resetDate": 88, "resetTime": "Rf4wP57dBZNR88Yb"}, "name": "CtmKy8M9zVrjfGXZ", "seasonPeriod": 28, "startTime": "slt71B1SmZp2JZp5", "statCode": "0CnPb71ORYcmQbTU", "weekly": {"resetDay": 81, "resetTime": "JX8ccLjMXJRk0eaK"}}' \
    'QDOJvrTefglSs6g4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'iY9u02aCNYIWekp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    '8lOC3mNqF7Bl0Lcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'hVHfPEspxwhRON0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'c1eMbEIjowLqc3ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'jXJbZDKKoxLE1Y3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'ymtj3giPg4x4yiPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    '6ues1Hhhkg1yLVbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'FzHEP8cM4NTwr0KH' \
    'aAsmTej52WKi6tAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.43276533009328666, "latestValue": 0.7509725815016969}' \
    'Rt9plCSVq8PdH6hJ' \
    'PUAc0RVwXgAgntLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'CuaXBWQi6BqPg4xr' \
    '0lCancUZGCHsZYoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'fR1KtOv7Zy0b65uv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'uKNuy0ytZQ7M6Nzy' \
    '["1adnSKOLFKx1dX4L", "uWJu3pDMUAeeZ97S", "BROPYuG6XqP6oo7G"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    '73zdxTgOfnwIdlNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    '29fDLh741IslKHzG' \
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
    '{"daily": {"resetTime": "lLKWUtDQs61OQAox"}, "descending": true, "iconURL": "4fZvWtND2tcBFpX8", "leaderboardCode": "lNtFEJ7tnkY6Mca5", "monthly": {"resetDate": 1, "resetTime": "1ozhLVA3kE8jKvga"}, "name": "tOEBM70TdlNBJYOm", "seasonPeriod": 32, "startTime": "Twlc6esUp6Sw1I98", "statCode": "jeZQ7hfxnhLd3Kna", "weekly": {"resetDay": 21, "resetTime": "WP3glU6muswVJnNn"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'N7kAa7j0riFc5HTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'QIoVsGo7dwV9DBqF' \
    'KHQkETJyTlUrwDTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'oujQD4IEiH9Z5qXn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    '3aoRtlqOECohViHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    '5CzgFSy8X1A3PrIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'apq5AAeMe4L3mDWO' \
    'RBVXTIIJM9XsYIIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'xiXNMR9BgaWcFX3S' \
    'UBhyoTsMWPAxUMka' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'waGpAyrIwMif3BOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'kocVTd4BxqGWV6mT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'J0sQs6XNbjvqhnUV' \
    'LWu8olKdxL6ozRmD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": true}' \
    'qFWZX7kPBom8F9GL' \
    'LTG8phc3n4iLoIll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": false}' \
    '89hmguB8FOTjMLo4' \
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
    'b9rIzqYkEpstyVTB' \
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
    '{"allTime": false, "cycleIds": ["LG59e0k5ZtX6wK7P", "pUlcIW32iK7MGt1i", "xY5rA1WoVeJIePF8"], "descending": false, "description": "rQzP4zvtdxdbZUpd", "iconURL": "6FJtHJ1pyVwyKQLY", "leaderboardCode": "6FEO65Rb3z7CYLM8", "name": "IlsHqffnrfsGlfPa", "statCode": "ZKBwa3Ddb60ufPpz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["wj1QGIFmlVf4jvap", "seE9LN9bvhOrHflI", "Od6X3viLvtEk4mTI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'pUA9gxo8SV38nEho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["vCE48L5oLF6M4lNa", "4JUMSHNgqRqCV7us", "amANkZlOX9Sfo95H"], "descending": false, "description": "iktm0ZPLkLOsp0LZ", "iconURL": "5njN86Hl8kUXzt6b", "name": "Sc6bWvgpVyW9dD1k"}' \
    'OmvrAejcq2LgkQua' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'S7RBx3vim02jBOxr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    'ZDyvpcLYOWA8NjxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'naEok4nOOCzfsflh' \
    'jbngJOUn18G5MlfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v3' \
    'Tk8aG40NlncceIZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    'wgAIkgzh4pTU0Am4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v3' \
    'DZhl0bQxFJ3sWCqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v3' \
    'pQ2FbKPFMycMSQ4q' \
    'fAacR0LgB5BUXvjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v3' \
    'u2s6w3VifnKqmTSo' \
    'GH1XEfY6QAYn6WQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v3' \
    'UBEU1QAOHfZiGhxO' \
    'dcuDXSxSc3aZPV87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-v3' \
    '{"visibility": true}' \
    '7K8Asvt1j1Rx59he' \
    'sNWy2NvZ85DDKDAF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v3' \
    '8KDsBZOuYQJ03BAH' \
    '["Z7c53q7akMpcmnnx", "6RVBrop9v7aZK3h6", "5hbN15zfQSfQrtfF"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 SetUserVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-v3' \
    '{"visibility": false}' \
    'TQN0OcNDLr36vzoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'SetUserVisibilityV3' test.out

#- 56 GetLeaderboardConfigurationsPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetLeaderboardConfigurationsPublicV3' test.out

#- 57 GetLeaderboardConfigurationPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-public-v3' \
    'ZyjMQAg5mPYhrLTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationPublicV3' test.out

#- 58 GetAllTimeLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'U8OhgfY9JQYGF4bY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 59 GetCurrentCycleLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    'XEcENx9xZlAchob4' \
    '4lONDDwMvgI0HlyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 60 GetUserRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v3' \
    'R7wZNiVsF6xG2mXE' \
    'QdbzIVy8alncV7vW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetUserRankingPublicV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
