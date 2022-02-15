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

OPERATIONS_COUNT=63

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

#- 6 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetConfig'
delete_file $TEMP_FILE

#- 7 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 72, "creation_timeout": 84, "default_version": "BVaewc72", "port": 21, "ports": {"rSha68n3": 100}, "protocol": "nozp1C2K", "providers": ["mIQTuBdN"], "session_timeout": 61, "unreachable_timeout": 93}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateConfig'
delete_file $TEMP_FILE

#- 8 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteConfig'
delete_file $TEMP_FILE

#- 9 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 37, "creation_timeout": 46, "default_version": "Fb8CJ17M", "port": 59, "protocol": "JZaMSxEC", "providers": ["bZbygyoa"], "session_timeout": 35, "unreachable_timeout": 81}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateConfig'
delete_file $TEMP_FILE

#- 10 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ClearCache'
delete_file $TEMP_FILE

#- 11 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllDeployment'
delete_file $TEMP_FILE

#- 12 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'RoeNHSb8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDeployment'
delete_file $TEMP_FILE

#- 13 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 21, "buffer_percent": 13, "configuration": "s9qqJbnQ", "enable_region_overrides": true, "game_version": "oBgiVpP8", "max_count": 56, "min_count": 24, "overrides": {"3yvASUox": {"buffer_count": 7, "buffer_percent": 46, "configuration": "xFqmAGTJ", "enable_region_overrides": true, "game_version": "dagEtp4w", "max_count": 73, "min_count": 81, "name": "u9c19R6X", "region_overrides": {"DqWHkkP8": {"buffer_count": 26, "buffer_percent": 30, "max_count": 75, "min_count": 61, "name": "KMfjiX7j", "use_buffer_percent": false}}, "regions": ["kVZk3IaQ"], "use_buffer_percent": true}}, "region_overrides": {"mqGodOEG": {"buffer_count": 39, "buffer_percent": 13, "max_count": 83, "min_count": 81, "name": "j0c6i0Jk", "use_buffer_percent": true}}, "regions": ["Ias73ucY"], "use_buffer_percent": false}' \
    'FAJ3DK5T' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateDeployment'
delete_file $TEMP_FILE

#- 14 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    '4Eogg0Y3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDeployment'
delete_file $TEMP_FILE

#- 15 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 23, "buffer_percent": 31, "configuration": "v5bVAgts", "enable_region_overrides": true, "game_version": "hUTDUscb", "max_count": 85, "min_count": 59, "regions": ["jbTQuPMz"], "use_buffer_percent": false}' \
    'kyU89ZPO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDeployment'
delete_file $TEMP_FILE

#- 16 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 44, "buffer_percent": 50, "max_count": 83, "min_count": 63, "use_buffer_percent": false}' \
    'wmzBBSMN' \
    'coAAOjKN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateRootRegionOverride'
delete_file $TEMP_FILE

#- 17 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'jfcYHm09' \
    '3aYgBU1s' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteRootRegionOverride'
delete_file $TEMP_FILE

#- 18 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 33, "buffer_percent": 19, "max_count": 49, "min_count": 72, "use_buffer_percent": false}' \
    'RSOFQBtu' \
    '23REZ8hR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateRootRegionOverride'
delete_file $TEMP_FILE

#- 19 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 94, "buffer_percent": 98, "configuration": "7LGOvDdY", "enable_region_overrides": false, "game_version": "QS9i7mV1", "max_count": 57, "min_count": 30, "region_overrides": {"jG9gpxL6": {"buffer_count": 48, "buffer_percent": 4, "max_count": 90, "min_count": 84, "name": "dvln2LAu", "use_buffer_percent": true}}, "regions": ["XL6LFE1Y"], "use_buffer_percent": false}' \
    '9m126ZWc' \
    '8hHtWvbN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateDeploymentOverride'
delete_file $TEMP_FILE

#- 20 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'YqgUqslA' \
    'rFPiHUIv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDeploymentOverride'
delete_file $TEMP_FILE

#- 21 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 0, "buffer_percent": 56, "configuration": "v8kU9dBB", "enable_region_overrides": false, "game_version": "dsJLhsVy", "max_count": 61, "min_count": 46, "regions": ["rkxoot0B"], "use_buffer_percent": false}' \
    'ercZdpMc' \
    'i37Ds7YS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDeploymentOverride'
delete_file $TEMP_FILE

#- 22 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 10, "buffer_percent": 61, "max_count": 46, "min_count": 1, "use_buffer_percent": true}' \
    'zLteMbFA' \
    'lt4hr7Hm' \
    'OYiBA5lt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 23 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'AOXmlG6e' \
    'h1dTdoTF' \
    'pBIcuC1d' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 85, "buffer_percent": 100, "max_count": 80, "min_count": 70, "use_buffer_percent": false}' \
    'J6Te9vD8' \
    'ldz7Hu8A' \
    'D79kdWun' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllPodConfig'
delete_file $TEMP_FILE

#- 26 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'vizU0q1p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPodConfig'
delete_file $TEMP_FILE

#- 27 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 66, "mem_limit": 49, "params": "hhERoGgd"}' \
    'rysMizBG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePodConfig'
delete_file $TEMP_FILE

#- 28 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'SRdP2l7D' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePodConfig'
delete_file $TEMP_FILE

#- 29 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 79, "mem_limit": 89, "name": "Z8Aq0XiP", "params": "LQXSe07Z"}' \
    'ddOGTMlJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePodConfig'
delete_file $TEMP_FILE

#- 30 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 19}' \
    'Bwj9HJHQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddPort'
delete_file $TEMP_FILE

#- 31 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'KseEdSXR' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePort'
delete_file $TEMP_FILE

#- 32 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "DSvguauw", "port": 47}' \
    'T7eMwSl9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePort'
delete_file $TEMP_FILE

#- 33 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListImages'
delete_file $TEMP_FILE

#- 34 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'MLH0NnTJ' \
    '2ulNzBvw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteImage'
delete_file $TEMP_FILE

#- 35 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportImages'
delete_file $TEMP_FILE

#- 36 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImageLimit'
delete_file $TEMP_FILE

#- 37 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'JaQa547J' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetImageDetail'
delete_file $TEMP_FILE

#- 38 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListServer'
delete_file $TEMP_FILE

#- 39 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountServer'
delete_file $TEMP_FILE

#- 40 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountServerDetailed'
delete_file $TEMP_FILE

#- 41 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListLocalServer'
delete_file $TEMP_FILE

#- 42 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'llvA8RWS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteLocalServer'
delete_file $TEMP_FILE

#- 43 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'pabUt7xk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServer'
delete_file $TEMP_FILE

#- 44 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    '6QxyWhfq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteServer'
delete_file $TEMP_FILE

#- 45 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'oWfJw2o8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServerLogs'
delete_file $TEMP_FILE

#- 46 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListSession'
delete_file $TEMP_FILE

#- 47 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountSession'
delete_file $TEMP_FILE

#- 48 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    'oWUqvPCZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSession'
delete_file $TEMP_FILE

#- 49 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportConfigV1'
delete_file $TEMP_FILE

#- 50 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportConfigV1'
delete_file $TEMP_FILE

#- 51 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    '2HzT7NXm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImageDetailClient'
delete_file $TEMP_FILE

#- 52 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "WDlXsuNI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeregisterLocalServer'
delete_file $TEMP_FILE

#- 53 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "dQJR5lsN", "ip": "OlvkfwaS", "name": "bnsuLCgT", "port": 28}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RegisterLocalServer'
delete_file $TEMP_FILE

#- 54 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "xuVTekJg", "pod_name": "vg6h5HIp"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RegisterServer'
delete_file $TEMP_FILE

#- 55 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "viplEk4v"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ShutdownServer'
delete_file $TEMP_FILE

#- 56 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'j3LDp4yq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetServerSession'
delete_file $TEMP_FILE

#- 57 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "Dt8QUZDp", "configuration": "xlHasinG", "deployment": "cjrkmRMt", "game_mode": "tgjDSaIV", "matching_allies": [{"matching_parties": [{"party_attributes": {"Bmft3Udg": {}}, "party_id": "7p9PGmY2", "party_members": [{"user_id": "H5kX4Msi"}]}]}], "namespace": "sSX28nAR", "pod_name": "xWRpv5ou", "region": "5xtvd28O", "session_id": "UfCt8UJC"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSession'
delete_file $TEMP_FILE

#- 58 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "5flNyj6H"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ClaimServer'
delete_file $TEMP_FILE

#- 59 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'sTtX8P3l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSession'
delete_file $TEMP_FILE

#- 60 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDefaultProvider'
delete_file $TEMP_FILE

#- 61 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListProviders'
delete_file $TEMP_FILE

#- 62 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'lnaaS9lq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListProvidersByRegion'
delete_file $TEMP_FILE

#- 63 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT