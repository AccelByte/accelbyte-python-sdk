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

OPERATIONS_COUNT=68

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

#- 1 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 2 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 3 DeleteNamespaceSlotConfig
$PYTHON -m $MODULE 'social-delete-namespace-slot-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 4 GetUserSlotConfig
$PYTHON -m $MODULE 'social-get-user-slot-config' \
    'FtBxyZcD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSlotConfig'
delete_file $TEMP_FILE

#- 5 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'XBpGlsQu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserSlotConfig'
delete_file $TEMP_FILE

#- 6 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'Ju8vMf0I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSlotConfig'
delete_file $TEMP_FILE

#- 7 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'sJkTrd8I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserProfiles'
delete_file $TEMP_FILE

#- 8 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'DcV2zXnT' \
    'KjXY1bPq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetProfile'
delete_file $TEMP_FILE

#- 9 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'amiBxx9C' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 10 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    's18EY84e' \
    'kItqRzHU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSlotData'
delete_file $TEMP_FILE

#- 11 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["1oh570KQ"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserGameProfiles'
delete_file $TEMP_FILE

#- 12 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'BVaewc72' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserProfiles'
delete_file $TEMP_FILE

#- 13 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'krSha68n' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateProfile'
delete_file $TEMP_FILE

#- 14 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    '3Ynozp1C' \
    '2KmIQTuB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetProfile'
delete_file $TEMP_FILE

#- 15 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'dNEUsxFb' \
    '8CJ17M7D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateProfile'
delete_file $TEMP_FILE

#- 16 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'JZaMSxEC' \
    'bZbygyoa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeleteProfile'
delete_file $TEMP_FILE

#- 17 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'rORoeNHS' \
    'b8Rh3kgs' \
    '9qqJbnQs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetProfileAttribute'
delete_file $TEMP_FILE

#- 18 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'oBgiVpP8' \
    'Cm3yvASU' \
    'oxdxxFqm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateAttribute'
delete_file $TEMP_FILE

#- 19 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'AGTJ8IEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 20 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'agEtp4w2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 21 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    '9KOu9c19' \
    'R6XDqWHk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetSlotData'
delete_file $TEMP_FILE

#- 22 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'kP8npLEK' \
    'MfjiX7jp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 23 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'kVZk3IaQ' \
    'YEmqGodO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeleteUserNamespaceSlot'
delete_file $TEMP_FILE

#- 24 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'EGt9gPOj' \
    '0c6i0Jkv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserNamespaceSlotMetadata'
delete_file $TEMP_FILE

#- 25 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetGlobalStatItems'
delete_file $TEMP_FILE

#- 26 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'Ias73ucY' \
    'nFAJ3DK5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkFetchStatItems'
delete_file $TEMP_FILE

#- 27 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItem'
delete_file $TEMP_FILE

#- 28 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 29 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem'
delete_file $TEMP_FILE

#- 30 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStats'
delete_file $TEMP_FILE

#- 31 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStat'
delete_file $TEMP_FILE

#- 32 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportStats'
delete_file $TEMP_FILE

#- 33 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportStats'
delete_file $TEMP_FILE

#- 34 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'T4Eogg0Y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryStats'
delete_file $TEMP_FILE

#- 35 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '39UoYlpv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStat'
delete_file $TEMP_FILE

#- 36 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    '5bVAgtsD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStat'
delete_file $TEMP_FILE

#- 37 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'hUTDUscb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStat'
delete_file $TEMP_FILE

#- 38 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'QDjbTQuP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserStatItems'
delete_file $TEMP_FILE

#- 39 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'Mz2PTRlk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 40 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'yU89ZPOw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 41 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '6zPFJ42c' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue1'
delete_file $TEMP_FILE

#- 42 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'wmzBBSMN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem1'
delete_file $TEMP_FILE

#- 43 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'coAAOjKN' \
    'jfcYHm09' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserStatItem'
delete_file $TEMP_FILE

#- 44 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    '3aYgBU1s' \
    'qjyK0XH4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems'
delete_file $TEMP_FILE

#- 45 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '5PaRSOFQ' \
    'Btu23REZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncUserStatItemValue'
delete_file $TEMP_FILE

#- 46 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '8hRVX7LG' \
    'OvDdYiQS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserStatItemValue'
delete_file $TEMP_FILE

#- 47 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    '9i7mV1C9' \
    '1pjG9gpx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkFetchStatItems1'
delete_file $TEMP_FILE

#- 48 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItem'
delete_file $TEMP_FILE

#- 49 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 50 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem2'
delete_file $TEMP_FILE

#- 51 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStat1'
delete_file $TEMP_FILE

#- 52 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'L6ycTQdv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserStatItems'
delete_file $TEMP_FILE

#- 53 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'ln2LAuSQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 54 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'WEXL6LFE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 55 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '1YHo9m12' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue2'
delete_file $TEMP_FILE

#- 56 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '6ZWc8hHt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem3'
delete_file $TEMP_FILE

#- 57 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'WvbNYqgU' \
    'qslArFPi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserStatItem'
delete_file $TEMP_FILE

#- 58 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'HUIvaCv8' \
    'kU9dBBpd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems1'
delete_file $TEMP_FILE

#- 59 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'sJLhsVyE' \
    'xrkxoot0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicIncUserStatItem'
delete_file $TEMP_FILE

#- 60 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'B7WOferc' \
    'ZdpMci37' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicIncUserStatItemValue'
delete_file $TEMP_FILE

#- 61 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'Ds7YSfEx' \
    'aI3uzLte' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserStatItemValue1'
delete_file $TEMP_FILE

#- 62 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItemV2'
delete_file $TEMP_FILE

#- 63 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'MbFAlt4h' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem'
delete_file $TEMP_FILE

#- 64 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'r7HmOYiB' \
    'A5ltAOXm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems2'
delete_file $TEMP_FILE

#- 65 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'lG6eh1dT' \
    'doTFpBIc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserStatItemValue'
delete_file $TEMP_FILE

#- 66 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem1'
delete_file $TEMP_FILE

#- 67 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'uC1dQY93' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem2'
delete_file $TEMP_FILE

#- 68 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'OJnJ6Te9' \
    'vD8ldz7H' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserStatItemValue1'
delete_file $TEMP_FILE
