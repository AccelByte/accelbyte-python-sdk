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
social-get-namespace-slot-config --login_with_auth "Bearer foo"
social-update-namespace-slot-config --body '{"maxSlotSize": 64, "maxSlots": 68}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'zW0FyrhV' --login_with_auth "Bearer foo"
social-update-user-slot-config 'FeC9tklU' --body '{"maxSlotSize": 56, "maxSlots": 93}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'GQSsVsNI' --login_with_auth "Bearer foo"
social-get-user-profiles '4EtqWnrd' --login_with_auth "Bearer foo"
social-get-profile '8tZZgZPU' 'rbU3BhHH' --login_with_auth "Bearer foo"
social-get-user-namespace-slots '56lOY73J' --login_with_auth "Bearer foo"
social-get-slot-data 'hZGLvVAq' 'ihrH1JcI' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["FVUUt4JB", "RBsTslks", "XTin0W3Y"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'vMe2sgwQ' --login_with_auth "Bearer foo"
social-public-create-profile '6skrm40B' --body '{"achievements": ["Uvpy3FFc", "LTMhq5Y3", "MVNqb6rR"], "attributes": {"23DrV6z6": "ifrv71kL", "DdEeRQNO": "2QbxA8xc", "NWui1JhC": "dMatG6yW"}, "avatarUrl": "0Q1P8Rlx", "inventories": ["tCBrJsLI", "vwCZ0qQT", "GNEJUsZ3"], "label": "onD6TNFE", "profileName": "HNMNhftb", "statistics": ["DxD1EMdP", "tNA62eGU", "jeCckIa0"], "tags": ["0xm1Ymv4", "pZ5CyEzD", "rRlYR9eM"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'B3IjFnJk' 'syJ66alN' --login_with_auth "Bearer foo"
social-public-update-profile 'YovceQsi' '2pnJpK2O' --body '{"achievements": ["FOa4QyXV", "OtNeizwZ", "7rpiggE9"], "attributes": {"pI0s03rq": "wVWqvMQZ", "zb5XX4xz": "M2aXYO4f", "2289adHm": "uMVuXMmx"}, "avatarUrl": "TxT0MbXe", "inventories": ["aJPTEhf8", "PSWDhGHO", "sBfmbeJT"], "label": "XIelGbXV", "profileName": "Tyaw8a2U", "statistics": ["BwQ10zpY", "g1C5ihO3", "EoOvpQ96"], "tags": ["rFvNi9Mt", "IfJH2yqz", "NBY7Id25"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'roXQCjUF' 'MLqxo1ai' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'bd4k8cE0' 'fPpIyYyJ' 'cndCigbg' --login_with_auth "Bearer foo"
social-public-update-attribute '3TLXOwNe' 'F4UgLlnU' '3WSM85u6' --body '{"name": "5fJwTRrI", "value": "JXoY5JwD"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'spoq9V3S' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'L3WyRT3Y' --login_with_auth "Bearer foo"
social-public-get-slot-data 'VfK95yoC' 'OW8dLtON' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'Hdutvs4n' 'Bf0d6apg' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'NHJZeDt0' '9JuvSlYr' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'xXZYrfQ3' 'Y6GUTmZG' --body '{"customAttribute": "pdnjMdJu", "label": "bCToIou9", "tags": ["eGflQYTj", "xBBDbz8i", "VN8rgIQQ"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'CnEVqZX3' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'SynCpe9c' 'uRK8l7Ss' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.6582191649195145, "statCode": "p68tlsHl", "userId": "NahrFLce"}, {"inc": 0.9240107608736357, "statCode": "EqEyetQ7", "userId": "6NrCxt3J"}, {"inc": 0.4028266972457345, "statCode": "6VUzJucY", "userId": "AL3vnLUn"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.22044289929932936, "statCode": "6i0G40jL", "userId": "DVlUG8Nh"}, {"inc": 0.3357444271294048, "statCode": "tUjl2SOB", "userId": "D07mtt7P"}, {"inc": 0.42131263269730024, "statCode": "CX0lAgpZ", "userId": "KAJdZ5g1"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'urxaIDda' '["X4J5rpVX", "wlnVy9Lx", "zqQvxENE"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "smLdK33H", "userId": "furbupn9"}, {"statCode": "WNR5KbtM", "userId": "22xxPbiN"}, {"statCode": "fmGKXbAG", "userId": "bvyJekQk"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.35870335483902704, "description": "HMuBDgzD", "incrementOnly": true, "maximum": 0.34194765172226305, "minimum": 0.12840593049507298, "name": "ZUgtbd2v", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "9PdpJg26", "tags": ["5cWbD21X", "58q9zDdB", "h0hGPYFS"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'NHcorPrz' --login_with_auth "Bearer foo"
social-get-stat 'Mr4FrylL' --login_with_auth "Bearer foo"
social-delete-stat 'ySGtlec4' --login_with_auth "Bearer foo"
social-update-stat 'bhvnj3uo' --body '{"defaultValue": 0.8592979489885344, "description": "fPDy45Eh", "name": "HedY5OKc", "tags": ["NPHDJuYA", "pgwGPsA7", "lKTZP48z"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'EZdPUk3n' --login_with_auth "Bearer foo"
social-get-user-stat-items '8fAyr9E6' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'EVtZSEw4' --body '[{"statCode": "D24FZ2ta"}, {"statCode": "N90DcoEw"}, {"statCode": "MlCblRyw"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'kTdWivqV' --body '[{"inc": 0.8503276076837774, "statCode": "XMvoFdkX"}, {"inc": 0.7406309309347265, "statCode": "39geNZkW"}, {"inc": 0.9849443020644848, "statCode": "JnyXvQib"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'y0elaHv5' --body '[{"inc": 0.105596860823576, "statCode": "wpFW7VJv"}, {"inc": 0.5961180023957284, "statCode": "bak88puQ"}, {"inc": 0.575568566956583, "statCode": "sbcjFGwl"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '6g0UkGjm' --body '[{"statCode": "IEZaPmT1"}, {"statCode": "vnNTfPMA"}, {"statCode": "A50d4EMK"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'A6kjvbEt' 'uANilaBG' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'pcXIHDZp' 'rBdJqRVU' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'hoVDLgxc' 'KVjoFk4Y' --body '{"inc": 0.09573595508290367}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'fouciqup' 'j2iZAPNa' --body '{"additionalData": {"rCn07Zab": {}, "3BTum7vx": {}, "tGoJNzCb": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'zIl431Yh' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'FyY9DGTI' 'jE1LJhXn' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.8089692504842141, "statCode": "L5NcbGNN", "userId": "5vlzOD7B"}, {"inc": 0.4005425199209405, "statCode": "pJPN50hL", "userId": "lHdOo9fO"}, {"inc": 0.1650844441981809, "statCode": "AsX7d7F9", "userId": "NMHpN4Wp"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.448657107691678, "statCode": "meqV9ISD", "userId": "THNv4uyU"}, {"inc": 0.2985565629723518, "statCode": "hiN2pGY4", "userId": "7lxyTtgu"}, {"inc": 0.04179462856164917, "statCode": "kfFzKDtz", "userId": "V3BWsUk4"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "rig9pRiz", "userId": "9bqZmxz1"}, {"statCode": "sZO4ztli", "userId": "X6QJP64z"}, {"statCode": "L9Oc9fNR", "userId": "3crXbu8B"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.5825991185105001, "description": "SBkirj0V", "incrementOnly": true, "maximum": 0.20295302982408758, "minimum": 0.5225796901133549, "name": "VxelAIht", "setAsGlobal": true, "setBy": "SERVER", "statCode": "EDP5isGq", "tags": ["hz8t1igy", "7vRGg8vJ", "481S0wLT"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'AL33of6b' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'ZOXAkzdi' --body '[{"statCode": "3AmQ8DU8"}, {"statCode": "BQMZa17B"}, {"statCode": "4lvcxIL3"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'jC8Fbj71' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'yQ3c3n8q' --body '[{"inc": 0.7816147038219964, "statCode": "hy2aM3yw"}, {"inc": 0.14865651228212795, "statCode": "OE0yW50m"}, {"inc": 0.46768656500033834, "statCode": "ML9TM1Nk"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'trnMFgba' --body '[{"inc": 0.4998504859723981, "statCode": "LXQ8ezXT"}, {"inc": 0.2621864212395184, "statCode": "JCckyP1h"}, {"inc": 0.7961364665491714, "statCode": "rk2cTQIa"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'y5r6SDqA' --body '[{"statCode": "7sJuJCVv"}, {"statCode": "GupfWdaK"}, {"statCode": "lAhuhxsx"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'Dkrkgmi5' 't2JG9rB9' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'DS8s6Flv' 'nmpWLZlj' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'r7MMrhqd' 'x3RfkgPg' --body '{"inc": 0.2544780539666789}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'U8xlJxNC' 'QSE0WEl0' --body '{"inc": 0.33489362799726474}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'g9kNbcps' 'MMUxsHxg' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"kp473AL5": {}, "NgtHM8EN": {}, "wRlY6aN6": {}}, "additionalKey": "mq8fAC0f", "statCode": "FUFHGODX", "updateStrategy": "MIN", "userId": "IHUQ3SVU", "value": 0.6542000745128059}, {"additionalData": {"drBVBdnk": {}, "Dxnr1wbt": {}, "vglFUMDL": {}}, "additionalKey": "lGePEeov", "statCode": "YMw33R62", "updateStrategy": "MIN", "userId": "J8W46pij", "value": 0.20508805774231187}, {"additionalData": {"OW0rywgB": {}, "vdFXE6UO": {}, "AKlkocAu": {}}, "additionalKey": "2AQrjPox", "statCode": "6UIKTIg4", "updateStrategy": "OVERRIDE", "userId": "EAgLbJ4A", "value": 0.9114233744233041}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'JfFS2tYL' '["IGPzEVNc", "McxXuBb3", "dPXGBR7L"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'waPxxYxd' --body '[{"additionalData": {"tqbDiUWH": {}, "LEkyr6po": {}, "EbgGipvk": {}}, "statCode": "hC5aNDZm", "updateStrategy": "INCREMENT", "value": 0.8358555022905055}, {"additionalData": {"QK3VZYuI": {}, "5CMATeZH": {}, "tXpOcSCh": {}}, "statCode": "TH3fBDs7", "updateStrategy": "OVERRIDE", "value": 0.5882666929353496}, {"additionalData": {"BppFkrxF": {}, "CbbRoY3Q": {}, "M8DSS2yD": {}}, "statCode": "98FKsUOO", "updateStrategy": "MAX", "value": 0.7819650711785014}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'Tlc6R37q' --body '[{"additionalData": {"lm4dTN8j": {}, "u3OR82kL": {}, "n4WUgZNa": {}}, "statCode": "VlErQTXC"}, {"additionalData": {"VqYbiyPw": {}, "q7NJv3kP": {}, "sjWBwjEZ": {}}, "statCode": "1LeuJ4Xp"}, {"additionalData": {"7d732aRS": {}, "jhXeiONI": {}, "U8bmSYY6": {}}, "statCode": "aa9be8aN"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'vqGxLmJq' 'PPvjZqG4' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '8mejJYB8' 'aiGu8fOS' --body '{"additionalData": {"fRo7uZ7u": {}, "raxN5W3o": {}, "2907UAuh": {}}, "updateStrategy": "INCREMENT", "value": 0.9921766323116972}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"OYhgTl1R": {}, "2EtlqcC9": {}, "MJBxkGrA": {}}, "additionalKey": "QMxFqSjG", "statCode": "81EDeJnK", "updateStrategy": "OVERRIDE", "userId": "VGJwGsID", "value": 0.4873302050314159}, {"additionalData": {"zcM79A7W": {}, "FfvNrgje": {}, "a8vVMa3Y": {}}, "additionalKey": "twg5LuxH", "statCode": "5Tn8k1Ll", "updateStrategy": "INCREMENT", "userId": "Ev5dZAPN", "value": 0.8057484815124424}, {"additionalData": {"RQc8lxRh": {}, "MQNppZMj": {}, "Cs586uyY": {}}, "additionalKey": "4XNWnLeF", "statCode": "5WfrkpVr", "updateStrategy": "MAX", "userId": "2stxq8CZ", "value": 0.6215263503865255}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'VeOohPMb' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '7rkCa4hD' --body '[{"additionalData": {"4KDhIRKp": {}, "jRemHFQR": {}, "ijHkytMC": {}}, "statCode": "I2PqEZSi", "updateStrategy": "MAX", "value": 0.3618682208870365}, {"additionalData": {"yAHNcKNA": {}, "hVmWXcQC": {}, "HrPJGKG6": {}}, "statCode": "6RvotGLm", "updateStrategy": "INCREMENT", "value": 0.8482767471447723}, {"additionalData": {"5Sj4bOzL": {}, "DtXeEXPm": {}, "S8u81QxS": {}}, "statCode": "F0gCPvlV", "updateStrategy": "MIN", "value": 0.9190445468826678}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'UuJCIm1b' 'JGyDhn1z' --body '{"additionalData": {"iQX9UFbj": {}, "2ew6Z9YH": {}, "AAVmNV9g": {}}, "updateStrategy": "MIN", "value": 0.21500228403115973}' --login_with_auth "Bearer foo"
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
echo "1..78"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 37, "maxSlots": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
$PYTHON -m $MODULE 'social-delete-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
$PYTHON -m $MODULE 'social-get-user-slot-config' \
    'F66ela11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'YkCvFl5H' \
    --body '{"maxSlotSize": 68, "maxSlots": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    '24V8osbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'cqutcvPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'pgc5tEaG' \
    'hNyifUQB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'etyVR1aW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'SlelupmJ' \
    'KwBXzmbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["xJ1q0MtL", "UjWS8fMI", "VpyjD7i2"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'cdgm1hbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    '6R6Mc4LD' \
    --body '{"achievements": ["jbZlK3fK", "12QZ8Aqt", "PUyy07MC"], "attributes": {"JxKh6HkG": "JB5ZYGmm", "Q3QXWAOK": "FhMASPjH", "w5oe8Ax3": "MwxQiHma"}, "avatarUrl": "f1LGIaOl", "inventories": ["ZebGAuAF", "MT83Myz2", "4eNHM142"], "label": "kZfvYLCU", "profileName": "V4gGlRCc", "statistics": ["eweaAodn", "3beEdd7o", "fU1ButAE"], "tags": ["0FKYqmP4", "AoQgY4Kl", "JtbDmBNJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'dSLx9VSh' \
    'uRvKNQ8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'VGIxRfCy' \
    'BUM0x7WP' \
    --body '{"achievements": ["AIWoMaw6", "JTwVunkg", "j8ng49xm"], "attributes": {"bShJm6eq": "5ReFZtEu", "6pDupO4y": "OaIR1Ms1", "tthghIrr": "URaMTITO"}, "avatarUrl": "3iEWfVyK", "inventories": ["1ILrpbfu", "Bj8EgPeJ", "AdsVbOIn"], "label": "PphbfjzG", "profileName": "sCgmVUQ6", "statistics": ["iy6FM0g5", "zIxDuGWT", "1bJTLW21"], "tags": ["NcfJtlb1", "0buUPzzg", "vPwtgyXQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'tOYppubp' \
    'Dsk34vdC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'oPm7vw0O' \
    'JLF6iJot' \
    'PYQtCnQO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'VW4ProQN' \
    'oJsCzGNJ' \
    'nZ421wg4' \
    --body '{"name": "a6RVxQJp", "value": "olq0zz3m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '8xqnrSce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'xhwDnISG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'GhFc8oLB' \
    'Lez3YadQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'ahVdBtI0' \
    'tyGzDLEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'exQJUxXw' \
    '46DYbbom' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'C7Rq1RAz' \
    'qTrRVWAL' \
    --body '{"customAttribute": "nlc3SuOC", "label": "lC0vph1V", "tags": ["mbFJePkm", "HcSW3kBZ", "7amR1heT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code' \
    'CX2CEGis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'DrbOQyb1' \
    'Bk1QmIqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.17449389242237134, "statCode": "zCFcQ21C", "userId": "Am3fIhqp"}, {"inc": 0.6574612774849983, "statCode": "8k2FRMbv", "userId": "2WhVIB3D"}, {"inc": 0.17601404111807228, "statCode": "axSDwIbs", "userId": "1qk75Vq4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.7428862688284381, "statCode": "rJwc2q6D", "userId": "aqTXnsqV"}, {"inc": 0.24153595348185886, "statCode": "rkWzw1dj", "userId": "LfQSaAiG"}, {"inc": 0.7652669309776131, "statCode": "5Kxt2lig", "userId": "xmC8ggzO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'WLiux51f' \
    '["IwKQJQ7o", "lZHxgoCv", "3WbbEG2P"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "dxpZAx8V", "userId": "dqZYBU7U"}, {"statCode": "JaJGYc6f", "userId": "NOJosqgy"}, {"statCode": "ynmGUMGd", "userId": "YE2XlCgE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"defaultValue": 0.4418561307966965, "description": "bv64cGqt", "incrementOnly": false, "maximum": 0.11140989557118863, "minimum": 0.4078375631000394, "name": "0PrSpOk6", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "iICDxlec", "tags": ["GpnCNmi9", "EONSl74V", "3twlc56Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateStat' test.out

#- 35 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ExportStats' test.out

#- 36 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ImportStats' test.out

#- 37 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'ocOfWYtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'qeVx3LUF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'RjH4cbOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'sfef18AQ' \
    --body '{"defaultValue": 0.8547671686918316, "description": "5yHwRMEi", "name": "il1fy37Q", "tags": ["acoy5NUN", "Po8HdGT7", "0IWwGPeO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    '2Tjs9jQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'XmIK7JSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '0638eXZE' \
    --body '[{"statCode": "QnOToPDL"}, {"statCode": "zsUN6KoH"}, {"statCode": "L63bJNez"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'YubTcvNQ' \
    --body '[{"inc": 0.319060213127339, "statCode": "xOdCPbMx"}, {"inc": 0.3300678122624131, "statCode": "diSsSEk0"}, {"inc": 0.22277132945168643, "statCode": "7NvpYPoj"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'LUa68qO7' \
    --body '[{"inc": 0.7662203999831144, "statCode": "F4Dznci5"}, {"inc": 0.8284030664300966, "statCode": "uB4O1zZi"}, {"inc": 0.3585319047695654, "statCode": "Q6Er1fTh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'B5QpKq2Y' \
    --body '[{"statCode": "Xa1xPT2W"}, {"statCode": "09la4NKw"}, {"statCode": "pLv5jF2O"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    '9oau7DtS' \
    'YdW3XWUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'yaeepRft' \
    'MmjcJtYB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '43tOBKgr' \
    'TLsqRdl6' \
    --body '{"inc": 0.16422294618919364}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'i34k4l3Z' \
    'B7tuEe6H' \
    --body '{"additionalData": {"dfscoTNS": {}, "YIs2BEcI": {}, "PN0rhkx3": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'w48Qoj9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'jYuWLCdj' \
    'UNhetedV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.7926007914245897, "statCode": "HTYq2rFt", "userId": "BpU2CJ1H"}, {"inc": 0.6935293326599163, "statCode": "5QdYQ6Hk", "userId": "vFKCfcs1"}, {"inc": 0.6607005210475014, "statCode": "DxZh0UaY", "userId": "67z2AaM5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.8174570131591914, "statCode": "CztSgAOo", "userId": "ZQABltjW"}, {"inc": 0.04479711635301942, "statCode": "a3v53Pw9", "userId": "H2XYD5u7"}, {"inc": 0.8467626695786801, "statCode": "6XmpQJiS", "userId": "kjj36B50"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "yKhfytjc", "userId": "GZmTaSNt"}, {"statCode": "iyz16Y27", "userId": "qD3eSLAY"}, {"statCode": "ywM7G5CV", "userId": "X8lj9szM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.5106653671230978, "description": "siZcZep6", "incrementOnly": true, "maximum": 0.6574461348345719, "minimum": 0.43363564263349375, "name": "KJD23bn8", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "mY7LTAMu", "tags": ["tZ8e5nHg", "AkqZpdjK", "1R9SLJ4r"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'w8aP5x2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'IgOZGokn' \
    --body '[{"statCode": "eUgB8Tkl"}, {"statCode": "NXgTdGll"}, {"statCode": "LRy3Hqs5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'gICdNT6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'J9mGrVC6' \
    --body '[{"inc": 0.9271472395069323, "statCode": "LIE0WPnm"}, {"inc": 0.9431510886677597, "statCode": "JioUQ5Uw"}, {"inc": 0.6803804982569369, "statCode": "uP5pUCHy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'H7n2C2Ga' \
    --body '[{"inc": 0.6372317416280301, "statCode": "dLx54rXt"}, {"inc": 0.5680660552728785, "statCode": "NSND6J3K"}, {"inc": 0.08825884804894824, "statCode": "8Hi4ZdcM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '84pMoceM' \
    --body '[{"statCode": "iikKdkOe"}, {"statCode": "XmRSLJ9h"}, {"statCode": "dUH3Qdjo"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'mrQXLpWw' \
    'h9LreHiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '6iGGgxTk' \
    'unmMwUjW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '6VwPCYVz' \
    '0uuUnszj' \
    --body '{"inc": 0.6134400911083455}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'mEhNZcXv' \
    'IBVAh6ZW' \
    --body '{"inc": 0.8804095224632931}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'dR0Ou6AN' \
    'StqaSFRW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"KncA7Mm5": {}, "dc6mPuH3": {}, "f88hh9Hv": {}}, "additionalKey": "Jp5wrqtz", "statCode": "Fe8qvxf9", "updateStrategy": "INCREMENT", "userId": "o8FfDSNY", "value": 0.17268009710141963}, {"additionalData": {"b2IlAZYL": {}, "XOFNbg2x": {}, "G03Mv2Qe": {}}, "additionalKey": "tscir9o9", "statCode": "tDWQWMwC", "updateStrategy": "MAX", "userId": "T2jozDZa", "value": 0.5730502752959541}, {"additionalData": {"TC5bkUXa": {}, "QQEM6HiQ": {}, "2TWZYLpb": {}}, "additionalKey": "cgsTvZWW", "statCode": "39db7mYd", "updateStrategy": "MIN", "userId": "8T2B2SxP", "value": 0.8323422310258345}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'Ep2b1yuC' \
    '["PoNEzEQz", "6Lu3uqPs", "qhx1KSLT"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'ZatPTZPC' \
    --body '[{"additionalData": {"n0K7Jmzo": {}, "SWRwHFEj": {}, "WZR1xy9u": {}}, "statCode": "SErIr350", "updateStrategy": "INCREMENT", "value": 0.6009785450011411}, {"additionalData": {"McKUsL2U": {}, "sFLq761U": {}, "nRH1MfN5": {}}, "statCode": "SB9OV127", "updateStrategy": "INCREMENT", "value": 0.5015016723755505}, {"additionalData": {"dhZqNWYo": {}, "B3yYc9j9": {}, "QvA4jdqR": {}}, "statCode": "DqwdJWoS", "updateStrategy": "MAX", "value": 0.8927201305333903}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'C50hKm6i' \
    --body '[{"additionalData": {"BoKqDrKQ": {}, "Y7VFuAq6": {}, "GMIG3JED": {}}, "statCode": "QiQi0BUW"}, {"additionalData": {"7Ypf23kV": {}, "eitoeZT9": {}, "Y6O76Ocd": {}}, "statCode": "AXioOiQV"}, {"additionalData": {"ytqwSXGK": {}, "kt5h9PHg": {}, "Vajs5SnG": {}}, "statCode": "r4OIdsgd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    '9WIllRhl' \
    '0rsEB9TM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'jjjBgcgh' \
    'HIjvgrFs' \
    --body '{"additionalData": {"31J7WgoK": {}, "8optXIy3": {}, "08jYi2ll": {}}, "updateStrategy": "OVERRIDE", "value": 0.2062308600216869}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"tiwgXuyI": {}, "YGPdALZ4": {}, "99yI680B": {}}, "additionalKey": "Zb3GDcwj", "statCode": "eGNmxAfP", "updateStrategy": "OVERRIDE", "userId": "fyCCW7VO", "value": 0.06219812601692487}, {"additionalData": {"HNEr1zAL": {}, "NkdranK7": {}, "rIGILIj5": {}}, "additionalKey": "oXD03hOk", "statCode": "ghcgB4J9", "updateStrategy": "MIN", "userId": "jUsPRNmG", "value": 0.8372677765156883}, {"additionalData": {"KUF1LL1o": {}, "V0X6bzRQ": {}, "dQPLgc7P": {}}, "additionalKey": "qpQP8vZl", "statCode": "zazmIz3E", "updateStrategy": "OVERRIDE", "userId": "u4K4Xl5E", "value": 0.850953679939625}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'almPcsPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'tWAGhKRY' \
    --body '[{"additionalData": {"7Szc6G9K": {}, "00URZIwx": {}, "NGLnouik": {}}, "statCode": "nSSReG11", "updateStrategy": "INCREMENT", "value": 0.006638325141406387}, {"additionalData": {"GS7lU9fo": {}, "Rj7gikMq": {}, "uIfLGTxb": {}}, "statCode": "8JJPeBby", "updateStrategy": "MAX", "value": 0.5088954815636894}, {"additionalData": {"2PxxLThT": {}, "rQwFWX6z": {}, "ovLoDBOH": {}}, "statCode": "eU4ufdCD", "updateStrategy": "MIN", "value": 0.6382381115650677}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'a4uNAHVh' \
    'QRJ9RhDO' \
    --body '{"additionalData": {"sh7ZfCSM": {}, "EXkfmyIx": {}, "bWVRtqAD": {}}, "updateStrategy": "INCREMENT", "value": 0.9715691674520788}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
