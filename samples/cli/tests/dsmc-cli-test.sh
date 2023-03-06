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
dsmc-update-image '{"artifactPath": "EAxcVpFr", "image": "ttufHIRd", "namespace": "H9UzVRiX", "persistent": false, "version": "Oaiw9B0D"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "7eHpzSn3", "dockerPath": "ZPUdc0qh", "image": "4n8mzZ0m", "imageSize": 85, "namespace": "SAMTwE6I", "persistent": true, "version": "IaRDBXxy"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "aNoMR6hk", "dockerPath": "spInrAip", "image": "6lyzSxwE", "imageSize": 24, "namespace": "zS6DaDpv", "patchVersion": "8N7ZQVqG", "persistent": false, "version": "NmKJfh5p"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 95, "creation_timeout": 21, "default_version": "1aXlFcDt", "port": 13, "ports": {"8NY4YkHs": 40, "cnz1JSDg": 100, "1TXp38zs": 58}, "protocol": "hRTcPiSu", "providers": ["L0Sly6XM", "4OI18mAQ", "LnzjMf8G"], "session_timeout": 0, "unreachable_timeout": 100}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 13, "creation_timeout": 55, "default_version": "SrjJW2OQ", "port": 80, "protocol": "EAu2D6QV", "providers": ["KNCWP75T", "B0i7pKxR", "8dl0zRVW"], "session_timeout": 74, "unreachable_timeout": 62}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '60' '67' --login_with_auth "Bearer foo"
dsmc-get-deployment 'n7Z4U68s' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 3, "buffer_percent": 79, "configuration": "XfqlqNiT", "enable_region_overrides": true, "game_version": "avj7AorK", "max_count": 37, "min_count": 95, "overrides": {"xwkosAVe": {"buffer_count": 35, "buffer_percent": 4, "configuration": "Xpc1C8Xf", "enable_region_overrides": true, "game_version": "a1ysLEzt", "max_count": 14, "min_count": 35, "name": "6mXhzkzW", "region_overrides": {"kFeZSoEA": {"buffer_count": 5, "buffer_percent": 40, "max_count": 57, "min_count": 7, "name": "P7MIIR7C", "unlimited": false, "use_buffer_percent": false}, "yF6C7duu": {"buffer_count": 50, "buffer_percent": 92, "max_count": 33, "min_count": 31, "name": "GhDogqrh", "unlimited": true, "use_buffer_percent": false}, "N05MYzYi": {"buffer_count": 75, "buffer_percent": 85, "max_count": 99, "min_count": 89, "name": "e5dNRljv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["DQQRgat0", "SevkLGMS", "0lyuI9a2"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}, "u6Vpbsx5": {"buffer_count": 46, "buffer_percent": 49, "configuration": "8hqUI06U", "enable_region_overrides": true, "game_version": "uB0y5WUl", "max_count": 36, "min_count": 41, "name": "MdI4sNve", "region_overrides": {"abntBSxT": {"buffer_count": 9, "buffer_percent": 20, "max_count": 70, "min_count": 13, "name": "v53HGCil", "unlimited": false, "use_buffer_percent": true}, "91C2qtPY": {"buffer_count": 30, "buffer_percent": 46, "max_count": 22, "min_count": 67, "name": "ahFjkQsf", "unlimited": true, "use_buffer_percent": false}, "HAf8TgoN": {"buffer_count": 24, "buffer_percent": 67, "max_count": 20, "min_count": 98, "name": "2s9Q0mPV", "unlimited": false, "use_buffer_percent": true}}, "regions": ["3twu0Mes", "TCf9x4rt", "69lna7qx"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}, "jHfYakUC": {"buffer_count": 94, "buffer_percent": 77, "configuration": "qGkE7wcW", "enable_region_overrides": false, "game_version": "aLqYSYWy", "max_count": 40, "min_count": 55, "name": "LPziZMdj", "region_overrides": {"xcBZufQx": {"buffer_count": 66, "buffer_percent": 87, "max_count": 18, "min_count": 68, "name": "iiPlSC2u", "unlimited": true, "use_buffer_percent": true}, "4o5Vwdo3": {"buffer_count": 12, "buffer_percent": 80, "max_count": 8, "min_count": 33, "name": "PqIJA8IH", "unlimited": true, "use_buffer_percent": true}, "qb8RwNmn": {"buffer_count": 99, "buffer_percent": 69, "max_count": 97, "min_count": 35, "name": "Ala2l5BY", "unlimited": false, "use_buffer_percent": true}}, "regions": ["E0mit9RG", "CCHYzUOc", "EdscKHPE"], "session_timeout": 35, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"A8yu7Vk6": {"buffer_count": 72, "buffer_percent": 39, "max_count": 61, "min_count": 26, "name": "Ymos9Jcd", "unlimited": false, "use_buffer_percent": true}, "s4fYcTVU": {"buffer_count": 90, "buffer_percent": 25, "max_count": 56, "min_count": 44, "name": "t0zYoMcH", "unlimited": true, "use_buffer_percent": true}, "CUEXlAvx": {"buffer_count": 73, "buffer_percent": 49, "max_count": 79, "min_count": 30, "name": "dalwSyli", "unlimited": false, "use_buffer_percent": true}}, "regions": ["NyLu0M3V", "Hh2EI8Jl", "DbPWbQ6Q"], "session_timeout": 37, "unlimited": false, "use_buffer_percent": false}' 'NmqRBaAk' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'LnvxkT1X' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 5, "buffer_percent": 61, "configuration": "mDc3fxU8", "enable_region_overrides": false, "game_version": "yKrQpM4h", "max_count": 21, "min_count": 22, "regions": ["kK6KKXNB", "3Gv0IqmF", "51TkhjYn"], "session_timeout": 1, "unlimited": true, "use_buffer_percent": true}' 'foWvXa3b' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 78, "buffer_percent": 25, "max_count": 37, "min_count": 62, "unlimited": false, "use_buffer_percent": true}' 'jtGeoyIP' 'a8ZRrvjj' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override '7il35MXb' 'N9oCMNqq' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 84, "buffer_percent": 92, "max_count": 31, "min_count": 19, "unlimited": false, "use_buffer_percent": true}' 'IxjUkl53' '5X3ateEK' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 60, "buffer_percent": 95, "configuration": "pADz1x3p", "enable_region_overrides": false, "game_version": "C9xv32e8", "max_count": 5, "min_count": 77, "region_overrides": {"5csSovoq": {"buffer_count": 38, "buffer_percent": 26, "max_count": 82, "min_count": 4, "name": "Bdte9NDU", "unlimited": false, "use_buffer_percent": true}, "f6c2Z0QZ": {"buffer_count": 48, "buffer_percent": 75, "max_count": 11, "min_count": 75, "name": "gPubTDIH", "unlimited": true, "use_buffer_percent": true}, "NZm3EeER": {"buffer_count": 25, "buffer_percent": 69, "max_count": 61, "min_count": 32, "name": "nyeFoF7V", "unlimited": true, "use_buffer_percent": false}}, "regions": ["pf3vneSD", "2Tb3g7mS", "QUhAEtrm"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": true}' 'Eztx1WsY' 'SiZqan0n' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'SBJroav9' '1GXlvPG6' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 3, "buffer_percent": 64, "configuration": "iGeUlc9d", "enable_region_overrides": false, "game_version": "sogWa24C", "max_count": 76, "min_count": 76, "regions": ["NS0GqVvU", "fHQvsHXN", "UNe4mhgo"], "session_timeout": 87, "unlimited": true, "use_buffer_percent": false}' 'lSAiYnNj' 'kfZrQvGg' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 3, "buffer_percent": 22, "max_count": 76, "min_count": 6, "unlimited": true, "use_buffer_percent": false}' 'zHkBMr1y' 'rOMlNFSr' 'UEirnjX9' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'fDmIbeZx' 'zfTcyiuA' 'Tus9hsfp' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 65, "buffer_percent": 35, "max_count": 60, "min_count": 3, "unlimited": false, "use_buffer_percent": true}' 'DG8aMVGL' 'iBNrDjqo' 'xcwgGLXp' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '96' '10' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'L4pp2ncY' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 54, "mem_limit": 68, "params": "ktfIovmv"}' '9gsR5cJc' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'Hm3SZLxo' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 89, "mem_limit": 60, "name": "mJFfRByj", "params": "lBiuFM3F"}' 'IoVk8T3G' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 31}' 'AAMwzHPx' --login_with_auth "Bearer foo"
dsmc-delete-port 'B1UskYs4' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "Yw20DOqO", "port": 56}' 'MiVi10sG' --login_with_auth "Bearer foo"
dsmc-list-images '85' '44' --login_with_auth "Bearer foo"
dsmc-delete-image 'MMWH8Yb3' '3T5UBJCj' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'fcnLRfxe' 'CSz9WEi8' 'KlloeH0J' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'T1yduat2' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'vQR3biBf' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'su4jmsRE' '2w1yEkLg' --login_with_auth "Bearer foo"
dsmc-list-server '14' '26' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server '3tIYt4Sq' --login_with_auth "Bearer foo"
dsmc-get-server 'YUTLDx9g' --login_with_auth "Bearer foo"
dsmc-delete-server 'IiDandpG' --login_with_auth "Bearer foo"
dsmc-list-session '93' '51' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '2t24aOMh' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client '5eC3IHeH' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "SKLCa3xr"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "eNDUWehw", "ip": "H3q31A80", "name": "6DJgas4b", "port": 9}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "z3LNUj7f", "pod_name": "dgLA84Z8"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "Yk6QEgJj"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'BbEDoNf3' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "n0hEoRCA", "configuration": "cf80zfFy", "deployment": "abWAgIUX", "game_mode": "iI07A68e", "matching_allies": [{"matching_parties": [{"party_attributes": {"aqC2J9jy": {}, "EW6GLbc0": {}, "NaKDUL3s": {}}, "party_id": "a13lk1dQ", "party_members": [{"user_id": "BHO86IlB"}, {"user_id": "hnetU4Rw"}, {"user_id": "TqUXlTDB"}]}, {"party_attributes": {"zOuYsaZA": {}, "2yyd4mbq": {}, "oOfADMMA": {}}, "party_id": "XFaY9eKa", "party_members": [{"user_id": "699bRVhy"}, {"user_id": "aKwwrAP2"}, {"user_id": "aMlu7Wtj"}]}, {"party_attributes": {"CtoYetOO": {}, "847g8Oud": {}, "OfjnCuHZ": {}}, "party_id": "3c46IjGa", "party_members": [{"user_id": "23YvYmmD"}, {"user_id": "g7VYPXIu"}, {"user_id": "vUYTZBRu"}]}]}, {"matching_parties": [{"party_attributes": {"jIUE1Tq5": {}, "jyAZvkRC": {}, "MNFIurjh": {}}, "party_id": "2imdb4rb", "party_members": [{"user_id": "kXj0ZwsV"}, {"user_id": "C0gL97ZV"}, {"user_id": "JSPqJiwv"}]}, {"party_attributes": {"1qlYB1RS": {}, "Ks6gQxC3": {}, "Gb7S0o4z": {}}, "party_id": "GYY7KQI1", "party_members": [{"user_id": "AeFgPqaO"}, {"user_id": "kvo1aolB"}, {"user_id": "4lkKB4EY"}]}, {"party_attributes": {"OkQ1jMD3": {}, "cym8xIfk": {}, "OVW2grRE": {}}, "party_id": "OLx0KOww", "party_members": [{"user_id": "3HICQLfl"}, {"user_id": "7MUBG7qt"}, {"user_id": "Pu64yAtU"}]}]}, {"matching_parties": [{"party_attributes": {"RKLRkb73": {}, "8HGS6rDg": {}, "MdIIlhS1": {}}, "party_id": "fSiM9331", "party_members": [{"user_id": "m7Ta1PsK"}, {"user_id": "c50Kv6ec"}, {"user_id": "nEevcAx2"}]}, {"party_attributes": {"K2zkRenm": {}, "PZnGBt4P": {}, "7WnbdSJt": {}}, "party_id": "jX7ZshZy", "party_members": [{"user_id": "Zl5x4bRX"}, {"user_id": "BHUTrDzZ"}, {"user_id": "SKscfOcY"}]}, {"party_attributes": {"u3dpCROY": {}, "qUiGKXVF": {}, "Cmpo6sPw": {}}, "party_id": "VOEDSJsE", "party_members": [{"user_id": "K5QpNhlI"}, {"user_id": "2iS5EpGh"}, {"user_id": "hvXYck0u"}]}]}], "namespace": "pMzUYnb7", "notification_payload": {}, "pod_name": "6tFkEORV", "region": "3bu1bNCt", "session_id": "X7W40V6D"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "o5sYadCC"}' --login_with_auth "Bearer foo"
dsmc-get-session 'FrHHC3Dp' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'ZxkrQDXu' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "NFviMarv", "image": "8mnfHK8C", "namespace": "CmE2lPns", "persistent": false, "version": "pomM8sm1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "MiaI1mX2", "dockerPath": "tJoARtdb", "image": "Be7udsMr", "imageSize": 30, "namespace": "JlXe36mg", "persistent": true, "version": "jLfFmteu"}' \
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
    '{"artifactPath": "e9nzJ6fH", "dockerPath": "24T805tV", "image": "g8JqU0jZ", "imageSize": 31, "namespace": "vzcWbfUp", "patchVersion": "aXp5JMl5", "persistent": true, "version": "L4bTxBmZ"}' \
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
    '{"claim_timeout": 19, "creation_timeout": 39, "default_version": "drrIxsB0", "port": 80, "ports": {"laDXTvKC": 100, "RRulpqpy": 26, "rS0uPdjh": 6}, "protocol": "wRVnwVBO", "providers": ["qOHi8pWG", "d1juYhiq", "jRJOqB5F"], "session_timeout": 6, "unreachable_timeout": 57}' \
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
    '{"claim_timeout": 52, "creation_timeout": 65, "default_version": "NR88YbCt", "port": 25, "protocol": "dONneAcz", "providers": ["bBdHb2sl", "t71B1SmZ", "p2JZp50C"], "session_timeout": 28, "unreachable_timeout": 94}' \
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
    '86' \
    '92' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'b71ORYcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 94, "buffer_percent": 55, "configuration": "U5JX8ccL", "enable_region_overrides": false, "game_version": "QV0TqI8E", "max_count": 64, "min_count": 74, "overrides": {"nmDbxIxi": {"buffer_count": 10, "buffer_percent": 12, "configuration": "KlONk2Q5", "enable_region_overrides": true, "game_version": "Jvaizwii", "max_count": 23, "min_count": 9, "name": "atuUjjt9", "region_overrides": {"lIMGql5E": {"buffer_count": 23, "buffer_percent": 76, "max_count": 62, "min_count": 4, "name": "a9EIIlGc", "unlimited": true, "use_buffer_percent": true}, "xwhRON0b": {"buffer_count": 5, "buffer_percent": 22, "max_count": 46, "min_count": 9, "name": "i3v3MFFJ", "unlimited": true, "use_buffer_percent": false}, "esKoELCp": {"buffer_count": 30, "buffer_percent": 61, "max_count": 3, "min_count": 74, "name": "BEG8X645", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pdXpai0r", "YaT5hOPj", "af3H0tYi"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": false}, "g1yLVbLF": {"buffer_count": 53, "buffer_percent": 74, "configuration": "HEP8cM4N", "enable_region_overrides": true, "game_version": "3VgsZXiR", "max_count": 93, "min_count": 59, "name": "ej52WKi6", "region_overrides": {"tArAURt9": {"buffer_count": 32, "buffer_percent": 64, "max_count": 23, "min_count": 73, "name": "CSVq8PdH", "unlimited": false, "use_buffer_percent": false}, "BeIXuqDu": {"buffer_count": 55, "buffer_percent": 46, "max_count": 70, "min_count": 14, "name": "66bQ71w0", "unlimited": false, "use_buffer_percent": false}, "eoV9Lx5R": {"buffer_count": 61, "buffer_percent": 84, "max_count": 55, "min_count": 13, "name": "1l2Xcrci", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ZGCHsZYo", "LfR1KtOv", "7Zy0b65u"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}, "4ijFnE3T": {"buffer_count": 0, "buffer_percent": 88, "configuration": "m69qSZ7P", "enable_region_overrides": true, "game_version": "dnSKOLFK", "max_count": 49, "min_count": 63, "name": "1dX4LuWJ", "region_overrides": {"u3pDMUAe": {"buffer_count": 9, "buffer_percent": 5, "max_count": 51, "min_count": 53, "name": "7SBROPYu", "unlimited": true, "use_buffer_percent": true}, "4AOec0z8": {"buffer_count": 8, "buffer_percent": 53, "max_count": 57, "min_count": 6, "name": "eeoip68J", "unlimited": false, "use_buffer_percent": false}, "lNa29fDL": {"buffer_count": 15, "buffer_percent": 40, "max_count": 0, "min_count": 11, "name": "1IslKHzG", "unlimited": false, "use_buffer_percent": true}}, "regions": ["WUtDQs61", "OQAoxyyQ", "pRWCiiPD"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"pX8lNtFE": {"buffer_count": 73, "buffer_percent": 40, "max_count": 73, "min_count": 27, "name": "VrlzqQls", "unlimited": false, "use_buffer_percent": false}, "j12K2Izr": {"buffer_count": 55, "buffer_percent": 44, "max_count": 19, "min_count": 43, "name": "KvgatOEB", "unlimited": true, "use_buffer_percent": false}, "TdlNBJYO": {"buffer_count": 25, "buffer_percent": 55, "max_count": 32, "min_count": 94, "name": "u1VCarzB", "unlimited": true, "use_buffer_percent": true}}, "regions": ["xnZ5Jrzz", "jrcaug6C", "WVG8SWP3"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    '9DHhLOqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'GhCUr6iT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 19, "buffer_percent": 18, "configuration": "yEgarAdN", "enable_region_overrides": false, "game_version": "36I6tRbR", "max_count": 4, "min_count": 35, "regions": ["DBqFKHQk", "ETJyTlUr", "wDTnoujQ"], "session_timeout": 60, "unlimited": false, "use_buffer_percent": false}' \
    'IEiH9Z5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 51, "buffer_percent": 27, "max_count": 6, "min_count": 8, "unlimited": false, "use_buffer_percent": false}' \
    'oRtlqOEC' \
    'ohViHA5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'zgFSy8X1' \
    'A3PrIfap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 34, "buffer_percent": 38, "max_count": 80, "min_count": 55, "unlimited": false, "use_buffer_percent": true}' \
    'B4ZH3mtg' \
    'WgU4pCAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 48, "buffer_percent": 71, "configuration": "eE70Caun", "enable_region_overrides": true, "game_version": "xot371W9", "max_count": 67, "min_count": 1, "region_overrides": {"4AvQkqsG": {"buffer_count": 27, "buffer_percent": 14, "max_count": 25, "min_count": 50, "name": "yo5JJTUV", "unlimited": false, "use_buffer_percent": false}, "MkawaGpA": {"buffer_count": 49, "buffer_percent": 80, "max_count": 35, "min_count": 62, "name": "IwMif3BO", "unlimited": false, "use_buffer_percent": false}, "Np5nodqp": {"buffer_count": 77, "buffer_percent": 34, "max_count": 26, "min_count": 66, "name": "7FhJBNXz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dO0Khqf6", "kiTdSGv2", "LFjAKY7C"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": false}' \
    'sWqFWZX7' \
    'kPBom8F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'GLLTG8ph' \
    'c3n4iLoI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 24, "buffer_percent": 23, "configuration": "YI89hmgu", "enable_region_overrides": true, "game_version": "XJF3WGRa", "max_count": 30, "min_count": 88, "regions": ["b9rIzqYk", "EpstyVTB", "crM8rG0r"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": true}' \
    'X6wK7PpU' \
    'lcIW32iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 79, "buffer_percent": 43, "max_count": 67, "min_count": 44, "unlimited": true, "use_buffer_percent": true}' \
    '1ixY5rA1' \
    'WoVeJIeP' \
    'F8ZrQzP4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'zvtdxdbZ' \
    'Upd6FJtH' \
    'J1pyVwyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 88, "buffer_percent": 25, "max_count": 76, "min_count": 25, "unlimited": false, "use_buffer_percent": true}' \
    'nOpas6gh' \
    'P1y4Zi7s' \
    '7QBlk44Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '66' \
    '22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'B1GZgKg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 42, "mem_limit": 74, "params": "Ddb60ufP"}' \
    'pzwj1QGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'FmlVf4jv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 1, "mem_limit": 20, "name": "pseE9LN9", "params": "bvhOrHfl"}' \
    'IOd6X3vi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 78}' \
    'sApRA6HX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    '3RwrKt2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "cozL0TOg", "port": 25}' \
    'vCE48L5o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '78' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'F6M4lNa4' \
    'JUMSHNgq' \
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
    'RqCV7usa' \
    'mANkZlOX' \
    '9Sfo95Hg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'XqKhTPkw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'fLM9uSyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'RzWek2gZ' \
    'vRrvr0n9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '6' \
    '5' \
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
    '9lvccKML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'hrTrcBE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'ItBS3KtK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '78' \
    '100' \
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
    'gkQuaS7R' \
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
    'Bx3vim02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "jBOxrZDy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "vpcLYOWA", "ip": "8NjxOnaE", "name": "ok4nOOCz", "port": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "aBcAXXKl", "pod_name": "hvyH8paO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "lfDTk8aG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    '40Nlncce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "IZSwgAIk", "configuration": "gzh4pTU0", "deployment": "Am4DZhl0", "game_mode": "bQxFJ3sW", "matching_allies": [{"matching_parties": [{"party_attributes": {"CqQpQ2Fb": {}, "KPFMycMS": {}, "Q4qfAacR": {}}, "party_id": "0LgB5BUX", "party_members": [{"user_id": "vjcu2s6w"}, {"user_id": "3VifnKqm"}, {"user_id": "TSoGH1XE"}]}, {"party_attributes": {"fY6QAYn6": {}, "WQ5UBEU1": {}, "QAOHfZiG": {}}, "party_id": "hxOdcuDX", "party_members": [{"user_id": "SxSc3aZP"}, {"user_id": "V87pna08"}, {"user_id": "gxefTYKh"}]}, {"party_attributes": {"uxaEc7M4": {}, "P7UckSC6": {}, "ePeN8i4G": {}}, "party_id": "rFES9z7x", "party_members": [{"user_id": "ueHpATHc"}, {"user_id": "cee9GXhK"}, {"user_id": "cjmSEwdr"}]}]}, {"matching_parties": [{"party_attributes": {"kEnnqKzF": {}, "sLfYalUl": {}, "fwEQKjU7": {}}, "party_id": "eHGebSVu", "party_members": [{"user_id": "0LQ40kep"}, {"user_id": "EaC4dfiO"}, {"user_id": "MZfEhHr3"}]}, {"party_attributes": {"9pysFO3Z": {}, "vc1BZG99": {}, "LyvfvHEs": {}}, "party_id": "JKQQewVL", "party_members": [{"user_id": "MUoAnaRc"}, {"user_id": "Yp7FUjfI"}, {"user_id": "GaffoflE"}]}, {"party_attributes": {"IByYqeKN": {}, "0meGelYF": {}, "5wWaDhuk": {}}, "party_id": "U4khGG4v", "party_members": [{"user_id": "ZFTYnPkm"}, {"user_id": "Su4PWam1"}, {"user_id": "jxR7SETW"}]}]}, {"matching_parties": [{"party_attributes": {"jteoc8fg": {}, "vZDDhoO0": {}, "5oKqymxL": {}}, "party_id": "D1Lcvw6T", "party_members": [{"user_id": "6mZEiwxx"}, {"user_id": "ElpMYSWI"}, {"user_id": "eVzm7z9n"}]}, {"party_attributes": {"oowmlTIK": {}, "Vowi0RY2": {}, "VN4ZONJR": {}}, "party_id": "EdUQ3z9F", "party_members": [{"user_id": "1BxNNgnk"}, {"user_id": "e4akncw7"}, {"user_id": "wu9TmXfJ"}]}, {"party_attributes": {"WBPrx9Ns": {}, "8eLzYEvw": {}, "SWTaLQjc": {}}, "party_id": "tvrK2jhs", "party_members": [{"user_id": "YpKPlXn7"}, {"user_id": "7AtYoFzL"}, {"user_id": "AATPY8P8"}]}]}], "namespace": "P3cfoivv", "notification_payload": {}, "pod_name": "QxevecWw", "region": "7Rry0KK5", "session_id": "rgAGO0dW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "8rX2MVUG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'KSZ4GcLk' \
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
    't4pK32sJ' \
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
