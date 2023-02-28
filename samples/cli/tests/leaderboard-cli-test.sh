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
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "SMOaFSgx"}, "descending": false, "iconURL": "qRDThkrU", "leaderboardCode": "p3PlToOh", "monthly": {"resetDate": 83, "resetTime": "DSKZuapU"}, "name": "StqtSVjw", "seasonPeriod": 39, "startTime": "8nZX4Vhf", "statCode": "tm8eq5OD", "weekly": {"resetDay": 45, "resetTime": "P5JdZVKR"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler '4mQyFG4t' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["eoBanGLt", "tHN6icFy", "jBmUgcpH"], "limit": 89, "slug": "C5J4Zs7U"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["N9Jl7HE0", "VnoIAUOy", "epOPHTJY"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'NCGpDEPz' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "pzUYyPDi"}, "descending": false, "iconURL": "btAfXI3D", "monthly": {"resetDate": 43, "resetTime": "SXlkfDSi"}, "name": "iqwkp8y3", "seasonPeriod": 19, "startTime": "jvGWb5H6", "statCode": "OMpTILGF", "weekly": {"resetDay": 67, "resetTime": "kZHdNz3L"}}' 'LukJKDKA' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 'AZWapZPR' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'jyqfVpRQ' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'pKNlXYjF' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 'UMpUQmfW' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 'yZvHUFoV' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'T2QPCASa' 'u12E2CDf' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.1368016737926513, "latestValue": 0.3758576741681171}' 'fWrEV6WR' 'FQwIBfXh' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'sNLTHAYh' '3n6Cv0DC' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 'Rytb0NPc' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 '0ET7q2ke' '["e3UGiiaS", "1PcKAtAZ", "zrhBqae3"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 'vDwIDHS4' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "g7VWwLC6"}, "descending": true, "iconURL": "LSpUFmBx", "leaderboardCode": "93z4T549", "monthly": {"resetDate": 37, "resetTime": "rWSULZOA"}, "name": "Ynl7j50H", "seasonPeriod": 34, "startTime": "zRxxzHj9", "statCode": "823CHL1E", "weekly": {"resetDay": 37, "resetTime": "ZwMaSRz0"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 'ftPriTNs' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'QsztQbR1' 'DAK78dVR' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 '7XANy6fF' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 'uWl7ffWu' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'BbADUV41' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'Dt5CDKUt' 'GGeBbF2L' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 '96UN3Lu0' '7udEJi9X' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 '0HE8L4O4' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'C52dMasX' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 '40ZQJ1h3' 'NwdqaJLp' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": true}' 'yVDtMWMS' 'NvHQa5Yz' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": true}' 'so9r3jTf' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 'behRLDOX' --login_with_auth "Bearer foo"
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
echo "1..35"

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
    '{"daily": {"resetTime": "AYbX6eMN"}, "descending": false, "iconURL": "CPxD7AEe", "leaderboardCode": "L5NHIECi", "monthly": {"resetDate": 0, "resetTime": "gpNqz8Zf"}, "name": "i6qEeBiw", "seasonPeriod": 37, "startTime": "oPLQ2BpF", "statCode": "blYcMuZr", "weekly": {"resetDay": 69, "resetTime": "Vwas0FC9"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    '6WDbmjW5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["XVuoh7g4", "vq9geejO", "HhkQZYrc"], "limit": 43, "slug": "18oje1Zj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["qxEZyUBn", "4ybvxmwd", "bnO8s1gu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'BNHuNSr9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "oGNaPi0q"}, "descending": false, "iconURL": "lUnQJZcc", "monthly": {"resetDate": 6, "resetTime": "8ejUgJhZ"}, "name": "fVMsJzFp", "seasonPeriod": 79, "startTime": "dLXwkovR", "statCode": "T39f6kR1", "weekly": {"resetDay": 12, "resetTime": "56ZpEJDU"}}' \
    'JlcmBNBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'tjXt9Dnh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'G6kyBdOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    '7kqruEdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'lVmcXcCD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'RpxAPsX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'cFDREFSw' \
    'Z7PDL54Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.8079548336800453, "latestValue": 0.4866352757972151}' \
    'I82kjtcy' \
    '7Gtyj0E3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'PckrEzd4' \
    'AhdLMep7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'g4hUTR5u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    '0xUHKvn7' \
    '["o7XSB0yg", "pOuzJnL2", "4AW1YB7R"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'A3B7SOt0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserLeaderboardRankingsAdminV1' test.out

#- 20 GetLeaderboardConfigurationsPublicV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetLeaderboardConfigurationsPublicV1' test.out

#- 21 CreateLeaderboardConfigurationPublicV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-public-v1' \
    '{"daily": {"resetTime": "dqGIl2C1"}, "descending": true, "iconURL": "vZwphVhW", "leaderboardCode": "85oTCARe", "monthly": {"resetDate": 35, "resetTime": "4zCpIj32"}, "name": "7ysaAU0M", "seasonPeriod": 98, "startTime": "KglvxwCY", "statCode": "dabZ4CDl", "weekly": {"resetDay": 49, "resetTime": "mFuJmTdW"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'w9MxU57y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'xiOtazj9' \
    'aG7uxfuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'Ayp03rKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'IeLfM8P5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'Oe9JRkjl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'AHOStvYS' \
    'E5RmkN1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'HxUf9RsJ' \
    'rWJ9Kf7n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'lZQSncqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    '5xfqXwPS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'q4cuWltA' \
    'rJDM9W36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    'iFdFaT4P' \
    'o5qZ1vih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'VCUu5Jcw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetUserVisibilityStatusV2' test.out

#- 34 GetLeaderboardConfigurationsPublicV2
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetLeaderboardConfigurationsPublicV2' test.out

#- 35 GetAllTimeLeaderboardRankingPublicV2
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v2' \
    'o2eGDLpi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
