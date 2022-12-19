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
dsmc-update-image '{"artifactPath": "kmPqaC1g", "image": "vEjz1XH2", "namespace": "rBjSLdyr", "persistent": true, "version": "wNOy9bdQ"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "ppwaqMdh", "dockerPath": "nVn9xyEp", "image": "60dZPhBa", "imageSize": 14, "namespace": "NQT6NzRz", "persistent": true, "version": "DW4Fcmyi"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "kAq3sy4a", "dockerPath": "SgXXVVsQ", "image": "xossdM2J", "imageSize": 74, "namespace": "u14ZtVdZ", "patchVersion": "MhG6N9Bf", "persistent": false, "version": "3vjYlf9f"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 23, "creation_timeout": 79, "default_version": "l6RTYyFN", "port": 76, "ports": {"wqSaqph6": 27, "lOKh6zq4": 98, "u9suZdTs": 38}, "protocol": "ZHW3gDlo", "providers": ["7MBGYWkV", "qTNqh6do", "noUEYgXq"], "session_timeout": 16, "unreachable_timeout": 96}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 21, "creation_timeout": 61, "default_version": "0Woxsp63", "port": 15, "protocol": "LNWui4t0", "providers": ["JjODJbDm", "gUbiHv1S", "xmP03DKg"], "session_timeout": 7, "unreachable_timeout": 6}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '3' '24' --login_with_auth "Bearer foo"
dsmc-get-deployment '3Y71dYCn' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 82, "buffer_percent": 6, "configuration": "mr3MLMR0", "enable_region_overrides": true, "game_version": "FwWLOP6c", "max_count": 99, "min_count": 11, "overrides": {"0EItBQSf": {"buffer_count": 31, "buffer_percent": 23, "configuration": "0jtb447M", "enable_region_overrides": true, "game_version": "k4RzYu40", "max_count": 18, "min_count": 79, "name": "XI1KuuSn", "region_overrides": {"gTW98RfY": {"buffer_count": 3, "buffer_percent": 66, "max_count": 58, "min_count": 48, "name": "czQCO2cS", "unlimited": false, "use_buffer_percent": false}, "rJTBZkrU": {"buffer_count": 81, "buffer_percent": 28, "max_count": 34, "min_count": 2, "name": "7g40vsau", "unlimited": true, "use_buffer_percent": false}, "mEsVa24S": {"buffer_count": 92, "buffer_percent": 83, "max_count": 35, "min_count": 49, "name": "kfXnyoAt", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0ainQx4y", "fQPq2dkc", "t3hyN3Do"], "session_timeout": 84, "unlimited": true, "use_buffer_percent": false}, "hMbUf96Q": {"buffer_count": 5, "buffer_percent": 23, "configuration": "32yopSop", "enable_region_overrides": true, "game_version": "I8PEsVic", "max_count": 84, "min_count": 36, "name": "of9yKXXg", "region_overrides": {"ZbvitYHd": {"buffer_count": 66, "buffer_percent": 59, "max_count": 60, "min_count": 22, "name": "DNiIA7lZ", "unlimited": false, "use_buffer_percent": true}, "HX6cimwQ": {"buffer_count": 1, "buffer_percent": 75, "max_count": 94, "min_count": 40, "name": "O5Jcc0cK", "unlimited": true, "use_buffer_percent": true}, "A6LlAG7o": {"buffer_count": 43, "buffer_percent": 27, "max_count": 69, "min_count": 45, "name": "XJHX3mVE", "unlimited": true, "use_buffer_percent": false}}, "regions": ["XHww9B7G", "TnN1Vz7j", "8fW6LYko"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": false}, "sCDZb9Ad": {"buffer_count": 86, "buffer_percent": 33, "configuration": "YBmF40YY", "enable_region_overrides": true, "game_version": "U1rOg1Pk", "max_count": 80, "min_count": 26, "name": "qDjmSqYe", "region_overrides": {"xgI66y6K": {"buffer_count": 36, "buffer_percent": 56, "max_count": 20, "min_count": 89, "name": "vP3hB4UR", "unlimited": false, "use_buffer_percent": false}, "8Nb8lj2I": {"buffer_count": 69, "buffer_percent": 73, "max_count": 52, "min_count": 84, "name": "n9xzr3MI", "unlimited": true, "use_buffer_percent": true}, "lxpXcyi5": {"buffer_count": 17, "buffer_percent": 100, "max_count": 72, "min_count": 14, "name": "K0UgvMPh", "unlimited": true, "use_buffer_percent": false}}, "regions": ["IXemtmD0", "2Vu0RGXj", "QvtfSod5"], "session_timeout": 78, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"cXEk6lic": {"buffer_count": 34, "buffer_percent": 31, "max_count": 88, "min_count": 92, "name": "oN4Jad4d", "unlimited": true, "use_buffer_percent": false}, "qFIUe2Uj": {"buffer_count": 51, "buffer_percent": 62, "max_count": 69, "min_count": 14, "name": "4Y16fDiG", "unlimited": true, "use_buffer_percent": true}, "EEtm9Wau": {"buffer_count": 92, "buffer_percent": 1, "max_count": 13, "min_count": 93, "name": "SDxiOl1l", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dUhU2Xfg", "fiE8NZTm", "Z02BCUFO"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": false}' 'JRz8M7rq' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'qK9XciAU' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 19, "buffer_percent": 40, "configuration": "CxP9crlj", "enable_region_overrides": true, "game_version": "s31xpQxD", "max_count": 1, "min_count": 57, "regions": ["ex656pwm", "qdwIkKWH", "nC3R99Xn"], "session_timeout": 83, "unlimited": false, "use_buffer_percent": true}' 'gf60puFu' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 60, "buffer_percent": 29, "max_count": 70, "min_count": 26, "unlimited": true, "use_buffer_percent": true}' 'uiSJghwR' 'SW3jbOkb' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'LTXm1bf7' 'O5e7pzgC' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 26, "buffer_percent": 92, "max_count": 47, "min_count": 59, "unlimited": false, "use_buffer_percent": false}' 'ckgWoDW2' 'qEzOl15r' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 2, "buffer_percent": 76, "configuration": "kLH1AejG", "enable_region_overrides": true, "game_version": "Xw4Vee7m", "max_count": 32, "min_count": 25, "region_overrides": {"U8rRxja9": {"buffer_count": 16, "buffer_percent": 87, "max_count": 81, "min_count": 43, "name": "OEMwfD7N", "unlimited": true, "use_buffer_percent": true}, "M9oNd1ke": {"buffer_count": 11, "buffer_percent": 89, "max_count": 44, "min_count": 100, "name": "oMGCz3V1", "unlimited": true, "use_buffer_percent": true}, "B9BpfeHi": {"buffer_count": 100, "buffer_percent": 49, "max_count": 16, "min_count": 53, "name": "stFMw9Hu", "unlimited": true, "use_buffer_percent": false}}, "regions": ["mlFWgyFR", "dgTzyjol", "N5BIbHeA"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": true}' 'ryvTuRwi' '4jOmcq0H' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'mmrF2Hoz' 'GaE3oaNZ' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 82, "buffer_percent": 72, "configuration": "jnDp1VC5", "enable_region_overrides": false, "game_version": "4ADKZ7UF", "max_count": 82, "min_count": 20, "regions": ["Fil7sT8n", "tXLYOIqF", "1h4xU8Gu"], "session_timeout": 52, "unlimited": false, "use_buffer_percent": true}' 'HSp5oui1' 'E9YK1i0X' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 48, "buffer_percent": 5, "max_count": 100, "min_count": 67, "unlimited": false, "use_buffer_percent": false}' 'dAmn8Q9q' 'em88ZYTq' '9KgEzc8t' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override '7JemL4Hp' '3SFCzHE9' 'vykjjDhQ' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 6, "buffer_percent": 79, "max_count": 30, "min_count": 29, "unlimited": true, "use_buffer_percent": false}' 'emYCc3UJ' 'CJ8S8pMZ' '9VgenCZG' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '70' '42' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'xxbrMDLi' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 61, "mem_limit": 64, "params": "VBSFD3vS"}' 'u3KLmn64' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'gKSUdbg2' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 30, "mem_limit": 85, "name": "JPKovHIf", "params": "yS7ujomr"}' 'sXyGPNyM' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 89}' 'Aw9IdPGw' --login_with_auth "Bearer foo"
dsmc-delete-port 'n3zGY4Xv' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "t70VJH53", "port": 53}' 'wWZcAJLg' --login_with_auth "Bearer foo"
dsmc-list-images '56' '67' --login_with_auth "Bearer foo"
dsmc-delete-image 'Yf0ZaO5g' 'ZCgIsNad' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'JHFroXwv' 'FYGNTWT7' '2XhqnIj2' --login_with_auth "Bearer foo"
dsmc-get-image-detail '1PrKBv5l' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'NXVltAeq' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'NIJllxwX' 'oli8d0Au' --login_with_auth "Bearer foo"
dsmc-list-server '12' '18' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 's1hfhIPF' --login_with_auth "Bearer foo"
dsmc-get-server 'XlgS7OYU' --login_with_auth "Bearer foo"
dsmc-delete-server 's698zE5U' --login_with_auth "Bearer foo"
dsmc-list-session '69' '38' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'uK9IZYlb' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'satE7vBt' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "LHCdLEAJ"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "vdPaGInf", "ip": "oNnZtCPe", "name": "6BQDhAel", "port": 1}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "5PYdIaCt", "pod_name": "AsAhy68e"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "bApDmPAB"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'iXweu4Z3' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "ztF5JTIz", "configuration": "vxaPgvLp", "deployment": "UilfnhSV", "game_mode": "hR95TKHl", "matching_allies": [{"matching_parties": [{"party_attributes": {"9EsznUgR": {}, "MXvqD9nh": {}, "NMFNn63a": {}}, "party_id": "qTug4YXK", "party_members": [{"user_id": "ApiXn6pq"}, {"user_id": "abrmkQPN"}, {"user_id": "biOCPnv0"}]}, {"party_attributes": {"3q7WRQVB": {}, "1M7fvqK3": {}, "sWXAz6w0": {}}, "party_id": "RRVs8mQy", "party_members": [{"user_id": "f8VhwtGU"}, {"user_id": "6jYHhij0"}, {"user_id": "A0DhMWoi"}]}, {"party_attributes": {"rbrewjvu": {}, "am85Ji92": {}, "nEyFmOhx": {}}, "party_id": "jaCVyD22", "party_members": [{"user_id": "vtNfR5DK"}, {"user_id": "wAoRaIXJ"}, {"user_id": "RMoperjc"}]}]}, {"matching_parties": [{"party_attributes": {"BKjThipo": {}, "1CyciaWm": {}, "NdDxmowS": {}}, "party_id": "pxppVx7o", "party_members": [{"user_id": "5ouvK3Ws"}, {"user_id": "xKQ5fLjR"}, {"user_id": "8NHsFTWj"}]}, {"party_attributes": {"otJjcGpj": {}, "lJSIfaa6": {}, "dQYoWfGs": {}}, "party_id": "ODNEkMBd", "party_members": [{"user_id": "2FNvzC7b"}, {"user_id": "mPjDPapM"}, {"user_id": "1RinMuIS"}]}, {"party_attributes": {"P9oMaqiR": {}, "ZbDQEpHX": {}, "BhLUdy2L": {}}, "party_id": "mS2XqWlZ", "party_members": [{"user_id": "eEA8GAFN"}, {"user_id": "9ymoTzWL"}, {"user_id": "rwG6yyJX"}]}]}, {"matching_parties": [{"party_attributes": {"CcWDv5YQ": {}, "XaEtMf4v": {}, "CLWzWQ3S": {}}, "party_id": "ehmdQfSs", "party_members": [{"user_id": "Hiif2Bti"}, {"user_id": "jqKGur7S"}, {"user_id": "JsSOgUdG"}]}, {"party_attributes": {"wQz2Cnin": {}, "O34f4HyK": {}, "jyKPPRdU": {}}, "party_id": "WdjPWFxd", "party_members": [{"user_id": "GzfiNqh4"}, {"user_id": "eaVa7f8l"}, {"user_id": "Voxj7RNG"}]}, {"party_attributes": {"ty5eHZXI": {}, "O9EOzBQy": {}, "6ACiDu3w": {}}, "party_id": "Jc4XZ6pg", "party_members": [{"user_id": "VdY8HCMA"}, {"user_id": "3v01UAfJ"}, {"user_id": "RyQW3JOR"}]}]}], "namespace": "QDwOREKb", "notification_payload": {}, "pod_name": "lKC0fxe6", "region": "njEIUEKE", "session_id": "3dtIHovh"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "Ebym7f0a"}' --login_with_auth "Bearer foo"
dsmc-get-session 'APtbe37t' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'nATVb2Br' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "a8AiMq0X", "image": "Vvo69VMt", "namespace": "1mklzijd", "persistent": false, "version": "uessIsso"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "NBjcAczf", "dockerPath": "TYOXqazh", "image": "ylZzo9PE", "imageSize": 72, "namespace": "HZEtIdUf", "persistent": false, "version": "IXpgpMzY"}' \
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
    '{"artifactPath": "oiO9VuAx", "dockerPath": "2k7alhGE", "image": "ghAdbjSj", "imageSize": 77, "namespace": "MRfY2oaQ", "patchVersion": "D4tlK7qa", "persistent": true, "version": "wFIEzSqp"}' \
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
    '{"claim_timeout": 33, "creation_timeout": 84, "default_version": "m13DrrLh", "port": 44, "ports": {"A2WzyUpU": 62, "GCor8rmt": 10, "XF7iG5d8": 35}, "protocol": "QUC757hV", "providers": ["mChqPjvo", "py3c3QFx", "9HkWlTgZ"], "session_timeout": 35, "unreachable_timeout": 31}' \
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
    '{"claim_timeout": 26, "creation_timeout": 7, "default_version": "P6A2xNau", "port": 67, "protocol": "kz5R7F8n", "providers": ["e2OtGO8g", "zKroYp9P", "Qi1DZVyv"], "session_timeout": 53, "unreachable_timeout": 49}' \
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
    '60' \
    '33' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'eCnxGPK7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 2, "buffer_percent": 9, "configuration": "AzjR1FFf", "enable_region_overrides": true, "game_version": "oqnCwtm9", "max_count": 22, "min_count": 66, "overrides": {"wvs1gkX0": {"buffer_count": 97, "buffer_percent": 81, "configuration": "JeNyd1KJ", "enable_region_overrides": true, "game_version": "EYY6HM9w", "max_count": 99, "min_count": 4, "name": "HpwMdBHf", "region_overrides": {"UrGLB1Or": {"buffer_count": 79, "buffer_percent": 66, "max_count": 73, "min_count": 10, "name": "WmEmeMG4", "unlimited": false, "use_buffer_percent": false}, "KpVv4ZdO": {"buffer_count": 97, "buffer_percent": 86, "max_count": 66, "min_count": 31, "name": "baDnBOtb", "unlimited": true, "use_buffer_percent": true}, "MeFByVex": {"buffer_count": 38, "buffer_percent": 97, "max_count": 87, "min_count": 32, "name": "hkBOrOIF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["JidEG52F", "vLvWZaAZ", "FAf0ghen"], "session_timeout": 4, "unlimited": false, "use_buffer_percent": false}, "4LfHmwAu": {"buffer_count": 67, "buffer_percent": 55, "configuration": "0vlmMFHK", "enable_region_overrides": true, "game_version": "MGpsH7ZC", "max_count": 47, "min_count": 7, "name": "Gtp7kfAz", "region_overrides": {"1mbPE8YN": {"buffer_count": 82, "buffer_percent": 99, "max_count": 34, "min_count": 66, "name": "5m8UrTND", "unlimited": true, "use_buffer_percent": true}, "WPlrSd68": {"buffer_count": 85, "buffer_percent": 57, "max_count": 83, "min_count": 99, "name": "xtBFyQ03", "unlimited": true, "use_buffer_percent": false}, "QRcONXKY": {"buffer_count": 14, "buffer_percent": 63, "max_count": 44, "min_count": 99, "name": "u6Exojxz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["HPiYm0xS", "iuPfsVrk", "ojmy1K08"], "session_timeout": 98, "unlimited": true, "use_buffer_percent": true}, "1s7Nf0hK": {"buffer_count": 79, "buffer_percent": 17, "configuration": "7a6PpuRZ", "enable_region_overrides": false, "game_version": "888LN7fl", "max_count": 88, "min_count": 5, "name": "4cL5jHGz", "region_overrides": {"d8ADPgMh": {"buffer_count": 43, "buffer_percent": 85, "max_count": 3, "min_count": 33, "name": "x62p0T2G", "unlimited": true, "use_buffer_percent": true}, "lBonrs2N": {"buffer_count": 73, "buffer_percent": 78, "max_count": 83, "min_count": 55, "name": "M19g9ufu", "unlimited": false, "use_buffer_percent": false}, "a6Rgxxf4": {"buffer_count": 47, "buffer_percent": 30, "max_count": 53, "min_count": 64, "name": "uH9mOkz4", "unlimited": false, "use_buffer_percent": true}}, "regions": ["fJNTsjzI", "YyigAppM", "kT4JzDmy"], "session_timeout": 56, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"VDL0FqDC": {"buffer_count": 63, "buffer_percent": 6, "max_count": 50, "min_count": 45, "name": "mMXXE1Gm", "unlimited": true, "use_buffer_percent": true}, "QAobpYNC": {"buffer_count": 37, "buffer_percent": 35, "max_count": 97, "min_count": 17, "name": "Sdnt4zey", "unlimited": true, "use_buffer_percent": true}, "m2TMFHNG": {"buffer_count": 5, "buffer_percent": 26, "max_count": 79, "min_count": 7, "name": "LnjQSqln", "unlimited": true, "use_buffer_percent": false}}, "regions": ["B3SFRj9x", "k3PXIdUd", "TGKhc0ih"], "session_timeout": 8, "unlimited": false, "use_buffer_percent": true}' \
    'vFpp3oIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'tD713FB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 43, "buffer_percent": 79, "configuration": "IZQObpwc", "enable_region_overrides": false, "game_version": "kIBfKFmC", "max_count": 58, "min_count": 58, "regions": ["WkVPGLPn", "y4DRrgz2", "1Tu4awY7"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}' \
    'c6DOGKQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 85, "buffer_percent": 85, "max_count": 54, "min_count": 79, "unlimited": true, "use_buffer_percent": true}' \
    'QxYvLZP5' \
    'TIFjLsix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'VGYEt8Pi' \
    'r2yOBs9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 10, "buffer_percent": 16, "max_count": 45, "min_count": 3, "unlimited": false, "use_buffer_percent": true}' \
    'oFF9Aurd' \
    'MfL6gJdz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 42, "buffer_percent": 70, "configuration": "6V8k1mlk", "enable_region_overrides": true, "game_version": "BaRXPCLQ", "max_count": 12, "min_count": 54, "region_overrides": {"aVSy3hOi": {"buffer_count": 66, "buffer_percent": 17, "max_count": 96, "min_count": 12, "name": "GhYvpQ48", "unlimited": false, "use_buffer_percent": true}, "Uxq4nfnC": {"buffer_count": 47, "buffer_percent": 2, "max_count": 76, "min_count": 28, "name": "FpLKJtYo", "unlimited": true, "use_buffer_percent": false}, "1uYPxNkf": {"buffer_count": 7, "buffer_percent": 41, "max_count": 3, "min_count": 54, "name": "Ogp2ufZ9", "unlimited": true, "use_buffer_percent": false}}, "regions": ["XIRZAw3p", "5dsk6BjE", "dQSwlGZ4"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": false}' \
    'eb7FX6Zx' \
    '5oW5ucmX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'B0D5OjAm' \
    'cnziHuVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 60, "buffer_percent": 56, "configuration": "5mqfOs6I", "enable_region_overrides": true, "game_version": "r4aJWQ67", "max_count": 86, "min_count": 6, "regions": ["9EmjhSP3", "0HV4HP50", "epX9YQsr"], "session_timeout": 11, "unlimited": false, "use_buffer_percent": false}' \
    'Y2sKtdIA' \
    'LlLXO5EF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 18, "buffer_percent": 17, "max_count": 97, "min_count": 50, "unlimited": true, "use_buffer_percent": false}' \
    'aEU56XuV' \
    '1BdzYvsW' \
    'qZZtoVsZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'Pf7dhKmn' \
    'ef940TUq' \
    'n3rH5E3o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 16, "buffer_percent": 56, "max_count": 65, "min_count": 90, "unlimited": true, "use_buffer_percent": false}' \
    'eI4ziQD6' \
    'yp0JUbxV' \
    'yseePOk0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '11' \
    '60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'ccG8wjL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 11, "mem_limit": 81, "params": "jduictgq"}' \
    'wTWGHVfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'dRrppEQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 41, "mem_limit": 25, "name": "rTqDKAZT", "params": "zc53N1xe"}' \
    'qyd3KWNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 19}' \
    'pGvTiPIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'yLqb6taz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "Zb6dt2bQ", "port": 6}' \
    '3P2U0rCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '36' \
    '75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'qgn7rvF2' \
    'OvYoBwfE' \
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
    'bGBslVCB' \
    'gJL3KbAx' \
    'mmMalQ2H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'ltZ6fr7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'rmbYMqji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'hCRusSuG' \
    '00zB48pB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '29' \
    '16' \
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
    'phfk97Hg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'HaRyJpwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'RNn0bWhw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '73' \
    '55' \
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
    'RrIYC9MH' \
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
    'gQZ1v1WF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "9etp4CHh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "Xxn0gAtD", "ip": "sgiBqmIU", "name": "xjLMTypE", "port": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "4Hb4wmAJ", "pod_name": "QjlNciwQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "UlAdinCo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'kOnTnN6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "HNHhg4Me", "configuration": "sF8ruOms", "deployment": "Ocm9l82R", "game_mode": "kPb5S9eL", "matching_allies": [{"matching_parties": [{"party_attributes": {"L5EPJM5i": {}, "abSBweIX": {}, "nK6nhuaj": {}}, "party_id": "OR2g2040", "party_members": [{"user_id": "kjD5gLbg"}, {"user_id": "RPmYvEKx"}, {"user_id": "Au7nH5PI"}]}, {"party_attributes": {"FZPoTBxN": {}, "ShhLs0IH": {}, "j5Wobbeq": {}}, "party_id": "GSYE0WSa", "party_members": [{"user_id": "HKPfpDMd"}, {"user_id": "bWIWeuqC"}, {"user_id": "6TfscQb9"}]}, {"party_attributes": {"Uls9NivD": {}, "RUMk3PUG": {}, "VZZLMIea": {}}, "party_id": "XTD5VbpO", "party_members": [{"user_id": "dxhxVFPs"}, {"user_id": "tvtgyJUa"}, {"user_id": "koUorM4E"}]}]}, {"matching_parties": [{"party_attributes": {"yAhgaGdP": {}, "Y9IMvaPA": {}, "RYIKk5AB": {}}, "party_id": "p9OGP8sz", "party_members": [{"user_id": "v74aYvGd"}, {"user_id": "iigizCae"}, {"user_id": "ZeAbYNbs"}]}, {"party_attributes": {"OkWnl5xw": {}, "Equ9ljGk": {}, "bDiPdMb5": {}}, "party_id": "9R4Oc3Ox", "party_members": [{"user_id": "qNGGlNtW"}, {"user_id": "TcHpIawv"}, {"user_id": "5nAt3fHN"}]}, {"party_attributes": {"ymh9qfxZ": {}, "6U8X0Wm6": {}, "mMtdPiwh": {}}, "party_id": "FL8M2zvc", "party_members": [{"user_id": "fJhdLf8F"}, {"user_id": "QvQ5Nn8c"}, {"user_id": "xbXGz4H8"}]}]}, {"matching_parties": [{"party_attributes": {"FQcNRDzn": {}, "twzyVZeD": {}, "fIcpAUaN": {}}, "party_id": "2j734pIt", "party_members": [{"user_id": "DO9x1bMa"}, {"user_id": "vtakvOFL"}, {"user_id": "7Zad4CE8"}]}, {"party_attributes": {"fIrr3X4O": {}, "Bwpml1J8": {}, "bHvFj7CT": {}}, "party_id": "cyutaHSw", "party_members": [{"user_id": "VbqfcSKU"}, {"user_id": "dAv9gi6d"}, {"user_id": "QAKk4Yvg"}]}, {"party_attributes": {"PGqwTpiZ": {}, "OeEwFmrI": {}, "BHxLiFAY": {}}, "party_id": "mtmZfhkz", "party_members": [{"user_id": "PD380m7E"}, {"user_id": "BBu4fiYw"}, {"user_id": "SxSq0lvF"}]}]}], "namespace": "ZSeDXheR", "notification_payload": {}, "pod_name": "jM52ioV4", "region": "cL0CPCcu", "session_id": "voy2tXuS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "MKyQ1SiJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'H0NmGnmi' \
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
    '0qWduAoU' \
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
