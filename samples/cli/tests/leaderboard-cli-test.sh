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
leaderboard-delete-all-user-ranking-by-cycle-id-admin-v3 'XFaY9eKa699bRVhy' 'aKwwrAP2aMlu7Wtj' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-by-cycle-id-admin-v3 'CtoYetOO847g8Oud' 'OfjnCuHZ3c46IjGa' '23YvYmmDg7VYPXIu' --login_with_auth "Bearer foo"
leaderboard-hard-delete-leaderboard-admin-v3 'vUYTZBRujIUE1Tq5' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3 'jyAZvkRCMNFIurjh' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v3 '2imdb4rbkXj0ZwsV' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v3 'C0gL97ZVJSPqJiwv' '1qlYB1RSKs6gQxC3' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v3 'Gb7S0o4zGYY7KQI1' 'AeFgPqaOkvo1aolB' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v3 '4lkKB4EYOkQ1jMD3' 'cym8xIfkOVW2grRE' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-v3 '{"visibility": true}' 'Lx0KOww3HICQLfl7' 'MUBG7qtPu64yAtUR' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v3 'KLRkb738HGS6rDgM' '["dIIlhS1fSiM9331m", "7Ta1PsKc50Kv6ecn", "EevcAx2K2zkRenmP"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v3 'ZnGBt4P7WnbdSJtj' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-v3 '{"visibility": false}' '7ZshZyZl5x4bRXBH' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v3 --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-public-v3 'UTrDzZSKscfOcYu3' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v3 'dpCROYqUiGKXVFCm' --login_with_auth "Bearer foo"
leaderboard-get-current-cycle-leaderboard-ranking-public-v3 'po6sPwVOEDSJsEK5' 'QpNhlI2iS5EpGhhv' --login_with_auth "Bearer foo"
leaderboard-bulk-get-users-ranking-public-v3 '{"userIds": ["XYck0upMzUYnb76t", "FkEORV3bu1bNCtX7", "W40V6Do5sYadCCFr"]}' 'HHC3DpZxkrQDXuNF' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v3 'viMarv8mnfHK8CCm' 'E2lPnsbD3SGEdlwu' --login_with_auth "Bearer foo"
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
echo "1..64"

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
    '{"daily": {"resetTime": "UccE536ugBp3HBve"}, "descending": true, "iconURL": "7udsMrok0WvGYYnx", "leaderboardCode": "4V709xbnGezKsDwG", "monthly": {"resetDate": 29, "resetTime": "T805tVg8JqU0jZpj"}, "name": "vsugAOS7u8RiWyer", "seasonPeriod": 59, "startTime": "4bTxBmZjdrrIxsB0", "statCode": "NRsB1fPqqRRulpqp", "weekly": {"resetDay": 49, "resetTime": "wrS0uPdjhdinpng5"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'BLy8wbhMssAHjapI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["kY9Rf4wP57dBZNR8", "8YbCtmKy8M9zVrjf", "GXZnqAQUoY1GjlII"], "limit": 22, "slug": "Zp50CnPb71ORYcmQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["bTU5JX8ccLjMXJRk", "0eaKQDOJvrTefglS", "s6g4iY9u02aCNYIW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'ekp18lOC3mNqF7Bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "0LcghVHfPEspxwhR"}, "descending": false, "iconURL": "0bc1eMbEIjowLqc3", "monthly": {"resetDate": 10, "resetTime": "KoELCpobBEG8X645"}, "name": "xpdXpai0rYaT5hOP", "seasonPeriod": 18, "startTime": "X6ues1Hhhkg1yLVb", "statCode": "LFzHEP8cM4NTwr0K", "weekly": {"resetDay": 69, "resetTime": "ZXiR1DJ7HVWqMkNS"}}' \
    'awQUWDFJvJBWic7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'kBeIXuqDuAXI66bQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    '71w0deoV9Lx5RDA1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'l2XcrciYNEzvSZIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'khSgORcz5S5BvmgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'Lxh4ijFnE3Tam69q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'SZ7PC6f6QkmZXElW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    '9YfRSse6AAz3S4cz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'z0QKFlAVmVLu4AOe' \
    'c0z8eBeeoip68J1n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.3045559126426418, "latestValue": 0.347660109409496}' \
    '4W2OJhtafxMSJlHe' \
    'b34sZKHcl5LLLOex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'L4fZvWtND2tcBFpX' \
    '8lNtFEJ7tnkY6Mca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    '5afj12K2IzrBvvWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    '4udE0OXudXgNne8k' \
    '["JATwlc6esUp6Sw1I", "98jeZQ7hfxnhLd3K", "naknoed9DHhLOqQG"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    'hCUr6iTrjyEgarAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'NJOIG36I6tRbRcrE' \
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
    '{"daily": {"resetTime": "veMdAdiPKDUVSC00"}, "descending": false, "iconURL": "eDcagginxnFIna3y", "leaderboardCode": "ddcbsPheTH26IUJN", "monthly": {"resetDate": 45, "resetTime": "5CzgFSy8X1A3PrIf"}, "name": "apq5AAeMe4L3mDWO", "seasonPeriod": 90, "startTime": "4pCAKxeE70CaunQN", "statCode": "xot371W9G4AvQkqs", "weekly": {"resetDay": 66, "resetTime": "BhyoTsMWPAxUMkaw"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'aGpAyrIwMif3BOdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'ocVTd4BxqGWV6mTJ' \
    '0sQs6XNbjvqhnUVL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'Wu8olKdxL6ozRmDD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    '0jJvlfV5OemPYdYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    '7DROCjtuzFMbAG9Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'I89hmguB8FOTjMLo' \
    '4b9rIzqYkEpstyVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'BcrM8rG0rH0zcsww' \
    'VeMK6MbGIVIu8vvw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'Lc7KY3uVoJXTIMtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'gkieDyF97lGdMiHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'xbWCYzo8yO2KTK9t' \
    'mmOnYnOpas6ghP1y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    'IlsHqffnrfsGlfPa' \
    'ZKBwa3Ddb60ufPpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'brWdTYCfHkIySok5' \
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
    'DiXZtLW87rGysryo' \
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
    '{"allTime": false, "cycleIds": ["d6X3viLvtEk4mTIp", "UA9gxo8SV38nEhoX", "mM2W7l6jHMA2rG3n"], "descending": false, "description": "4JUMSHNgqRqCV7us", "iconURL": "amANkZlOX9Sfo95H", "leaderboardCode": "gXqKhTPkwfLM9uSy", "name": "bRzWek2gZvRrvr0n", "statCode": "9d9lvccKMLhrTrcB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["E2ItBS3KtKZWe8ao", "FzAyBME74HUtipUW", "YhWV1qx8CzPML52f"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'aXUr9Sk4lq2faBcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["XKlhvyH8paOJtxqM", "PpcVfRwNj547fH0X", "rKEDpEY8VnocGAjc"], "descending": false, "description": "Zhl0bQxFJ3sWCqQp", "iconURL": "Q2FbKPFMycMSQ4qf", "name": "AacR0LgB5BUXvjcu"}' \
    '2s6w3VifnKqmTSoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'H1XEfY6QAYn6WQ5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    'BEU1QAOHfZiGhxOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'cuDXSxSc3aZPV87p' \
    'na08gxefTYKhuxaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 DeleteAllUserRankingByCycleIdAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-all-user-ranking-by-cycle-id-admin-v3' \
    'c7M4P7UckSC6ePeN' \
    '8i4GrFES9z7xueHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteAllUserRankingByCycleIdAdminV3' test.out

#- 48 DeleteUserRankingByCycleIdAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-cycle-id-admin-v3' \
    'ATHccee9GXhKcjmS' \
    'EwdrkEnnqKzFsLfY' \
    'alUlfwEQKjU7eHGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByCycleIdAdminV3' test.out

#- 49 HardDeleteLeaderboardAdminV3
$PYTHON -m $MODULE 'leaderboard-hard-delete-leaderboard-admin-v3' \
    'bSVu0LQ40kepEaC4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'HardDeleteLeaderboardAdminV3' test.out

#- 50 DeleteUserRankingByLeaderboardCodeAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    'dfiOMZfEhHr39pys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 51 GetHiddenUsersV3
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v3' \
    'FO3Zvc1BZG99Lyvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetHiddenUsersV3' test.out

#- 52 GetUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v3' \
    'vHEsJKQQewVLMUoA' \
    'naRcYp7FUjfIGaff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetUserRankingAdminV3' test.out

#- 53 DeleteUserRankingAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v3' \
    'oflEIByYqeKN0meG' \
    'elYF5wWaDhukU4kh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteUserRankingAdminV3' test.out

#- 54 GetUserVisibilityStatusV3
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v3' \
    'GG4vZFTYnPkmSu4P' \
    'Wam1jxR7SETWjteo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserVisibilityStatusV3' test.out

#- 55 SetUserLeaderboardVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-v3' \
    '{"visibility": false}' \
    'VBycvU4PbmRDcrg0' \
    'DjQjBECXvea7H1m2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'SetUserLeaderboardVisibilityV3' test.out

#- 56 DeleteUserRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v3' \
    'lJFRZ3ZprZ60zMjh' \
    '["THeh94TSenE5hCFk", "If5weqZ18MH57l2Z", "srh90ETtYmGukz3M"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserRankingsAdminV3' test.out

#- 57 GetUserLeaderboardRankingsAdminV3
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v3' \
    'nlrjcHp6B8Vj7rXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetUserLeaderboardRankingsAdminV3' test.out

#- 58 SetUserVisibilityV3
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-v3' \
    '{"visibility": false}' \
    '9Ns8eLzYEvwSWTaL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'SetUserVisibilityV3' test.out

#- 59 GetLeaderboardConfigurationsPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetLeaderboardConfigurationsPublicV3' test.out

#- 60 GetLeaderboardConfigurationPublicV3
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-public-v3' \
    'QjctvrK2jhsYpKPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetLeaderboardConfigurationPublicV3' test.out

#- 61 GetAllTimeLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'Xn77AtYoFzLAATPY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 62 GetCurrentCycleLeaderboardRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    '8P8P3cfoivvQxeve' \
    'cWw7Rry0KK5rgAGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 63 BulkGetUsersRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-bulk-get-users-ranking-public-v3' \
    '{"userIds": ["0dW8rX2MVUGKSZ4G", "cLkt4pK32sJxlZcC", "TpTdRtCHvuk6B6XT"]}' \
    'mSLyn50sigBVZxiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkGetUsersRankingPublicV3' test.out

#- 64 GetUserRankingPublicV3
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v3' \
    'dV57GvRyd9UuL02L' \
    'e8HSCslsDd4M1F5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetUserRankingPublicV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
