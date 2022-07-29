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
dsmc-create-image '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "570KQBVa", "dockerPath": "ewc72krS", "image": "ha68n3Yn", "namespace": "ozp1C2Km", "patchVersion": "IQTuBdNE", "persistent": true, "version": "xFb8CJ17"}' --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 76, "creation_timeout": 59, "default_version": "JZaMSxEC", "port": 2, "ports": {"Zbygyoar": 81}, "protocol": "RoeNHSb8", "providers": ["Rh3kgs9q"], "session_timeout": 33, "unreachable_timeout": 71}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 2, "creation_timeout": 27, "default_version": "QsoBgiVp", "port": 82, "protocol": "8Cm3yvAS", "providers": ["UoxdxxFq"], "session_timeout": 24, "unreachable_timeout": 52}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '65' '91' --login_with_auth "Bearer foo"
dsmc-get-deployment 'J8IEdagE' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 31, "buffer_percent": 44, "configuration": "29KOu9c1", "enable_region_overrides": true, "game_version": "qWHkkP8n", "max_count": 30, "min_count": 75, "overrides": {"EKMfjiX7": {"buffer_count": 18, "buffer_percent": 31, "configuration": "kVZk3IaQ", "enable_region_overrides": true, "game_version": "mqGodOEG", "max_count": 39, "min_count": 13, "name": "POj0c6i0", "region_overrides": {"JkvIas73": {"buffer_count": 40, "buffer_percent": 4, "max_count": 100, "min_count": 27, "name": "FAJ3DK5T", "use_buffer_percent": true}}, "regions": ["ogg0Y39U"], "session_timeout": 29, "use_buffer_percent": false}}, "region_overrides": {"pv5bVAgt": {"buffer_count": 36, "buffer_percent": 58, "max_count": 15, "min_count": 93, "name": "TDUscbQD", "use_buffer_percent": false}}, "regions": ["bTQuPMz2"], "session_timeout": 82, "use_buffer_percent": false}' 'kyU89ZPO' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'w6zPFJ42' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 45, "buffer_percent": 25, "configuration": "zBBSMNco", "enable_region_overrides": true, "game_version": "AOjKNjfc", "max_count": 67, "min_count": 25, "regions": ["093aYgBU"], "session_timeout": 36, "use_buffer_percent": true}' 'jyK0XH45' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 83, "buffer_percent": 0, "max_count": 87, "min_count": 89, "use_buffer_percent": true}' 'QBtu23RE' 'Z8hRVX7L' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'GOvDdYiQ' 'S9i7mV1C' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 30, "buffer_percent": 18, "max_count": 64, "min_count": 13, "use_buffer_percent": false}' 'xL6ycTQd' 'vln2LAuS' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 85, "buffer_percent": 97, "configuration": "EXL6LFE1", "enable_region_overrides": false, "game_version": "9m126ZWc", "max_count": 14, "min_count": 66, "region_overrides": {"tWvbNYqg": {"buffer_count": 92, "buffer_percent": 33, "max_count": 37, "min_count": 22, "name": "ArFPiHUI", "use_buffer_percent": true}}, "regions": ["aCv8kU9d"], "session_timeout": 55, "use_buffer_percent": true}' 'pdsJLhsV' 'yExrkxoo' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 't0B7WOfe' 'rcZdpMci' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 58, "buffer_percent": 36, "configuration": "7YSfExaI", "enable_region_overrides": true, "game_version": "zLteMbFA", "max_count": 23, "min_count": 39, "regions": ["4hr7HmOY"], "session_timeout": 16, "use_buffer_percent": true}' 'A5ltAOXm' 'lG6eh1dT' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 6, "buffer_percent": 29, "max_count": 91, "min_count": 63, "use_buffer_percent": false}' 'BIcuC1dQ' 'Y93OJnJ6' 'Te9vD8ld' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'z7Hu8AD7' '9kdWunvi' 'zU0q1pHy' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 15, "buffer_percent": 15, "max_count": 61, "min_count": 86, "use_buffer_percent": false}' 'GgdrysMi' 'zBGSRdP2' 'l7DNSZ8A' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '33' '98' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'iPLQXSe0' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 7, "mem_limit": 6, "params": "OGTMlJjB"}' 'wj9HJHQK' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'seEdSXRD' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 89, "mem_limit": 43, "name": "guauw1xT", "params": "7eMwSl9M"}' 'LH0NnTJ2' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 41}' 'lNzBvwJa' --login_with_auth "Bearer foo"
dsmc-delete-port 'Qa547Jll' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "vA8RWSpa", "port": 2}' 'Ut7xk6Qx' --login_with_auth "Bearer foo"
dsmc-list-images '49' '96' --login_with_auth "Bearer foo"
dsmc-delete-image 'hfqoWfJw' '2o8oWUqv' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'PCZ2HzT7' 'NXmWDlXs' 'uNIdQJR5' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'lsNOlvkf' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'waSbnsuL' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'CgToxuVT' 'ekJgvg6h' --login_with_auth "Bearer foo"
dsmc-list-server '67' '68' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'pH0Dvipl' --login_with_auth "Bearer foo"
dsmc-get-server 'Ek4vj3LD' --login_with_auth "Bearer foo"
dsmc-delete-server 'p4yqDt8Q' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'UZDpxlHa' --login_with_auth "Bearer foo"
dsmc-list-session '36' '16' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'nGcjrkmR' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-detail-client 'MttgjDSa' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "IVBmft3U"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "dg7p9PGm", "ip": "Y2H5kX4M", "name": "sisSX28n", "port": 53}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "RxWRpv5o", "pod_name": "u5xtvd28"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "Ct8UJC5f"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'lNyj6HsT' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "tX8P3lln", "configuration": "aaS9lqyy", "deployment": "gPcfkJIx", "game_mode": "fQZza8kN", "matching_allies": [{"matching_parties": [{"party_attributes": {"VbDxVMq7": {}}, "party_id": "HJk0F89x", "party_members": [{"user_id": "Ac3YVfaE"}]}]}], "namespace": "Ntrl0pTK", "notification_payload": {}, "pod_name": "ZTXqzHuB", "region": "MYQSA2jz", "session_id": "1ZOpdOjS"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "yMddB41J"}' --login_with_auth "Bearer foo"
dsmc-get-session 'uMf7RUyB' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'HRj8IiRi' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "mRllHT6D", "image": "c40vFFA6", "namespace": "gpU7EW3x", "persistent": false, "version": "Cpm55gOe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "qQIqcJVK", "dockerPath": "mBM1J1Ib", "image": "uTrrkbmu", "namespace": "T1whOqmE", "persistent": false, "version": "DXIWrBPl"}' \
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
    '{"artifactPath": "Say46mv7", "dockerPath": "1BAZAOjt", "image": "FJ2vmTj7", "namespace": "tT7TZHWD", "patchVersion": "dCkIsZoA", "persistent": true, "version": "WwPHcyFA"}' \
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
    '{"claim_timeout": 6, "creation_timeout": 52, "default_version": "tYciLIgR", "port": 45, "ports": {"FRr0gwB9": 39}, "protocol": "z3vp99XV", "providers": ["lV8rK3tE"], "session_timeout": 26, "unreachable_timeout": 36}' \
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
    '{"claim_timeout": 25, "creation_timeout": 16, "default_version": "p1tw3L7c", "port": 93, "protocol": "d9pqtv6J", "providers": ["fPZwcCVO"], "session_timeout": 98, "unreachable_timeout": 5}' \
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
    '95' \
    '1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    '80TmCwtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 52, "buffer_percent": 67, "configuration": "01o6NdcB", "enable_region_overrides": false, "game_version": "zrDyWpFB", "max_count": 65, "min_count": 24, "overrides": {"mBawMyoK": {"buffer_count": 49, "buffer_percent": 79, "configuration": "pdAasm8x", "enable_region_overrides": true, "game_version": "UfzOlQiZ", "max_count": 100, "min_count": 79, "name": "bOQXJ7uO", "region_overrides": {"TzNMvuq2": {"buffer_count": 39, "buffer_percent": 79, "max_count": 23, "min_count": 56, "name": "X4IjiK4D", "use_buffer_percent": true}}, "regions": ["UJRVK3l9"], "session_timeout": 60, "use_buffer_percent": false}}, "region_overrides": {"0R1XRb0R": {"buffer_count": 66, "buffer_percent": 43, "max_count": 88, "min_count": 37, "name": "meOlngrd", "use_buffer_percent": true}}, "regions": ["zaPBtkZM"], "session_timeout": 17, "use_buffer_percent": false}' \
    '4wcyhloV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'S3rYp8Qt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 61, "buffer_percent": 25, "configuration": "CEVc75Uf", "enable_region_overrides": false, "game_version": "ypWjDNhz", "max_count": 57, "min_count": 75, "regions": ["5sWS2qwO"], "session_timeout": 16, "use_buffer_percent": true}' \
    'klkzLm88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 75, "buffer_percent": 31, "max_count": 75, "min_count": 41, "use_buffer_percent": true}' \
    '55yHpwK2' \
    'JaqenDGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    '7a2NUplW' \
    'iLjq06n6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 1, "buffer_percent": 34, "max_count": 96, "min_count": 60, "use_buffer_percent": false}' \
    'kpaXtwYZ' \
    'JaQ4WbwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 25, "buffer_percent": 37, "configuration": "FYetjEur", "enable_region_overrides": false, "game_version": "loJzNKtR", "max_count": 92, "min_count": 1, "region_overrides": {"Tz1ETdsm": {"buffer_count": 44, "buffer_percent": 51, "max_count": 19, "min_count": 21, "name": "kn9oiQl0", "use_buffer_percent": false}}, "regions": ["7cO3ZMb6"], "session_timeout": 80, "use_buffer_percent": false}' \
    'lo6DMNpP' \
    '2qMrTQ1U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'pjfU6wJh' \
    'y1jOVkkU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 23, "buffer_percent": 88, "configuration": "79527EZ2", "enable_region_overrides": false, "game_version": "8uCeZFlL", "max_count": 39, "min_count": 60, "regions": ["VpDAEbA8"], "session_timeout": 18, "use_buffer_percent": true}' \
    '74lq0pDE' \
    '5xRwh5b4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 9, "buffer_percent": 3, "max_count": 30, "min_count": 5, "use_buffer_percent": false}' \
    'Ss3UOpAw' \
    'Ip9rRtn1' \
    'PcCxdbum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'eYgOdEBW' \
    'RQiW3KFf' \
    'U8icH408' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 13, "buffer_percent": 87, "max_count": 55, "min_count": 64, "use_buffer_percent": true}' \
    'LfLg4RYu' \
    'EbgUDEcJ' \
    'yIvsPwOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '54' \
    '25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'V5iFvfwF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 19, "mem_limit": 90, "params": "SmIEqoLy"}' \
    'LeUGmomG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'X9sXTZ0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 30, "mem_limit": 32, "name": "Lfc5SwGn", "params": "ReUULDX4"}' \
    'QUIbb5nh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 26}' \
    'yUtRvW9h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'NBSFTtFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "OmjkFrFV", "port": 52}' \
    '8t0xF34X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '31' \
    '38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    '6ZlTTic0' \
    'kr2a0nI2' \
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
    'oo7UHCJK' \
    '5sp0aCvI' \
    'q3aHVYIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'ewLRuHY8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    '3bGj0HTe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'eWXlIcRi' \
    'dqctDpyg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '100' \
    '0' \
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
    'x476ED4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'MO9Tw2JH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    '0qhWIwHW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'TgzJFRYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '38' \
    '68' \
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
    'KZLO6V4O' \
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
    'de46QmCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "dgdpP7RT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "C587lmUm", "ip": "BziPZBnp", "name": "Ofkllxfq", "port": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "srSjw5Ho", "pod_name": "g0blM1d5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "YGczLINl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'EC0OEsE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "yzIsUP0N", "configuration": "jluOrGZT", "deployment": "zsLW7Fjf", "game_mode": "s9nIkcZ3", "matching_allies": [{"matching_parties": [{"party_attributes": {"8fUEanjK": {}}, "party_id": "HbXfk1zx", "party_members": [{"user_id": "dzxg0UXc"}]}]}], "namespace": "RyHi3u8B", "notification_payload": {}, "pod_name": "zVWu1tOm", "region": "hUtCgcpv", "session_id": "GrEbcZUD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "ExH1tayO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'GXIHzMRj' \
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
    'MCtOJsEi' \
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
