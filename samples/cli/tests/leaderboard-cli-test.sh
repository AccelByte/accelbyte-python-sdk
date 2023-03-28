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
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "EAxcVpFr"}, "descending": true, "iconURL": "I6LZrkq6", "leaderboardCode": "Dc09nIW0", "monthly": {"resetDate": 83, "resetTime": "qlAw7r6W"}, "name": "2ktQG0h5", "seasonPeriod": 72, "startTime": "PUdc0qh4", "statCode": "n8mzZ0m8", "weekly": {"resetDay": 91, "resetTime": "tcDs8bBZ"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler 'LCXLx8bb' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["gorQeFbQ", "1g7qbPng", "UNB1vRod"], "limit": 46, "slug": "ElFHHdgs"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["21Jub74C", "UkNmKJfh", "5pUkHODp"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'oMF78NY4' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "YkHs1cnz"}, "descending": true, "iconURL": "JSDgY1TX", "monthly": {"resetDate": 31, "resetTime": "vbTgrhRT"}, "name": "cPiSuL0S", "seasonPeriod": 23, "startTime": "kT7NvyE3", "statCode": "cwyALczN", "weekly": {"resetDay": 72, "resetTime": "Mf8GZ2WB"}}' 'ZqxYG3aR' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 'EAu2D6QV' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'KNCWP75T' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'B0i7pKxR' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 '8dl0zRVW' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 '4EZG9m0X' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'cgGVbMqS' 'szE8GHav' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.16079722885366476, "latestValue": 0.9669805024082485}' 'AorKsxwk' 'osAVerXp' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'c1C8XfwH' 'uKeb9l3r' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 'GN9A3sNm' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 '84hddSpH' '["t0P7MIIR", "7CkyF6C7", "duuyZ0Gh"]' --login_with_auth "Bearer foo"
leaderboard-admin-anonymize-user-leaderboard-admin-v1 'DogqrhBR' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 'd8lDR6qV' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "NPRZYdFL"}, "descending": false, "iconURL": "AjGGJddV", "leaderboardCode": "Cvu9vx5K", "monthly": {"resetDate": 88, "resetTime": "kLGMS0ly"}, "name": "uI9a2I9u", "seasonPeriod": 86, "startTime": "Vpbsx5w8", "statCode": "hqUI06Up", "weekly": {"resetDay": 83, "resetTime": "B0y5WUlr"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 'MdI4sNve' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'abntBSxT' 'eIv53HGC' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 'iljvjKoy' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 'D6SCwGrn' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'cqmLtjQH' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'Af8TgoNm' '03VLisV6' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 'zwPuo3td' '6TC6I3lM' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 'jGSWN2la' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'RlxfcjHf' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 'YakUCTqG' 'kE7wcWfD' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": true}' 'qYSYWytL' 'PziZMdjx' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": false}' 'd3IL5TAQ' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 '6iiPlSC2' --login_with_auth "Bearer foo"
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

#- 2 GetLeaderboardConfigurationsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "uE4o5Vwd"}, "descending": false, "iconURL": "m3MqHcUm", "leaderboardCode": "LZZbSqb8", "monthly": {"resetDate": 90, "resetTime": "0hpDDWVA"}, "name": "la2l5BYN", "seasonPeriod": 39, "startTime": "E0mit9RG", "statCode": "CCHYzUOc", "weekly": {"resetDay": 62, "resetTime": "zzWi9gwQ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'Yv7t1o7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["Tr1DmrhZ", "v15T7quI", "OvBMcaYm"], "limit": 44, "slug": "t0zYoMcH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["yCUEXlAv", "xJMdalwS", "yliWMNW5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'NyLu0M3V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "Hh2EI8Jl"}, "descending": true, "iconURL": "9ZZPYGu0", "monthly": {"resetDate": 37, "resetTime": "lNmqRBaA"}, "name": "kLnvxkT1", "seasonPeriod": 31, "startTime": "68cmDc3f", "statCode": "xU8MyKrQ", "weekly": {"resetDay": 32, "resetTime": "v52Dlym6"}}' \
    'puQ23xoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    '8aeCnaLp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'UKp44YUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'jasWIPUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'mEejtGeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'yIPa8ZRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'vjj7il35' \
    'MXbN9oCM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.6426563176887718, "latestValue": 0.25860977617759595}' \
    'q98SjTvh' \
    'ZNkSQ70D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    '0H6BXksU' \
    'C9b6i5lZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'C9xv32e8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'c5csSovo' \
    '["qsZNBdte", "9NDUPVJf", "6c2Z0QZx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 AdminAnonymizeUserLeaderboardAdminV1
$PYTHON -m $MODULE 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    'fgPubTDI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 20 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'HrvqAThu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetUserLeaderboardRankingsAdminV1' test.out

#- 21 GetLeaderboardConfigurationsPublicV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetLeaderboardConfigurationsPublicV1' test.out

#- 22 CreateLeaderboardConfigurationPublicV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-public-v1' \
    '{"daily": {"resetTime": "wjRHpKKT"}, "descending": false, "iconURL": "oF7VSZ6p", "leaderboardCode": "f3vneSD2", "monthly": {"resetDate": 92, "resetTime": "Hbn4Xxtu"}, "name": "7LQRENjE", "seasonPeriod": 62, "startTime": "U6YE3p4l", "statCode": "Sck0ZHn5", "weekly": {"resetDay": 67, "resetTime": "BJroav91"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateLeaderboardConfigurationPublicV1' test.out

#- 23 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'GXlvPG6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 24 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'FYReVHQi' \
    'pcCx9Zw5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 25 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'D2L7vIYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 26 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'GGSyEW4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 27 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'JJ42d3PB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetTodayLeaderboardRankingPublicV1' test.out

#- 28 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'ddN8S48l' \
    '9lyNApfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserRankingPublicV1' test.out

#- 29 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'xqMrj3oZ' \
    'k03QXcKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteUserRankingPublicV1' test.out

#- 30 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'DYDDxHSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 31 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'jtqXyJ58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetHiddenUsersV2' test.out

#- 32 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'f7Gc26Sa' \
    'iGVkydwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetUserVisibilityStatusV2' test.out

#- 33 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    'QG26yUZN' \
    'mTBcvrbY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 34 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'DG8aMVGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'SetUserVisibilityStatusV2' test.out

#- 35 GetLeaderboardConfigurationsPublicV2
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetLeaderboardConfigurationsPublicV2' test.out

#- 36 GetAllTimeLeaderboardRankingPublicV2
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v2' \
    'iBNrDjqo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetAllTimeLeaderboardRankingPublicV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
