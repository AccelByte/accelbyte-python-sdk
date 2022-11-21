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
dsmc-update-image '{"artifactPath": "mOCNsOcr", "image": "OI0HZdX5", "namespace": "iDsb1fO1", "persistent": true, "version": "T4U0xbBR"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "UhHJfktG", "dockerPath": "KEsFRTgp", "image": "qvME4DRw", "imageSize": 4, "namespace": "hDmBycRL", "persistent": true, "version": "ZdLPCfFH"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "9YqjU3J7", "dockerPath": "aT5AUajj", "image": "HInoMP87", "imageSize": 7, "namespace": "BptviqbU", "patchVersion": "YeAGtY7n", "persistent": true, "version": "bXYh5mPG"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 16, "creation_timeout": 72, "default_version": "Xr0cHSrp", "port": 11, "ports": {"ZtZkGVJV": 20, "HX4iM2uA": 62, "202hwOUG": 41}, "protocol": "zT49FnuD", "providers": ["3iq8vORl", "xkdkYYmm", "rrPYVDDo"], "session_timeout": 27, "unreachable_timeout": 37}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 15, "creation_timeout": 57, "default_version": "gIa2Bg5B", "port": 34, "protocol": "fthWQY84", "providers": ["r3OJrmAr", "52Fcnv1z", "dTXl1fxU"], "session_timeout": 85, "unreachable_timeout": 48}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '20' '39' --login_with_auth "Bearer foo"
dsmc-get-deployment 'aKNlLZ96' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 84, "buffer_percent": 49, "configuration": "AkbxqFVr", "enable_region_overrides": true, "game_version": "YSqUxudd", "max_count": 97, "min_count": 80, "overrides": {"addA3yJN": {"buffer_count": 35, "buffer_percent": 99, "configuration": "9rRmtBwI", "enable_region_overrides": true, "game_version": "jLjIvpCA", "max_count": 15, "min_count": 90, "name": "5F5YJ2h7", "region_overrides": {"YPkfrSzf": {"buffer_count": 53, "buffer_percent": 42, "max_count": 32, "min_count": 1, "name": "sknmaq2S", "unlimited": true, "use_buffer_percent": true}, "T9vFGV5V": {"buffer_count": 60, "buffer_percent": 71, "max_count": 43, "min_count": 58, "name": "pAOHzY29", "unlimited": true, "use_buffer_percent": true}, "4ki1EeP8": {"buffer_count": 28, "buffer_percent": 33, "max_count": 52, "min_count": 8, "name": "Kplsb94Z", "unlimited": false, "use_buffer_percent": false}}, "regions": ["EMC4NYv4", "pWD1oqTY", "rZfSY5Fg"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": true}, "OLFBFaDC": {"buffer_count": 77, "buffer_percent": 41, "configuration": "ynKqefuN", "enable_region_overrides": true, "game_version": "FeqQcyR2", "max_count": 62, "min_count": 21, "name": "SuK1Rszn", "region_overrides": {"t2ZrXF6X": {"buffer_count": 46, "buffer_percent": 34, "max_count": 64, "min_count": 32, "name": "LR9EF6QS", "unlimited": true, "use_buffer_percent": false}, "c7vOIsQY": {"buffer_count": 8, "buffer_percent": 7, "max_count": 11, "min_count": 42, "name": "eXExqArs", "unlimited": true, "use_buffer_percent": false}, "czPEdGIj": {"buffer_count": 94, "buffer_percent": 73, "max_count": 86, "min_count": 9, "name": "sPtZ08MH", "unlimited": true, "use_buffer_percent": false}}, "regions": ["BcwKnIs0", "ymOEnNZe", "VVeAKJwF"], "session_timeout": 91, "unlimited": false, "use_buffer_percent": false}, "H9aSr5OG": {"buffer_count": 17, "buffer_percent": 78, "configuration": "UAVh8bTJ", "enable_region_overrides": true, "game_version": "SgL4oglY", "max_count": 91, "min_count": 68, "name": "znQfM9wL", "region_overrides": {"3OCgP2pf": {"buffer_count": 28, "buffer_percent": 56, "max_count": 73, "min_count": 90, "name": "AnwGGm55", "unlimited": false, "use_buffer_percent": true}, "eLVJXnln": {"buffer_count": 26, "buffer_percent": 93, "max_count": 74, "min_count": 67, "name": "m9otb2Kc", "unlimited": false, "use_buffer_percent": false}, "VWN0d1MQ": {"buffer_count": 47, "buffer_percent": 19, "max_count": 10, "min_count": 37, "name": "zlNlN6W7", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Jb21F64b", "pJhkqaeF", "tAAsfleI"], "session_timeout": 22, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"gPKZJTrQ": {"buffer_count": 92, "buffer_percent": 75, "max_count": 97, "min_count": 0, "name": "Fo5DfemT", "unlimited": true, "use_buffer_percent": false}, "899vpQgB": {"buffer_count": 50, "buffer_percent": 8, "max_count": 25, "min_count": 31, "name": "UNCMrXzg", "unlimited": true, "use_buffer_percent": false}, "5VatDYRR": {"buffer_count": 41, "buffer_percent": 70, "max_count": 62, "min_count": 17, "name": "uvtvvu32", "unlimited": true, "use_buffer_percent": true}}, "regions": ["cM3q8Icu", "ADL3GjaG", "eLhdj5JJ"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": false}' 'DTjhKTzf' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'AWww4I7P' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 0, "buffer_percent": 62, "configuration": "YJSfXs8H", "enable_region_overrides": false, "game_version": "7iNGEenP", "max_count": 18, "min_count": 77, "regions": ["Zna2E9E7", "QLAWZxVR", "tYT3EziH"], "session_timeout": 60, "unlimited": true, "use_buffer_percent": false}' 'AMftr5HW' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 57, "buffer_percent": 6, "max_count": 92, "min_count": 39, "unlimited": false, "use_buffer_percent": false}' 'PEt70LAt' 'oqu2djiS' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'k8hRCef9' 'RKbvC4Vk' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 41, "buffer_percent": 51, "max_count": 6, "min_count": 98, "unlimited": false, "use_buffer_percent": false}' '70ONoUew' 'cIuVrGrj' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 86, "buffer_percent": 91, "configuration": "4BgljTMc", "enable_region_overrides": true, "game_version": "0XhClAiz", "max_count": 56, "min_count": 85, "region_overrides": {"UsdHuXXr": {"buffer_count": 28, "buffer_percent": 31, "max_count": 7, "min_count": 28, "name": "EtFFoGPq", "unlimited": true, "use_buffer_percent": true}, "2q2Jbamo": {"buffer_count": 20, "buffer_percent": 95, "max_count": 64, "min_count": 56, "name": "XCE36mws", "unlimited": true, "use_buffer_percent": false}, "paFo2S9e": {"buffer_count": 63, "buffer_percent": 75, "max_count": 45, "min_count": 87, "name": "SrTXarJG", "unlimited": false, "use_buffer_percent": true}}, "regions": ["wqR5qv1c", "CCksCVmj", "F0aPxa4S"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": true}' 'yhgfmyd1' 'v859zBpO' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override '3zElFTgy' 'CW5w8STU' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 11, "buffer_percent": 24, "configuration": "zzOF9Is1", "enable_region_overrides": true, "game_version": "sBufKBUk", "max_count": 63, "min_count": 98, "regions": ["ls11nxEb", "D6SQxYuE", "boTJ9YAD"], "session_timeout": 64, "unlimited": false, "use_buffer_percent": true}' 'qL7tNtuk' 'gfBfxERR' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 59, "buffer_percent": 29, "max_count": 10, "min_count": 37, "unlimited": false, "use_buffer_percent": true}' 'zVKBM0I2' '7Lpj5I78' 'jmcvcoH7' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'p4Yb0QiA' 'sEMTWoQQ' '24zwXE43' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 92, "buffer_percent": 34, "max_count": 72, "min_count": 66, "unlimited": false, "use_buffer_percent": true}' 'w6WaaVyu' 'MFwghQ9P' 'xxmAVd1y' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '29' '85' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'C31NVGNX' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 63, "mem_limit": 10, "params": "Vp3A5e7v"}' 'iPjvwZFP' --login_with_auth "Bearer foo"
dsmc-delete-pod-config '1PsdOYA6' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 23, "mem_limit": 99, "name": "297GBBW9", "params": "UsITSv2W"}' 'rvEarLmW' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 85}' 'gR80yb7q' --login_with_auth "Bearer foo"
dsmc-delete-port 'ze2R4y3q' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "LfXOJcC8", "port": 84}' 'Og47GUWg' --login_with_auth "Bearer foo"
dsmc-list-images '89' '7' --login_with_auth "Bearer foo"
dsmc-delete-image 'neZpmUMz' 'MApSAMZL' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'qW22dEyo' 'L6yEYPby' 'w7BoCS4X' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'ohQaFOte' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'DV2pOlR1' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'LU9VlrEQ' 'qmvexObR' --login_with_auth "Bearer foo"
dsmc-list-server '32' '57' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'rzwAPbIw' --login_with_auth "Bearer foo"
dsmc-get-server 'HsU8gs6g' --login_with_auth "Bearer foo"
dsmc-delete-server 'C1s7lNLg' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'fRNr8ayM' --login_with_auth "Bearer foo"
dsmc-list-session '94' '22' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'twYxl5ah' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'z9u9QEhl' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "d4yuBfNT"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "jNFMf79S", "ip": "KF1Eq2s4", "name": "Mc9NOhWr", "port": 69}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "g38NNbTa", "pod_name": "bjk8Djhc"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "DtCKlU6i"}' --login_with_auth "Bearer foo"
dsmc-get-server-session '15iYjrDL' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "BjxO3mnq", "configuration": "R88lJscU", "deployment": "JpFugBrp", "game_mode": "w7b3D4ZM", "matching_allies": [{"matching_parties": [{"party_attributes": {"IvhAMPqk": {}, "oVeEWaxy": {}, "jHiGZD3f": {}}, "party_id": "gFUaUz5Z", "party_members": [{"user_id": "6nbGoDbH"}, {"user_id": "JTEnPrIf"}, {"user_id": "fk426XZY"}]}, {"party_attributes": {"ZoDiWowA": {}, "JNFW51jZ": {}, "gwfJaHWi": {}}, "party_id": "UIdvcoos", "party_members": [{"user_id": "O3aXMzzx"}, {"user_id": "M2AxcXWJ"}, {"user_id": "AAWIXxe2"}]}, {"party_attributes": {"8zbVU0Uw": {}, "Z5I1taYv": {}, "Da9I0fpm": {}}, "party_id": "RUzUQELz", "party_members": [{"user_id": "hAmcmCiF"}, {"user_id": "tRWRHaSc"}, {"user_id": "8m9p3jnm"}]}]}, {"matching_parties": [{"party_attributes": {"BvpFGgj5": {}, "HNXsm8Mt": {}, "q5iiAbUJ": {}}, "party_id": "mTrTrxQb", "party_members": [{"user_id": "pyMMW2wa"}, {"user_id": "yj7EF1nS"}, {"user_id": "yDW4rjBx"}]}, {"party_attributes": {"K0pdW7zS": {}, "Oe6iAvyq": {}, "ZwTcp0GO": {}}, "party_id": "OQTLHbdZ", "party_members": [{"user_id": "aGZdvM35"}, {"user_id": "1AAbhLLS"}, {"user_id": "5LihdGmi"}]}, {"party_attributes": {"AMt41LzG": {}, "7HGadqZh": {}, "BtRod39S": {}}, "party_id": "v5CKOV7U", "party_members": [{"user_id": "3a3Cidv9"}, {"user_id": "w2jD4rTt"}, {"user_id": "HxZQavSl"}]}]}, {"matching_parties": [{"party_attributes": {"1tRZXAcE": {}, "hYz8ZkcQ": {}, "8v0yNgRA": {}}, "party_id": "p9NNZxTF", "party_members": [{"user_id": "Le7Lca19"}, {"user_id": "91m5SPQV"}, {"user_id": "XDUXTlnS"}]}, {"party_attributes": {"fYF6vlz8": {}, "8LvmoVt1": {}, "Pz7Ynigb": {}}, "party_id": "R9oDUOsB", "party_members": [{"user_id": "pjVU2yEt"}, {"user_id": "TraMv7tv"}, {"user_id": "q6Goj64D"}]}, {"party_attributes": {"8rKqLw5u": {}, "EVV3PGsP": {}, "wMiUfBFK": {}}, "party_id": "Yc3aV6i2", "party_members": [{"user_id": "Cdt8mrGW"}, {"user_id": "UR2hSSmZ"}, {"user_id": "iTolBXM1"}]}]}], "namespace": "d7epnPNI", "notification_payload": {}, "pod_name": "Q8lUIqRy", "region": "3uxHv2Qr", "session_id": "OzGzyf4Z"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "OhHJSGjn"}' --login_with_auth "Bearer foo"
dsmc-get-session 'GD0tsPQk' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '3VAEXcwa' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "PezLD7GN", "image": "2YZr9ywz", "namespace": "A1uPUGco", "persistent": true, "version": "7aGjXlXS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "c2asrnNL", "dockerPath": "9DrvHX2q", "image": "UEMNrRhu", "imageSize": 36, "namespace": "Aj9fsxII", "persistent": true, "version": "M7sGwPEM"}' \
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
    '{"artifactPath": "PVjdo9q2", "dockerPath": "7EK3sCl3", "image": "YkcAj8LE", "imageSize": 60, "namespace": "lBNFULY0", "patchVersion": "g9P9W65E", "persistent": true, "version": "6CVfx4hq"}' \
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
    '{"claim_timeout": 36, "creation_timeout": 37, "default_version": "HUyBLxY6", "port": 25, "ports": {"IVb22Fnt": 72, "JNYhIlLf": 73, "N1zYAicA": 93}, "protocol": "umeiLqeE", "providers": ["00Qv1BLX", "CAQpxT3s", "K4HJME4F"], "session_timeout": 18, "unreachable_timeout": 23}' \
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
    '{"claim_timeout": 35, "creation_timeout": 61, "default_version": "Mis4e2IH", "port": 69, "protocol": "2EDSFzP6", "providers": ["vtC9XdiW", "8sFZdShH", "sZAsSP6X"], "session_timeout": 71, "unreachable_timeout": 56}' \
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
    '90' \
    '28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'o0L7FGu0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 23, "buffer_percent": 4, "configuration": "7v5cFuMJ", "enable_region_overrides": false, "game_version": "bMzUQiBp", "max_count": 89, "min_count": 14, "overrides": {"0ZvqWEyk": {"buffer_count": 39, "buffer_percent": 36, "configuration": "Xq86Sw7B", "enable_region_overrides": false, "game_version": "sIB4fCfK", "max_count": 21, "min_count": 77, "name": "W9gvJxO9", "region_overrides": {"k67l2U4S": {"buffer_count": 53, "buffer_percent": 29, "max_count": 74, "min_count": 43, "name": "lnVFyO6y", "unlimited": false, "use_buffer_percent": false}, "jqQRp08D": {"buffer_count": 54, "buffer_percent": 80, "max_count": 73, "min_count": 28, "name": "mM7VJKT5", "unlimited": true, "use_buffer_percent": false}, "dACL8wDC": {"buffer_count": 74, "buffer_percent": 88, "max_count": 79, "min_count": 35, "name": "TusuBc5q", "unlimited": true, "use_buffer_percent": false}}, "regions": ["lds9P5NP", "lNd5kHoF", "uUzmsaKp"], "session_timeout": 9, "unlimited": true, "use_buffer_percent": true}, "pTRTv2vy": {"buffer_count": 58, "buffer_percent": 51, "configuration": "dXjihvYP", "enable_region_overrides": false, "game_version": "Q9O1w6FJ", "max_count": 51, "min_count": 11, "name": "L3QBXDDf", "region_overrides": {"rnNh0jKH": {"buffer_count": 90, "buffer_percent": 78, "max_count": 58, "min_count": 33, "name": "pIaeCbpT", "unlimited": false, "use_buffer_percent": true}, "trCJy2bD": {"buffer_count": 67, "buffer_percent": 93, "max_count": 39, "min_count": 59, "name": "5tGBmWyY", "unlimited": true, "use_buffer_percent": false}, "ulYPqBEb": {"buffer_count": 81, "buffer_percent": 71, "max_count": 31, "min_count": 6, "name": "fl4fPnRq", "unlimited": true, "use_buffer_percent": false}}, "regions": ["KuhAVPn2", "YyceSFtZ", "Uh65igVY"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": true}, "ZiHmLNsy": {"buffer_count": 62, "buffer_percent": 3, "configuration": "kqvVXaip", "enable_region_overrides": false, "game_version": "T8pAbuom", "max_count": 4, "min_count": 60, "name": "EJqjiGUv", "region_overrides": {"UkK3Ne6D": {"buffer_count": 72, "buffer_percent": 82, "max_count": 79, "min_count": 33, "name": "RDAw1x1O", "unlimited": true, "use_buffer_percent": true}, "JvpH7con": {"buffer_count": 36, "buffer_percent": 68, "max_count": 92, "min_count": 87, "name": "iZLqCHsr", "unlimited": false, "use_buffer_percent": false}, "7RWoxXuR": {"buffer_count": 71, "buffer_percent": 6, "max_count": 53, "min_count": 78, "name": "CGYyojYC", "unlimited": false, "use_buffer_percent": false}}, "regions": ["W0MjwFiD", "4QkIFUiR", "f9OZ1AGJ"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"9h1h6liZ": {"buffer_count": 83, "buffer_percent": 33, "max_count": 52, "min_count": 68, "name": "zJVcpp4h", "unlimited": false, "use_buffer_percent": false}, "psbvf944": {"buffer_count": 85, "buffer_percent": 69, "max_count": 9, "min_count": 67, "name": "YbvcMjLO", "unlimited": true, "use_buffer_percent": true}, "uIu6FRHe": {"buffer_count": 2, "buffer_percent": 20, "max_count": 74, "min_count": 100, "name": "MTmHmqGA", "unlimited": false, "use_buffer_percent": true}}, "regions": ["QMdlD2E2", "TaVVJQ3o", "vWPG0D6Z"], "session_timeout": 82, "unlimited": true, "use_buffer_percent": true}' \
    'M0pZlBUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'qKAPinQb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 76, "buffer_percent": 7, "configuration": "vN929HlL", "enable_region_overrides": false, "game_version": "mFwiNRRf", "max_count": 56, "min_count": 68, "regions": ["YhO8ntih", "2SqrnZxx", "RP2L5IAk"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": false}' \
    'X2sTIjoP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 46, "buffer_percent": 34, "max_count": 4, "min_count": 88, "unlimited": false, "use_buffer_percent": true}' \
    'DUsaHpPQ' \
    '7tKZPYQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    '1nJvci9q' \
    'zbgvWNVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 46, "buffer_percent": 51, "max_count": 88, "min_count": 43, "unlimited": true, "use_buffer_percent": true}' \
    'b7qpiom9' \
    'cd9ubvmZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 30, "buffer_percent": 73, "configuration": "PURlQfhh", "enable_region_overrides": true, "game_version": "6QWkv9hu", "max_count": 8, "min_count": 84, "region_overrides": {"MqpqVGD1": {"buffer_count": 39, "buffer_percent": 43, "max_count": 51, "min_count": 0, "name": "xZdDME6R", "unlimited": false, "use_buffer_percent": true}, "QBehZc6C": {"buffer_count": 65, "buffer_percent": 21, "max_count": 4, "min_count": 51, "name": "TDa67GJd", "unlimited": false, "use_buffer_percent": false}, "f126Jhmj": {"buffer_count": 70, "buffer_percent": 32, "max_count": 78, "min_count": 2, "name": "s3U6uM0J", "unlimited": true, "use_buffer_percent": true}}, "regions": ["sOusQ6in", "5R265NSG", "lrfI4dOd"], "session_timeout": 23, "unlimited": true, "use_buffer_percent": true}' \
    'e9BCLs9O' \
    'pA7jFU5G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'GOOPumT3' \
    'Umy2xOou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 54, "buffer_percent": 83, "configuration": "1ri8D2O0", "enable_region_overrides": true, "game_version": "VnG23cbo", "max_count": 46, "min_count": 57, "regions": ["oJ490upu", "vp1WSP7e", "u7BHdwjW"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": false}' \
    's3Fb06DA' \
    'rIhTE51n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 48, "buffer_percent": 83, "max_count": 75, "min_count": 23, "unlimited": true, "use_buffer_percent": false}' \
    'qQk01eZS' \
    'E4T5wghG' \
    'mwBR2GRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'OLCuZSZx' \
    'K4QomKcR' \
    'zmaB3iHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 78, "buffer_percent": 80, "max_count": 96, "min_count": 14, "unlimited": true, "use_buffer_percent": true}' \
    'PS5IuzxC' \
    'o62gJWLS' \
    'SpTLWJTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '26' \
    '99' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    '9YWszoUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 33, "mem_limit": 82, "params": "eLUnPz6L"}' \
    'chbRLJSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    '2YCVqLLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 70, "mem_limit": 12, "name": "9D6gGcwC", "params": "tFwJVDik"}' \
    'u1lVyje1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 1}' \
    'jVVeSHnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'h4X2C9u5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "bUhOd7kD", "port": 21}' \
    'z05CWKFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '24' \
    '9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'Ej0b53ZQ' \
    'SRwTajgY' \
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
    '80Y7MDGt' \
    'a8AylkFz' \
    'bjVA0eb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'FjuuYFC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'CYmkoioA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'QgooLrfk' \
    'h40Z2oJ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '56' \
    '6' \
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
    'KObuioYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'AGSl6xDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'wx4TEP1b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    '9sLaDqS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetServerLogs' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '79' \
    '33' \
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
    'R2EQkWwU' \
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
    'VjPA8cA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'ImageDetailClient' test.out

#- 59 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "jjBX5F0U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeregisterLocalServer' test.out

#- 60 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "ajPSzXJU", "ip": "RuxCi6L6", "name": "2EQuwwGY", "port": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterLocalServer' test.out

#- 61 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "jgeYwSam", "pod_name": "Tq3gWM2S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RegisterServer' test.out

#- 62 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "brXy1xWw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ShutdownServer' test.out

#- 63 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'pmSsmEym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetServerSession' test.out

#- 64 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "NMfxwy1r", "configuration": "20c1Sj8B", "deployment": "FcxmoFPR", "game_mode": "RzgImbCs", "matching_allies": [{"matching_parties": [{"party_attributes": {"hP9VYyW7": {}, "Xgt1QFz6": {}, "r2onaoKj": {}}, "party_id": "qxULaqFB", "party_members": [{"user_id": "kIyl96NI"}, {"user_id": "DAJGrUnB"}, {"user_id": "ezS0TvG5"}]}, {"party_attributes": {"pKYdXsxD": {}, "8hOlo9vs": {}, "0ifI6WcC": {}}, "party_id": "iw34nPKx", "party_members": [{"user_id": "qcJ96WEx"}, {"user_id": "fCmUx4lJ"}, {"user_id": "S1gFUeHU"}]}, {"party_attributes": {"xUuOipJ5": {}, "a9Hn1u9q": {}, "ggPSm4LL": {}}, "party_id": "Rm6GF7NT", "party_members": [{"user_id": "aXVGjsFf"}, {"user_id": "NxgaLvA6"}, {"user_id": "IEyEYvgi"}]}]}, {"matching_parties": [{"party_attributes": {"w3PxameT": {}, "ly1hRP3Z": {}, "69YMFpyo": {}}, "party_id": "fXrG75se", "party_members": [{"user_id": "QRGSiBto"}, {"user_id": "bP9wdUjL"}, {"user_id": "qzUt4UqZ"}]}, {"party_attributes": {"Lc0PyNcF": {}, "2UJxYHMI": {}, "RvAex8bj": {}}, "party_id": "Y1Qgdlzk", "party_members": [{"user_id": "l2p3JYTc"}, {"user_id": "qEtYBeb8"}, {"user_id": "UJQQP3eK"}]}, {"party_attributes": {"tNuQ6yIy": {}, "uS8wXUNW": {}, "NRWBt9WC": {}}, "party_id": "oo6X3L3B", "party_members": [{"user_id": "ezrYOnwA"}, {"user_id": "lPRYM5a6"}, {"user_id": "nDp6GZfk"}]}]}, {"matching_parties": [{"party_attributes": {"SQZ5nz9m": {}, "hkqhHtTA": {}, "H4TkQdp0": {}}, "party_id": "fuFnPda7", "party_members": [{"user_id": "F5dYWzpK"}, {"user_id": "zvD5BYRX"}, {"user_id": "9CFAWHEG"}]}, {"party_attributes": {"sdgvVOGU": {}, "rTM7BKGO": {}, "PjQKG0QJ": {}}, "party_id": "3juo0jt6", "party_members": [{"user_id": "Q6kQZkm8"}, {"user_id": "TOhoOEjI"}, {"user_id": "N5EO8IVp"}]}, {"party_attributes": {"LdJevBvm": {}, "fY2YyjW1": {}, "ViGpWkGb": {}}, "party_id": "VavUWugA", "party_members": [{"user_id": "yluGYnqj"}, {"user_id": "NepYigKo"}, {"user_id": "lcV0WPug"}]}]}], "namespace": "g29haqht", "notification_payload": {}, "pod_name": "kG3JRr9q", "region": "qyqWMdXA", "session_id": "dBLEaJjl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CreateSession' test.out

#- 65 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "m9w6yBNz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ClaimServer' test.out

#- 66 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'FnbkInEH' \
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
    'uJqVVUNw' \
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
