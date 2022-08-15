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
dsmc-list-config --login_with_auth "Bearer foo"
dsmc-update-image '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "imageSize": 61, "namespace": "Y84ekItq", "persistent": true, "version": "HU1oh570"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "KQBVaewc", "dockerPath": "72krSha6", "image": "8n3Ynozp", "imageSize": 56, "namespace": "2KmIQTuB", "patchVersion": "dNEUsxFb", "persistent": true, "version": "J17M7DJZ"}' --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 0, "creation_timeout": 77, "default_version": "SxECbZby", "port": 13, "ports": {"yoarORoe": 79}, "protocol": "HSb8Rh3k", "providers": ["gs9qqJbn"], "session_timeout": 85, "unreachable_timeout": 36}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 28, "creation_timeout": 54, "default_version": "giVpP8Cm", "port": 49, "protocol": "vASUoxdx", "providers": ["xFqmAGTJ"], "session_timeout": 68, "unreachable_timeout": 60}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '6' '1' --login_with_auth "Bearer foo"
dsmc-get-deployment 'gEtp4w29' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 4, "buffer_percent": 87, "configuration": "6XDqWHkk", "enable_region_overrides": false, "game_version": "pLEKMfji", "max_count": 99, "min_count": 18, "overrides": {"pkVZk3Ia": {"buffer_count": 84, "buffer_percent": 60, "configuration": "mqGodOEG", "enable_region_overrides": true, "game_version": "9gPOj0c6", "max_count": 16, "min_count": 70, "name": "kvIas73u", "region_overrides": {"cYnFAJ3D": {"buffer_count": 72, "buffer_percent": 91, "max_count": 61, "min_count": 28, "name": "gg0Y39Uo", "use_buffer_percent": false}}, "regions": ["pv5bVAgt"], "session_timeout": 36, "use_buffer_percent": true}}, "region_overrides": {"hUTDUscb": {"buffer_count": 85, "buffer_percent": 59, "max_count": 18, "min_count": 3, "name": "TQuPMz2P", "use_buffer_percent": false}}, "regions": ["kyU89ZPO"], "session_timeout": 44, "use_buffer_percent": true}' 'PFJ42cwm' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'zBBSMNco' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 52, "buffer_percent": 81, "configuration": "jKNjfcYH", "enable_region_overrides": false, "game_version": "093aYgBU", "max_count": 36, "min_count": 33, "regions": ["jyK0XH45"], "session_timeout": 83, "use_buffer_percent": false}' 'RSOFQBtu' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 86, "buffer_percent": 61, "max_count": 15, "min_count": 87, "use_buffer_percent": true}' 'DdYiQS9i' '7mV1C91p' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'jG9gpxL6' 'ycTQdvln' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 74, "buffer_percent": 52, "max_count": 41, "min_count": 89, "use_buffer_percent": true}' 'XL6LFE1Y' 'Ho9m126Z' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 96, "buffer_percent": 4, "configuration": "8hHtWvbN", "enable_region_overrides": true, "game_version": "gUqslArF", "max_count": 82, "min_count": 17, "region_overrides": {"HUIvaCv8": {"buffer_count": 20, "buffer_percent": 92, "max_count": 6, "min_count": 55, "name": "BpdsJLhs", "use_buffer_percent": true}}, "regions": ["Exrkxoot"], "session_timeout": 54, "use_buffer_percent": false}' 'ercZdpMc' 'i37Ds7YS' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'fExaI3uz' 'LteMbFAl' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 39, "buffer_percent": 14, "configuration": "r7HmOYiB", "enable_region_overrides": true, "game_version": "5ltAOXml", "max_count": 65, "min_count": 9, "regions": ["h1dTdoTF"], "session_timeout": 31, "use_buffer_percent": true}' 'IcuC1dQY' '93OJnJ6T' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 9, "buffer_percent": 42, "max_count": 59, "min_count": 22, "use_buffer_percent": false}' 'z7Hu8AD7' '9kdWunvi' 'zU0q1pHy' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'hhERoGgd' 'rysMizBG' 'SRdP2l7D' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 79, "buffer_percent": 89, "max_count": 53, "min_count": 33, "use_buffer_percent": false}' 'PLQXSe07' 'ZddOGTMl' 'JjBwj9HJ' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '66' '85' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'KseEdSXR' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 59, "mem_limit": 89, "params": "vguauw1x"}' 'T7eMwSl9' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'MLH0NnTJ' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 41, "mem_limit": 22, "name": "NzBvwJaQ", "params": "a547Jllv"}' 'A8RWSpab' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 93}' 't7xk6Qxy' --login_with_auth "Bearer foo"
dsmc-delete-port 'WhfqoWfJ' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "w2o8oWUq", "port": 43}' 'PCZ2HzT7' --login_with_auth "Bearer foo"
dsmc-list-images '78' '99' --login_with_auth "Bearer foo"
dsmc-delete-image 'mWDlXsuN' 'IdQJR5ls' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'NOlvkfwa' 'SbnsuLCg' 'ToxuVTek' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'Jgvg6h5H' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'IpH0Dvip' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'lEk4vj3L' 'Dp4yqDt8' --login_with_auth "Bearer foo"
dsmc-list-server '85' '92' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'ZDpxlHas' --login_with_auth "Bearer foo"
dsmc-get-server 'inGcjrkm' --login_with_auth "Bearer foo"
dsmc-delete-server 'RMttgjDS' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'aIVBmft3' --login_with_auth "Bearer foo"
dsmc-list-session '93' '6' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'g7p9PGmY' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-detail-client '2H5kX4Ms' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "isSX28nA"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "RxWRpv5o", "ip": "u5xtvd28", "name": "OUfCt8UJ", "port": 57}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "5flNyj6H", "pod_name": "sTtX8P3l"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "naaS9lqy"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'ygPcfkJI' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "xfQZza8k", "configuration": "NVbDxVMq", "deployment": "7HJk0F89", "game_mode": "xAc3YVfa", "matching_allies": [{"matching_parties": [{"party_attributes": {"ENtrl0pT": {}}, "party_id": "KZTXqzHu", "party_members": [{"user_id": "BMYQSA2j"}]}]}], "namespace": "z1ZOpdOj", "notification_payload": {}, "pod_name": "SyMddB41", "region": "JuMf7RUy", "session_id": "BHRj8IiR"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "imRllHT6"}' --login_with_auth "Bearer foo"
dsmc-get-session 'Dc40vFFA' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '6gpU7EW3' --login_with_auth "Bearer foo"
dsmc-public-get-messages --login_with_auth "Bearer foo"
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
echo "1..68"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListConfig
$PYTHON -m $MODULE 'dsmc-list-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListConfig' test.out

#- 3 SaveConfig
eval_tap 0 3 'SaveConfig # SKIP deprecated' test.out

#- 4 UpdateImage
$PYTHON -m $MODULE 'dsmc-update-image' \
    '{"artifactPath": "x1dCpm55", "image": "gOeqQIqc", "namespace": "JVKmBM1J", "persistent": false, "version": "uTrrkbmu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "T1whOqmE", "dockerPath": "nDXIWrBP", "image": "lSay46mv", "imageSize": 55, "namespace": "AZAOjtFJ", "persistent": true, "version": "mTj7tT7T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
$PYTHON -m $MODULE 'dsmc-import-images' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
$PYTHON -m $MODULE 'dsmc-create-image-patch' \
    '{"artifactPath": "ZHWDdCkI", "dockerPath": "sZoArWwP", "image": "HcyFAdAt", "imageSize": 100, "namespace": "ciLIgRwF", "patchVersion": "Rr0gwB9t", "persistent": true, "version": "3vp99XVl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetConfig' test.out

#- 9 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 94, "creation_timeout": 35, "default_version": "K3tE6n0s", "port": 25, "ports": {"ip1tw3L7": 4}, "protocol": "Ud9pqtv6", "providers": ["JfPZwcCV"], "session_timeout": 80, "unreachable_timeout": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateConfig' test.out

#- 10 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 5, "creation_timeout": 95, "default_version": "a80TmCwt", "port": 58, "protocol": "2lAH01o6", "providers": ["NdcBIgzr"], "session_timeout": 58, "unreachable_timeout": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ClearCache' test.out

#- 13 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    '96' \
    '31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'FBYGmmBa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 77, "buffer_percent": 48, "configuration": "oKyNpdAa", "enable_region_overrides": true, "game_version": "m8xwUfzO", "max_count": 23, "min_count": 85, "overrides": {"iZY4NbOQ": {"buffer_count": 99, "buffer_percent": 70, "configuration": "7uOTzNMv", "enable_region_overrides": true, "game_version": "q2tNl4CX", "max_count": 68, "min_count": 19, "name": "iK4DEUJR", "region_overrides": {"VK3l9Eb0": {"buffer_count": 86, "buffer_percent": 99, "max_count": 86, "min_count": 3, "name": "0RH8vS1s", "use_buffer_percent": false}}, "regions": ["eOlngrdT"], "session_timeout": 99, "use_buffer_percent": true}}, "region_overrides": {"zaPBtkZM": {"buffer_count": 17, "buffer_percent": 28, "max_count": 44, "min_count": 5, "name": "yhloVS3r", "use_buffer_percent": false}}, "regions": ["8QtcEmCE"], "session_timeout": 95, "use_buffer_percent": false}' \
    '75UfeypW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'jDNhzCL5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 97, "buffer_percent": 88, "configuration": "2qwO763i", "enable_region_overrides": true, "game_version": "klkzLm88", "max_count": 75, "min_count": 31, "regions": ["LuYRO3C5"], "session_timeout": 48, "use_buffer_percent": false}' \
    'wK2Jaqen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 58, "buffer_percent": 64, "max_count": 27, "min_count": 1, "use_buffer_percent": false}' \
    'lWiLjq06' \
    'n6a0rW8E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'fkpaXtwY' \
    'ZJaQ4Wbw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 78, "buffer_percent": 25, "max_count": 37, "min_count": 62, "use_buffer_percent": false}' \
    'tjEurH8e' \
    'loJzNKtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 92, "buffer_percent": 1, "configuration": "Tz1ETdsm", "enable_region_overrides": true, "game_version": "zjkkn9oi", "max_count": 84, "min_count": 22, "region_overrides": {"05g7cO3Z": {"buffer_count": 76, "buffer_percent": 2, "max_count": 80, "min_count": 18, "name": "lo6DMNpP", "use_buffer_percent": true}}, "regions": ["MrTQ1Upj"], "session_timeout": 10, "use_buffer_percent": true}' \
    'Jhy1jOVk' \
    'kUlS7952' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    '7EZ25Ia8' \
    'uCeZFlLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 60, "buffer_percent": 95, "configuration": "pDAEbA82", "enable_region_overrides": false, "game_version": "y74lq0pD", "max_count": 60, "min_count": 47, "regions": ["Rwh5b45e"], "session_timeout": 3, "use_buffer_percent": false}' \
    'cM7ScSs3' \
    'UOpAwIp9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 34, "buffer_percent": 86, "max_count": 38, "min_count": 26, "use_buffer_percent": false}' \
    'CxdbumeY' \
    'gOdEBWRQ' \
    'iW3KFfU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'icH4081g' \
    'RB1GyLfL' \
    'g4RYuEbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 93, "buffer_percent": 58, "max_count": 61, "min_count": 4, "use_buffer_percent": true}' \
    'IvsPwOr0' \
    'BmV5iFvf' \
    'wFjTSmIE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '32' \
    '28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'LyLeUGmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 25, "mem_limit": 65, "params": "X9sXTZ0v"}' \
    '8pqLfc5S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'wGnReUUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 59, "mem_limit": 98, "name": "4QUIbb5n", "params": "h68ZnyUt"}' \
    'RvW9hNBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 62}' \
    'TtFrOmjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'FrFVA8t0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "xF34Xpt6", "port": 23}' \
    'TTic0kr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '1' \
    '27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'I2oo7UHC' \
    'JK5sp0aC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteImage' test.out

#- 37 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'ExportImages' test.out

#- 38 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetImageLimit' test.out

#- 39 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    'vIq3aHVY' \
    'IlewLRuH' \
    'Y83bGj0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'TeeWXlIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'RidqctDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'ygY0ax47' \
    '6ED4MMO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '91' \
    '44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'ListServer' test.out

#- 44 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CountServer' test.out

#- 45 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'wHWTgzJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'RYw6t1IK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'ZLO6V4Od' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '8' \
    '85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    'mCidgdpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    '7RTC587l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "mUmBziPZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "BnpOfkll", "ip": "xfq0NsrS", "name": "jw5Hog0b", "port": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "M1d5MStY", "pod_name": "GczLINlE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "0OEsE3yz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'IsUP0Njl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "uOrGZTzs", "configuration": "LW7Fjfs9", "deployment": "nIkcZ38f", "game_mode": "UEanjKHb", "matching_allies": [{"matching_parties": [{"party_attributes": {"Xfk1zxdz": {}}, "party_id": "xg0UXcRy", "party_members": [{"user_id": "Hi3u8BzV"}]}]}], "namespace": "Wu1tOmhU", "notification_payload": {}, "pod_name": "tCgcpvGr", "region": "EbcZUDEx", "session_id": "H1tayOGX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "IHzMRjMC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'tOJsEijl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetSession' test.out

#- 65 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetDefaultProvider' test.out

#- 66 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'ListProviders' test.out

#- 67 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'rbpyyEcQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
