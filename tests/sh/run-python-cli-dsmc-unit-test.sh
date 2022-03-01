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

OPERATIONS_COUNT=67

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

#- 1 ListConfig
$PYTHON -m $MODULE 'dsmc-list-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListConfig'
delete_file $TEMP_FILE

#- 2 SaveConfig
update_status 0 'SaveConfig (skipped deprecated)'

#- 3 UpdateImage
$PYTHON -m $MODULE 'dsmc-update-image' \
    '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateImage'
delete_file $TEMP_FILE

#- 4 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateImage'
delete_file $TEMP_FILE

#- 5 ImportImages
$PYTHON -m $MODULE 'dsmc-import-images' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportImages'
delete_file $TEMP_FILE

#- 6 CreateImagePatch
$PYTHON -m $MODULE 'dsmc-create-image-patch' \
    '{"artifactPath": "570KQBVa", "dockerPath": "ewc72krS", "image": "ha68n3Yn", "namespace": "ozp1C2Km", "patchVersion": "IQTuBdNE", "persistent": true, "version": "xFb8CJ17"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateImagePatch'
delete_file $TEMP_FILE

#- 7 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetConfig'
delete_file $TEMP_FILE

#- 8 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 76, "creation_timeout": 59, "default_version": "JZaMSxEC", "port": 2, "ports": {"Zbygyoar": 81}, "protocol": "RoeNHSb8", "providers": ["Rh3kgs9q"], "session_timeout": 33, "unreachable_timeout": 71}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateConfig'
delete_file $TEMP_FILE

#- 9 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteConfig'
delete_file $TEMP_FILE

#- 10 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 2, "creation_timeout": 27, "default_version": "QsoBgiVp", "port": 82, "protocol": "8Cm3yvAS", "providers": ["UoxdxxFq"], "session_timeout": 24, "unreachable_timeout": 52}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateConfig'
delete_file $TEMP_FILE

#- 11 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ClearCache'
delete_file $TEMP_FILE

#- 12 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllDeployment'
delete_file $TEMP_FILE

#- 13 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'GTJ8IEda' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDeployment'
delete_file $TEMP_FILE

#- 14 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 60, "buffer_percent": 38, "configuration": "p4w29KOu", "enable_region_overrides": false, "game_version": "19R6XDqW", "max_count": 67, "min_count": 20, "overrides": {"kP8npLEK": {"buffer_count": 76, "buffer_percent": 11, "configuration": "jiX7jpkV", "enable_region_overrides": false, "game_version": "3IaQYEmq", "max_count": 64, "min_count": 29, "name": "dOEGt9gP", "region_overrides": {"Oj0c6i0J": {"buffer_count": 21, "buffer_percent": 42, "max_count": 69, "min_count": 0, "name": "s73ucYnF", "use_buffer_percent": true}}, "regions": ["J3DK5T4E"], "use_buffer_percent": false}}, "region_overrides": {"gg0Y39Uo": {"buffer_count": 23, "buffer_percent": 31, "max_count": 43, "min_count": 3, "name": "VAgtsDhU", "use_buffer_percent": true}}, "regions": ["UscbQDjb"], "use_buffer_percent": true}' \
    'PMz2PTRl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateDeployment'
delete_file $TEMP_FILE

#- 15 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'kyU89ZPO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDeployment'
delete_file $TEMP_FILE

#- 16 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 50, "buffer_percent": 83, "configuration": "FJ42cwmz", "enable_region_overrides": true, "game_version": "BSMNcoAA", "max_count": 81, "min_count": 19, "regions": ["KNjfcYHm"], "use_buffer_percent": false}' \
    'YgBU1sqj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDeployment'
delete_file $TEMP_FILE

#- 17 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 49, "buffer_percent": 72, "max_count": 99, "min_count": 66, "use_buffer_percent": false}' \
    'RSOFQBtu' \
    '23REZ8hR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateRootRegionOverride'
delete_file $TEMP_FILE

#- 18 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'VX7LGOvD' \
    'dYiQS9i7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteRootRegionOverride'
delete_file $TEMP_FILE

#- 19 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 24, "buffer_percent": 94, "max_count": 57, "min_count": 30, "use_buffer_percent": false}' \
    'G9gpxL6y' \
    'cTQdvln2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateRootRegionOverride'
delete_file $TEMP_FILE

#- 20 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 74, "buffer_percent": 52, "configuration": "uSQWEXL6", "enable_region_overrides": true, "game_version": "E1YHo9m1", "max_count": 96, "min_count": 4, "region_overrides": {"8hHtWvbN": {"buffer_count": 33, "buffer_percent": 12, "max_count": 92, "min_count": 33, "name": "slArFPiH", "use_buffer_percent": true}}, "regions": ["aCv8kU9d"], "use_buffer_percent": true}' \
    'BpdsJLhs' \
    'VyExrkxo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateDeploymentOverride'
delete_file $TEMP_FILE

#- 21 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'ot0B7WOf' \
    'ercZdpMc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDeploymentOverride'
delete_file $TEMP_FILE

#- 22 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 17, "buffer_percent": 58, "configuration": "s7YSfExa", "enable_region_overrides": true, "game_version": "zLteMbFA", "max_count": 23, "min_count": 39, "regions": ["4hr7HmOY"], "use_buffer_percent": false}' \
    'BA5ltAOX' \
    'mlG6eh1d' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDeploymentOverride'
delete_file $TEMP_FILE

#- 23 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 90, "buffer_percent": 6, "max_count": 29, "min_count": 91, "use_buffer_percent": true}' \
    'pBIcuC1d' \
    'QY93OJnJ' \
    '6Te9vD8l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'dz7Hu8AD' \
    '79kdWunv' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 49, "buffer_percent": 15, "max_count": 15, "min_count": 61, "use_buffer_percent": false}' \
    'GgdrysMi' \
    'zBGSRdP2' \
    'l7DNSZ8A' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 26 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllPodConfig'
delete_file $TEMP_FILE

#- 27 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'q0XiPLQX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPodConfig'
delete_file $TEMP_FILE

#- 28 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 89, "mem_limit": 9, "params": "07ZddOGT"}' \
    'MlJjBwj9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePodConfig'
delete_file $TEMP_FILE

#- 29 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'HJHQKseE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePodConfig'
delete_file $TEMP_FILE

#- 30 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 6, "mem_limit": 88, "name": "XRDSvgua", "params": "uw1xT7eM"}' \
    'wSl9MLH0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePodConfig'
delete_file $TEMP_FILE

#- 31 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 79}' \
    'nTJ2ulNz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddPort'
delete_file $TEMP_FILE

#- 32 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'BvwJaQa5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePort'
delete_file $TEMP_FILE

#- 33 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "47JllvA8", "port": 86}' \
    'WSpabUt7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePort'
delete_file $TEMP_FILE

#- 34 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListImages'
delete_file $TEMP_FILE

#- 35 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'xk6QxyWh' \
    'fqoWfJw2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteImage'
delete_file $TEMP_FILE

#- 36 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportImages'
delete_file $TEMP_FILE

#- 37 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImageLimit'
delete_file $TEMP_FILE

#- 38 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    'o8oWUqvP' \
    'CZ2HzT7N' \
    'XmWDlXsu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteImagePatch'
delete_file $TEMP_FILE

#- 39 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'NIdQJR5l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImageDetail'
delete_file $TEMP_FILE

#- 40 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'sNOlvkfw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImagePatches'
delete_file $TEMP_FILE

#- 41 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'aSbnsuLC' \
    'gToxuVTe' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImagePatchDetail'
delete_file $TEMP_FILE

#- 42 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListServer'
delete_file $TEMP_FILE

#- 43 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountServer'
delete_file $TEMP_FILE

#- 44 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountServerDetailed'
delete_file $TEMP_FILE

#- 45 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListLocalServer'
delete_file $TEMP_FILE

#- 46 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'kJgvg6h5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteLocalServer'
delete_file $TEMP_FILE

#- 47 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'HIpH0Dvi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServer'
delete_file $TEMP_FILE

#- 48 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'plEk4vj3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteServer'
delete_file $TEMP_FILE

#- 49 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'LDp4yqDt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServerLogs'
delete_file $TEMP_FILE

#- 50 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListSession'
delete_file $TEMP_FILE

#- 51 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountSession'
delete_file $TEMP_FILE

#- 52 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    '8QUZDpxl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSession'
delete_file $TEMP_FILE

#- 53 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportConfigV1'
delete_file $TEMP_FILE

#- 54 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportConfigV1'
delete_file $TEMP_FILE

#- 55 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'HasinGcj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImageDetailClient'
delete_file $TEMP_FILE

#- 56 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "rkmRMttg"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeregisterLocalServer'
delete_file $TEMP_FILE

#- 57 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "jDSaIVBm", "ip": "ft3Udg7p", "name": "9PGmY2H5", "port": 20}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RegisterLocalServer'
delete_file $TEMP_FILE

#- 58 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "X4MsisSX", "pod_name": "28nARxWR"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RegisterServer'
delete_file $TEMP_FILE

#- 59 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "v5ou5xtv"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ShutdownServer'
delete_file $TEMP_FILE

#- 60 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'd28OUfCt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServerSession'
delete_file $TEMP_FILE

#- 61 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "8UJC5flN", "configuration": "yj6HsTtX", "deployment": "8P3llnaa", "game_mode": "S9lqyygP", "matching_allies": [{"matching_parties": [{"party_attributes": {"cfkJIxfQ": {}}, "party_id": "Zza8kNVb", "party_members": [{"user_id": "DxVMq7HJ"}]}]}], "namespace": "k0F89xAc", "notification_payload": {}, "pod_name": "3YVfaENt", "region": "rl0pTKZT", "session_id": "XqzHuBMY"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSession'
delete_file $TEMP_FILE

#- 62 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "QSA2jz1Z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ClaimServer'
delete_file $TEMP_FILE

#- 63 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'OpdOjSyM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSession'
delete_file $TEMP_FILE

#- 64 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDefaultProvider'
delete_file $TEMP_FILE

#- 65 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListProviders'
delete_file $TEMP_FILE

#- 66 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'ddB41JuM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListProvidersByRegion'
delete_file $TEMP_FILE

#- 67 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT