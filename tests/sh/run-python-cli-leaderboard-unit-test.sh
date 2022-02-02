#!/bin/bash

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=34

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 GetLeaderboardConfigurationsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-admin-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLeaderboardConfigurationsAdminV1'
delete_file $TEMP_FILE

#- 2 CreateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "FtBxyZcD"}, "descending": true, "iconURL": "pGlsQuJu", "leaderboardCode": "8vMf0IsJ", "monthly": {"resetDate": 20, "resetTime": "Trd8IDcV"}, "name": "2zXnTKjX", "seasonPeriod": 3, "startTime": "PqamiBxx", "statCode": "9Cs18EY8", "weekly": {"resetDay": 9, "resetTime": "kItqRzHU"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 AdminGetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    '1oh570KQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 4 CreateArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["BVaewc72"], "limit": 21, "slug": "rSha68n3"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 5 DeleteBulkLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["Ynozp1C2"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteBulkLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 6 GetLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'KmIQTuBd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 UpdateLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {"resetTime": "NEUsxFb8"}, "descending": true, "iconURL": "J17M7DJZ", "monthly": {"resetDate": 0, "resetTime": "MSxECbZb"}, "name": "ygyoarOR", "seasonPeriod": 29, "startTime": "eNHSb8Rh", "statCode": "3kgs9qqJ", "weekly": {"resetDay": 2, "resetTime": "nQsoBgiV"}}' \
    'pP8Cm3yv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 8 DeleteLeaderboardConfigurationAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'ASUoxdxx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteLeaderboardConfigurationAdminV1'
delete_file $TEMP_FILE

#- 9 GetAllTimeLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'FqmAGTJ8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllTimeLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 10 GetCurrentMonthLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'IEdagEtp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentMonthLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 11 GetCurrentSeasonLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    '4w29KOu9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentSeasonLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 12 GetTodayLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'c19R6XDq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTodayLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 13 GetUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-admin-v1' \
    'WHkkP8np' \
    'LEKMfjiX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserRankingAdminV1'
delete_file $TEMP_FILE

#- 14 UpdateUserPointAdminV1
$PYTHON -m $MODULE 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 0.9319948639373902, "latestValue": 0.2472405520592631}' \
    'VZk3IaQY' \
    'EmqGodOE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserPointAdminV1'
delete_file $TEMP_FILE

#- 15 DeleteUserRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-admin-v1' \
    'Gt9gPOj0' \
    'c6i0JkvI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserRankingAdminV1'
delete_file $TEMP_FILE

#- 16 GetCurrentWeekLeaderboardRankingAdminV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'as73ucYn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentWeekLeaderboardRankingAdminV1'
delete_file $TEMP_FILE

#- 17 DeleteUserRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-delete-user-rankings-admin-v1' \
    'FAJ3DK5T' \
    '["4Eogg0Y3"]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserRankingsAdminV1'
delete_file $TEMP_FILE

#- 18 GetUserLeaderboardRankingsAdminV1
$PYTHON -m $MODULE 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    '9UoYlpv5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserLeaderboardRankingsAdminV1'
delete_file $TEMP_FILE

#- 19 GetLeaderboardConfigurationsPublicV1
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLeaderboardConfigurationsPublicV1'
delete_file $TEMP_FILE

#- 20 CreateLeaderboardConfigurationPublicV1
$PYTHON -m $MODULE 'leaderboard-create-leaderboard-configuration-public-v1' \
    '{"daily": {"resetTime": "bVAgtsDh"}, "descending": true, "iconURL": "UscbQDjb", "leaderboardCode": "TQuPMz2P", "monthly": {"resetDate": 91, "resetTime": "RlkyU89Z"}, "name": "POw6zPFJ", "seasonPeriod": 5, "startTime": "wmzBBSMN", "statCode": "coAAOjKN", "weekly": {"resetDay": 18, "resetTime": "fcYHm093"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateLeaderboardConfigurationPublicV1'
delete_file $TEMP_FILE

#- 21 GetAllTimeLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'aYgBU1sq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllTimeLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 22 GetArchivedLeaderboardRankingDataV1Handler
$PYTHON -m $MODULE 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'jyK0XH45' \
    'PaRSOFQB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetArchivedLeaderboardRankingDataV1Handler'
delete_file $TEMP_FILE

#- 23 GetCurrentMonthLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'tu23REZ8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentMonthLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 24 GetCurrentSeasonLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'hRVX7LGO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentSeasonLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 25 GetTodayLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'vDdYiQS9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTodayLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 26 GetUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-user-ranking-public-v1' \
    'i7mV1C91' \
    'pjG9gpxL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserRankingPublicV1'
delete_file $TEMP_FILE

#- 27 DeleteUserRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-delete-user-ranking-public-v1' \
    '6ycTQdvl' \
    'n2LAuSQW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserRankingPublicV1'
delete_file $TEMP_FILE

#- 28 GetCurrentWeekLeaderboardRankingPublicV1
$PYTHON -m $MODULE 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'EXL6LFE1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentWeekLeaderboardRankingPublicV1'
delete_file $TEMP_FILE

#- 29 GetHiddenUsersV2
$PYTHON -m $MODULE 'leaderboard-get-hidden-users-v2' \
    'YHo9m126' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetHiddenUsersV2'
delete_file $TEMP_FILE

#- 30 GetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-get-user-visibility-status-v2' \
    'ZWc8hHtW' \
    'vbNYqgUq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 31 SetUserLeaderboardVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": true}' \
    'lArFPiHU' \
    'IvaCv8kU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SetUserLeaderboardVisibilityStatusV2'
delete_file $TEMP_FILE

#- 32 SetUserVisibilityStatusV2
$PYTHON -m $MODULE 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": false}' \
    'BBpdsJLh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SetUserVisibilityStatusV2'
delete_file $TEMP_FILE

#- 33 GetLeaderboardConfigurationsPublicV2
$PYTHON -m $MODULE 'leaderboard-get-leaderboard-configurations-public-v2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLeaderboardConfigurationsPublicV2'
delete_file $TEMP_FILE

#- 34 GetAllTimeLeaderboardRankingPublicV2
$PYTHON -m $MODULE 'leaderboard-get-all-time-leaderboard-ranking-public-v2' \
    'sVyExrkx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllTimeLeaderboardRankingPublicV2'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT