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

OPERATIONS_COUNT=28

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '62' \
    '39' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListGameRecordsHandlerV1'
delete_file $TEMP_FILE

#- 2 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'BxyZcDXB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 3 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'pGlsQuJu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 4 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    '8vMf0IsJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 5 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'kTrd8IDc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 6 ListPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-player-record-handler-v1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 7 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'V2zXnTKj' \
    'XY1bPqam' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 8 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'iBxx9Cs1' \
    '8EY84ekI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 9 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'tqRzHU1o' \
    'h570KQBV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 10 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'aewc72kr' \
    'Sha68n3Y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 11 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'nozp1C2K' \
    'mIQTuBdN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 12 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'EUsxFb8C' \
    'J17M7DJZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 13 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'aMSxECbZ' \
    'bygyoarO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 14 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'RoeNHSb8' \
    'Rh3kgs9q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 15 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "qJbnQsoB", "value": {"giVpP8Cm": null}}' \
    '3yvASUox' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PutGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 16 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'dxxFqmAG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 17 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'TJ8IEdag' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 18 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'Etp4w29K' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 19 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'Ou9c19R6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 20 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'XDqWHkkP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 21 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "8npLEKMf", "value": {"jiX7jpkV": null}}' \
    'Zk3IaQYE' \
    'mqGodOEG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 22 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    't9gPOj0c' \
    '6i0JkvIa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 23 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    's73ucYnF' \
    'AJ3DK5T4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 24 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'Eogg0Y39' \
    'UoYlpv5b' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 25 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'VAgtsDhU' \
    'TDUscbQD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 26 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'jbTQuPMz' \
    '2PTRlkyU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 27 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    '89ZPOw6z' \
    'PFJ42cwm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 28 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'zBBSMNco' \
    'AAOjKNjf' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE
