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
dsmc-update-image '{"artifactPath": "LrJwzW5t", "image": "yGUyiMh8", "namespace": "adrKW8qI", "persistent": false, "version": "bSSZbbY6"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "2mVrfF0C", "dockerPath": "W4yXl31w", "image": "en478KWz", "imageSize": 13, "namespace": "Mz9z1nhK", "persistent": true, "version": "zMClNXNA"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "06Gsum93", "dockerPath": "jXwsfcvF", "image": "xgB1SoZ6", "imageSize": 72, "namespace": "4RthobtF", "patchVersion": "2YmHeiSL", "persistent": false, "version": "7qOkZ1E1"}' --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 44, "creation_timeout": 92, "default_version": "FIDP8a5s", "port": 45, "ports": {"yijdaaME": 25, "K57gcpVD": 21, "UU0tsVGk": 80}, "protocol": "m0CE1gf5", "providers": ["CBZuPXnZ", "YSqF48IG", "Q0oSXajt"], "session_timeout": 13, "unreachable_timeout": 6}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 99, "creation_timeout": 51, "default_version": "43en7yhL", "port": 92, "protocol": "7v8a3ufj", "providers": ["n4Hzh96j", "jldArIq9", "zYjAen6c"], "session_timeout": 69, "unreachable_timeout": 92}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '79' '15' --login_with_auth "Bearer foo"
dsmc-get-deployment 'olhp51Md' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 23, "buffer_percent": 69, "configuration": "RQfi5y4I", "enable_region_overrides": false, "game_version": "gPv0q3Ev", "max_count": 37, "min_count": 5, "overrides": {"afLJEV64": {"buffer_count": 44, "buffer_percent": 81, "configuration": "0guJzs5E", "enable_region_overrides": true, "game_version": "UWgKHhI1", "max_count": 42, "min_count": 100, "name": "zOpLMR5b", "region_overrides": {"gzKyyUhG": {"buffer_count": 6, "buffer_percent": 28, "max_count": 45, "min_count": 40, "name": "5cFReI1E", "unlimited": true, "use_buffer_percent": false}, "bsVK9JvN": {"buffer_count": 88, "buffer_percent": 70, "max_count": 10, "min_count": 39, "name": "VtcaqnES", "unlimited": false, "use_buffer_percent": false}, "9HembVc1": {"buffer_count": 87, "buffer_percent": 66, "max_count": 57, "min_count": 18, "name": "2NdQW9TW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["DGXoluTK", "6MlttLpw", "rffjgjEg"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": true}, "kwY3GRs5": {"buffer_count": 51, "buffer_percent": 26, "configuration": "xCQ1LvPq", "enable_region_overrides": true, "game_version": "GgzCCYOG", "max_count": 66, "min_count": 13, "name": "2ztdRk7j", "region_overrides": {"YxnSXuq3": {"buffer_count": 27, "buffer_percent": 3, "max_count": 14, "min_count": 64, "name": "ksocf24L", "unlimited": true, "use_buffer_percent": true}, "v0LC6enJ": {"buffer_count": 68, "buffer_percent": 24, "max_count": 34, "min_count": 79, "name": "n6v6kYPH", "unlimited": true, "use_buffer_percent": false}, "sCfHZzp0": {"buffer_count": 65, "buffer_percent": 66, "max_count": 73, "min_count": 51, "name": "phzEEfLE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["lKi9rE8S", "FtHN7IPG", "0OtNEuNp"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": false}, "Imi6d56e": {"buffer_count": 65, "buffer_percent": 1, "configuration": "oeVKfqkQ", "enable_region_overrides": true, "game_version": "nrbAXZyN", "max_count": 16, "min_count": 81, "name": "Jo8qPDxH", "region_overrides": {"HyEJ4oHj": {"buffer_count": 19, "buffer_percent": 20, "max_count": 27, "min_count": 29, "name": "SmvWodQC", "unlimited": false, "use_buffer_percent": false}, "bnEY9jzj": {"buffer_count": 16, "buffer_percent": 62, "max_count": 45, "min_count": 42, "name": "JtrLi48x", "unlimited": true, "use_buffer_percent": true}, "rZKnzjDz": {"buffer_count": 37, "buffer_percent": 85, "max_count": 76, "min_count": 72, "name": "hJoVvdoN", "unlimited": false, "use_buffer_percent": false}}, "regions": ["NGVo9blt", "4TJijl9e", "xBHf8Lal"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"itKwFUrt": {"buffer_count": 19, "buffer_percent": 18, "max_count": 13, "min_count": 16, "name": "DCgeGf7Z", "unlimited": true, "use_buffer_percent": true}, "zD4nK7Ce": {"buffer_count": 5, "buffer_percent": 33, "max_count": 48, "min_count": 49, "name": "YgnaF7AL", "unlimited": true, "use_buffer_percent": true}, "l7Vb4VWb": {"buffer_count": 82, "buffer_percent": 93, "max_count": 24, "min_count": 84, "name": "vwaoKHmN", "unlimited": false, "use_buffer_percent": true}}, "regions": ["vwX3svRI", "hr1n23Rc", "Fsx4q7ZY"], "session_timeout": 32, "unlimited": false, "use_buffer_percent": false}' 'Iu8GZjPG' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'sOFl660x' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 33, "buffer_percent": 87, "configuration": "aja1fKId", "enable_region_overrides": false, "game_version": "lfKk4rQw", "max_count": 83, "min_count": 5, "regions": ["DtJTlC7O", "Xo2wh4Or", "bmcEZqI7"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": true}' 'ep1uxH2D' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 92, "buffer_percent": 64, "max_count": 72, "min_count": 76, "unlimited": false, "use_buffer_percent": true}' 'untENWpn' 'OZuytMaE' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'GLX0v8NA' 'pV5LGsRz' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 59, "buffer_percent": 77, "max_count": 55, "min_count": 83, "unlimited": false, "use_buffer_percent": true}' 'lPcVM9QL' 'LIRsg2BL' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 85, "buffer_percent": 41, "configuration": "4LgriPGa", "enable_region_overrides": false, "game_version": "zQggWmdc", "max_count": 14, "min_count": 49, "region_overrides": {"THmCEp84": {"buffer_count": 55, "buffer_percent": 37, "max_count": 99, "min_count": 40, "name": "dJiNlFih", "unlimited": true, "use_buffer_percent": false}, "FTDtt4HQ": {"buffer_count": 44, "buffer_percent": 97, "max_count": 13, "min_count": 65, "name": "UjZuggvU", "unlimited": false, "use_buffer_percent": false}, "oTYCgf0c": {"buffer_count": 93, "buffer_percent": 71, "max_count": 69, "min_count": 71, "name": "Kd0Xbboc", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Eol43SM1", "2mk6xU00", "iKYaEhtX"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": false}' 'tpCm0EZK' 'ajZ3agTz' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override '3tt8Uzd8' 'mQJV9CHd' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 28, "buffer_percent": 31, "configuration": "8fNDnB4n", "enable_region_overrides": false, "game_version": "qLSQ0UWP", "max_count": 38, "min_count": 20, "regions": ["6oBKlyNb", "dtUUNXXf", "beLyaKJo"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": true}' 'cK1K1lZ1' 'V8Vy40O1' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 6, "buffer_percent": 50, "max_count": 19, "min_count": 40, "unlimited": false, "use_buffer_percent": true}' 'rG8tyxgf' 'lowSWthU' 'HQeWl99G' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'GTknQ17V' 'ad3PdqLb' 'QA5ksN3t' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 55, "buffer_percent": 50, "max_count": 55, "min_count": 95, "unlimited": false, "use_buffer_percent": true}' 'bL9DyT23' 'qWapKWXv' 'Rj3b9CoT' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '77' '32' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'mBlgXytq' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 46, "mem_limit": 85, "params": "G4blbBVD"}' 'qNq53p2I' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'Ip13TkUj' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 99, "mem_limit": 6, "name": "rJsfpuPO", "params": "mcfaJXU3"}' 'oDglTyOD' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 82}' 'IvrZOckz' --login_with_auth "Bearer foo"
dsmc-delete-port 'scfnOgok' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "sHi0a3Q9", "port": 91}' '8F3vMvgw' --login_with_auth "Bearer foo"
dsmc-list-images '88' '95' --login_with_auth "Bearer foo"
dsmc-delete-image 'R6eNnX8k' 'Rocg8U3z' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'uNl6WpUL' 'aYuSUUVr' 'InpZH5qI' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'LwsQcbBm' --login_with_auth "Bearer foo"
dsmc-get-image-patches '6rmOWKTJ' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'TpwnMCtr' 'MOxSb94t' --login_with_auth "Bearer foo"
dsmc-list-server '37' '56' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'qzj3KhQs' --login_with_auth "Bearer foo"
dsmc-get-server '0gnDXYb1' --login_with_auth "Bearer foo"
dsmc-delete-server 'UhYPnkF6' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'dZpn5UyX' --login_with_auth "Bearer foo"
dsmc-list-session '27' '66' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'lDeQjTRJ' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'L5y2daoy' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "Sm6UPDdc"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "sI2KLypS", "ip": "Yjk6KZDu", "name": "KF1MlB9L", "port": 83}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "Zfv97vmJ", "pod_name": "VsuULdsf"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "OEGSUUc0"}' --login_with_auth "Bearer foo"
dsmc-get-server-session '8kkDwVvk' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "fvotUn92", "configuration": "069KWb0L", "deployment": "O5dR25eh", "game_mode": "AOeOW2Au", "matching_allies": [{"matching_parties": [{"party_attributes": {"697CvHeo": {}, "UTRDcyW8": {}, "CJzEeEJ9": {}}, "party_id": "96erISAC", "party_members": [{"user_id": "LhRl4g3u"}, {"user_id": "wUaLxl5O"}, {"user_id": "DnJG1Bzo"}]}, {"party_attributes": {"Za1DCCTC": {}, "JyaVPaT6": {}, "X6DZOJpY": {}}, "party_id": "14ZuhRPP", "party_members": [{"user_id": "DdqjfQMI"}, {"user_id": "48XePa6i"}, {"user_id": "rrWn1oUO"}]}, {"party_attributes": {"erZvWrel": {}, "SktPk48B": {}, "8tDx2RbX": {}}, "party_id": "2izlWRRM", "party_members": [{"user_id": "ulrE7A4v"}, {"user_id": "8NmOkNJZ"}, {"user_id": "hqRACK3i"}]}]}, {"matching_parties": [{"party_attributes": {"dkJ4dqGv": {}, "YsHsWine": {}, "bYHetbFh": {}}, "party_id": "m3dBS6xm", "party_members": [{"user_id": "W6QMtyn2"}, {"user_id": "o4d4sN0C"}, {"user_id": "VRpoAVdd"}]}, {"party_attributes": {"oyEhEOz2": {}, "vxbDqlRm": {}, "mGLuMELH": {}}, "party_id": "dWNM0c5w", "party_members": [{"user_id": "a8oqCzOj"}, {"user_id": "6Ns1D2ni"}, {"user_id": "QGKIVYT5"}]}, {"party_attributes": {"WgL58iFa": {}, "RawOTIA6": {}, "HrcInUWb": {}}, "party_id": "C7Dg2gpI", "party_members": [{"user_id": "Rhu0PvRc"}, {"user_id": "m9GihN81"}, {"user_id": "BmZ4BngM"}]}]}, {"matching_parties": [{"party_attributes": {"VUZc3mBS": {}, "r82HqQJM": {}, "0r61H2nw": {}}, "party_id": "tZtHxKnj", "party_members": [{"user_id": "pzTGNC7a"}, {"user_id": "rrn7LX9z"}, {"user_id": "QAAyZN5P"}]}, {"party_attributes": {"57wt5iu6": {}, "ylj5fwxs": {}, "IuB7hPZa": {}}, "party_id": "BMgWDoYd", "party_members": [{"user_id": "3dRZMVnX"}, {"user_id": "PtJOkmpz"}, {"user_id": "GZr7R3Mw"}]}, {"party_attributes": {"sBrHhZvn": {}, "kKSzLMLe": {}, "lxajFYSU": {}}, "party_id": "2hhteg4V", "party_members": [{"user_id": "UvrdBUvT"}, {"user_id": "Q4MthBia"}, {"user_id": "aK40N7mi"}]}]}], "namespace": "41pYVWLe", "notification_payload": {}, "pod_name": "xAh9QACf", "region": "5ZipCA1J", "session_id": "L9zwpJof"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "Z8D8zrle"}' --login_with_auth "Bearer foo"
dsmc-get-session 'ivWCdR9Y' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'TRk7vaWI' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "D0YZVXD0", "image": "Rkkzoy94", "namespace": "Z6vFblHJ", "persistent": true, "version": "ipcnP58w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "YqP8y57h", "dockerPath": "FKdRCUR9", "image": "A15huyUz", "imageSize": 16, "namespace": "HCCxCIls", "persistent": false, "version": "pTagmqXr"}' \
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
    '{"artifactPath": "nOP1zMXB", "dockerPath": "kcXhabPM", "image": "0qF0c6tC", "imageSize": 67, "namespace": "8dljYBLZ", "patchVersion": "nRxICGov", "persistent": true, "version": "wJh7150t"}' \
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
    '{"claim_timeout": 74, "creation_timeout": 87, "default_version": "TuN0scSM", "port": 16, "ports": {"BJPMxrxC": 28, "Dez90Hk7": 64, "VuvLWLHZ": 88}, "protocol": "8WWkhDWq", "providers": ["jWXhjp26", "3tljtrBs", "biWN6ol8"], "session_timeout": 19, "unreachable_timeout": 58}' \
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
    '{"claim_timeout": 68, "creation_timeout": 90, "default_version": "FKzh5Zbc", "port": 4, "protocol": "hzLb8eZM", "providers": ["vdINrOhz", "aQ22Xarx", "JVOe5lSZ"], "session_timeout": 46, "unreachable_timeout": 65}' \
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
    '14' \
    '16' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'wrThebnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 87, "buffer_percent": 83, "configuration": "yxu3Umn0", "enable_region_overrides": true, "game_version": "uDNe7oSD", "max_count": 54, "min_count": 56, "overrides": {"ssR3BLye": {"buffer_count": 75, "buffer_percent": 12, "configuration": "XaFqS6zu", "enable_region_overrides": false, "game_version": "adTvHxg3", "max_count": 2, "min_count": 95, "name": "lI62intN", "region_overrides": {"uil3u2di": {"buffer_count": 92, "buffer_percent": 26, "max_count": 93, "min_count": 31, "name": "ISYsaJlF", "unlimited": false, "use_buffer_percent": false}, "xxDVjlXg": {"buffer_count": 63, "buffer_percent": 99, "max_count": 36, "min_count": 20, "name": "5c7cCkt6", "unlimited": false, "use_buffer_percent": true}, "0MhXbnIx": {"buffer_count": 32, "buffer_percent": 25, "max_count": 8, "min_count": 29, "name": "FRJflvbj", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Rb0W0q5J", "GIIHrtvT", "Ovc78usz"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": false}, "5CHXFEGi": {"buffer_count": 54, "buffer_percent": 60, "configuration": "2Vy7uE8G", "enable_region_overrides": true, "game_version": "90izS8o8", "max_count": 36, "min_count": 29, "name": "mmXpnCt8", "region_overrides": {"7PcMx8f1": {"buffer_count": 74, "buffer_percent": 23, "max_count": 54, "min_count": 70, "name": "JZyynGMQ", "unlimited": false, "use_buffer_percent": false}, "WASHJpit": {"buffer_count": 65, "buffer_percent": 36, "max_count": 5, "min_count": 76, "name": "8a3RFjgU", "unlimited": false, "use_buffer_percent": false}, "rY2alJqY": {"buffer_count": 93, "buffer_percent": 93, "max_count": 20, "min_count": 53, "name": "RriRykhm", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ayalbb0M", "dDUGseEF", "SQmmYwSb"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": false}, "BHmSYYAy": {"buffer_count": 91, "buffer_percent": 33, "configuration": "63xe0bAT", "enable_region_overrides": true, "game_version": "Ns1VJHOq", "max_count": 42, "min_count": 67, "name": "QJXDiU4T", "region_overrides": {"7fSkd6gE": {"buffer_count": 30, "buffer_percent": 0, "max_count": 29, "min_count": 88, "name": "qUMka4tg", "unlimited": true, "use_buffer_percent": true}, "PQCHikhA": {"buffer_count": 48, "buffer_percent": 51, "max_count": 8, "min_count": 80, "name": "FbavnLN6", "unlimited": false, "use_buffer_percent": false}, "Kzuqqe65": {"buffer_count": 63, "buffer_percent": 15, "max_count": 60, "min_count": 15, "name": "jL50e4fB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["mFKYTJBu", "k5MkyzuN", "sRtq8Aog"], "session_timeout": 81, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"ww4tODV3": {"buffer_count": 26, "buffer_percent": 50, "max_count": 28, "min_count": 87, "name": "FR51A6bN", "unlimited": false, "use_buffer_percent": true}, "brimyLr3": {"buffer_count": 84, "buffer_percent": 14, "max_count": 16, "min_count": 16, "name": "cSKxwDSs", "unlimited": false, "use_buffer_percent": false}, "4KClPzVO": {"buffer_count": 5, "buffer_percent": 15, "max_count": 36, "min_count": 26, "name": "sPwflf45", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Vu7RIVCM", "6VLwkq9e", "5qXYvnsQ"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}' \
    'UZGqhAH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'bsOuAoBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 61, "buffer_percent": 43, "configuration": "ZBOMT5bE", "enable_region_overrides": true, "game_version": "4cbJkdvd", "max_count": 56, "min_count": 48, "regions": ["0CHWkl7A", "hBL3iFW5", "eANbtRYJ"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": false}' \
    'q2Zdli3w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 25, "buffer_percent": 78, "max_count": 92, "min_count": 27, "unlimited": false, "use_buffer_percent": true}' \
    'xSUMh7DN' \
    'XYPoARvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'AvfmXAj7' \
    'vt8qKz24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 36, "buffer_percent": 91, "max_count": 70, "min_count": 65, "unlimited": false, "use_buffer_percent": true}' \
    'zssncdpl' \
    'L5Bzh80i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 65, "buffer_percent": 72, "configuration": "DgljMxO7", "enable_region_overrides": false, "game_version": "DAEPex0N", "max_count": 49, "min_count": 35, "region_overrides": {"x5O1mwq8": {"buffer_count": 82, "buffer_percent": 97, "max_count": 30, "min_count": 99, "name": "WjBdUKm5", "unlimited": false, "use_buffer_percent": true}, "g3PaiM9Z": {"buffer_count": 80, "buffer_percent": 86, "max_count": 78, "min_count": 19, "name": "GbSnfvb7", "unlimited": true, "use_buffer_percent": true}, "MpnHvpN4": {"buffer_count": 58, "buffer_percent": 68, "max_count": 6, "min_count": 4, "name": "9lYaJ1ac", "unlimited": true, "use_buffer_percent": false}}, "regions": ["d3P47q6a", "tfbIoQG0", "0xqbrHBW"], "session_timeout": 42, "unlimited": false, "use_buffer_percent": false}' \
    'DSSh4u8o' \
    'KqrT4joU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'Vxs09HWy' \
    'A2A6cdak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 75, "buffer_percent": 50, "configuration": "ZpbI8Su3", "enable_region_overrides": false, "game_version": "NG2urP87", "max_count": 71, "min_count": 34, "regions": ["51SSxPdP", "MbMecBVo", "8qV8cN5l"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}' \
    'hHQ86feE' \
    'NFcKkTRo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 42, "buffer_percent": 27, "max_count": 100, "min_count": 61, "unlimited": false, "use_buffer_percent": false}' \
    'bD3AEn63' \
    'vUj3kkZc' \
    '2G8qzxrU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'Hiyv1wUW' \
    '9RXri7oM' \
    'AmHulH4T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 76, "buffer_percent": 96, "max_count": 92, "min_count": 90, "unlimited": true, "use_buffer_percent": false}' \
    '9WIWKAAp' \
    '5exdVfGQ' \
    'HqxYksqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '87' \
    '65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'mmRrCLRS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 10, "mem_limit": 16, "params": "TFwQIjYM"}' \
    'tMiBaO5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'uNWtnovV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 63, "mem_limit": 1, "name": "vlFX5iud", "params": "NebR4DZ7"}' \
    'xyz6cvPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 16}' \
    'D7Qnf2UE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'qxC6ljWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "2G8I4Pat", "port": 50}' \
    'aZnp33Ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '71' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'AJd8bKmx' \
    'yTVWwY7j' \
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
    '1aQrkZ3U' \
    'mGrkgNU1' \
    'CVktuNW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'ZMu8qdZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'qzX2pu9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    '5h1DQzAX' \
    'LPR9Y1qW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '68' \
    '63' \
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
    'Vs3aoplD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'K5fMbRFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'r2kjmWH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
$PYTHON -m $MODULE 'dsmc-get-server-logs' \
    'HAx5OFrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '71' \
    '33' \
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
    'VXx4Xhto' \
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
    'ScjYhtk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "Vfn6bOxJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "lpBsFgto", "ip": "VWBG1AAc", "name": "1XP9uzmy", "port": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "Kv1vCrJG", "pod_name": "Lf1DWflk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "eDdDP9vJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    '1nL8YkNs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "oFJknkj4", "configuration": "4XKHIgpI", "deployment": "inyM7BWP", "game_mode": "SWAw52PV", "matching_allies": [{"matching_parties": [{"party_attributes": {"zDiHQ4rZ": {}, "4vinjZHO": {}, "0nyMemrS": {}}, "party_id": "rzBbETKH", "party_members": [{"user_id": "IaXpARSU"}, {"user_id": "vKm6LWFz"}, {"user_id": "OVpCy2FK"}]}, {"party_attributes": {"fVETwdv9": {}, "Rq2YVDfv": {}, "6G7xD9qH": {}}, "party_id": "YrEXvMoW", "party_members": [{"user_id": "qrI5gmE6"}, {"user_id": "IADzr5Dk"}, {"user_id": "nnkuDhgS"}]}, {"party_attributes": {"bmEToaWr": {}, "rgpALC6W": {}, "t2dbyO0v": {}}, "party_id": "LnGoTGY9", "party_members": [{"user_id": "E8961tWs"}, {"user_id": "uux8LcmQ"}, {"user_id": "iDyXd1bt"}]}]}, {"matching_parties": [{"party_attributes": {"8w0kP3Il": {}, "I0FhNnS5": {}, "xMIvVxwC": {}}, "party_id": "n3nkzgSM", "party_members": [{"user_id": "K90Hud8M"}, {"user_id": "uspVPSPn"}, {"user_id": "LaNbnq2e"}]}, {"party_attributes": {"X7tG5dnc": {}, "Q8lxXhu6": {}, "x64tp6NM": {}}, "party_id": "jTcZbb0o", "party_members": [{"user_id": "zDxkXMBT"}, {"user_id": "0ujtb5qF"}, {"user_id": "9AVqbFav"}]}, {"party_attributes": {"S586B9WE": {}, "8djwsP3f": {}, "0vOmY4Pu": {}}, "party_id": "zuv54Xzb", "party_members": [{"user_id": "NHEhFhb3"}, {"user_id": "OXmYX9ww"}, {"user_id": "wdhwkTAO"}]}]}, {"matching_parties": [{"party_attributes": {"cB1yXsBi": {}, "ox5GOwGH": {}, "IIHRRBry": {}}, "party_id": "NsTa8Qgp", "party_members": [{"user_id": "KImQmFpI"}, {"user_id": "kYd96ADf"}, {"user_id": "PTn8WsB8"}]}, {"party_attributes": {"xbLS3bka": {}, "C8kCb6Rt": {}, "pNEf152a": {}}, "party_id": "8UD62wCz", "party_members": [{"user_id": "uuCdVehh"}, {"user_id": "EJyWvdCs"}, {"user_id": "4jo7nF2S"}]}, {"party_attributes": {"Bnspa6X0": {}, "lchxoivn": {}, "ig6il59a": {}}, "party_id": "nSsxnjJ2", "party_members": [{"user_id": "9kYRMnGU"}, {"user_id": "WRKAJdDi"}, {"user_id": "ES6jkeSw"}]}]}], "namespace": "QehzRGPr", "notification_payload": {}, "pod_name": "jwqlsyQD", "region": "t3bFAE28", "session_id": "2VE6cENZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "XzoNvTwA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'Ydg6R0xt' \
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
    'fclWKLiy' \
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
