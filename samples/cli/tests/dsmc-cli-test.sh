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
dsmc-update-image '{"artifactPath": "OmOOEidS", "image": "jce2ThP5", "namespace": "EfZcT16N", "persistent": true, "version": "aQk7hSGh"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "gczrdyoH", "dockerPath": "GIrwE0F4", "image": "9LDR94mc", "imageSize": 86, "namespace": "3lGSBnjR", "persistent": false, "version": "vv2GPI3z"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "oXHh704s", "dockerPath": "Yjaqo868", "image": "3fxM1O0o", "imageSize": 55, "namespace": "XZ5ByJzi", "patchVersion": "071o2XNf", "persistent": false, "version": "RY9ItrDR"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 24, "creation_timeout": 49, "default_version": "jY7LmSlJ", "port": 61, "ports": {"mBkvhC8z": 24, "9dg71kys": 95, "DKje5dEN": 45}, "protocol": "09VcYgl1", "providers": ["5hIoDtw8", "7XfpbmdU", "deIkUJts"], "session_timeout": 75, "unreachable_timeout": 50}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 65, "creation_timeout": 13, "default_version": "A7Tq5MXW", "port": 15, "protocol": "l1Pw1mPC", "providers": ["7Q2iGNBI", "o7r2n0Vr", "b4UlGWlq"], "session_timeout": 88, "unreachable_timeout": 17}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '88' '4' --login_with_auth "Bearer foo"
dsmc-get-deployment 'I1VZ6oAX' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 58, "buffer_percent": 66, "configuration": "36uN9WHb", "enable_region_overrides": false, "game_version": "PZX70bi2", "max_count": 53, "min_count": 53, "overrides": {"oE5TSN6N": {"buffer_count": 0, "buffer_percent": 2, "configuration": "J4Qg6cgj", "enable_region_overrides": false, "game_version": "1dT9ia7l", "max_count": 94, "min_count": 88, "name": "wxmoqC2x", "region_overrides": {"bJ0n12Dt": {"buffer_count": 56, "buffer_percent": 23, "max_count": 60, "min_count": 79, "name": "nQJ1r9VF", "unlimited": false, "use_buffer_percent": true}, "xOD6rvkv": {"buffer_count": 46, "buffer_percent": 56, "max_count": 32, "min_count": 64, "name": "92INwCBP", "unlimited": false, "use_buffer_percent": true}, "aInWs6al": {"buffer_count": 42, "buffer_percent": 74, "max_count": 89, "min_count": 62, "name": "2y1rCbQy", "unlimited": true, "use_buffer_percent": true}}, "regions": ["TyiBCmzd", "UW7qxzFu", "BeGZzFpq"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": true}, "JX5824Xx": {"buffer_count": 57, "buffer_percent": 13, "configuration": "VLcMapKG", "enable_region_overrides": true, "game_version": "l0QLwt6d", "max_count": 46, "min_count": 65, "name": "gRQgEtBA", "region_overrides": {"GKgQZCJF": {"buffer_count": 97, "buffer_percent": 78, "max_count": 16, "min_count": 17, "name": "EYnxGoA6", "unlimited": false, "use_buffer_percent": true}, "CbfyW0mN": {"buffer_count": 42, "buffer_percent": 42, "max_count": 11, "min_count": 17, "name": "WoJFdrZv", "unlimited": true, "use_buffer_percent": true}, "1Vc5zgMF": {"buffer_count": 48, "buffer_percent": 59, "max_count": 75, "min_count": 96, "name": "g95RNMbF", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Lw6YDsQa", "a8z6J3Pr", "hlGCJTmr"], "session_timeout": 1, "unlimited": true, "use_buffer_percent": false}, "2jc9VmSw": {"buffer_count": 14, "buffer_percent": 27, "configuration": "l5SIjuAV", "enable_region_overrides": false, "game_version": "2cAdvZoJ", "max_count": 39, "min_count": 20, "name": "sYTMNC3m", "region_overrides": {"aeC1XAMa": {"buffer_count": 83, "buffer_percent": 42, "max_count": 100, "min_count": 70, "name": "ZPhOVaxb", "unlimited": false, "use_buffer_percent": false}, "4Lv853rl": {"buffer_count": 31, "buffer_percent": 70, "max_count": 16, "min_count": 66, "name": "5duM5mNu", "unlimited": true, "use_buffer_percent": false}, "ouctlMFt": {"buffer_count": 28, "buffer_percent": 79, "max_count": 38, "min_count": 60, "name": "L6zy5osX", "unlimited": false, "use_buffer_percent": true}}, "regions": ["7CrzwjQb", "eHK8fqYY", "rZKvt7Ha"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"s5lbidW6": {"buffer_count": 36, "buffer_percent": 70, "max_count": 14, "min_count": 66, "name": "9HL3VcfV", "unlimited": false, "use_buffer_percent": true}, "72JkSLln": {"buffer_count": 78, "buffer_percent": 98, "max_count": 45, "min_count": 0, "name": "SlVkOxzs", "unlimited": false, "use_buffer_percent": true}, "nT02t0kT": {"buffer_count": 29, "buffer_percent": 24, "max_count": 7, "min_count": 44, "name": "Pgd0Yo9E", "unlimited": true, "use_buffer_percent": true}}, "regions": ["vSUm8nmv", "HQvOStt2", "9NRlMlYp"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}' 'MgyWu1ZG' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'VgRqzmym' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 10, "buffer_percent": 62, "configuration": "w0elnoEC", "enable_region_overrides": false, "game_version": "cWXTCsts", "max_count": 35, "min_count": 67, "regions": ["bcY1Y5la", "TWNZAKW1", "DekhT5JT"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": true}' 'AhpQrOZT' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 83, "buffer_percent": 84, "max_count": 89, "min_count": 99, "unlimited": true, "use_buffer_percent": true}' 'qtPnnMct' '3w5Fdxbs' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'wvMRzOxw' 'cSJGIh2f' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 13, "buffer_percent": 28, "max_count": 76, "min_count": 58, "unlimited": true, "use_buffer_percent": false}' 'x3WvUNU8' 'AbyLkSx0' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 64, "buffer_percent": 64, "configuration": "Clb3cnFe", "enable_region_overrides": true, "game_version": "fsPSNUgj", "max_count": 32, "min_count": 87, "region_overrides": {"KkUPmpK2": {"buffer_count": 33, "buffer_percent": 11, "max_count": 77, "min_count": 82, "name": "G6boy0nb", "unlimited": true, "use_buffer_percent": false}, "Ier0t1a3": {"buffer_count": 41, "buffer_percent": 97, "max_count": 88, "min_count": 13, "name": "wZ5uvi30", "unlimited": false, "use_buffer_percent": false}, "18OxY2zB": {"buffer_count": 64, "buffer_percent": 11, "max_count": 85, "min_count": 65, "name": "OSZj9PUx", "unlimited": false, "use_buffer_percent": true}}, "regions": ["f2ywRDs6", "kjzPXjmi", "cCHRb82Z"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": true}' '6hEDtQfB' 'cTQV1Tzg' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'QN2i5Mgc' '4g7yIpy6' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 22, "buffer_percent": 65, "configuration": "bePzIWhU", "enable_region_overrides": false, "game_version": "Y98A4xR9", "max_count": 92, "min_count": 3, "regions": ["8XW1SRpw", "DAl86Zd2", "5Tn3xGsI"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": true}' '7VeMexo1' '1i6S57fe' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 95, "buffer_percent": 25, "max_count": 75, "min_count": 72, "unlimited": false, "use_buffer_percent": true}' 'FDt4p3NO' 'ZLURNmmZ' 'uD0Y16qA' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'B7rMaz5h' '6gQ8mQno' 'EourYs0P' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 2, "buffer_percent": 31, "max_count": 35, "min_count": 14, "unlimited": false, "use_buffer_percent": false}' 'R4hrpJjP' '2j2gCmvQ' '5ITCznKD' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '5' '68' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'oOi9t5wf' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 59, "mem_limit": 4, "params": "V5CnohVq"}' '6NlwEA9g' --login_with_auth "Bearer foo"
dsmc-delete-pod-config '6VaPNBfi' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 62, "mem_limit": 52, "name": "78Q4OgSl", "params": "fadu1UOp"}' 'IJ7Uvcdz' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 25}' 'osG5cbi3' --login_with_auth "Bearer foo"
dsmc-delete-port 'SdR6dijv' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "9lWqOcPR", "port": 94}' 'dqsdpkeu' --login_with_auth "Bearer foo"
dsmc-list-images '73' '80' --login_with_auth "Bearer foo"
dsmc-delete-image 'PSzxdHvn' 'QOdqQE5e' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'BsydNDUR' 'HoMuJ4E2' 'PnvSKgFM' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'MkqqXlEr' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'R4RlmP0X' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'tAhHkruf' 'blI8qXFK' --login_with_auth "Bearer foo"
dsmc-list-server '64' '27' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'HjkyPmrK' --login_with_auth "Bearer foo"
dsmc-get-server 'vvbV5Fxe' --login_with_auth "Bearer foo"
dsmc-delete-server 'ALWcK3V3' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'UVCns7qu' --login_with_auth "Bearer foo"
dsmc-list-session '36' '35' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'IJbGMYMh' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client '7ZiUifVG' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "IZh0XCCr"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "epDUGAM8", "ip": "q2v25eTw", "name": "bCfcZdeo", "port": 94}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "l5OXxBVd", "pod_name": "W1cz9Yql"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "JbfcIG4k"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'N0HYKKZm' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "AWpNSaTi", "configuration": "81o7OsZJ", "deployment": "gq4qeNCX", "game_mode": "zLupAJ7D", "matching_allies": [{"matching_parties": [{"party_attributes": {"SOVlpjAB": {}, "KWLNNx9x": {}, "uhmxNErW": {}}, "party_id": "1PoAvPfC", "party_members": [{"user_id": "gnzoNNYQ"}, {"user_id": "TmuH4Sap"}, {"user_id": "Ij3Yh0fl"}]}, {"party_attributes": {"leoPlZlZ": {}, "9txARBgQ": {}, "NLabKjWT": {}}, "party_id": "5rTuI6nU", "party_members": [{"user_id": "d0vXKs9u"}, {"user_id": "bU4MtAV8"}, {"user_id": "LjOi8c4C"}]}, {"party_attributes": {"ftOxtfLM": {}, "ioRCCWJ8": {}, "03NbhQEW": {}}, "party_id": "iB8o83dZ", "party_members": [{"user_id": "hm2yik3R"}, {"user_id": "SYtW5kiA"}, {"user_id": "HcmCg3TG"}]}]}, {"matching_parties": [{"party_attributes": {"X6GsJ2gA": {}, "GDT8Uubi": {}, "nJDdEOsZ": {}}, "party_id": "GLHfaSFr", "party_members": [{"user_id": "su8FOd0F"}, {"user_id": "uIY4XWC8"}, {"user_id": "NxQ396BJ"}]}, {"party_attributes": {"b2PkFJSX": {}, "YiVRXuCT": {}, "qxzVzH45": {}}, "party_id": "L75uhZ2i", "party_members": [{"user_id": "XN6OLxGg"}, {"user_id": "37FduuNl"}, {"user_id": "qGyxmpa4"}]}, {"party_attributes": {"saQWszGj": {}, "9PcQy9BG": {}, "b1wrydHe": {}}, "party_id": "r5zVP9VI", "party_members": [{"user_id": "c4Cxd7fT"}, {"user_id": "WG4PnHzu"}, {"user_id": "FlNkes0p"}]}]}, {"matching_parties": [{"party_attributes": {"wxExG3SN": {}, "UHwruvL4": {}, "byFsdNPp": {}}, "party_id": "8dPP89y1", "party_members": [{"user_id": "bNZoiybP"}, {"user_id": "zvI4WL4W"}, {"user_id": "W6r4FUz1"}]}, {"party_attributes": {"ObNjSTrz": {}, "OIrzKYdQ": {}, "um0SGTbd": {}}, "party_id": "Puu8wA7H", "party_members": [{"user_id": "5hx09Ckh"}, {"user_id": "WXfZ3vGU"}, {"user_id": "jY6drBc3"}]}, {"party_attributes": {"0KcLoVxK": {}, "IZbUaX84": {}, "C27zJcB2": {}}, "party_id": "FcfLXSlM", "party_members": [{"user_id": "tXcVqggi"}, {"user_id": "fBHsxSO4"}, {"user_id": "KDo1hxpS"}]}]}], "namespace": "Zw7HPCaQ", "notification_payload": {}, "pod_name": "PG9i6uP7", "region": "PjtPzVIb", "session_id": "l7wg0Ctu"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "H5VuzQ6i"}' --login_with_auth "Bearer foo"
dsmc-get-session 'I0Fykcib' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'ZNs1Oonw' --login_with_auth "Bearer foo"
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
echo "1..70"

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
    '{"artifactPath": "9kqlan1C", "image": "shQXQGkp", "namespace": "AY7QwPYU", "persistent": false, "version": "iL0a4myf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "RLA0ipNR", "dockerPath": "aPx7XWom", "image": "qLGkQwzP", "imageSize": 67, "namespace": "LFVMXl6c", "persistent": false, "version": "rSzJswTs"}' \
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
    '{"artifactPath": "66FxRydw", "dockerPath": "d88VWtFM", "image": "d9UETpy1", "imageSize": 99, "namespace": "WwxY2n3Y", "patchVersion": "kCqVeWSb", "persistent": true, "version": "98y52Am6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetLowestInstanceSpec
$PYTHON -m $MODULE 'dsmc-get-lowest-instance-spec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetLowestInstanceSpec' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 70, "creation_timeout": 12, "default_version": "EL8QQ2Ol", "port": 28, "ports": {"Glnsvguf": 52, "8soqrgtA": 20, "vCJ0daZ1": 38}, "protocol": "aKF4Ysg8", "providers": ["w8AA7ILi", "q0kqwzBm", "aGHv0JZu"], "session_timeout": 4, "unreachable_timeout": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateConfig' test.out

#- 11 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteConfig' test.out

#- 12 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 15, "creation_timeout": 65, "default_version": "Dniyt9ql", "port": 70, "protocol": "AzDYGbRx", "providers": ["HKykisRH", "AEhR6JD4", "vkJWN75U"], "session_timeout": 62, "unreachable_timeout": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateConfig' test.out

#- 13 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'ClearCache' test.out

#- 14 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    '79' \
    '71' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'S2MEJcIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 78, "buffer_percent": 59, "configuration": "he0IJpRM", "enable_region_overrides": true, "game_version": "ylkbkEM3", "max_count": 40, "min_count": 8, "overrides": {"ZSg2jQao": {"buffer_count": 29, "buffer_percent": 72, "configuration": "ciFUlIjV", "enable_region_overrides": false, "game_version": "2PAIIEo3", "max_count": 31, "min_count": 39, "name": "VfLD5f4c", "region_overrides": {"H0aoCRdL": {"buffer_count": 13, "buffer_percent": 50, "max_count": 89, "min_count": 2, "name": "4kHQR7Ch", "unlimited": false, "use_buffer_percent": false}, "jcgy0AWZ": {"buffer_count": 72, "buffer_percent": 60, "max_count": 89, "min_count": 27, "name": "NmPVfojs", "unlimited": false, "use_buffer_percent": false}, "gebwHhb3": {"buffer_count": 69, "buffer_percent": 54, "max_count": 32, "min_count": 89, "name": "6tQ4ns73", "unlimited": true, "use_buffer_percent": true}}, "regions": ["vlRkPLBv", "28SA0q5P", "lC8GJ65S"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}, "T4WE8X3S": {"buffer_count": 68, "buffer_percent": 76, "configuration": "tAQjxG7X", "enable_region_overrides": true, "game_version": "wiTOe2l6", "max_count": 81, "min_count": 74, "name": "cyfboR1O", "region_overrides": {"6he1eLih": {"buffer_count": 17, "buffer_percent": 20, "max_count": 22, "min_count": 91, "name": "lwjHhMN6", "unlimited": true, "use_buffer_percent": true}, "VERHEGcV": {"buffer_count": 87, "buffer_percent": 0, "max_count": 50, "min_count": 59, "name": "xQ55oJjR", "unlimited": false, "use_buffer_percent": true}, "HJBmajop": {"buffer_count": 2, "buffer_percent": 36, "max_count": 80, "min_count": 91, "name": "zxxGHTUQ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["jc9jCRC3", "QPpwe2VT", "dGI2nX3E"], "session_timeout": 32, "unlimited": false, "use_buffer_percent": true}, "GZo5T2cp": {"buffer_count": 66, "buffer_percent": 72, "configuration": "JGC0vNFS", "enable_region_overrides": true, "game_version": "AzYHGaWt", "max_count": 10, "min_count": 62, "name": "B3ydGxsn", "region_overrides": {"kpi3FPPo": {"buffer_count": 15, "buffer_percent": 52, "max_count": 96, "min_count": 73, "name": "GF7OocQV", "unlimited": false, "use_buffer_percent": false}, "0mfFapMo": {"buffer_count": 58, "buffer_percent": 80, "max_count": 33, "min_count": 100, "name": "0WHfBeyp", "unlimited": false, "use_buffer_percent": false}, "jOzfuYW7": {"buffer_count": 29, "buffer_percent": 19, "max_count": 79, "min_count": 8, "name": "hpBZxac0", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Vu0rQ3tE", "HeX1lOiQ", "KrYbui5u"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"AXNsjTgu": {"buffer_count": 4, "buffer_percent": 27, "max_count": 58, "min_count": 25, "name": "mvoQtYIq", "unlimited": true, "use_buffer_percent": false}, "fPEb6fu3": {"buffer_count": 47, "buffer_percent": 44, "max_count": 89, "min_count": 10, "name": "G57UvyXB", "unlimited": true, "use_buffer_percent": false}, "EgueFiOF": {"buffer_count": 94, "buffer_percent": 37, "max_count": 58, "min_count": 0, "name": "cz12BGBt", "unlimited": false, "use_buffer_percent": true}}, "regions": ["E3OznPp0", "tAREJwCx", "vjEd0wwU"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": true}' \
    'B3vtrGE5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'RQr9TUfJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 4, "buffer_percent": 8, "configuration": "S5I4NR3K", "enable_region_overrides": false, "game_version": "p2YVA43A", "max_count": 12, "min_count": 51, "regions": ["UEVFmS4P", "N63Wj8Ze", "rdlH3hgr"], "session_timeout": 56, "unlimited": true, "use_buffer_percent": false}' \
    'R4n2zOo7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 51, "buffer_percent": 50, "max_count": 71, "min_count": 65, "unlimited": false, "use_buffer_percent": false}' \
    'ttqG6StR' \
    '51Reg2Di' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'lmO33GII' \
    '8yY0z5ET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 11, "buffer_percent": 100, "max_count": 12, "min_count": 69, "unlimited": false, "use_buffer_percent": false}' \
    'fdTFqoec' \
    'rP0wOheD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 89, "buffer_percent": 54, "configuration": "OgUII4X7", "enable_region_overrides": true, "game_version": "HyRO86LM", "max_count": 75, "min_count": 22, "region_overrides": {"2CvTvnMD": {"buffer_count": 93, "buffer_percent": 39, "max_count": 59, "min_count": 100, "name": "dJg9mMPc", "unlimited": false, "use_buffer_percent": true}, "q1wh2il9": {"buffer_count": 67, "buffer_percent": 79, "max_count": 22, "min_count": 6, "name": "EapQC6Zp", "unlimited": true, "use_buffer_percent": false}, "aTH51h8J": {"buffer_count": 87, "buffer_percent": 12, "max_count": 85, "min_count": 41, "name": "nR7T6jfl", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Bo7rtEMa", "TOACkSQA", "xA83Cjng"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": false}' \
    'aHCHM2wl' \
    '17CH2SwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'BOobUA9G' \
    'x1N6n2Vd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 40, "buffer_percent": 31, "configuration": "fiyYb1de", "enable_region_overrides": true, "game_version": "OKXhynp9", "max_count": 88, "min_count": 98, "regions": ["m9tVLf8v", "Xv8yzswE", "ORUs54oI"], "session_timeout": 26, "unlimited": false, "use_buffer_percent": false}' \
    '63PQFhj2' \
    'MBTTFrrt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 67, "buffer_percent": 52, "max_count": 21, "min_count": 51, "unlimited": false, "use_buffer_percent": true}' \
    'Zzx8b3r2' \
    'GUReQRf1' \
    'AD9Z5sX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'FoS1KBOQ' \
    '4W0f8Ef3' \
    '5Jhdaxi1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 53, "buffer_percent": 58, "max_count": 77, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    'O8LKqNUi' \
    'U5UuYea1' \
    'EOMt0zx2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '11' \
    '18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'Vh7a5DSF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 5, "mem_limit": 75, "params": "2ZC7G9EU"}' \
    'LdBrGKAn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'ZiACDn3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 97, "mem_limit": 86, "name": "yYuo9JyO", "params": "VfnWMZFd"}' \
    '827CB4IJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 68}' \
    'eQRpLI5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'bSopVinS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "ZL86A8p7", "port": 80}' \
    'vLFmDg48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '92' \
    '3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'bKDnXmwN' \
    'HNfo4efC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteImage' test.out

#- 38 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'ExportImages' test.out

#- 39 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetImageLimit' test.out

#- 40 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    'dTY8hNku' \
    'cxisUret' \
    'J3hjRyG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'qPTHK5YN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'OPx4yayz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'iZP6M3hH' \
    '8WW6VCwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '71' \
    '66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'Gl5c2McX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'eFTrSRdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'v9VjBPZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    '9j1DbIdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetServerLogs' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '94' \
    '58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    '4fpVssOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ExportConfigV1' test.out

#- 56 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImportConfigV1' test.out

#- 57 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageLimitClient' test.out

#- 58 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    '8tcbIkzc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'ImageDetailClient' test.out

#- 59 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "OOPmiKb9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeregisterLocalServer' test.out

#- 60 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "b3whsCvv", "ip": "q7OqiKsQ", "name": "W1XtO0jh", "port": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterLocalServer' test.out

#- 61 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "Ndy0V9tk", "pod_name": "XPD0YlOf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RegisterServer' test.out

#- 62 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "X5xINmwD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ShutdownServer' test.out

#- 63 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'd5YBWw3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetServerSession' test.out

#- 64 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "cB8ZsVES", "configuration": "zfWTfrju", "deployment": "fckw33SD", "game_mode": "sIlLYkDb", "matching_allies": [{"matching_parties": [{"party_attributes": {"tXQdBC11": {}, "gVuRm3V5": {}, "j95HvJTj": {}}, "party_id": "trqq3dPD", "party_members": [{"user_id": "23eadlD5"}, {"user_id": "CMpX15mp"}, {"user_id": "Awmmhk9n"}]}, {"party_attributes": {"8N16mYpf": {}, "8Xgidn3h": {}, "AD75ZTGp": {}}, "party_id": "p5FeX7wb", "party_members": [{"user_id": "8yk5qAA2"}, {"user_id": "Qy2gCCdN"}, {"user_id": "XJPNqTQO"}]}, {"party_attributes": {"t8gQhPXc": {}, "sqcNlCcY": {}, "TtJK7KnL": {}}, "party_id": "pqrYPYtN", "party_members": [{"user_id": "eDHUaXFG"}, {"user_id": "a7RpJyKK"}, {"user_id": "KYRW7yV2"}]}]}, {"matching_parties": [{"party_attributes": {"5rMnYBxj": {}, "vbfOY2uU": {}, "eCWCQFZU": {}}, "party_id": "TumMmsbX", "party_members": [{"user_id": "lyBmbQWb"}, {"user_id": "TiIkaGpw"}, {"user_id": "gS8GA0fW"}]}, {"party_attributes": {"FgNvNPy4": {}, "DvjYPlSn": {}, "ldDcW4gM": {}}, "party_id": "0oiCoLV0", "party_members": [{"user_id": "CXmuW5kp"}, {"user_id": "p2gxaV8F"}, {"user_id": "T3FzNPb0"}]}, {"party_attributes": {"XZVChXgw": {}, "itx7gWWh": {}, "Pk6BEOMk": {}}, "party_id": "UnRP6Sz6", "party_members": [{"user_id": "1DSIzKWL"}, {"user_id": "OS1TvPOI"}, {"user_id": "eRNWOsUV"}]}]}, {"matching_parties": [{"party_attributes": {"gp7zqXQy": {}, "tAH7Btyt": {}, "2Jun5XJj": {}}, "party_id": "c1Fu5cjF", "party_members": [{"user_id": "ELvEeXf3"}, {"user_id": "IJi7k44x"}, {"user_id": "pWlplPpV"}]}, {"party_attributes": {"GidmiVEh": {}, "eOBLs0AL": {}, "Weve7UIm": {}}, "party_id": "lWwedplm", "party_members": [{"user_id": "yn7y0pHZ"}, {"user_id": "gETlQMQM"}, {"user_id": "CNQvo50f"}]}, {"party_attributes": {"c1G7qDaY": {}, "kosOglck": {}, "dk3vDXeY": {}}, "party_id": "jFHLstfA", "party_members": [{"user_id": "lwDdUYa4"}, {"user_id": "uB9S6qOL"}, {"user_id": "ppmgplfE"}]}]}], "namespace": "FW8t3b2M", "notification_payload": {}, "pod_name": "1NVjgTDP", "region": "epHQqBMa", "session_id": "nMca2NCz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateSession' test.out

#- 65 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "xpienW3C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ClaimServer' test.out

#- 66 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'RMZMQ1vo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSession' test.out

#- 67 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetDefaultProvider' test.out

#- 68 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ListProviders' test.out

#- 69 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'jznUBwBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'ListProvidersByRegion' test.out

#- 70 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
