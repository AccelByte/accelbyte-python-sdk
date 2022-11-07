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
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "dFYT7bpr"}, "descending": false, "iconURL": "L2yUcmCf", "leaderboardCode": "0ivyECvo", "monthly": {"resetDate": 96, "resetTime": "UgMQL9PQ"}, "name": "N7HbXuuU", "seasonPeriod": 3, "startTime": "Bg0gMtov", "statCode": "d5jHEFnI", "weekly": {"resetDay": 71, "resetTime": "NGv3H4S9"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler 'VUTkg1EB' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["wHqklf31", "csOsivSE", "Ym5NHJc6"], "limit": 42, "slug": "B8LuljO1"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["J5eTbBB7", "9XhHepeJ", "zMtjALdA"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'XKRHe6th' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "leCcqLQO"}, "descending": true, "iconURL": "iNaH8Cpl", "monthly": {"resetDate": 15, "resetTime": "qZLVAZAs"}, "name": "T46kWGYu", "seasonPeriod": 43, "startTime": "y69IEal0", "statCode": "xif8Yaiu", "weekly": {"resetDay": 37, "resetTime": "m7yjZ4mO"}}' 'pRVekALo' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 '84oXNhCx' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'yPRf6r4T' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'rTL7l3KW' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 'vQSB2ZPd' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 'QJyLPZQr' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'spXsIAQ2' 'SUPuZ4dx' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.9904227075073293, "latestValue": 0.04468355489907605}' '31aln8bZ' 'I9RY0R8K' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'ysetGFdY' 'YZtqiPB5' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 '2HMD5ill' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 'm1ZUdtaN' '["N40m3dvu", "5DV195sl", "DbLq39UT"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 '32woNhIQ' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "izH4CUBF"}, "descending": false, "iconURL": "rU6yj2MN", "leaderboardCode": "WObJW8Bj", "monthly": {"resetDate": 78, "resetTime": "EkMYes2x"}, "name": "a222lvjW", "seasonPeriod": 74, "startTime": "n5BuBwWn", "statCode": "iW02w02J", "weekly": {"resetDay": 41, "resetTime": "pgzk3TZg"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 'VpFgzzKL' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'cwHWNP1m' 'I0RHV5X4' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 '07xKa55c' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 '6mOEJMHX' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'xz5ESeK9' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'mpC8hWQj' 'QcWzQMVD' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 'QG8gX6n9' 'ALFcQY2K' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 'hmFD9njs' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'yFxqszy4' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 'rGEWiQ7f' 'buolrdBr' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": false}' 'KZ4JNdcU' 'YRrVkCYf' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": true}' 'tOyG8TTO' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 '0NyfaEB5' --login_with_auth "Bearer foo"
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
    '{"daily": {"resetTime": "O04NHzNS"}, "descending": true, "iconURL": "RGm1G68g", "leaderboardCode": "UulA2PCc", "monthly": {"resetDate": 36, "resetTime": "euRp9ebz"}, "name": "DvIhGlTD", "seasonPeriod": 51, "startTime": "YTYkOKtf", "statCode": "FHqeepiJ", "weekly": {"resetDay": 49, "resetTime": "uRRKjhta"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'Reoyk53x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["kIEXA8RN", "x6vRgvIL", "mEuhlgDm"], "limit": 66, "slug": "QDp7Mn24"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["L8IqDb7Q", "bsXHWb6S", "PeIUhSyv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'JdvyuJ8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "upiT1OiW"}, "descending": false, "iconURL": "VUSu4e94", "monthly": {"resetDate": 88, "resetTime": "IjoFTYYz"}, "name": "JXm6Su0o", "seasonPeriod": 66, "startTime": "adaFULlP", "statCode": "GnQobtU0", "weekly": {"resetDay": 72, "resetTime": "3Lyhrr0j"}}' \
    'OHPbxGRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'KgvlUeWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'mlH9RHeN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'wgtfhXhF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'uKGFQg3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'YVPxLHzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'TqqcDqll' \
    'ubMiiDiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.18961166479930502, "latestValue": 0.9451869673853576}' \
    '5klWzIut' \
    'xQxMWNqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'PkE1Lmvs' \
    'ZiiDg6Tq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'qtqddNTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'ayYOlhWv' \
    '["CXZ8FxyI", "A8ukalAL", "wOWmfBAm"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'lNmHPOzF' \
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
    '{"daily": {"resetTime": "QqK4WNC7"}, "descending": true, "iconURL": "Dl9dfotP", "leaderboardCode": "hUEt4j0r", "monthly": {"resetDate": 2, "resetTime": "Q7emA0Dt"}, "name": "OM1iKKbz", "seasonPeriod": 29, "startTime": "K6M4iTuY", "statCode": "XLKkNFfY", "weekly": {"resetDay": 42, "resetTime": "0H1qV6bC"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'PxN1SjM2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'f0ljyq9m' \
    '8vx3Mdm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    '1EzkujAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'fIme4ink' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'Jm7oRWaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'Rl5U2V44' \
    'JX6rqNyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'QPsnxRhr' \
    'doOuF0uF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'yGjZk1aR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    '6BvbjpiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'w3A7InMp' \
    'IBwSyQn4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": true}' \
    'DcsOhLaa' \
    'zHJxwY52' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": false}' \
    'dZrmbagM' \
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
    'BjCyvgX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
