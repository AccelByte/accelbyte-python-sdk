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

OPERATIONS_COUNT=15

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

#- 1 GetTotalActiveSession
$PYTHON -m $MODULE 'sessionbrowser-get-total-active-session' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTotalActiveSession'
delete_file $TEMP_FILE

#- 2 GetActiveCustomGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-custom-game-sessions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetActiveCustomGameSessions'
delete_file $TEMP_FILE

#- 3 GetActiveMatchmakingGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-matchmaking-game-sessions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetActiveMatchmakingGameSessions'
delete_file $TEMP_FILE

#- 4 AdminGetSession
$PYTHON -m $MODULE 'sessionbrowser-admin-get-session' \
    'FtBxyZcD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetSession'
delete_file $TEMP_FILE

#- 5 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'XBpGlsQu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySession'
delete_file $TEMP_FILE

#- 6 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 42, "current_player": 77, "map_name": "f0IsJkTr", "max_internal_player": 6, "max_player": 68, "mode": "DcV2zXnT", "num_bot": 72, "password": "jXY1bPqa", "settings": {"miBxx9Cs": {}}}, "game_version": "18EY84ek", "namespace": "ItqRzHU1", "session_type": "oh570KQB", "username": "Vaewc72k"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSession'
delete_file $TEMP_FILE

#- 7 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'rSha68n3' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSessionByUserIDs'
delete_file $TEMP_FILE

#- 8 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'Ynozp1C2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSession'
delete_file $TEMP_FILE

#- 9 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_current_player": 72, "game_max_player": 24}' \
    'IQTuBdNE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSession'
delete_file $TEMP_FILE

#- 10 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'UsxFb8CJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSession'
delete_file $TEMP_FILE

#- 11 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "17M7DJZa"}' \
    'MSxECbZb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'JoinSession'
delete_file $TEMP_FILE

#- 12 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'ygyoarOR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSessionLocalDS'
delete_file $TEMP_FILE

#- 13 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "eNHSb8Rh"}' \
    '3kgs9qqJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AddPlayerToSession'
delete_file $TEMP_FILE

#- 14 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'bnQsoBgi' \
    'VpP8Cm3y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RemovePlayerFromSession'
delete_file $TEMP_FILE

#- 15 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'vASUoxdx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetRecentPlayer'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT