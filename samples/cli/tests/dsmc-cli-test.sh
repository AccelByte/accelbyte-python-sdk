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
dsmc-update-image '{"artifactPath": "U35JoR6s", "image": "pdTNzQNk", "namespace": "5Tm3tBBn", "persistent": true, "version": "aWrAY7VP"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "EBdWtCyp", "dockerPath": "8OFzNHpO", "image": "xt7nqt7k", "imageSize": 52, "namespace": "FU47a8Iy", "persistent": false, "version": "V3hz9xrJ"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "fVu8Wmry", "dockerPath": "UYiT8Vu9", "image": "MDhY7wYk", "imageSize": 33, "namespace": "mfZwKBcg", "patchVersion": "pdF8dOXT", "persistent": true, "version": "WGrFi9U1"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 45, "creation_timeout": 46, "default_version": "2Pp9VLqa", "port": 91, "ports": {"Cs9SdvTR": 48, "eoBBoHcp": 98, "1dmCLBFF": 78}, "protocol": "ck94cZdO", "providers": ["99cd5Oxf", "fAJOJdRh", "jQBf5vvR"], "session_timeout": 50, "unreachable_timeout": 16}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 34, "creation_timeout": 71, "default_version": "LjN905xY", "port": 52, "protocol": "G5yY8NcM", "providers": ["oxIaTt9C", "m6FOwFWP", "TN1EYMwz"], "session_timeout": 7, "unreachable_timeout": 38}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '100' '9' --login_with_auth "Bearer foo"
dsmc-get-deployment 'vHDmPB0S' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 71, "buffer_percent": 2, "configuration": "mOETXfiJ", "enable_region_overrides": true, "game_version": "y9R54OVx", "max_count": 4, "min_count": 75, "overrides": {"yYFD40Za": {"buffer_count": 0, "buffer_percent": 27, "configuration": "1lscZdLc", "enable_region_overrides": false, "game_version": "YyVzqsxq", "max_count": 22, "min_count": 56, "name": "Qv487vNN", "region_overrides": {"J2jLFZHx": {"buffer_count": 81, "buffer_percent": 79, "max_count": 93, "min_count": 75, "name": "xKaoC8Cx", "unlimited": true, "use_buffer_percent": true}, "yggCxpqZ": {"buffer_count": 28, "buffer_percent": 63, "max_count": 8, "min_count": 54, "name": "RxeBzadt", "unlimited": true, "use_buffer_percent": false}, "p1Ngyf3l": {"buffer_count": 57, "buffer_percent": 73, "max_count": 76, "min_count": 76, "name": "tEQvTZWJ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["8bLxJoDo", "uo4MZ3Hd", "EKKAg4PW"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": true}, "cCceGxP4": {"buffer_count": 76, "buffer_percent": 100, "configuration": "R0Hh1daS", "enable_region_overrides": true, "game_version": "YT6y8zou", "max_count": 9, "min_count": 9, "name": "hGe0ueE5", "region_overrides": {"UiMPnpcc": {"buffer_count": 3, "buffer_percent": 100, "max_count": 90, "min_count": 27, "name": "Yq51DDGD", "unlimited": true, "use_buffer_percent": false}, "sxkuAxnf": {"buffer_count": 87, "buffer_percent": 48, "max_count": 55, "min_count": 86, "name": "h98h4KYe", "unlimited": false, "use_buffer_percent": true}, "Wdi0FKxu": {"buffer_count": 7, "buffer_percent": 55, "max_count": 6, "min_count": 24, "name": "7GbNUlTQ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["c4gqRmOQ", "MF6giJKb", "tRipvls3"], "session_timeout": 73, "unlimited": true, "use_buffer_percent": true}, "XK7J4sTQ": {"buffer_count": 78, "buffer_percent": 64, "configuration": "faHh9kYo", "enable_region_overrides": false, "game_version": "hXpOJTMp", "max_count": 42, "min_count": 19, "name": "yIe7b2PT", "region_overrides": {"RZ8SyCdL": {"buffer_count": 37, "buffer_percent": 88, "max_count": 65, "min_count": 77, "name": "bl7i2KF5", "unlimited": false, "use_buffer_percent": false}, "7uKkEgBc": {"buffer_count": 80, "buffer_percent": 45, "max_count": 61, "min_count": 28, "name": "rLiaUTVk", "unlimited": true, "use_buffer_percent": false}, "gBQHaH2x": {"buffer_count": 33, "buffer_percent": 78, "max_count": 71, "min_count": 43, "name": "AedaFSIE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ZfbbwDN1", "ZQsWLtJ7", "wGlbAWng"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"jBYDOG64": {"buffer_count": 44, "buffer_percent": 88, "max_count": 61, "min_count": 28, "name": "djNs1ZXs", "unlimited": true, "use_buffer_percent": false}, "701HWbPB": {"buffer_count": 47, "buffer_percent": 40, "max_count": 100, "min_count": 94, "name": "vepBBS8w", "unlimited": true, "use_buffer_percent": false}, "MNqsXgJS": {"buffer_count": 74, "buffer_percent": 79, "max_count": 50, "min_count": 88, "name": "a0dRzQI5", "unlimited": true, "use_buffer_percent": true}}, "regions": ["UJGlFq09", "IBWbQTsY", "gqgIlFfe"], "session_timeout": 72, "unlimited": true, "use_buffer_percent": false}' 'Obc3dJaa' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'ARWpvO7c' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 94, "buffer_percent": 50, "configuration": "uztvPSM0", "enable_region_overrides": true, "game_version": "x49LSPdm", "max_count": 70, "min_count": 86, "regions": ["Zhjq7IUX", "MxLDbL0W", "0rVLqQwY"], "session_timeout": 62, "unlimited": false, "use_buffer_percent": false}' 'M5ugYuPd' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 34, "buffer_percent": 64, "max_count": 14, "min_count": 3, "unlimited": false, "use_buffer_percent": true}' '8EgsSPZs' '86OyCjRk' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'ktx0Y7DF' 'GLtDrM7a' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 29, "buffer_percent": 73, "max_count": 68, "min_count": 32, "unlimited": true, "use_buffer_percent": false}' 'ieddXpY0' 'cRm4Ct70' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 93, "buffer_percent": 10, "configuration": "bF6LpvrC", "enable_region_overrides": false, "game_version": "Sn6kAYNN", "max_count": 73, "min_count": 98, "region_overrides": {"q3PjmYbX": {"buffer_count": 95, "buffer_percent": 27, "max_count": 68, "min_count": 3, "name": "tJGeMWq0", "unlimited": true, "use_buffer_percent": false}, "OZ26jYmd": {"buffer_count": 23, "buffer_percent": 72, "max_count": 63, "min_count": 84, "name": "gc3Fxw11", "unlimited": true, "use_buffer_percent": true}, "9aRsgWhx": {"buffer_count": 85, "buffer_percent": 50, "max_count": 71, "min_count": 72, "name": "G398ZKy5", "unlimited": false, "use_buffer_percent": true}}, "regions": ["TupGeysl", "V5qaSAVQ", "zTBFKN2Z"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": true}' 'zC3Yv1kn' 'JdJVEyu2' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override '4LLVoXB5' 'Mi90p14g' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 43, "buffer_percent": 18, "configuration": "q89HZo7n", "enable_region_overrides": true, "game_version": "H1h0pxvR", "max_count": 6, "min_count": 82, "regions": ["5oZzFxtl", "dG9ELJjE", "sXpHYkd2"], "session_timeout": 73, "unlimited": false, "use_buffer_percent": true}' 'M2yeS68N' 'OX7BECuV' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 75, "buffer_percent": 47, "max_count": 21, "min_count": 81, "unlimited": false, "use_buffer_percent": false}' 'WR9oHlQZ' 'l6GwTeGz' 'olzQNPyX' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'ozh98Af1' '2fwsIi7s' 'eulWfzRg' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 24, "buffer_percent": 80, "max_count": 84, "min_count": 46, "unlimited": true, "use_buffer_percent": true}' 'pOrClcGF' 'V0SAVlI9' 'T0sOxULL' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '46' '45' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'kQ4Le3UM' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 16, "mem_limit": 84, "params": "WPgXwsj3"}' 'gjLdaRFo' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'aFS1iCrN' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 92, "mem_limit": 36, "name": "ekVevnwB", "params": "1WOq7Ib8"}' 'rzLYgw9V' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 11}' 'TRxeIUsd' --login_with_auth "Bearer foo"
dsmc-delete-port '8dFcNtFh' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "LLXlwjws", "port": 69}' 'SjS3JXtJ' --login_with_auth "Bearer foo"
dsmc-list-images '70' '35' --login_with_auth "Bearer foo"
dsmc-delete-image 'yGjZKb67' '8mfhCyAp' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'bHFakGv3' 'w96AJOFc' 'JucNbDMC' --login_with_auth "Bearer foo"
dsmc-get-image-detail '9WD9IkAY' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'D8aTHvfZ' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'VLp3KTEc' '4XnsGDRj' --login_with_auth "Bearer foo"
dsmc-list-server '5' '37' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'NwfFmKc7' --login_with_auth "Bearer foo"
dsmc-get-server 'JndQUhNv' --login_with_auth "Bearer foo"
dsmc-delete-server '1fK5lUyl' --login_with_auth "Bearer foo"
dsmc-list-session '77' '21' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '24ztc6Sm' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'DPoA20fg' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "g0waIKb0"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "KMp9Yb55", "ip": "YC9dx8lB", "name": "I2yMAoaS", "port": 91}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "HnTqDTLy", "pod_name": "gFpTV2TE"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "x87NpD8Y"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'd0ysJ08q' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "BqTpIqz5", "configuration": "jG3Z6aFL", "deployment": "ZKa0RIxw", "game_mode": "7OHmsigk", "matching_allies": [{"matching_parties": [{"party_attributes": {"XZExvhiw": {}, "6RKXFbMS": {}, "CmWVKRLU": {}}, "party_id": "DPknVcUr", "party_members": [{"user_id": "kBcWFyGJ"}, {"user_id": "BxxOM3Ug"}, {"user_id": "dvzNQqXG"}]}, {"party_attributes": {"veMgyhdX": {}, "HXzdym3b": {}, "b16GKMEr": {}}, "party_id": "16aENDMW", "party_members": [{"user_id": "ztEtNjrF"}, {"user_id": "Y7Mp2ud9"}, {"user_id": "5q4FX3bI"}]}, {"party_attributes": {"yWJh2fyG": {}, "mhYgl1qw": {}, "yAdFOqc1": {}}, "party_id": "n5cvdKx3", "party_members": [{"user_id": "yZtlaiNA"}, {"user_id": "ikhTy8e5"}, {"user_id": "fnxO1qgq"}]}]}, {"matching_parties": [{"party_attributes": {"wx0VGRdI": {}, "b0lfvtYD": {}, "4CSXOADh": {}}, "party_id": "0k3qBIQs", "party_members": [{"user_id": "TODl0hNA"}, {"user_id": "KUhK3nzH"}, {"user_id": "EOyIcRqN"}]}, {"party_attributes": {"MbLziSWs": {}, "qvAWVoKP": {}, "lHcGgq7R": {}}, "party_id": "ABmhG0Ud", "party_members": [{"user_id": "hzYdVIOs"}, {"user_id": "BId8jkDD"}, {"user_id": "Nfs2PC9t"}]}, {"party_attributes": {"U2YJfAXi": {}, "gRoHiVQ1": {}, "h71qIT3s": {}}, "party_id": "DUy8Feve", "party_members": [{"user_id": "Gcpa31Tx"}, {"user_id": "vp79lvo9"}, {"user_id": "zW9T6LXy"}]}]}, {"matching_parties": [{"party_attributes": {"WrzvjDXW": {}, "aqvRUPdB": {}, "UviTPHFx": {}}, "party_id": "ufOw8wY4", "party_members": [{"user_id": "A966xY7r"}, {"user_id": "8GOcLYOC"}, {"user_id": "yXNFq9sw"}]}, {"party_attributes": {"6rGWKxJi": {}, "iyRAnXly": {}, "CJvYbzLe": {}}, "party_id": "iaR9QTxP", "party_members": [{"user_id": "mTb27Ocb"}, {"user_id": "cUZU3zYG"}, {"user_id": "Rp9EHksS"}]}, {"party_attributes": {"YKZbmDk4": {}, "SgEgpVgs": {}, "uHqUopCP": {}}, "party_id": "MtlbFr5j", "party_members": [{"user_id": "Hn61Vm2q"}, {"user_id": "BtWEm3oP"}, {"user_id": "gNdWV0Hb"}]}]}], "namespace": "5oWSBMds", "notification_payload": {}, "pod_name": "7PJd6LFr", "region": "w1K6BNf5", "session_id": "ahYv7zJw"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "1qw9Crb4"}' --login_with_auth "Bearer foo"
dsmc-get-session 'qOIN5Vos' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'kIl3wAMu' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "6a0cxKpo", "image": "ecsi3iRG", "namespace": "5NVvFJxA", "persistent": true, "version": "w2oncmM8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "EQQ4fWGt", "dockerPath": "MxGgcIeZ", "image": "UcAT7WLE", "imageSize": 90, "namespace": "jbq5GLd9", "persistent": true, "version": "hWxpJdEV"}' \
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
    '{"artifactPath": "7Wy0EHkG", "dockerPath": "NZTIsbHl", "image": "Rgve3Owv", "imageSize": 36, "namespace": "6aFfvg6l", "patchVersion": "NRCcXqNI", "persistent": true, "version": "ekyj3M5l"}' \
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
    '{"claim_timeout": 97, "creation_timeout": 57, "default_version": "kjLEaAHp", "port": 78, "ports": {"v6dvrUAr": 18, "cppqvBvA": 74, "xUGwV1cI": 30}, "protocol": "oVYSNlV0", "providers": ["VjMfdRvk", "UfmLhFF5", "tXVyGpE5"], "session_timeout": 95, "unreachable_timeout": 6}' \
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
    '{"claim_timeout": 83, "creation_timeout": 68, "default_version": "0cR1ajuP", "port": 74, "protocol": "33xtTTNN", "providers": ["mVGTldxS", "fXsikv1s", "eCVEM78w"], "session_timeout": 49, "unreachable_timeout": 29}' \
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
    '64' \
    '66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'MNZqeCtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 34, "buffer_percent": 72, "configuration": "9E8lck1q", "enable_region_overrides": true, "game_version": "O5KmONZm", "max_count": 79, "min_count": 66, "overrides": {"4RxJpC8U": {"buffer_count": 39, "buffer_percent": 28, "configuration": "LNEr7Pf9", "enable_region_overrides": false, "game_version": "Fz8S4840", "max_count": 14, "min_count": 14, "name": "Ite8AYAV", "region_overrides": {"QKzngIR5": {"buffer_count": 19, "buffer_percent": 26, "max_count": 100, "min_count": 14, "name": "EghGJh4J", "unlimited": false, "use_buffer_percent": false}, "AktYtGOo": {"buffer_count": 27, "buffer_percent": 4, "max_count": 22, "min_count": 92, "name": "Osdkb84b", "unlimited": false, "use_buffer_percent": false}, "ckBBw2iv": {"buffer_count": 52, "buffer_percent": 55, "max_count": 5, "min_count": 60, "name": "VVrfbGv5", "unlimited": true, "use_buffer_percent": false}}, "regions": ["bjmpmYic", "Q09AwNnz", "7OvS7EKw"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}, "iWRbdqhI": {"buffer_count": 31, "buffer_percent": 9, "configuration": "FaZytVZ7", "enable_region_overrides": false, "game_version": "JM19DIQ2", "max_count": 74, "min_count": 16, "name": "qdfyMeH8", "region_overrides": {"lz6OH0gk": {"buffer_count": 89, "buffer_percent": 92, "max_count": 15, "min_count": 79, "name": "nyc2hKV6", "unlimited": true, "use_buffer_percent": true}, "ppNDrv1H": {"buffer_count": 75, "buffer_percent": 79, "max_count": 65, "min_count": 60, "name": "fBbtogeZ", "unlimited": false, "use_buffer_percent": false}, "aBKPhPRN": {"buffer_count": 44, "buffer_percent": 3, "max_count": 46, "min_count": 64, "name": "uSdArD2q", "unlimited": true, "use_buffer_percent": false}}, "regions": ["QrdTBb2P", "jsjlHWYy", "3Hc7dbSZ"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}, "rY8d0T8v": {"buffer_count": 0, "buffer_percent": 95, "configuration": "MIlHGSOl", "enable_region_overrides": true, "game_version": "lt0X5nst", "max_count": 86, "min_count": 82, "name": "r0UHRSRJ", "region_overrides": {"rjpuW71T": {"buffer_count": 20, "buffer_percent": 18, "max_count": 75, "min_count": 98, "name": "unpKwaeB", "unlimited": false, "use_buffer_percent": false}, "8lqYinFJ": {"buffer_count": 29, "buffer_percent": 25, "max_count": 15, "min_count": 64, "name": "psQxGBiP", "unlimited": true, "use_buffer_percent": true}, "LrKdLJHN": {"buffer_count": 28, "buffer_percent": 10, "max_count": 34, "min_count": 70, "name": "Rid0ETG3", "unlimited": true, "use_buffer_percent": false}}, "regions": ["V7A9tqF0", "q6tJAFii", "5vclKt1y"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"kAboXmiu": {"buffer_count": 7, "buffer_percent": 24, "max_count": 94, "min_count": 11, "name": "pOkgDaYK", "unlimited": false, "use_buffer_percent": true}, "6FOZONk4": {"buffer_count": 49, "buffer_percent": 70, "max_count": 73, "min_count": 85, "name": "Oyelxt5z", "unlimited": true, "use_buffer_percent": false}, "sXRAdRfI": {"buffer_count": 24, "buffer_percent": 13, "max_count": 67, "min_count": 21, "name": "vhSjLjYU", "unlimited": false, "use_buffer_percent": true}}, "regions": ["pb5u0f6m", "nqdFXgoO", "3OTsPhJz"], "session_timeout": 50, "unlimited": true, "use_buffer_percent": true}' \
    '1AFcYuZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'EmJ8aWP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 8, "buffer_percent": 8, "configuration": "1lXcereR", "enable_region_overrides": false, "game_version": "mZa3Qgcr", "max_count": 88, "min_count": 95, "regions": ["12pH5E5U", "GuMT4sFi", "mJzL7sCy"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}' \
    'a00jsVU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 22, "buffer_percent": 48, "max_count": 11, "min_count": 61, "unlimited": true, "use_buffer_percent": false}' \
    'UWdDSsJ9' \
    'nANAnMEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'yp8a8Hl2' \
    'd0hryO5K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 53, "buffer_percent": 72, "max_count": 33, "min_count": 88, "unlimited": true, "use_buffer_percent": false}' \
    's7LX5CI6' \
    'mfIiP1Zr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 15, "buffer_percent": 63, "configuration": "gjDaLv20", "enable_region_overrides": false, "game_version": "KuGyaZU0", "max_count": 81, "min_count": 94, "region_overrides": {"BSiIQOvO": {"buffer_count": 45, "buffer_percent": 64, "max_count": 50, "min_count": 26, "name": "K0hSYdUb", "unlimited": false, "use_buffer_percent": false}, "CqO1u5Hp": {"buffer_count": 27, "buffer_percent": 63, "max_count": 45, "min_count": 56, "name": "LNBb5ESl", "unlimited": false, "use_buffer_percent": true}, "Leehgjm3": {"buffer_count": 86, "buffer_percent": 12, "max_count": 24, "min_count": 100, "name": "drjCmhOt", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3svmSULq", "LfBdMzK8", "qFD7kPCP"], "session_timeout": 36, "unlimited": false, "use_buffer_percent": true}' \
    '6O0c82Hq' \
    'XV23VQzD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'Pvacj3Ad' \
    'OguQGDAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 22, "buffer_percent": 17, "configuration": "plXc8xy1", "enable_region_overrides": true, "game_version": "6bakhQnu", "max_count": 85, "min_count": 34, "regions": ["aR6mS4zX", "XDJi070q", "aVG5i0fF"], "session_timeout": 26, "unlimited": true, "use_buffer_percent": true}' \
    'fYJKZX9i' \
    'ZeVVLsuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 81, "buffer_percent": 84, "max_count": 41, "min_count": 10, "unlimited": true, "use_buffer_percent": false}' \
    'B2a1LE6u' \
    'WAxkomdm' \
    'Sf6jRFrx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    '5oiroJST' \
    'xfPV0zRn' \
    'WwTZ1Vsb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 19, "buffer_percent": 41, "max_count": 77, "min_count": 66, "unlimited": true, "use_buffer_percent": false}' \
    'pkcncS0M' \
    'RZVWMKVG' \
    'GUVhDNaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '14' \
    '31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    '8BD5R9nB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 37, "mem_limit": 2, "params": "7hDG1on9"}' \
    'UrJ3cjTk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'sg8qWGL7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 81, "mem_limit": 28, "name": "uHFuhck6", "params": "8hNo8MrX"}' \
    '0El2tu9M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 35}' \
    'J8DzosuW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    '1bXvibh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "MBDDD3yz", "port": 15}' \
    'HinvrJI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '74' \
    '83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'G4whJJUW' \
    'uDUvwwFz' \
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
    'gvTNrMp5' \
    'CV8xgQpg' \
    'ZxYQMHde' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'CgTVwkC5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'Ji3XdIlN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'n0VVQo0J' \
    'iiFaEbny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '85' \
    '69' \
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
    'IEyjnoyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'QXywD2uI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'bVVBaQam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '97' \
    '66' \
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
    'H0fQoJjl' \
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
    'oOdBSXoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "x9ZLoK3k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "VbwPVpbY", "ip": "nRBbwjB0", "name": "U4xCIkOE", "port": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "kpblSDHt", "pod_name": "BxYQLTZz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "lYrqcL68"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'OLDQicfy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "3BIYLH0z", "configuration": "4l288JYE", "deployment": "9lbXKKjk", "game_mode": "D6i06jgn", "matching_allies": [{"matching_parties": [{"party_attributes": {"vHNIoaxX": {}, "LpY1ppni": {}, "r2JVTt43": {}}, "party_id": "Fwze8Ig1", "party_members": [{"user_id": "HlGNH2pf"}, {"user_id": "hD4nBsrS"}, {"user_id": "NYlS8gAb"}]}, {"party_attributes": {"VnQS3NOq": {}, "0IZ7yEjD": {}, "auXEc5mr": {}}, "party_id": "dC7cr4j2", "party_members": [{"user_id": "IdCkmN8U"}, {"user_id": "Rbaoesb6"}, {"user_id": "fYT4sjzS"}]}, {"party_attributes": {"gXYt8R6B": {}, "pAAOhmkd": {}, "lIqCYkek": {}}, "party_id": "Is9Wys7Z", "party_members": [{"user_id": "y7BUES6y"}, {"user_id": "S0FiFBgs"}, {"user_id": "KUpEwYCI"}]}]}, {"matching_parties": [{"party_attributes": {"HaPV5N8P": {}, "H5WLe3EN": {}, "DccNgKSu": {}}, "party_id": "WiolBsnT", "party_members": [{"user_id": "8oGz0dAO"}, {"user_id": "9tItN04I"}, {"user_id": "MRD6t8rr"}]}, {"party_attributes": {"MqEbx23N": {}, "QkHTsNAk": {}, "GwXTmUqA": {}}, "party_id": "oJee0Hva", "party_members": [{"user_id": "kQayy1Cz"}, {"user_id": "n1gLP1gg"}, {"user_id": "WuA48rE9"}]}, {"party_attributes": {"sLR6I5PY": {}, "MW0S40nQ": {}, "DdcEpq4R": {}}, "party_id": "311uUY9S", "party_members": [{"user_id": "10om2mHE"}, {"user_id": "zZg7ieyz"}, {"user_id": "qmn1YArG"}]}]}, {"matching_parties": [{"party_attributes": {"bxGfaVic": {}, "rwsD1Lgu": {}, "CYdEkJfT": {}}, "party_id": "V7HORsPh", "party_members": [{"user_id": "HAFHRVWV"}, {"user_id": "1BYHfhl2"}, {"user_id": "F8QZFu69"}]}, {"party_attributes": {"ae1qO3RN": {}, "XUW6oXk0": {}, "wFAJRiqe": {}}, "party_id": "UcvHYzNh", "party_members": [{"user_id": "MQljmp4x"}, {"user_id": "SxyQRiI8"}, {"user_id": "f3L9uCrS"}]}, {"party_attributes": {"galnfJnV": {}, "6HECNPhC": {}, "ZRKmUK9F": {}}, "party_id": "NhQITfHl", "party_members": [{"user_id": "gXr18eQZ"}, {"user_id": "GuiNieB1"}, {"user_id": "M7u986qu"}]}]}], "namespace": "FHG51gZ0", "notification_payload": {}, "pod_name": "OhZWA9NZ", "region": "F1z3NG36", "session_id": "r35F58Qo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "PVnKhDOW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'm1cndnB7' \
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
    'Dj6vhKR2' \
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
