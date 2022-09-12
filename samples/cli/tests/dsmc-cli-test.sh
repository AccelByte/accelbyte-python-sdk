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
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 4, "buffer_percent": 87, "configuration": "6XDqWHkk", "enable_region_overrides": false, "game_version": "pLEKMfji", "max_count": 99, "min_count": 18, "overrides": {"pkVZk3Ia": {"buffer_count": 84, "buffer_percent": 60, "configuration": "mqGodOEG", "enable_region_overrides": true, "game_version": "9gPOj0c6", "max_count": 16, "min_count": 70, "name": "kvIas73u", "region_overrides": {"cYnFAJ3D": {"buffer_count": 72, "buffer_percent": 91, "max_count": 61, "min_count": 28, "name": "gg0Y39Uo", "unlimited": false, "use_buffer_percent": false}}, "regions": ["v5bVAgts"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"UscbQDjb": {"buffer_count": 91, "buffer_percent": 85, "max_count": 41, "min_count": 83, "name": "Mz2PTRlk", "unlimited": true, "use_buffer_percent": true}}, "regions": ["6zPFJ42c"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}' 'BBSMNcoA' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'AOjKNjfc' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 0, "buffer_percent": 100, "configuration": "gBU1sqjy", "enable_region_overrides": false, "game_version": "RSOFQBtu", "max_count": 86, "min_count": 61, "regions": ["Z8hRVX7L"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}' 'dYiQS9i7' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 24, "buffer_percent": 94, "max_count": 57, "min_count": 30, "unlimited": false, "use_buffer_percent": false}' 'pxL6ycTQ' 'dvln2LAu' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'SQWEXL6L' 'FE1YHo9m' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 96, "buffer_percent": 4, "max_count": 14, "min_count": 66, "unlimited": true, "use_buffer_percent": true}' 'bNYqgUqs' 'lArFPiHU' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 68, "buffer_percent": 43, "configuration": "aCv8kU9d", "enable_region_overrides": true, "game_version": "BpdsJLhs", "max_count": 95, "min_count": 49, "region_overrides": {"Exrkxoot": {"buffer_count": 54, "buffer_percent": 97, "max_count": 80, "min_count": 10, "name": "ercZdpMc", "unlimited": false, "use_buffer_percent": true}}, "regions": ["s7YSfExa"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}' 'LteMbFAl' 't4hr7HmO' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'YiBA5ltA' 'OXmlG6eh' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 7, "buffer_percent": 90, "configuration": "doTFpBIc", "enable_region_overrides": true, "game_version": "C1dQY93O", "max_count": 70, "min_count": 26, "regions": ["J6Te9vD8"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}' '7Hu8AD79' 'kdWunviz' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 92, "buffer_percent": 33, "max_count": 31, "min_count": 66, "unlimited": true, "use_buffer_percent": false}' 'hERoGgdr' 'ysMizBGS' 'RdP2l7DN' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'SZ8Aq0Xi' 'PLQXSe07' 'ZddOGTMl' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 70, "buffer_percent": 19, "max_count": 54, "min_count": 45, "unlimited": false, "use_buffer_percent": true}' 'eEdSXRDS' 'vguauw1x' 'T7eMwSl9' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '76' '75' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'H0NnTJ2u' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 22, "mem_limit": 79, "params": "zBvwJaQa"}' '547JllvA' --login_with_auth "Bearer foo"
dsmc-delete-pod-config '8RWSpabU' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 39, "mem_limit": 47, "name": "k6QxyWhf", "params": "qoWfJw2o"}' '8oWUqvPC' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 66}' 'zT7NXmWD' --login_with_auth "Bearer foo"
dsmc-delete-port 'lXsuNIdQ' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "JR5lsNOl", "port": 43}' 'kfwaSbns' --login_with_auth "Bearer foo"
dsmc-list-images '40' '74' --login_with_auth "Bearer foo"
dsmc-delete-image 'CgToxuVT' 'ekJgvg6h' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch '5HIpH0Dv' 'iplEk4vj' '3LDp4yqD' --login_with_auth "Bearer foo"
dsmc-get-image-detail 't8QUZDpx' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'lHasinGc' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'jrkmRMtt' 'gjDSaIVB' --login_with_auth "Bearer foo"
dsmc-list-server '25' '11' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 't3Udg7p9' --login_with_auth "Bearer foo"
dsmc-get-server 'PGmY2H5k' --login_with_auth "Bearer foo"
dsmc-delete-server 'X4MsisSX' --login_with_auth "Bearer foo"
dsmc-get-server-logs '28nARxWR' --login_with_auth "Bearer foo"
dsmc-list-session '30' '42' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '5ou5xtvd' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client '28OUfCt8' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "UJC5flNy"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "j6HsTtX8", "ip": "P3llnaaS", "name": "9lqyygPc", "port": 10}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "kJIxfQZz", "pod_name": "a8kNVbDx"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "7HJk0F89"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'xAc3YVfa' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "ENtrl0pT", "configuration": "KZTXqzHu", "deployment": "BMYQSA2j", "game_mode": "z1ZOpdOj", "matching_allies": [{"matching_parties": [{"party_attributes": {"SyMddB41": {}}, "party_id": "JuMf7RUy", "party_members": [{"user_id": "BHRj8IiR"}]}]}], "namespace": "imRllHT6", "notification_payload": {}, "pod_name": "Dc40vFFA", "region": "6gpU7EW3", "session_id": "x1dCpm55"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "gOeqQIqc"}' --login_with_auth "Bearer foo"
dsmc-get-session 'JVKmBM1J' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '1IbuTrrk' --login_with_auth "Bearer foo"
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
echo "1..69"

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
    '{"artifactPath": "bmuT1whO", "image": "qmEnDXIW", "namespace": "rBPlSay4", "persistent": false, "version": "v71BAZAO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "jtFJ2vmT", "dockerPath": "j7tT7TZH", "image": "WDdCkIsZ", "imageSize": 29, "namespace": "ArWwPHcy", "persistent": true, "version": "AdAtYciL"}' \
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
    '{"artifactPath": "IgRwFRr0", "dockerPath": "gwB9tz3v", "image": "p99XVlV8", "imageSize": 35, "namespace": "K3tE6n0s", "patchVersion": "mip1tw3L", "persistent": false, "version": "Ud9pqtv6"}' \
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
    '{"claim_timeout": 70, "creation_timeout": 11, "default_version": "PZwcCVOX", "port": 5, "ports": {"Va80TmCw": 39}, "protocol": "D2lAH01o", "providers": ["6NdcBIgz"], "session_timeout": 34, "unreachable_timeout": 58}' \
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
    '{"claim_timeout": 48, "creation_timeout": 96, "default_version": "pFBYGmmB", "port": 1, "protocol": "wMyoKyNp", "providers": ["dAasm8xw"], "session_timeout": 92, "unreachable_timeout": 10}' \
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
    '50' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'lQiZY4Nb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 81, "buffer_percent": 90, "configuration": "zNMvuq2t", "enable_region_overrides": false, "game_version": "4CX4IjiK", "max_count": 58, "min_count": 61, "overrides": {"UJRVK3l9": {"buffer_count": 60, "buffer_percent": 3, "configuration": "0R1XRb0R", "enable_region_overrides": true, "game_version": "S1smeOln", "max_count": 13, "min_count": 34, "name": "dTXCzaPB", "region_overrides": {"tkZMio4w": {"buffer_count": 5, "buffer_percent": 48, "max_count": 14, "min_count": 22, "name": "oVS3rYp8", "unlimited": true, "use_buffer_percent": false}}, "regions": ["EmCEVc75"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"ypWjDNhz": {"buffer_count": 57, "buffer_percent": 75, "max_count": 36, "min_count": 97, "name": "S2qwO763", "unlimited": false, "use_buffer_percent": true}}, "regions": ["klkzLm88"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": true}' \
    'YRO3C55y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'HpwK2Jaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 26, "buffer_percent": 58, "configuration": "Gn7a2NUp", "enable_region_overrides": false, "game_version": "WiLjq06n", "max_count": 1, "min_count": 34, "regions": ["W8EfkpaX"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": false}' \
    'Q4WbwNms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 62, "buffer_percent": 8, "max_count": 38, "min_count": 18, "unlimited": true, "use_buffer_percent": true}' \
    'rH8eloJz' \
    'NKtRUaTz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    '1ETdsmwz' \
    'jkkn9oiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 22, "buffer_percent": 13, "max_count": 4, "min_count": 80, "unlimited": false, "use_buffer_percent": false}' \
    'lo6DMNpP' \
    '2qMrTQ1U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 31, "buffer_percent": 19, "configuration": "fU6wJhy1", "enable_region_overrides": false, "game_version": "OVkkUlS7", "max_count": 60, "min_count": 69, "region_overrides": {"a8uCeZFl": {"buffer_count": 75, "buffer_percent": 39, "max_count": 60, "min_count": 95, "name": "pDAEbA82", "unlimited": false, "use_buffer_percent": true}}, "regions": ["74lq0pDE"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": false}' \
    '5b45ebpc' \
    'M7ScSs3U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'OpAwIp9r' \
    'Rtn1PcCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 6, "buffer_percent": 2, "configuration": "umeYgOdE", "enable_region_overrides": true, "game_version": "WRQiW3KF", "max_count": 11, "min_count": 92, "regions": ["8icH4081"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": true}' \
    'LfLg4RYu' \
    'EbgUDEcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 49, "buffer_percent": 69, "max_count": 43, "min_count": 36, "unlimited": true, "use_buffer_percent": true}' \
    '0BmV5iFv' \
    'fwFjTSmI' \
    'EqoLyLeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'GmomGX9s' \
    'XTZ0v8pq' \
    'Lfc5SwGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 87, "buffer_percent": 8, "max_count": 92, "min_count": 92, "unlimited": true, "use_buffer_percent": false}' \
    'b5nh68Zn' \
    'yUtRvW9h' \
    'NBSFTtFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '81' \
    '25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'jkFrFVA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 39, "mem_limit": 47, "params": "F34Xpt6Z"}' \
    'lTTic0kr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    '2a0nI2oo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 92, "mem_limit": 67, "name": "CJK5sp0a", "params": "CvIq3aHV"}' \
    'YIlewLRu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 67}' \
    'Y83bGj0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'TeeWXlIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "RidqctDp", "port": 48}' \
    'gY0ax476' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '61' \
    '59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    '4MMO9Tw2' \
    'JH0qhWIw' \
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
    'HWTgzJFR' \
    'Yw6t1IKZ' \
    'LO6V4Ode' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    '46QmCidg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'dpP7RTC5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    '87lmUmBz' \
    'iPZBnpOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '20' \
    '23' \
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
    'lxfq0Nsr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'Sjw5Hog0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'blM1d5MS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'tYGczLIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '22' \
    '60' \
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
    'C0OEsE3y' \
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

#- 56 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'zIsUP0Nj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "luOrGZTz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "sLW7Fjfs", "ip": "9nIkcZ38", "name": "fUEanjKH", "port": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "Xfk1zxdz", "pod_name": "xg0UXcRy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "3u8BzVWu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    '1tOmhUtC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "gcpvGrEb", "configuration": "cZUDExH1", "deployment": "tayOGXIH", "game_mode": "zMRjMCtO", "matching_allies": [{"matching_parties": [{"party_attributes": {"JsEijlrb": {}}, "party_id": "pyyEcQxV", "party_members": [{"user_id": "gJIjMZqc"}]}]}], "namespace": "WfMl6dqr", "notification_payload": {}, "pod_name": "pD4tnc3Z", "region": "RB3IkdtP", "session_id": "fAJEomwe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "nJvQ8grt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'QSv6EcAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'cMIPms5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
