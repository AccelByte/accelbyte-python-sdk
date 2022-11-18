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
dsmc-update-image '{"artifactPath": "Hoy6CL99", "image": "MQPP8YON", "namespace": "xlrWcd15", "persistent": false, "version": "65u9IlZx"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "IPJaOTjP", "dockerPath": "LgEoKDUs", "image": "7hwzoDyT", "imageSize": 47, "namespace": "PMPzUGsi", "persistent": false, "version": "38OZSWY0"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "PVKUO4Zx", "dockerPath": "meifykpe", "image": "JxHRjinG", "imageSize": 45, "namespace": "h16hKtUA", "patchVersion": "0Uz54uSC", "persistent": false, "version": "DbNWnwOm"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 12, "creation_timeout": 28, "default_version": "5UvZRIIP", "port": 1, "ports": {"hrTD8CDj": 29, "O5tmAyba": 57, "FwdXOAUB": 41}, "protocol": "JmHzjFEl", "providers": ["2eatJ8Ro", "dwnRdFBn", "7hSwKgzp"], "session_timeout": 82, "unreachable_timeout": 27}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 82, "creation_timeout": 81, "default_version": "kADAnFBC", "port": 93, "protocol": "ryBahMge", "providers": ["Wi05GgBO", "4J9sbEe9", "Hkpxkg73"], "session_timeout": 47, "unreachable_timeout": 36}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '19' '38' --login_with_auth "Bearer foo"
dsmc-get-deployment 'uZeR7b1C' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 14, "buffer_percent": 98, "configuration": "9Ko60ZJS", "enable_region_overrides": false, "game_version": "q7T1yfHI", "max_count": 16, "min_count": 97, "overrides": {"aTRzAuh6": {"buffer_count": 55, "buffer_percent": 14, "configuration": "2JOUZpcU", "enable_region_overrides": false, "game_version": "4VqvNd3B", "max_count": 28, "min_count": 9, "name": "TuR9NcyZ", "region_overrides": {"sBCZV4Rj": {"buffer_count": 100, "buffer_percent": 40, "max_count": 56, "min_count": 39, "name": "1pdmVF0Q", "unlimited": false, "use_buffer_percent": true}, "xOJTrfgH": {"buffer_count": 79, "buffer_percent": 74, "max_count": 67, "min_count": 85, "name": "7I1Mh6lz", "unlimited": false, "use_buffer_percent": false}, "KSaCi1mn": {"buffer_count": 64, "buffer_percent": 27, "max_count": 16, "min_count": 37, "name": "oH1bD9u4", "unlimited": true, "use_buffer_percent": true}}, "regions": ["6mk2OkQp", "sN4YivQy", "PBfGt4ns"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": false}, "R4JyDrTd": {"buffer_count": 16, "buffer_percent": 60, "configuration": "an1CzwXl", "enable_region_overrides": true, "game_version": "DiWEV4C7", "max_count": 87, "min_count": 18, "name": "xgvUL3c5", "region_overrides": {"3r9dPYwU": {"buffer_count": 31, "buffer_percent": 24, "max_count": 19, "min_count": 38, "name": "TnqLFWaV", "unlimited": false, "use_buffer_percent": true}, "D5yvvSWx": {"buffer_count": 81, "buffer_percent": 98, "max_count": 98, "min_count": 35, "name": "9cNKzB55", "unlimited": false, "use_buffer_percent": true}, "zE17OLLF": {"buffer_count": 97, "buffer_percent": 60, "max_count": 17, "min_count": 86, "name": "KVlmnaeE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["mjuQdmzU", "UO4McIAp", "vLfjZyLg"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": true}, "cHs9iuXn": {"buffer_count": 75, "buffer_percent": 43, "configuration": "zZxVF4tu", "enable_region_overrides": false, "game_version": "5yKpjN95", "max_count": 10, "min_count": 84, "name": "JikjQiz9", "region_overrides": {"6hb6Btsq": {"buffer_count": 15, "buffer_percent": 59, "max_count": 62, "min_count": 29, "name": "t7KUjaVy", "unlimited": true, "use_buffer_percent": true}, "CkLqFlDd": {"buffer_count": 97, "buffer_percent": 40, "max_count": 33, "min_count": 26, "name": "RPIhqFJp", "unlimited": true, "use_buffer_percent": true}, "cDpdrVr7": {"buffer_count": 17, "buffer_percent": 1, "max_count": 9, "min_count": 33, "name": "W8KzxjvD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["LotXoP74", "nik76oS7", "gfkGTyG8"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"5W9sEJOa": {"buffer_count": 46, "buffer_percent": 60, "max_count": 30, "min_count": 63, "name": "8JbbFDz7", "unlimited": true, "use_buffer_percent": false}, "LLCAUBpr": {"buffer_count": 72, "buffer_percent": 64, "max_count": 37, "min_count": 63, "name": "81Qv2X2e", "unlimited": false, "use_buffer_percent": true}, "uxrDD1Td": {"buffer_count": 36, "buffer_percent": 55, "max_count": 44, "min_count": 18, "name": "7cvNgDvw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["JWoqKXfs", "5g6mfB9y", "QicQoicd"], "session_timeout": 23, "unlimited": true, "use_buffer_percent": false}' 'aBqoki2p' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'Y0GxhC2w' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 90, "buffer_percent": 65, "configuration": "gcUSv6xX", "enable_region_overrides": true, "game_version": "NfWlyBwe", "max_count": 16, "min_count": 58, "regions": ["aZWlPElZ", "Ubm2qE87", "prNMHlWI"], "session_timeout": 35, "unlimited": false, "use_buffer_percent": true}' 'WWDprahU' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 82, "buffer_percent": 100, "max_count": 74, "min_count": 61, "unlimited": false, "use_buffer_percent": false}' 'hsrZVRCc' 'ReawvcJo' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override '8JbJaiGi' 'zmNe5cAq' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 80, "buffer_percent": 12, "max_count": 20, "min_count": 8, "unlimited": false, "use_buffer_percent": false}' 'ETwE58vk' 'vz5wzYvF' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 42, "buffer_percent": 90, "configuration": "LF19Tj0S", "enable_region_overrides": false, "game_version": "Vlandu5v", "max_count": 56, "min_count": 59, "region_overrides": {"kF1gHtOp": {"buffer_count": 7, "buffer_percent": 0, "max_count": 93, "min_count": 64, "name": "eawdhW9Z", "unlimited": false, "use_buffer_percent": true}, "U8xjOc3F": {"buffer_count": 64, "buffer_percent": 97, "max_count": 100, "min_count": 26, "name": "ToOsnLOP", "unlimited": false, "use_buffer_percent": false}, "Rpe8DE8d": {"buffer_count": 70, "buffer_percent": 64, "max_count": 66, "min_count": 19, "name": "ErqZBm8Y", "unlimited": false, "use_buffer_percent": false}}, "regions": ["2G9mSjX3", "8Dxmalmj", "iO5jrr3q"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": true}' 'Gi6wzjxj' 'CHFr4RKv' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'hm6UlDiA' 'jCPrTUp2' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 32, "buffer_percent": 74, "configuration": "i5JmEuom", "enable_region_overrides": false, "game_version": "6nl9j5Jf", "max_count": 38, "min_count": 32, "regions": ["V9DD5EMi", "Gcia8m4h", "4kVAKD38"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": false}' 'lERJotY4' 'Nd5rH28G' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 37, "buffer_percent": 97, "max_count": 0, "min_count": 95, "unlimited": false, "use_buffer_percent": false}' 'Bm6wfVJp' 'RCm241Iy' 'O4qoSSHH' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override '3NAVR756' '4H86JGac' 'n2HO86XV' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 30, "buffer_percent": 86, "max_count": 29, "min_count": 62, "unlimited": true, "use_buffer_percent": true}' 'TTAJC1vi' 'HGkQ6UyB' 'HJr19pEV' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '78' '6' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'HjyEauj7' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 69, "mem_limit": 25, "params": "lJGcz4uw"}' 'TENzM9g0' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'YlWLaEjb' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 81, "mem_limit": 68, "name": "fTVpGQ2A", "params": "uUtsEtUu"}' 'BGu9GSSm' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 24}' 'qxa14Htn' --login_with_auth "Bearer foo"
dsmc-delete-port 'GmwMP8mW' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "LFl4fJCw", "port": 1}' 'fOS8OgXz' --login_with_auth "Bearer foo"
dsmc-list-images '71' '43' --login_with_auth "Bearer foo"
dsmc-delete-image 'zz42VgOv' '6ZGTADXi' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'Mpo4REKe' 'HqwNdEh6' 'gwExQZ13' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'eVLsgrZL' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'jx6pHLSi' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'GOcoZxZl' 'fGIWRzpp' --login_with_auth "Bearer foo"
dsmc-list-server '71' '90' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'A337EMFS' --login_with_auth "Bearer foo"
dsmc-get-server 'ntsu4Q6S' --login_with_auth "Bearer foo"
dsmc-delete-server 'DBeZduFT' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'O3A3QmY0' --login_with_auth "Bearer foo"
dsmc-list-session '48' '52' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '5XV8P20u' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'iju4iY9j' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "CKkwHQEt"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "1QVttD9e", "ip": "kgD0TQXB", "name": "U4O134gX", "port": 38}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "xa2BfYRv", "pod_name": "aEF47Zgz"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "YBJL6hUO"}' --login_with_auth "Bearer foo"
dsmc-get-server-session '9FK0XhbI' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "zC4xBG46", "configuration": "WwNBIzaY", "deployment": "ukw7Jt55", "game_mode": "tpOUHDr2", "matching_allies": [{"matching_parties": [{"party_attributes": {"bayVp9IM": {}, "64Z9zr2V": {}, "o1SHK2PC": {}}, "party_id": "pZh0667N", "party_members": [{"user_id": "wzQ8RXCf"}, {"user_id": "jcKsDW2a"}, {"user_id": "53p7JFsZ"}]}, {"party_attributes": {"pRtcEG5s": {}, "SRLNxNQ9": {}, "MUB3yLX3": {}}, "party_id": "DX6wjRMR", "party_members": [{"user_id": "79haVi5f"}, {"user_id": "JwZn1EEP"}, {"user_id": "x9QgLjLQ"}]}, {"party_attributes": {"OmIQeVev": {}, "dI8DmhPp": {}, "Czae5e97": {}}, "party_id": "DhIlBxMY", "party_members": [{"user_id": "4u33UvYP"}, {"user_id": "uwjm3Inz"}, {"user_id": "wPYVqXSR"}]}]}, {"matching_parties": [{"party_attributes": {"HmEZxOmq": {}, "bMtCKAqg": {}, "2YU4zwg4": {}}, "party_id": "2VQLVcpW", "party_members": [{"user_id": "PNMdC0xZ"}, {"user_id": "jjCvFGgb"}, {"user_id": "M0S1Vxsv"}]}, {"party_attributes": {"bZAj93MB": {}, "EsLXxYs3": {}, "3Zu5sQmK": {}}, "party_id": "zaMTRygR", "party_members": [{"user_id": "4o5oYEEr"}, {"user_id": "AWfe4tGk"}, {"user_id": "g2XWUiaq"}]}, {"party_attributes": {"BGWrKxWR": {}, "MyhoUwiE": {}, "JrIb30Db": {}}, "party_id": "S6o3TwS8", "party_members": [{"user_id": "DhSTIpc2"}, {"user_id": "C5DqUpzK"}, {"user_id": "k7ZaYIKy"}]}]}, {"matching_parties": [{"party_attributes": {"SM3l3AOX": {}, "uFqoTbrQ": {}, "6KxtCmrU": {}}, "party_id": "Tl7lazU8", "party_members": [{"user_id": "qoRpz2cc"}, {"user_id": "g0ylpOkQ"}, {"user_id": "xTvueNg3"}]}, {"party_attributes": {"MR3HOlnl": {}, "JXXuLoBb": {}, "pkS8l4Is": {}}, "party_id": "G5iG9kRX", "party_members": [{"user_id": "b7HmeFiD"}, {"user_id": "8Hse7PnE"}, {"user_id": "H0gd4xc6"}]}, {"party_attributes": {"J8qQEzSV": {}, "vsr2EdC4": {}, "faXYUlxh": {}}, "party_id": "uhwUPjyi", "party_members": [{"user_id": "e62otS0W"}, {"user_id": "n949yJyA"}, {"user_id": "oPoQ2MfY"}]}]}], "namespace": "8HNbb1AR", "notification_payload": {}, "pod_name": "kQzC1quW", "region": "iyvdOTtm", "session_id": "rPnG6Mv0"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "JWp8iQQp"}' --login_with_auth "Bearer foo"
dsmc-get-session 'RNrvPc7D' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '4xqKpl96' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "oQsFafWZ", "image": "Ru4uULur", "namespace": "wGR0mm7h", "persistent": false, "version": "wcJyomTh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "G7UZyeBk", "dockerPath": "fgQOxOvh", "image": "4S5vG24v", "imageSize": 8, "namespace": "N0NkKaOC", "persistent": true, "version": "SqXBXjio"}' \
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
    '{"artifactPath": "NiIwAIhC", "dockerPath": "9HAnQAlX", "image": "xZqbwq8e", "imageSize": 50, "namespace": "158aneE9", "patchVersion": "MrouLBs3", "persistent": false, "version": "ys3VfhMm"}' \
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
    '{"claim_timeout": 100, "creation_timeout": 35, "default_version": "1FOPKTxU", "port": 61, "ports": {"pjCeAoWD": 34, "dQ1BtggE": 99, "2vZqwlEx": 65}, "protocol": "pZrIzvdV", "providers": ["N8AtQRnU", "y7hvJQSy", "tBVxVtpX"], "session_timeout": 87, "unreachable_timeout": 95}' \
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
    '{"claim_timeout": 49, "creation_timeout": 34, "default_version": "R630Bu4F", "port": 14, "protocol": "ulLaIkrt", "providers": ["so6sZ2DE", "sEKXVCck", "QZxrzJY9"], "session_timeout": 69, "unreachable_timeout": 53}' \
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
    '10' \
    '19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'KOQvAHSL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 86, "buffer_percent": 0, "configuration": "D3spmzXG", "enable_region_overrides": true, "game_version": "39E3GZjP", "max_count": 62, "min_count": 88, "overrides": {"wvNCiENe": {"buffer_count": 51, "buffer_percent": 99, "configuration": "ynSIGygY", "enable_region_overrides": false, "game_version": "5pBmtxxn", "max_count": 42, "min_count": 100, "name": "daWXZAk0", "region_overrides": {"PRP9zANZ": {"buffer_count": 49, "buffer_percent": 49, "max_count": 17, "min_count": 69, "name": "MpR7BaTn", "unlimited": true, "use_buffer_percent": true}, "1GVERjIF": {"buffer_count": 51, "buffer_percent": 94, "max_count": 54, "min_count": 73, "name": "3mQpI5uv", "unlimited": false, "use_buffer_percent": false}, "CMJHKdhk": {"buffer_count": 35, "buffer_percent": 72, "max_count": 79, "min_count": 87, "name": "Cd7GdI52", "unlimited": true, "use_buffer_percent": false}}, "regions": ["UmY5q46J", "qIlR2eaU", "svhnBZul"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}, "x7jezUQD": {"buffer_count": 80, "buffer_percent": 96, "configuration": "JV1E23fM", "enable_region_overrides": false, "game_version": "Y8a1hDio", "max_count": 95, "min_count": 72, "name": "k4nyrxmG", "region_overrides": {"4EXjy5dc": {"buffer_count": 49, "buffer_percent": 32, "max_count": 50, "min_count": 40, "name": "SRxXOgJP", "unlimited": false, "use_buffer_percent": false}, "HIUvorWe": {"buffer_count": 71, "buffer_percent": 95, "max_count": 28, "min_count": 5, "name": "X8TwzIks", "unlimited": true, "use_buffer_percent": true}, "PWxbClvq": {"buffer_count": 69, "buffer_percent": 25, "max_count": 90, "min_count": 68, "name": "IVOrVIYC", "unlimited": true, "use_buffer_percent": true}}, "regions": ["3tIrPrUF", "gckt17LF", "vohfdPMu"], "session_timeout": 98, "unlimited": false, "use_buffer_percent": false}, "9H3fTxbx": {"buffer_count": 97, "buffer_percent": 8, "configuration": "a3ehfIcF", "enable_region_overrides": false, "game_version": "rygQ9sJ2", "max_count": 61, "min_count": 82, "name": "AP0rpi65", "region_overrides": {"O8k9Kjht": {"buffer_count": 52, "buffer_percent": 59, "max_count": 37, "min_count": 32, "name": "rZYqDAl1", "unlimited": false, "use_buffer_percent": true}, "D8wY5a3W": {"buffer_count": 19, "buffer_percent": 72, "max_count": 78, "min_count": 100, "name": "IL7cMU4Q", "unlimited": false, "use_buffer_percent": false}, "dYxDjbr4": {"buffer_count": 97, "buffer_percent": 52, "max_count": 34, "min_count": 35, "name": "SfF7oiD6", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MlT0tEyp", "hiDZJy25", "EvApdAvQ"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"nHqYirHs": {"buffer_count": 13, "buffer_percent": 14, "max_count": 78, "min_count": 39, "name": "uoKl09OD", "unlimited": false, "use_buffer_percent": true}, "jZlziBgt": {"buffer_count": 23, "buffer_percent": 92, "max_count": 77, "min_count": 11, "name": "JHYjBy04", "unlimited": false, "use_buffer_percent": false}, "TE17Da1C": {"buffer_count": 34, "buffer_percent": 71, "max_count": 97, "min_count": 52, "name": "oxKK2s88", "unlimited": false, "use_buffer_percent": true}}, "regions": ["BahhLgvC", "telSHPEe", "Wyp0TphX"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}' \
    'jjymgNkt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'Q4aSTcyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 49, "buffer_percent": 44, "configuration": "y6c9HnK3", "enable_region_overrides": true, "game_version": "sIEDOaK6", "max_count": 60, "min_count": 14, "regions": ["imQ67lra", "C9tq9c3S", "Q1Y0TShd"], "session_timeout": 73, "unlimited": false, "use_buffer_percent": false}' \
    'EBKXnfNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 98, "buffer_percent": 36, "max_count": 86, "min_count": 42, "unlimited": false, "use_buffer_percent": false}' \
    'Xjq80NKE' \
    'NobbvQiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'S5moJhNX' \
    'E58m6F2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 13, "buffer_percent": 66, "max_count": 62, "min_count": 57, "unlimited": false, "use_buffer_percent": false}' \
    'r28VwNqE' \
    'wWjtcjtW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 11, "buffer_percent": 11, "configuration": "KwndKywC", "enable_region_overrides": false, "game_version": "5rEV4NmD", "max_count": 93, "min_count": 12, "region_overrides": {"hR4vZg3k": {"buffer_count": 76, "buffer_percent": 95, "max_count": 31, "min_count": 47, "name": "VBKWJipe", "unlimited": true, "use_buffer_percent": true}, "amghdu27": {"buffer_count": 48, "buffer_percent": 99, "max_count": 8, "min_count": 18, "name": "1gCRdbAc", "unlimited": true, "use_buffer_percent": true}, "sa3BcGnI": {"buffer_count": 70, "buffer_percent": 63, "max_count": 83, "min_count": 10, "name": "JyEUwx1g", "unlimited": true, "use_buffer_percent": true}}, "regions": ["uC7Z4Llq", "fJpFahVZ", "Rs5UCIgL"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": true}' \
    'MgXIpmyW' \
    'X6ASywJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'cvsSPrEN' \
    'AMk0xvBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 42, "buffer_percent": 27, "configuration": "mSOLglVz", "enable_region_overrides": true, "game_version": "mV0FxotA", "max_count": 27, "min_count": 52, "regions": ["C4bGSd1o", "WN1O69dQ", "kxwU6Lyk"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": true}' \
    'Yb7VaBrw' \
    'P4bVamTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 34, "buffer_percent": 14, "max_count": 7, "min_count": 68, "unlimited": false, "use_buffer_percent": true}' \
    'gdl9JJBD' \
    'yi7AER4B' \
    'Fs4qIt4r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'ZNrFoOyY' \
    '14sZdhAB' \
    'vJduHf82' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 66, "buffer_percent": 16, "max_count": 42, "min_count": 1, "unlimited": true, "use_buffer_percent": true}' \
    'Aom9nRPd' \
    'KHPk8GJP' \
    'x4Mw9Gk1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '33' \
    '39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'BBttkAxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 9, "mem_limit": 94, "params": "gmYWdADF"}' \
    'VF1fGlNs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'dMUpAmCP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 35, "mem_limit": 100, "name": "QnTfji9x", "params": "tbrY55yS"}' \
    'qLa8pv8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 97}' \
    'hqqdkN8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'EhsyQa1G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "wq3BMX2V", "port": 59}' \
    'DdpSRXX5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '13' \
    '21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    '5ihyKhra' \
    '09CrPq8c' \
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
    'NKqQRLPG' \
    'G5joupeS' \
    'jNMQhooh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'RpayXUjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'Xgm9VT64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'T8dsRnJx' \
    'c5E0zsjB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '49' \
    '54' \
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
    'hophNfy3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    '8mYy8UDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'pgUPnPsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'WoBf0lFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetServerLogs' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '95' \
    '81' \
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
    'Lxb7SPci' \
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
    'KvbhM5nG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'ImageDetailClient' test.out

#- 59 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "r5lpzN3z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeregisterLocalServer' test.out

#- 60 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "AxUyPgvC", "ip": "KIlaLvwA", "name": "8rRloNVT", "port": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterLocalServer' test.out

#- 61 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "J12svSs9", "pod_name": "kInmU5HC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RegisterServer' test.out

#- 62 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "wI0F87N5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ShutdownServer' test.out

#- 63 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'uwKuHzbv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetServerSession' test.out

#- 64 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "t74lWBUN", "configuration": "V8ZSkHC2", "deployment": "MHQ2JfNR", "game_mode": "nd9xJk8d", "matching_allies": [{"matching_parties": [{"party_attributes": {"8mZrSolB": {}, "JFbASpcE": {}, "JDLtRcSv": {}}, "party_id": "p497Uvpi", "party_members": [{"user_id": "uZhfkBj9"}, {"user_id": "p8VL3uuC"}, {"user_id": "lTOAMBeV"}]}, {"party_attributes": {"E0qNRxN0": {}, "DvQj03XU": {}, "PwQ1LpBq": {}}, "party_id": "B9XHQVBm", "party_members": [{"user_id": "HaolcKUH"}, {"user_id": "0ijb10j2"}, {"user_id": "uzDm2HXo"}]}, {"party_attributes": {"vATfGtUT": {}, "SKRTcgZG": {}, "yLDFm0Fv": {}}, "party_id": "dGyZipih", "party_members": [{"user_id": "a9RYQ9Qz"}, {"user_id": "D3VyPzO6"}, {"user_id": "zfqu9ye9"}]}]}, {"matching_parties": [{"party_attributes": {"GVlQKT8l": {}, "t253vevx": {}, "1Q40Mwy1": {}}, "party_id": "b2MZEe5g", "party_members": [{"user_id": "epMalbBM"}, {"user_id": "aK1OKrdo"}, {"user_id": "qqyV3IS0"}]}, {"party_attributes": {"Gg76RqAq": {}, "70Gg1wtg": {}, "3IAuZ6kG": {}}, "party_id": "ZVrJh08q", "party_members": [{"user_id": "wxSGFVlQ"}, {"user_id": "rOWjGV1J"}, {"user_id": "FHcD9mKR"}]}, {"party_attributes": {"Ifw2sbcN": {}, "lXercMKA": {}, "ygImggSn": {}}, "party_id": "EhmON3r7", "party_members": [{"user_id": "z2oKEy0O"}, {"user_id": "2PSybc3F"}, {"user_id": "nDsxebR0"}]}]}, {"matching_parties": [{"party_attributes": {"krvccZTD": {}, "R5AdGMLz": {}, "54clK9GO": {}}, "party_id": "fJdbFtSP", "party_members": [{"user_id": "rzKkhr74"}, {"user_id": "2WRbVXNv"}, {"user_id": "Ijg2i1Rd"}]}, {"party_attributes": {"VFMK3xMg": {}, "DO4hzw5H": {}, "K2GnOOT0": {}}, "party_id": "pldft1Lu", "party_members": [{"user_id": "gOgN3SC6"}, {"user_id": "FYDBK8Jq"}, {"user_id": "pVtE422p"}]}, {"party_attributes": {"F0GAL9Oj": {}, "jIOByS5m": {}, "KtKkgDRc": {}}, "party_id": "9I9LiaDJ", "party_members": [{"user_id": "9zSHzBxk"}, {"user_id": "midXrbmV"}, {"user_id": "twcIN2yr"}]}]}], "namespace": "kbZXGC0y", "notification_payload": {}, "pod_name": "tnehXCFk", "region": "Kxcyi3bA", "session_id": "5dNwPRry"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateSession' test.out

#- 65 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "KKojibU4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ClaimServer' test.out

#- 66 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'PQSwW1oQ' \
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
    'XvYLCeBm' \
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
