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
leaderboard-get-user-ranking-admin-v3 'CtoYetOO847g8Oud' 'OfjnCuHZ3c46IjGa' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v3 '23YvYmmDg7VYPXIu' 'vUYTZBRujIUE1Tq5' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v3 'jyAZvkRCMNFIurjh' '["2imdb4rbkXj0ZwsV", "C0gL97ZVJSPqJiwv", "1qlYB1RSKs6gQxC3"]' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v3 --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-public-v3 'Gb7S0o4zGYY7KQI1' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v3 'AeFgPqaOkvo1aolB' --login_with_auth "Bearer foo"
leaderboard-get-current-cycle-leaderboard-ranking-public-v3 '4lkKB4EYOkQ1jMD3' 'cym8xIfkOVW2grRE' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v3 'OLx0KOww3HICQLfl' '7MUBG7qtPu64yAtU' --login_with_auth "Bearer foo"
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
echo "1..56"

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
    '{"daily": {"resetTime": "RKLRkb738HGS6rDg"}, "descending": false, "iconURL": "G7tnsZg5QgXjvyGJ", "leaderboardCode": "PN4eXbJE5Vs2Gcyo", "monthly": {"resetDate": 25, "resetTime": "evcAx2K2zkRenmPZ"}, "name": "nGBt4P7WnbdSJtjX", "seasonPeriod": 16, "startTime": "ZshZyZl5x4bRXBHU", "statCode": "TrDzZSKscfOcYu3d", "weekly": {"resetDay": 32, "resetTime": "FkYW5DQyj4bj5Ro2"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'ogaKt2ujQSa3Zdb6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["5UXmy0Zp6iIaTIKU", "kmkk9QM0NBMA9ORx", "pzwLR2AK6eXUGPJs"], "limit": 45, "slug": "0V6Do5sYadCCFrHH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["C3DpZxkrQDXuNFvi", "Marv8mnfHK8CCmE2", "lPnsbD3SGEdlwuUc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'cE536ugBp3HBvepn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "DCjgyJlXe36mgWjL"}, "descending": false, "iconURL": "709xbnGezKsDwG2o", "monthly": {"resetDate": 26, "resetTime": "805tVg8JqU0jZpjv"}, "name": "sugAOS7u8RiWyerC", "seasonPeriod": 91, "startTime": "bTxBmZjdrrIxsB0N", "statCode": "RsB1fPqqRRulpqpy", "weekly": {"resetDay": 26, "resetTime": "rS0uPdjhdinpng5B"}}' \
    'Ly8wbhMssAHjapIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'Y9Rf4wP57dBZNR88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'YbCtmKy8M9zVrjfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'XZnqAQUoY1GjlIIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    '0iKoTTS1j02o7JjT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'XAQN0qdskdQV0TqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    '8EFnmDbxIxi4YKlO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'Nk2Q5Y4Jvaizwiil' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'atuUjjt9lIMGql5E' \
    'lEa9EIIlGcHB3CfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.894660820306647, "latestValue": 0.21002835664536612}' \
    'cDlwi3v3MFFJ1Kes' \
    'KoELCpobBEG8X645' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'xpdXpai0rYaT5hOP' \
    'jaf3H0tYighU0VUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'cYHJbBfAKSiPW3Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'sZXiR1DJ7HVWqMkN' \
    '["SawQUWDFJvJBWic7", "UkBeIXuqDuAXI66b", "Q71w0deoV9Lx5RDA"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    '1l2XcrciYNEzvSZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'PkhSgORcz5S5Bvmg' \
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
    '{"daily": {"resetTime": "BLxh4ijFnE3Tam69"}, "descending": true, "iconURL": "Nzy1adnSKOLFKx1d", "leaderboardCode": "X4LuWJu3pDMUAeeZ", "monthly": {"resetDate": 53, "resetTime": "7SBROPYuG6XqP6oo"}, "name": "7G73zdxTgOfnwIdl", "seasonPeriod": 82, "startTime": "v4W2OJhtafxMSJlH", "statCode": "eb34sZKHcl5LLLOe", "weekly": {"resetDay": 48, "resetTime": "xyyQpRWCiiPDGQhN"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'PEwiJCf2XJVrlzqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'ls1ozhLVA3kE8jKv' \
    'gatOEBM70TdlNBJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'Ompu1VCarzBsV6xn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'Z5Jrzzjrcaug6CWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'G8SWP3glU6muswVJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'nNnN7kAa7j0riFc5' \
    'HTHQIoVsGo7dwV9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'BqFKHQkETJyTlUrw' \
    'DTnoujQD4IEiH9Z5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'qXn3aoRtlqOECohV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'iHA5CzgFSy8X1A3P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'rIfapq5AAeMe4L3m' \
    'DWORBVXTIIJM9XsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    'IZxiXNMR9BgaWcFX' \
    '3SUBhyoTsMWPAxUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": false}' \
    'GEXFTlEMEsFzYqwg' \
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
    'K1Np5nodqpLm7FhJ' \
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
    '{"allTime": true, "cycleIds": ["TJ0sQs6XNbjvqhnU", "VLWu8olKdxL6ozRm", "DD0jJvlfV5OemPYd"], "descending": true, "description": "G8phc3n4iLoIllKl", "iconURL": "pO2pqiXJF3WGRaoQ", "leaderboardCode": "omSJC4DdrKF7SUQP", "name": "LG59e0k5ZtX6wK7P", "statCode": "pUlcIW32iK7MGt1i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["xY5rA1WoVeJIePF8", "ZrQzP4zvtdxdbZUp", "d6FJtHJ1pyVwyKQL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'Y6FEO65Rb3z7CYLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["IlsHqffnrfsGlfPa", "ZKBwa3Ddb60ufPpz", "wj1QGIFmlVf4jvap"], "descending": true, "description": "DiXZtLW87rGysryo", "iconURL": "d3dNQrmsApRA6HX3", "name": "RwrKt2ecozL0TOg5"}' \
    '4vCE48L5oLF6M4lN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'a4JUMSHNgqRqCV7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    'samANkZlOX9Sfo95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'HgXqKhTPkwfLM9uS' \
    'ybRzWek2gZvRrvr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v3' \
    'n9d9lvccKMLhrTrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    'BE2ItBS3KtKZWe8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v3' \
    'oFzAyBME74HUtipU' \
    'WYhWV1qx8CzPML52' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetUserRankingAdminV3' test.out

#- 50 DeleteUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v3' \
    'faXUr9Sk4lq2faBc' \
    'AXXKlhvyH8paOJtx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingAdminV3' test.out

#- 51 DeleteUserRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v3' \
    'qMPpcVfRwNj547fH' \
    '["0XrKEDpEY8VnocGA", "jci0V3tBf2jnHGKX", "phn50c9tNLDljhZ2"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingsAdminV3' test.out

#- 52 GetLeaderboardConfigurationsPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetLeaderboardConfigurationsPublicV3' test.out

#- 53 GetLeaderboardConfigurationPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-public-v3' \
    'jxLRX3z46OCaGBeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetLeaderboardConfigurationPublicV3' test.out

#- 54 GetAllTimeLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'fPlNos4yBRjrERHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 55 GetCurrentCycleLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    'onAZR8GmEu0q1p6Q' \
    'CyY6vSkVFWdsbYuV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 56 GetUserRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v3' \
    'EGVxYheR3j5mNZ6v' \
    'wv7K8Asvt1j1Rx59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetUserRankingPublicV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
