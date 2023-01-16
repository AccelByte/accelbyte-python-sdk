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
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "PGemLgxe"}, "descending": false, "iconURL": "hiYC7VVG", "leaderboardCode": "ke9SAFL8", "monthly": {"resetDate": 10, "resetTime": "U3jKg4x4"}, "name": "aitBREIg", "seasonPeriod": 28, "startTime": "rERsse5r", "statCode": "D42UBp4V", "weekly": {"resetDay": 95, "resetTime": "jhfrXawr"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler 'VcE6Tg2O' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["9X5oPqbx", "1dhz84Q7", "eocty89W"], "limit": 94, "slug": "YO6HyocK"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["b2pKoml8", "qPEZvX8N", "foPhp420"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'CHqDBEs9' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "aQThYtSC"}, "descending": true, "iconURL": "HXiPPFvG", "monthly": {"resetDate": 73, "resetTime": "greOaCqT"}, "name": "laGRTqm5", "seasonPeriod": 95, "startTime": "dH3APwhY", "statCode": "HHMtW2nc", "weekly": {"resetDay": 32, "resetTime": "RGFq9Dyc"}}' 'm85ULJuW' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 'M6NnZcwh' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'sjP3tZ0t' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'BlYOpbiE' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 'fDP0vbOe' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 '2cQ7btoM' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'MXrfgm4v' 'uwBGT4fK' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.8801290990660545, "latestValue": 0.19435508262131695}' 'UJVsndly' 'lTcPBxNg' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'u9ozVW4t' '1xe3FD0b' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 'cKkykLq4' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 'BvbCoqH8' '["2CEBZRT0", "vFsXPeps", "MQHzOgIq"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 'qGSebdh7' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "eWWIKnKI"}, "descending": false, "iconURL": "e0g2iNh6", "leaderboardCode": "bT7f7IfH", "monthly": {"resetDate": 74, "resetTime": "617UcMBI"}, "name": "XDos2hCK", "seasonPeriod": 10, "startTime": "84Aikxhm", "statCode": "Cx0Ru2me", "weekly": {"resetDay": 73, "resetTime": "LQZwQLGr"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 's9t0us7F' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'obCANF65' 'Pjkiztf7' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 'Jigc2fF7' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 'jRNY27CO' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'cehDvxr5' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'Ddhc6HAR' '0e5bH1nl' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 'DZdUkKvG' 'YaW84T0l' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 'YF0vgJQq' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'skcsml15' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 'xYSjaUdE' 'u5FmVwxx' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": true}' 'sq9n6Lvl' 'LwpZzewG' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": true}' 'ntQEQR5J' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 'vwrsO8j8' --login_with_auth "Bearer foo"
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
    '{"daily": {"resetTime": "pH8h79FT"}, "descending": true, "iconURL": "hI2OkOiZ", "leaderboardCode": "SLcnjM30", "monthly": {"resetDate": 25, "resetTime": "YjRpLhSm"}, "name": "3ElDW3z9", "seasonPeriod": 87, "startTime": "AWmYzST7", "statCode": "ccEDHjrW", "weekly": {"resetDay": 66, "resetTime": "hgXs6cBA"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'QofH1dZl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["nZCBvElC", "AchjTPgJ", "8IhgTC3u"], "limit": 69, "slug": "25jOPCqy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["9D7S8XN1", "DQrScCcD", "3BNBVck6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'sjUnTwLo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "YgZoAKOX"}, "descending": true, "iconURL": "X59PBpJL", "monthly": {"resetDate": 99, "resetTime": "xCqrFmQ1"}, "name": "VslXgnZP", "seasonPeriod": 73, "startTime": "Z21c1BRi", "statCode": "33HtPB4M", "weekly": {"resetDay": 94, "resetTime": "Ml6BccN9"}}' \
    'Bdn7A7Bn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'ms2XOnVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'rT3vDQWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'vRh6fGBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'd5ZVsjW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'l30aDsvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'VrtI7977' \
    'V8J5Pnkv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.7444970253967235, "latestValue": 0.4661353944272687}' \
    'tQ5IuFyZ' \
    'C31wWcxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    '3ZJc6eJk' \
    'pmyKh6Vv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'zhnoR5QV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'H94ha9PW' \
    '["uPg46mHm", "UDPlQh93", "A2B7WJV9"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'JvbHfD4a' \
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
    '{"daily": {"resetTime": "0pBKhjE6"}, "descending": true, "iconURL": "x5tx3D5q", "leaderboardCode": "pNvVq7xT", "monthly": {"resetDate": 90, "resetTime": "kbqzADhI"}, "name": "15JopGqo", "seasonPeriod": 24, "startTime": "eE7AaGrc", "statCode": "s226ka6h", "weekly": {"resetDay": 80, "resetTime": "m5wcKufz"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'NWoUGUqo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    '2O8IrUe0' \
    'o5Yeo90x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'GnwWIYCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    '1kE033nm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'lNIZetwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'onAETvyR' \
    'h25GQRGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    'rR8l507y' \
    'maG2utPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    't7gS8Sq6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    '6ILdsH0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'xx1NWDjB' \
    'Flb3kPB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": true}' \
    '39kDy2Vc' \
    'H052H7HM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": true}' \
    'FXmXmFO8' \
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
    'uXKok1G3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
