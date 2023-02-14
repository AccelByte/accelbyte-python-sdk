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
dsmc-update-image '{"artifactPath": "Y4OTfDDC", "image": "Dx0T3JzZ", "namespace": "EoXN6bB9", "persistent": false, "version": "UJh7GHVt"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "qYqZ40hS", "dockerPath": "jQti3rii", "image": "9NxHuqwX", "imageSize": 38, "namespace": "iUlz0JkN", "persistent": true, "version": "M6sY2CAQ"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "wgfwdPzm", "dockerPath": "bzfMoEAU", "image": "YRXlyfhl", "imageSize": 70, "namespace": "EkqiGpkt", "patchVersion": "6h0UpPzQ", "persistent": true, "version": "ES75Uig4"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 99, "creation_timeout": 79, "default_version": "EjN0jIrn", "port": 67, "ports": {"ekuct5pI": 11, "YynYOkwq": 55, "UAeJmfTq": 70}, "protocol": "BsgkLH52", "providers": ["8MjVpbTX", "fMiksY5G", "jRT51qnM"], "session_timeout": 82, "unreachable_timeout": 1}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 93, "creation_timeout": 56, "default_version": "9WlL02HI", "port": 30, "protocol": "hchk5CpJ", "providers": ["jtBfFIpq", "JEc20k34", "H22OHqOc"], "session_timeout": 59, "unreachable_timeout": 55}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '63' '38' --login_with_auth "Bearer foo"
dsmc-get-deployment 'tRBeUDWn' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 26, "buffer_percent": 14, "configuration": "dpxgcasZ", "enable_region_overrides": true, "game_version": "irQFnu5i", "max_count": 59, "min_count": 78, "overrides": {"JiUsYTFB": {"buffer_count": 18, "buffer_percent": 76, "configuration": "eZ5s0O5s", "enable_region_overrides": false, "game_version": "VI4sIXyv", "max_count": 10, "min_count": 30, "name": "VCMrmVcc", "region_overrides": {"HhpGXuXe": {"buffer_count": 39, "buffer_percent": 92, "max_count": 41, "min_count": 89, "name": "RtSjWKBF", "unlimited": false, "use_buffer_percent": false}, "zrEWAw0m": {"buffer_count": 14, "buffer_percent": 51, "max_count": 48, "min_count": 34, "name": "6nbk0rS6", "unlimited": true, "use_buffer_percent": true}, "lh05dV4X": {"buffer_count": 89, "buffer_percent": 63, "max_count": 64, "min_count": 78, "name": "drXqXYvL", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ILMXwbWA", "lkP0VAJA", "ceqRMtqq"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": true}, "StbHWB7o": {"buffer_count": 47, "buffer_percent": 84, "configuration": "JE08TBc7", "enable_region_overrides": true, "game_version": "35r3cFCY", "max_count": 73, "min_count": 5, "name": "8G50a5Ea", "region_overrides": {"w7WtTufB": {"buffer_count": 8, "buffer_percent": 38, "max_count": 97, "min_count": 92, "name": "oENgtB7B", "unlimited": true, "use_buffer_percent": false}, "cnEtEsJy": {"buffer_count": 30, "buffer_percent": 74, "max_count": 48, "min_count": 8, "name": "SHggjb3S", "unlimited": false, "use_buffer_percent": false}, "3mTi1GZo": {"buffer_count": 17, "buffer_percent": 76, "max_count": 53, "min_count": 99, "name": "Wmrb01Rs", "unlimited": true, "use_buffer_percent": false}}, "regions": ["BoHunVZv", "fBIgbnU8", "A8tNAJev"], "session_timeout": 80, "unlimited": true, "use_buffer_percent": false}, "AWsTHZsB": {"buffer_count": 96, "buffer_percent": 30, "configuration": "2tRrsJGp", "enable_region_overrides": true, "game_version": "tF5CS1r9", "max_count": 24, "min_count": 78, "name": "hkutjvAp", "region_overrides": {"XsqYVAew": {"buffer_count": 68, "buffer_percent": 3, "max_count": 81, "min_count": 6, "name": "O22Ej5ac", "unlimited": false, "use_buffer_percent": false}, "KTLxWzGq": {"buffer_count": 8, "buffer_percent": 21, "max_count": 53, "min_count": 71, "name": "eZ9RrFtT", "unlimited": false, "use_buffer_percent": true}, "Cxvce5zm": {"buffer_count": 77, "buffer_percent": 62, "max_count": 95, "min_count": 92, "name": "uMvvwdFJ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["wwahh66p", "OwEwGgHV", "7BO5wBjj"], "session_timeout": 98, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"SnkvUqjE": {"buffer_count": 56, "buffer_percent": 17, "max_count": 18, "min_count": 45, "name": "XmW29Ukf", "unlimited": false, "use_buffer_percent": false}, "WOT5zMtU": {"buffer_count": 30, "buffer_percent": 79, "max_count": 61, "min_count": 54, "name": "VHts6mm2", "unlimited": true, "use_buffer_percent": false}, "2CtWxxFN": {"buffer_count": 60, "buffer_percent": 73, "max_count": 58, "min_count": 86, "name": "wkHfoafi", "unlimited": true, "use_buffer_percent": true}}, "regions": ["lNQfv94h", "LW6tgSxA", "l9iGfvbG"], "session_timeout": 9, "unlimited": true, "use_buffer_percent": true}' 'KJNL7ocU' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'ZiDq3lD1' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 50, "buffer_percent": 74, "configuration": "qMSvHRnO", "enable_region_overrides": false, "game_version": "VB5bz8Yb", "max_count": 24, "min_count": 18, "regions": ["9QzSIvhb", "MVAOSJrx", "q8pMtCFY"], "session_timeout": 94, "unlimited": true, "use_buffer_percent": false}' '38ksbAFf' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 58, "buffer_percent": 31, "max_count": 40, "min_count": 75, "unlimited": false, "use_buffer_percent": true}' 'YlbvEub5' '6EmAdRwX' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'QwH6ox0r' 'QKkmg6jZ' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 61, "buffer_percent": 50, "max_count": 62, "min_count": 30, "unlimited": true, "use_buffer_percent": false}' 'GENLjXs7' 'Mfvp1rft' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 81, "buffer_percent": 33, "configuration": "EQ88XZQw", "enable_region_overrides": true, "game_version": "0pIaTS8G", "max_count": 29, "min_count": 58, "region_overrides": {"z238OdAe": {"buffer_count": 12, "buffer_percent": 33, "max_count": 24, "min_count": 22, "name": "RFeawk2m", "unlimited": true, "use_buffer_percent": true}, "4vRubfC2": {"buffer_count": 69, "buffer_percent": 53, "max_count": 6, "min_count": 30, "name": "tH5Syv1B", "unlimited": true, "use_buffer_percent": false}, "aNXUvDeA": {"buffer_count": 43, "buffer_percent": 0, "max_count": 50, "min_count": 33, "name": "bCzjtPT1", "unlimited": false, "use_buffer_percent": false}}, "regions": ["hQQXIYPX", "yxF5lOMF", "To3MILtx"], "session_timeout": 4, "unlimited": false, "use_buffer_percent": true}' 'l1GmDT0K' 'OP5f8wh3' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'gTQeTkdH' 'eXE4vLMq' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 5, "buffer_percent": 79, "configuration": "2w520WDm", "enable_region_overrides": true, "game_version": "SWmBw2Ne", "max_count": 17, "min_count": 46, "regions": ["7xTvSPWn", "CrWJrXJc", "bM4sAH9m"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": true}' 'D0aXmaET' 'AcNa1jdD' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 55, "buffer_percent": 23, "max_count": 62, "min_count": 75, "unlimited": false, "use_buffer_percent": false}' 'l2wmdmfT' 'jJZ9wYcV' 'tU32rsfB' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'xjqj6dE2' 'CQ9AQyfa' 'Udz1lhbD' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 47, "buffer_percent": 25, "max_count": 34, "min_count": 57, "unlimited": true, "use_buffer_percent": true}' 'Pgc5XE52' 'x6ZvEr6Z' 'WEl1HRKo' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '28' '72' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'CpbYGor3' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 36, "mem_limit": 52, "params": "X5VavPBp"}' 'UH12BxKj' --login_with_auth "Bearer foo"
dsmc-delete-pod-config '0M91PgPm' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 76, "mem_limit": 29, "name": "o30Z5c87", "params": "mPdg3XdV"}' 'efhKOi0M' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 11}' 'PVc4pTyh' --login_with_auth "Bearer foo"
dsmc-delete-port 'qclLVmYF' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "pubHR8D5", "port": 49}' 'Kozndx8E' --login_with_auth "Bearer foo"
dsmc-list-images '41' '10' --login_with_auth "Bearer foo"
dsmc-delete-image 'HiluCFCB' 'cq7BzFQm' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'krPCAEZm' 'PtSd14vn' '5Je3glfv' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'Jz0HarMA' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'hVhNKGzp' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'XJCOuNi4' 'BU6BMyRe' --login_with_auth "Bearer foo"
dsmc-list-server '80' '0' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'WI4jJ1wM' --login_with_auth "Bearer foo"
dsmc-get-server 'fMUd7c7e' --login_with_auth "Bearer foo"
dsmc-delete-server 'zu6ycHEB' --login_with_auth "Bearer foo"
dsmc-list-session '35' '43' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'HyBZz7EU' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'T1eO4Fow' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "O3OSO07K"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "YedBe6rT", "ip": "gNHLsUzq", "name": "xeWkZEXw", "port": 98}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "S3n1HLKg", "pod_name": "7QoNRoNG"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "rbHvw6Rf"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'S9kWMwJW' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "HtNJJCP9", "configuration": "qR3qTeBO", "deployment": "aACvUB04", "game_mode": "bBF6iBER", "matching_allies": [{"matching_parties": [{"party_attributes": {"EAvqL9Bz": {}, "wkuuxWNR": {}, "FKCreNfj": {}}, "party_id": "Yii9rfeA", "party_members": [{"user_id": "hW49n1Xp"}, {"user_id": "eVQRbiGW"}, {"user_id": "YRYWilZe"}]}, {"party_attributes": {"Tgyt4GlR": {}, "RZbOqf5W": {}, "8srLCSLO": {}}, "party_id": "ASPj524P", "party_members": [{"user_id": "FnYqcqET"}, {"user_id": "d4IWCm80"}, {"user_id": "iPkXHMV0"}]}, {"party_attributes": {"NA8pW05f": {}, "M1X7Yt8L": {}, "nsKOa98r": {}}, "party_id": "m3Y7EtaM", "party_members": [{"user_id": "PCZqHAyy"}, {"user_id": "bNCvrCuC"}, {"user_id": "pJoskcOT"}]}]}, {"matching_parties": [{"party_attributes": {"NQDyLgnW": {}, "QwQCOGf6": {}, "BX8PGB5Q": {}}, "party_id": "MYZePhR2", "party_members": [{"user_id": "5dd1Gn5D"}, {"user_id": "4iSz5ULH"}, {"user_id": "PXwnhJH1"}]}, {"party_attributes": {"wny7DWx3": {}, "wupmN5AF": {}, "mqhfhGGN": {}}, "party_id": "EA6lmpO6", "party_members": [{"user_id": "5uhcu9ND"}, {"user_id": "xhkHsxBU"}, {"user_id": "U5mdqF3u"}]}, {"party_attributes": {"9KBXWC9X": {}, "6sAkktyt": {}, "HCPL6ZlX": {}}, "party_id": "BaaKvlcL", "party_members": [{"user_id": "kePVoVWu"}, {"user_id": "CDvbw4TL"}, {"user_id": "3BOzTcPE"}]}]}, {"matching_parties": [{"party_attributes": {"1dIsEog7": {}, "V1P0dcFy": {}, "oPreZYjt": {}}, "party_id": "dkO2V83Q", "party_members": [{"user_id": "RCblWoDI"}, {"user_id": "ixYkTlud"}, {"user_id": "WsOvj52l"}]}, {"party_attributes": {"d1bvQBZM": {}, "TrfRjKXK": {}, "cTR9m7jK": {}}, "party_id": "gnDmteNQ", "party_members": [{"user_id": "QenXLPdv"}, {"user_id": "GVb7r4MW"}, {"user_id": "JfAs5iO7"}]}, {"party_attributes": {"FQeoRvYc": {}, "apHDPuMq": {}, "paIH18Ax": {}}, "party_id": "lm70yKdb", "party_members": [{"user_id": "XJHS5nke"}, {"user_id": "tQjdgvmX"}, {"user_id": "rgwHSe38"}]}]}], "namespace": "pGTuEBMq", "notification_payload": {}, "pod_name": "eOGECJrM", "region": "FKRgm2YY", "session_id": "1rnQfJcA"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "dQvPkMGr"}' --login_with_auth "Bearer foo"
dsmc-get-session 'IpxUHbgF' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'oF9ypWwq' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "nZOWnbtK", "image": "6P6LgQTA", "namespace": "3AHS6LZc", "persistent": true, "version": "ltKAN7Ta"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "THyufqFE", "dockerPath": "Nx2C6qOa", "image": "OuYJ92Ks", "imageSize": 40, "namespace": "fsuFAPL4", "persistent": false, "version": "eu2pI6x5"}' \
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
    '{"artifactPath": "B4L70Txo", "dockerPath": "DcyR26e6", "image": "wabAwxMG", "imageSize": 33, "namespace": "VjEq7UDT", "patchVersion": "8sqIPNQn", "persistent": false, "version": "2FqX05Oe"}' \
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
    '{"claim_timeout": 93, "creation_timeout": 47, "default_version": "jsB6eatu", "port": 30, "ports": {"nQI0or8L": 55, "h8ByGMfn": 69, "80vH6y5i": 71}, "protocol": "suWEcVgO", "providers": ["T59yCnWL", "czVBvKSw", "4qL7dFhY"], "session_timeout": 92, "unreachable_timeout": 16}' \
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
    '{"claim_timeout": 14, "creation_timeout": 65, "default_version": "rFgEwYs0", "port": 16, "protocol": "KYGOZNBD", "providers": ["Lp0vWsio", "gZbIGksf", "ovLv8F47"], "session_timeout": 83, "unreachable_timeout": 97}' \
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
    '84' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'CuhH6JAE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 87, "buffer_percent": 23, "configuration": "01smeO6J", "enable_region_overrides": false, "game_version": "ipNorD3K", "max_count": 28, "min_count": 44, "overrides": {"lkTeivOY": {"buffer_count": 10, "buffer_percent": 21, "configuration": "DnPEkd42", "enable_region_overrides": true, "game_version": "nydS66IZ", "max_count": 42, "min_count": 16, "name": "keismIUW", "region_overrides": {"pi0uYHYp": {"buffer_count": 34, "buffer_percent": 26, "max_count": 38, "min_count": 98, "name": "V7q6IEN9", "unlimited": true, "use_buffer_percent": false}, "1HYQfzbY": {"buffer_count": 55, "buffer_percent": 50, "max_count": 57, "min_count": 84, "name": "g4n4Bue7", "unlimited": true, "use_buffer_percent": true}, "Uk8RCho7": {"buffer_count": 93, "buffer_percent": 50, "max_count": 11, "min_count": 6, "name": "0Q4RfpKu", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1I7Ri9D1", "sEXieBaD", "uTuu4pKn"], "session_timeout": 78, "unlimited": true, "use_buffer_percent": true}, "lyEsgHuM": {"buffer_count": 30, "buffer_percent": 48, "configuration": "eNKTGJUM", "enable_region_overrides": false, "game_version": "s1kofJbk", "max_count": 45, "min_count": 41, "name": "1E9iSrJS", "region_overrides": {"frgLuqze": {"buffer_count": 100, "buffer_percent": 16, "max_count": 26, "min_count": 7, "name": "GhD18MtV", "unlimited": true, "use_buffer_percent": false}, "BSDyRfKf": {"buffer_count": 15, "buffer_percent": 71, "max_count": 26, "min_count": 88, "name": "yqArTMRa", "unlimited": true, "use_buffer_percent": true}, "AmqAFOao": {"buffer_count": 74, "buffer_percent": 74, "max_count": 3, "min_count": 30, "name": "AUZ5KH2L", "unlimited": true, "use_buffer_percent": false}}, "regions": ["vl2tzEM3", "DqmJPJrJ", "9VDdEGva"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}, "Z3992C5Z": {"buffer_count": 29, "buffer_percent": 96, "configuration": "wwu6xQKe", "enable_region_overrides": true, "game_version": "v8H8Dqpd", "max_count": 70, "min_count": 51, "name": "0Pxn2MKL", "region_overrides": {"XQJmTmnh": {"buffer_count": 97, "buffer_percent": 24, "max_count": 92, "min_count": 16, "name": "CfX4S1yv", "unlimited": true, "use_buffer_percent": true}, "oaYBfv2C": {"buffer_count": 20, "buffer_percent": 44, "max_count": 37, "min_count": 25, "name": "bnrZRsoZ", "unlimited": false, "use_buffer_percent": false}, "ZzwFmREy": {"buffer_count": 92, "buffer_percent": 9, "max_count": 94, "min_count": 14, "name": "qWjNe004", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7KN3mpPh", "MQBBKIWM", "O7ru7V5d"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"wOldlSJF": {"buffer_count": 16, "buffer_percent": 40, "max_count": 45, "min_count": 96, "name": "aE1TX8jR", "unlimited": true, "use_buffer_percent": true}, "9jaPSfJ5": {"buffer_count": 13, "buffer_percent": 57, "max_count": 70, "min_count": 39, "name": "ROxjCdXx", "unlimited": false, "use_buffer_percent": true}, "CouNlgsI": {"buffer_count": 11, "buffer_percent": 92, "max_count": 64, "min_count": 76, "name": "F50QT6MT", "unlimited": true, "use_buffer_percent": false}}, "regions": ["XDBeXWtX", "RWNCIcS6", "LE3vh2d2"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": true}' \
    '4XDYIklh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    '0Rl9ofr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 88, "buffer_percent": 92, "configuration": "wXpDxdEB", "enable_region_overrides": false, "game_version": "DxB3Acqk", "max_count": 99, "min_count": 34, "regions": ["ZEJclGXQ", "ICyYMUEv", "FxGlpFfP"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}' \
    'tzThMbug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 79, "buffer_percent": 50, "max_count": 48, "min_count": 95, "unlimited": false, "use_buffer_percent": true}' \
    'R1tSNfx4' \
    'b8dDHwhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'OVimTe9i' \
    'pVNkcuy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 73, "buffer_percent": 54, "max_count": 19, "min_count": 68, "unlimited": false, "use_buffer_percent": false}' \
    'bJHy5RpS' \
    'hDGvvzZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 6, "buffer_percent": 85, "configuration": "4gLrc5rc", "enable_region_overrides": true, "game_version": "lDm2zJBQ", "max_count": 28, "min_count": 72, "region_overrides": {"nPki7RP9": {"buffer_count": 1, "buffer_percent": 78, "max_count": 6, "min_count": 80, "name": "XVndc6rO", "unlimited": true, "use_buffer_percent": true}, "1OtnZNU0": {"buffer_count": 57, "buffer_percent": 2, "max_count": 65, "min_count": 17, "name": "1WkuRBwT", "unlimited": true, "use_buffer_percent": true}, "Sg769w0D": {"buffer_count": 37, "buffer_percent": 23, "max_count": 47, "min_count": 80, "name": "bW3LTmuX", "unlimited": true, "use_buffer_percent": false}}, "regions": ["9Sm95cJn", "xi3021iC", "JQhR3GH3"], "session_timeout": 52, "unlimited": false, "use_buffer_percent": false}' \
    'RJJpAcZZ' \
    'kQSwr5y8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    '8pqN11Ut' \
    'dub35e9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 86, "buffer_percent": 8, "configuration": "XUeEUkg8", "enable_region_overrides": false, "game_version": "pt9Mr0Fr", "max_count": 89, "min_count": 64, "regions": ["rfkXrtkc", "vowkFV5g", "8mVcuufI"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": false}' \
    'zEpUzWOO' \
    'LIvoQy0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 24, "buffer_percent": 60, "max_count": 4, "min_count": 59, "unlimited": true, "use_buffer_percent": true}' \
    '0sJprcbH' \
    'jOsxa2U6' \
    'v8JbWOnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'X1PnhUX5' \
    'VGAkVzN6' \
    '1FeB5aQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 24, "buffer_percent": 75, "max_count": 24, "min_count": 49, "unlimited": false, "use_buffer_percent": false}' \
    'Kek6eF9Q' \
    'QbO9cNfg' \
    'zZwsrORc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '48' \
    '12' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'Ozsq2fv1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 26, "mem_limit": 39, "params": "7tgCICv5"}' \
    'wx0zytFv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'UeXaAlv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 3, "mem_limit": 58, "name": "MuIUtwwA", "params": "W2n55np7"}' \
    'JUvmeuC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 98}' \
    'oTir2SIi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'd9K0MLTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "4ORFiytQ", "port": 81}' \
    '8V35ree1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '34' \
    '60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'RtVuVC0a' \
    'mWjT6gwj' \
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
    'JRtEt8q2' \
    'dF8YcPhp' \
    'MK77hPTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'JAV5f0D4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    '9Gy9xlLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'leWn7OcI' \
    'LtFhTken' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '55' \
    '36' \
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
    '1edjUbqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'qqLgXDgp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'Lorx8wiN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '41' \
    '25' \
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
    'FlhoO81X' \
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
    'VgSiVOD4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "2acxXbVL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "Ahj2NxKC", "ip": "pAF9PQMR", "name": "FcxMXgHr", "port": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "SyqUxxRQ", "pod_name": "7ndPO4Z7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "5FWrH3TC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'ggvMaPpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "mJ6uMSSP", "configuration": "CMepH7aM", "deployment": "qly5UKaA", "game_mode": "r1EBW3Xj", "matching_allies": [{"matching_parties": [{"party_attributes": {"bvu774Ms": {}, "FMzN7LUR": {}, "uhOSHoiV": {}}, "party_id": "2XdweVOM", "party_members": [{"user_id": "N8lbKXYy"}, {"user_id": "j8JLktRo"}, {"user_id": "EWgxrrgH"}]}, {"party_attributes": {"0ZzCbryk": {}, "pYXgtvaZ": {}, "XtKMfhrf": {}}, "party_id": "qO386zI6", "party_members": [{"user_id": "V6zdzDNK"}, {"user_id": "0ZWqgflO"}, {"user_id": "blfVrwbY"}]}, {"party_attributes": {"Nzxfqm7s": {}, "1lZvkD9h": {}, "p1uoJwbR": {}}, "party_id": "1i41EtWq", "party_members": [{"user_id": "i3nEGWBC"}, {"user_id": "HvpBhxzf"}, {"user_id": "zFzZDdYf"}]}]}, {"matching_parties": [{"party_attributes": {"NNQb86H8": {}, "HlTP97CT": {}, "Izgkx844": {}}, "party_id": "y8sR4av7", "party_members": [{"user_id": "WMKOJLFu"}, {"user_id": "gGU3Tpiq"}, {"user_id": "e1KAZvYN"}]}, {"party_attributes": {"pZwAWXIO": {}, "rRP540hU": {}, "h4zn7oBV": {}}, "party_id": "xN3DQXdc", "party_members": [{"user_id": "IxdPMG17"}, {"user_id": "fcQrlxI6"}, {"user_id": "q74lkeKe"}]}, {"party_attributes": {"cUr9hl7L": {}, "ngrzunlK": {}, "6R8hlA3P": {}}, "party_id": "Et5Ve62h", "party_members": [{"user_id": "Wo6mM3rL"}, {"user_id": "4kZld5QZ"}, {"user_id": "1GM41LwA"}]}]}, {"matching_parties": [{"party_attributes": {"j6fbR66b": {}, "AKPPzGNK": {}, "lBPDSUx2": {}}, "party_id": "YYHpnMp4", "party_members": [{"user_id": "Kz4XaWuc"}, {"user_id": "Umo3sHXa"}, {"user_id": "RbqLffa3"}]}, {"party_attributes": {"XAwu8aCE": {}, "Y6jo4itP": {}, "ipvnhNyl": {}}, "party_id": "PgdERFFg", "party_members": [{"user_id": "saCAix76"}, {"user_id": "fFzGJW7O"}, {"user_id": "ggkQcq84"}]}, {"party_attributes": {"AV5ox1ci": {}, "YZf4ARpD": {}, "vjjmSMhr": {}}, "party_id": "uADnLxGi", "party_members": [{"user_id": "NlXQKn9v"}, {"user_id": "G33UFthz"}, {"user_id": "69qfhCHI"}]}]}], "namespace": "jSIiNTFl", "notification_payload": {}, "pod_name": "GBj4dGUD", "region": "2qdiLDq8", "session_id": "bZBZco6E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "ulY9Cv8W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'lE3gJDsY' \
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
    '929pdbR0' \
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
