#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=32

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

#- 1 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "FtBxyZcD", "updatedAt": "XBpGlsQu", "value": {"Ju8vMf0I": {}}}' \
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 2 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '59' \
    '4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListGameRecordsHandlerV1'
delete_file $TEMP_FILE

#- 3 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'V2zXnTKj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 4 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'XY1bPqam' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 5 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'iBxx9Cs1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 6 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    '8EY84ekI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 7 ListPlayerRecordHandlerV1
update_status 0 'ListPlayerRecordHandlerV1 (skipped deprecated)'

#- 8 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "tqRzHU1o", "updatedAt": "h570KQBV", "value": {"aewc72kr": {}}}' \
    'Sha68n3Y' \
    'nozp1C2K' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 9 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'mIQTuBdN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRetrievePlayerRecords'
delete_file $TEMP_FILE

#- 10 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'EUsxFb8C' \
    'J17M7DJZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 11 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'aMSxECbZ' \
    'bygyoarO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 12 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'RoeNHSb8' \
    'Rh3kgs9q' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 13 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'qJbnQsoB' \
    'giVpP8Cm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 14 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    '3yvASUox' \
    'dxxFqmAG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 15 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'TJ8IEdag' \
    'Etp4w29K' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 16 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'Ou9c19R6' \
    'XDqWHkkP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminPostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 17 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    '8npLEKMf' \
    'jiX7jpkV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 18 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "Zk3IaQYE", "value": {"mqGodOEG": {}}}' \
    't9gPOj0c' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PutGameRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 19 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    '6i0JkvIa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 20 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    's73ucYnF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PutGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 21 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'AJ3DK5T4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PostGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 22 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'Eogg0Y39' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGameRecordHandlerV1'
delete_file $TEMP_FILE

#- 23 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["UoYlpv5b"]}' \
    'VAgtsDhU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 24 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'TDUscbQD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 25 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "jbTQuPMz", "value": {"2PTRlkyU": {}}}' \
    '89ZPOw6z' \
    'PFJ42cwm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerPublicRecordConcurrentHandlerV1'
delete_file $TEMP_FILE

#- 26 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'zBBSMNco' \
    'AAOjKNjf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 27 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'cYHm093a' \
    'YgBU1sqj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 28 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'yK0XH45P' \
    'aRSOFQBt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PostPlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 29 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'u23REZ8h' \
    'RVX7LGOv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlayerRecordHandlerV1'
delete_file $TEMP_FILE

#- 30 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'DdYiQS9i' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 31 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'jG9gpxL6' \
    'ycTQdvln' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PutPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

#- 32 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    '2LAuSQWE' \
    'XL6LFE1Y' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PostPlayerPublicRecordHandlerV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT