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

#- 1 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetNamespaceSlotConfig'
delete_file $TEMP_FILE

#- 2 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 62, "maxSlots": 39}' \
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
    'BxyZcDXB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSlotConfig'
delete_file $TEMP_FILE

#- 5 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'pGlsQuJu' \
    --body '{"maxSlotSize": 42, "maxSlots": 77}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserSlotConfig'
delete_file $TEMP_FILE

#- 6 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'f0IsJkTr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSlotConfig'
delete_file $TEMP_FILE

#- 7 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'd8IDcV2z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserProfiles'
delete_file $TEMP_FILE

#- 8 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'XnTKjXY1' \
    'bPqamiBx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetProfile'
delete_file $TEMP_FILE

#- 9 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'x9Cs18EY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 10 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    '84ekItqR' \
    'zHU1oh57' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSlotData'
delete_file $TEMP_FILE

#- 11 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["0KQBVaew"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserGameProfiles'
delete_file $TEMP_FILE

#- 12 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'c72krSha' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserProfiles'
delete_file $TEMP_FILE

#- 13 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    '68n3Ynoz' \
    --body '{"achievements": ["p1C2KmIQ"], "attributes": {"TuBdNEUs": "xFb8CJ17"}, "avatarUrl": "M7DJZaMS", "inventories": ["xECbZbyg"], "label": "yoarORoe", "profileName": "NHSb8Rh3", "statistics": ["kgs9qqJb"], "tags": ["nQsoBgiV"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateProfile'
delete_file $TEMP_FILE

#- 14 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'pP8Cm3yv' \
    'ASUoxdxx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetProfile'
delete_file $TEMP_FILE

#- 15 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'FqmAGTJ8' \
    'IEdagEtp' \
    --body '{"achievements": ["4w29KOu9"], "attributes": {"c19R6XDq": "WHkkP8np"}, "avatarUrl": "LEKMfjiX", "inventories": ["7jpkVZk3"], "label": "IaQYEmqG", "profileName": "odOEGt9g", "statistics": ["POj0c6i0"], "tags": ["JkvIas73"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateProfile'
delete_file $TEMP_FILE

#- 16 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'ucYnFAJ3' \
    'DK5T4Eog' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeleteProfile'
delete_file $TEMP_FILE

#- 17 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'g0Y39UoY' \
    'lpv5bVAg' \
    'tsDhUTDU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetProfileAttribute'
delete_file $TEMP_FILE

#- 18 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'scbQDjbT' \
    'QuPMz2PT' \
    'RlkyU89Z' \
    --body '{"name": "POw6zPFJ", "value": "42cwmzBB"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateAttribute'
delete_file $TEMP_FILE

#- 19 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'SMNcoAAO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserNamespaceSlots'
delete_file $TEMP_FILE

#- 20 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'jKNjfcYH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 21 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'm093aYgB' \
    'U1sqjyK0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetSlotData'
delete_file $TEMP_FILE

#- 22 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'XH45PaRS' \
    'OFQBtu23' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserNamespaceSlot'
delete_file $TEMP_FILE

#- 23 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'REZ8hRVX' \
    '7LGOvDdY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeleteUserNamespaceSlot'
delete_file $TEMP_FILE

#- 24 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'iQS9i7mV' \
    '1C91pjG9' \
    --body '{"customAttribute": "gpxL6ycT", "label": "Qdvln2LA", "tags": ["uSQWEXL6"]}' \
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
    'LFE1YHo9' \
    'm126ZWc8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkFetchStatItems'
delete_file $TEMP_FILE

#- 27 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.11136021441968946, "statCode": "HtWvbNYq", "userId": "gUqslArF"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItem'
delete_file $TEMP_FILE

#- 28 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6410856766936045, "statCode": "iHUIvaCv", "userId": "8kU9dBBp"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 29 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "dsJLhsVy", "userId": "Exrkxoot"}]' \
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
    --body '{"defaultValue": 0.8267966763880049, "description": "7WOfercZ", "incrementOnly": false, "maximum": 0.24471400376684005, "minimum": 0.044827790074906226, "name": "37Ds7YSf", "setAsGlobal": true, "setBy": "SERVER", "statCode": "aI3uzLte", "tags": ["MbFAlt4h"]}' \
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
    'r7HmOYiB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryStats'
delete_file $TEMP_FILE

#- 35 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'A5ltAOXm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStat'
delete_file $TEMP_FILE

#- 36 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'lG6eh1dT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStat'
delete_file $TEMP_FILE

#- 37 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'doTFpBIc' \
    --body '{"description": "uC1dQY93", "name": "OJnJ6Te9", "tags": ["vD8ldz7H"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStat'
delete_file $TEMP_FILE

#- 38 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'u8AD79kd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserStatItems'
delete_file $TEMP_FILE

#- 39 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'WunvizU0' \
    --body '[{"statCode": "q1pHyhhE"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 40 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'RoGgdrys' \
    --body '[{"inc": 0.6054030517210108, "statCode": "zBGSRdP2"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 41 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'l7DNSZ8A' \
    --body '[{"inc": 0.2614624114028117, "statCode": "XiPLQXSe"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue1'
delete_file $TEMP_FILE

#- 42 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '07ZddOGT' \
    --body '[{"statCode": "MlJjBwj9"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem1'
delete_file $TEMP_FILE

#- 43 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'HJHQKseE' \
    'dSXRDSvg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserStatItem'
delete_file $TEMP_FILE

#- 44 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'uauw1xT7' \
    'eMwSl9ML' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems'
delete_file $TEMP_FILE

#- 45 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'H0NnTJ2u' \
    'lNzBvwJa' \
    --body '{"inc": 0.9842507217807595}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncUserStatItemValue'
delete_file $TEMP_FILE

#- 46 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'a547Jllv' \
    'A8RWSpab' \
    --body '{"additionalData": {"Ut7xk6Qx": {}}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserStatItemValue'
delete_file $TEMP_FILE

#- 47 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'yWhfqoWf' \
    'Jw2o8oWU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkFetchStatItems1'
delete_file $TEMP_FILE

#- 48 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.2532721485049817, "statCode": "PCZ2HzT7", "userId": "NXmWDlXs"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItem'
delete_file $TEMP_FILE

#- 49 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.32561673686821235, "statCode": "IdQJR5ls", "userId": "NOlvkfwa"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItemValue'
delete_file $TEMP_FILE

#- 50 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "SbnsuLCg", "userId": "ToxuVTek"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem2'
delete_file $TEMP_FILE

#- 51 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.5498335965640428, "description": "vg6h5HIp", "incrementOnly": true, "maximum": 0.33338601242906774, "minimum": 0.2426266907543806, "name": "Ek4vj3LD", "setAsGlobal": false, "setBy": "SERVER", "statCode": "qDt8QUZD", "tags": ["pxlHasin"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStat1'
delete_file $TEMP_FILE

#- 52 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'GcjrkmRM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserStatItems'
delete_file $TEMP_FILE

#- 53 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'ttgjDSaI' \
    --body '[{"statCode": "VBmft3Ud"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkCreateUserStatItems'
delete_file $TEMP_FILE

#- 54 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'g7p9PGmY' \
    --body '[{"inc": 0.8506426627280407, "statCode": "5kX4Msis"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkIncUserStatItem1'
delete_file $TEMP_FILE

#- 55 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'SX28nARx' \
    --body '[{"inc": 0.762489301535472, "statCode": "pv5ou5xt"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkIncUserStatItemValue2'
delete_file $TEMP_FILE

#- 56 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'vd28OUfC' \
    --body '[{"statCode": "t8UJC5fl"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkResetUserStatItem3'
delete_file $TEMP_FILE

#- 57 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'Nyj6HsTt' \
    'X8P3llna' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserStatItem'
delete_file $TEMP_FILE

#- 58 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'aS9lqyyg' \
    'PcfkJIxf' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems1'
delete_file $TEMP_FILE

#- 59 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'QZza8kNV' \
    'bDxVMq7H' \
    --body '{"inc": 0.5498505917979803}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicIncUserStatItem'
delete_file $TEMP_FILE

#- 60 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '0F89xAc3' \
    'YVfaENtr' \
    --body '{"inc": 0.18555281921920364}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicIncUserStatItemValue'
delete_file $TEMP_FILE

#- 61 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'pTKZTXqz' \
    'HuBMYQSA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserStatItemValue1'
delete_file $TEMP_FILE

#- 62 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"2jz1ZOpd": {}}, "additionalKey": "OjSyMddB", "statCode": "41JuMf7R", "updateStrategy": "MIN", "userId": "BHRj8IiR", "value": 0.13380605867217576}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItemV2'
delete_file $TEMP_FILE

#- 63 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'RllHT6Dc' \
    --body '[{"additionalData": {"40vFFA6g": {}}, "statCode": "pU7EW3x1", "updateStrategy": "OVERRIDE", "value": 0.44428418755937293}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem'
delete_file $TEMP_FILE

#- 64 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'm55gOeqQ' \
    'IqcJVKmB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserStatItems2'
delete_file $TEMP_FILE

#- 65 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'M1J1IbuT' \
    'rrkbmuT1' \
    --body '{"additionalData": {"whOqmEnD": {}}, "updateStrategy": "MAX", "value": 0.42244767130149086}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserStatItemValue'
delete_file $TEMP_FILE

#- 66 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"lSay46mv": {}}, "additionalKey": "71BAZAOj", "statCode": "tFJ2vmTj", "updateStrategy": "MAX", "userId": "T7TZHWDd", "value": 0.45245199023493055}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem1'
delete_file $TEMP_FILE

#- 67 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'IsZoArWw' \
    --body '[{"additionalData": {"PHcyFAdA": {}}, "statCode": "tYciLIgR", "updateStrategy": "MAX", "value": 0.49006656321603914}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkUpdateUserStatItem2'
delete_file $TEMP_FILE

#- 68 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'r0gwB9tz' \
    '3vp99XVl' \
    --body '{"additionalData": {"V8rK3tE6": {}}, "updateStrategy": "INCREMENT", "value": 0.820145728309544}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserStatItemValue1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT