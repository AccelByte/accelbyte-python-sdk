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
social-update-namespace-slot-config --body '{"maxSlotSize": 99, "maxSlots": 40}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'akNPVJo1' --login_with_auth "Bearer foo"
social-update-user-slot-config 'PrJAsX15' --body '{"maxSlotSize": 73, "maxSlots": 70}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'X6PsLdYv' --login_with_auth "Bearer foo"
social-get-user-profiles 'O9eNjjyc' --login_with_auth "Bearer foo"
social-get-profile 'dNz3qQpw' 'kV7XzVjF' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'tT2Flu60' --login_with_auth "Bearer foo"
social-get-slot-data 'Ysey74pZ' 'oCOBUlkf' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["QjAMZiw5", "UorMM91X", "xn00LSWn"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'pBXYhlbN' --login_with_auth "Bearer foo"
social-public-create-profile 'XrinAenV' --body '{"achievements": ["ECCAWnv3", "MSBC7seW", "NLyCA2RH"], "attributes": {"Wdh8S1dE": "IVSwD1VN", "yD80ldO4": "yPBDftn0", "UfWiJ12f": "FENpSsTS"}, "avatarUrl": "aSz1ZY4V", "inventories": ["pYNWGWtw", "POF3xe3Q", "e62YlBL1"], "label": "WkwebUrI", "profileName": "ep0UYOAH", "statistics": ["enEwXjn3", "GNHlDDYT", "fD7TGufk"], "tags": ["444DtkZg", "xDLHQvNT", "PQ5Mti6s"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'QltfUhM4' 'D6G1HzL5' --login_with_auth "Bearer foo"
social-public-update-profile 'dkFJZVYA' 'wcfZt16z' --body '{"achievements": ["MCCR9erN", "7vjFSlFF", "nEIfZt9F"], "attributes": {"4Fg22BMd": "eVhYEPHE", "QjK6RI3y": "y9AapnmS", "6wCrE1wU": "XWrJcSsc"}, "avatarUrl": "INKEGssQ", "inventories": ["TdcrmXnx", "gicUX3Bf", "0cCNFdLo"], "label": "pBp2onIQ", "profileName": "PL2Yto71", "statistics": ["puTOcqgX", "4kcs3jwO", "pOmk1YZg"], "tags": ["hNDsbwXX", "j8ZddtKT", "xYe6IDaJ"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'h7E3QNhW' 'BVa9bOMs' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'JNFNtje5' 'Lc8Ruxa6' 'Uvi2WdeV' --login_with_auth "Bearer foo"
social-public-update-attribute 'l93JtXtp' 'SoXid1Wr' 'tLIE8QrR' --body '{"name": "GD8tQ0Bv", "value": "ilGB0Try"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'J2wxAYCO' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'AICh3hPh' --login_with_auth "Bearer foo"
social-public-get-slot-data 'ZipaAkEA' 't1VpYxnX' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'oE036GYJ' 'yuhtWhJR' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'uPnaPird' 'DJ2sWaXV' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'qgSL3Evm' 'Bf2t1yoI' --body '{"customAttribute": "f9cYpSAE", "label": "bZRTPXQO", "tags": ["MV0teflc", "AVFuc3uK", "0nNe8K5e"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'eL7ErlzN' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'cjd3g7ek' 'FfCSzj2F' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.21697363261258196, "statCode": "yZlWpBSa", "userId": "taqAc91P"}, {"inc": 0.07580240967902874, "statCode": "9H5Ds6Qu", "userId": "mCOYfHfS"}, {"inc": 0.3988297668787296, "statCode": "fqRnBWCZ", "userId": "CbbEAw88"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.36180024208449413, "statCode": "OcG8hz2I", "userId": "2Os5o0jf"}, {"inc": 0.5584569012266075, "statCode": "SNyWHeaM", "userId": "dM0eSH3A"}, {"inc": 0.9473843765606841, "statCode": "dyJ1sxPy", "userId": "4oK0kiSY"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'aaBnJ3xC' '["bO1UOgMT", "Alxt5RgS", "T3bl1p1n"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "YWVzrIMO", "userId": "0vSbRW5c"}, {"statCode": "7EeYWgP2", "userId": "f5boiQ3Q"}, {"statCode": "AkpOznRU", "userId": "FLtZ5NCh"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.7508033014646154, "description": "lkLSlM6i", "incrementOnly": true, "maximum": 0.32241010475412335, "minimum": 0.42453190609680835, "name": "FGWUUgM7", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "7KfpLC9k", "tags": ["veTu5wcG", "oD0Z2yRo", "UXYBFviR"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'jVccXqjr' --login_with_auth "Bearer foo"
social-get-stat 'm9O3d3sG' --login_with_auth "Bearer foo"
social-delete-stat 'EIe1OF46' --login_with_auth "Bearer foo"
social-update-stat 'MALnOEcy' --body '{"defaultValue": 0.8888537250437751, "description": "OBg1LLJZ", "name": "GOlCqCWG", "tags": ["gJqUy7zF", "gLWseS2y", "kTBEi442"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'mUj0OxdY' --login_with_auth "Bearer foo"
social-get-user-stat-items 'H8oiRZZ9' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'rQlBnkVO' --body '[{"statCode": "yYw0wQBb"}, {"statCode": "gliydZra"}, {"statCode": "3XuDK8wy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '190qDlnl' --body '[{"inc": 0.8962561919188546, "statCode": "UQ5DSq1H"}, {"inc": 0.7872981977580922, "statCode": "2a2E1eJm"}, {"inc": 0.9551992489974066, "statCode": "Nmr292az"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'gKwwqC3I' --body '[{"inc": 0.9916063237504057, "statCode": "19J7IWW0"}, {"inc": 0.5839086213423373, "statCode": "d9WUzKQ4"}, {"inc": 0.09697750386561477, "statCode": "vycoNZz3"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '0jnR66xL' --body '[{"statCode": "ZcmDSm8I"}, {"statCode": "LDcv4wEW"}, {"statCode": "BdgZjzVW"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item '121TYhSz' 'GlglIBnP' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'ZQLzJPGl' 'agc6aItk' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'hPY3Y9Qv' 'IMSf05TJ' --body '{"inc": 0.3582148159783156}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'F8fGp4RT' 'Hzo4sdq2' --body '{"additionalData": {"c7AUuHd3": {}, "sw1QUq4a": {}, "Py89rLoW": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'qVovnUVS' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'UoMacYm7' 'Axo4825k' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.8269286770318565, "statCode": "lb7IG1oq", "userId": "X1TE8WiH"}, {"inc": 0.5718992299618209, "statCode": "0aj14XCt", "userId": "jfrY1ZdH"}, {"inc": 0.4354019767648414, "statCode": "MtxsED7k", "userId": "fJY65wwI"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.17100101615128183, "statCode": "7uOknO18", "userId": "sEouLeml"}, {"inc": 0.35432024903733383, "statCode": "o9OlNbr8", "userId": "70weLPun"}, {"inc": 0.9660336796463128, "statCode": "etEcqOLQ", "userId": "pCl2ca0H"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "b1qV8YAJ", "userId": "r3Pkh02Q"}, {"statCode": "iwC1HSFo", "userId": "hWlek6t3"}, {"statCode": "widYWxip", "userId": "M0PElitD"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.16267855107541918, "description": "LPaJeBYt", "incrementOnly": false, "maximum": 0.4131674077062124, "minimum": 0.38274070646069547, "name": "0NuYmv0X", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "NbmKT1f4", "tags": ["BM1z8ntt", "4Xtm6i7P", "LMiNc9xd"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'T2oYK3t9' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'McihCfzK' --body '[{"statCode": "DYfyA8EU"}, {"statCode": "dRUxTOyD"}, {"statCode": "XbYCTHRT"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'qgNJVXFO' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '07lHdKeY' --body '[{"inc": 0.9340398143076204, "statCode": "ZkwGpkiL"}, {"inc": 0.8956776914312241, "statCode": "F7MBHJrw"}, {"inc": 0.40039450347733263, "statCode": "2B9YvWk5"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'j4ehjtxf' --body '[{"inc": 0.027754696945127444, "statCode": "HQul5UuW"}, {"inc": 0.12806244533531352, "statCode": "A2YYYTdQ"}, {"inc": 0.5239799626648247, "statCode": "OYWcz0PE"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'KLckih6N' --body '[{"statCode": "4HLLC5NF"}, {"statCode": "eixvzqjE"}, {"statCode": "UczfFf1f"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'PTkHFwvb' 'hUPgQp9X' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'DfsdsQso' 'Oq5j8A67' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '9JOhUjgc' 'aBpGPwSJ' --body '{"inc": 0.4244150108074991}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'KJ1OB0um' '8f9jC3Fv' --body '{"inc": 0.5023197535682231}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'uI630UNN' 'zc7zrxaa' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"dfj9XzIV": {}, "nGfBjogQ": {}, "uzDkZOfx": {}}, "additionalKey": "8fYfEwu5", "statCode": "FUqTZUeN", "updateStrategy": "INCREMENT", "userId": "aTHDztsV", "value": 0.2576555609914922}, {"additionalData": {"s9kz7kDp": {}, "ylAXI9Ew": {}, "O5TDrBNX": {}}, "additionalKey": "QuC5OU4N", "statCode": "dKPs0QB2", "updateStrategy": "OVERRIDE", "userId": "X9nLRblW", "value": 0.8363149492651735}, {"additionalData": {"B2WuQMNd": {}, "iIia8r5Z": {}, "27p6jzVI": {}}, "additionalKey": "UhyMsd3d", "statCode": "Vb6IhcyW", "updateStrategy": "MAX", "userId": "eRHTh5kp", "value": 0.43161099192148555}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'xQtFCYGP' '["OqMFOe30", "58abBHG3", "tIEp3312"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'MEYK9Yb8' --body '[{"additionalData": {"Dh1LvWAl": {}, "e2q5t4ne": {}, "CWZyfITj": {}}, "statCode": "EPlC1hk3", "updateStrategy": "MIN", "value": 0.8819939375231803}, {"additionalData": {"fJVvKQw9": {}, "0vCnjLdZ": {}, "FMpYEmhM": {}}, "statCode": "0snY7SWp", "updateStrategy": "OVERRIDE", "value": 0.166173162247645}, {"additionalData": {"Y1PowKDR": {}, "AX8RRDLL": {}, "zIpoHd8Q": {}}, "statCode": "PmR1x0KY", "updateStrategy": "MAX", "value": 0.0003584890532049023}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'Cnqt2hVM' --body '[{"additionalData": {"Bk5H6iQn": {}, "A2FB4qp3": {}, "eaAVidQ9": {}}, "statCode": "fMutX0z4"}, {"additionalData": {"tFcEV5cX": {}, "BiNCUNFt": {}, "tVMSln7i": {}}, "statCode": "72vV3Xo0"}, {"additionalData": {"0RUrDJLW": {}, "52pt7J12": {}, "xMZs0394": {}}, "statCode": "IptXv3ia"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'tnPs2Ey0' '5s2pQNf9' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '24szxfGd' 'G2LrQmYG' --body '{"additionalData": {"lCKUX5xO": {}, "LkodoIgu": {}, "NQx4VyAw": {}}, "updateStrategy": "OVERRIDE", "value": 0.039528625775236303}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"xQSygQYe": {}, "gWaAfjxp": {}, "xgBafRgr": {}}, "additionalKey": "qNXxFkcK", "statCode": "yKFoLVF0", "updateStrategy": "MAX", "userId": "M4yvC6Qe", "value": 0.902566447513465}, {"additionalData": {"Mywgqpwp": {}, "5TkbTNIS": {}, "eI6nXqWU": {}}, "additionalKey": "UCozpVT9", "statCode": "L18AyH0I", "updateStrategy": "MAX", "userId": "XaLUCGq2", "value": 0.8621357396824147}, {"additionalData": {"E3FDDaJn": {}, "QIQjH0RO": {}, "AQ6GoFOG": {}}, "additionalKey": "osVqWiTy", "statCode": "h4u3NXH5", "updateStrategy": "MIN", "userId": "acLLLfi8", "value": 0.4316596121096936}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'b1ZMvZ03' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'yXe0Q05W' --body '[{"additionalData": {"slxWGSzc": {}, "2N1Ez4G2": {}, "34ZzlKAZ": {}}, "statCode": "EqIL8pC2", "updateStrategy": "MIN", "value": 0.09076740557022334}, {"additionalData": {"pg1L0rk2": {}, "TeYAdzHH": {}, "uF60L1aX": {}}, "statCode": "EO0qE6t3", "updateStrategy": "OVERRIDE", "value": 0.1791716808539927}, {"additionalData": {"0CHCXXIw": {}, "zJsPbS60": {}, "dXoX86f0": {}}, "statCode": "pIj6XV6s", "updateStrategy": "INCREMENT", "value": 0.7683234741041092}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'wIw7NRcO' 'cSiku2l3' --body '{"additionalData": {"ieHrCE43": {}, "joEUNB8c": {}, "znU573Yj": {}}, "updateStrategy": "OVERRIDE", "value": 0.22972904657430337}' --login_with_auth "Bearer foo"
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
    --body '{"maxSlotSize": 15, "maxSlots": 44}' \
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
    'fUROz0Cv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'Y1DEZPjz' \
    --body '{"maxSlotSize": 46, "maxSlots": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'RAeoRN2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'dk411fRI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '9ylma7jn' \
    'A6dS9lv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'UWQORLRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'x4ads9bP' \
    'lFPjNDmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["LLK86d7U", "tuFuQmDA", "FYcFCSfV"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'GdYlCoaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    '2jTnsMFj' \
    --body '{"achievements": ["Op7jqS5n", "3kDIWYoA", "dKlKKbWN"], "attributes": {"VairnlZK": "gkt42cMg", "JQ6NhfbU": "K82Utnva", "nPL0XnyC": "l1IR2317"}, "avatarUrl": "p1mAKa8B", "inventories": ["80BV49VL", "eFYXWG8v", "nDsfyd8C"], "label": "tjs0QooY", "profileName": "guU1zRnu", "statistics": ["whYE6q2x", "uqyuYUzr", "vBvzjK98"], "tags": ["b3r4d7aL", "ddbyeiof", "p7j5CLGM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'Pdj7FjS9' \
    'lPc2oMEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'KPrX7BvD' \
    'EJynydoJ' \
    --body '{"achievements": ["4Zu9F7YQ", "gbFtOurY", "BsfYGj20"], "attributes": {"SwCCvCbH": "Zh1GEkls", "fxmpvQ1i": "ZhL7bNfO", "kvE6fzbI": "Pvtpjygi"}, "avatarUrl": "6XcF86Ux", "inventories": ["HRNxIEgI", "LXSWQSlQ", "ww9egtHF"], "label": "3ePfb2Hb", "profileName": "jA56iAuY", "statistics": ["iaOe24D6", "qM6S0CnW", "UoIVlGbn"], "tags": ["Pm2tOPNK", "LhBaF6J9", "NQBWuKAB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    '12UNLxRY' \
    '0FoO88Xh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'UzzEWcAg' \
    '57RZE9Gp' \
    'RYwHvGTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'TlROozF7' \
    'aMd6gH9n' \
    'L3G40IRw' \
    --body '{"name": "Y7j82LDp", "value": "a6CQwWl7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '7f7Nq9vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'dHHEZWna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'JSLXxcgB' \
    '5nxoqrvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    '4a6vqNWU' \
    'mlufqJFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'l3uj0xu8' \
    'ZN4gTadA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'ZtZmnEP6' \
    'mie59SbQ' \
    --body '{"customAttribute": "yGM6WHPJ", "label": "OePSFxXm", "tags": ["OZ4qsiGp", "AJC5VIlG", "yA6Gqw1l"]}' \
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
    '9Am6UOez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'r4dj6u4A' \
    'kBygD3jr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.10068250468572337, "statCode": "BvyuoKpm", "userId": "GbLpMybN"}, {"inc": 0.3440507587204795, "statCode": "0OHXNIy2", "userId": "IwxsPRE6"}, {"inc": 0.22177974816540458, "statCode": "Vv0KcAtn", "userId": "8Rifp2av"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.05896244307055565, "statCode": "Qi1JFpsr", "userId": "dAAgmNha"}, {"inc": 0.6148333571070571, "statCode": "GRtfSAOP", "userId": "syxPNC1G"}, {"inc": 0.17037088103245457, "statCode": "nzQBvuNb", "userId": "1wsBQ0rP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'sDwYmyNk' \
    '["s6v7duJK", "Ctsde9lS", "gc8L05zb"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "tWKiHeUj", "userId": "Stf1hvWF"}, {"statCode": "RzNu1BEa", "userId": "EenxvjEd"}, {"statCode": "prcUcf0N", "userId": "KSXV7BQo"}]' \
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
    --body '{"defaultValue": 0.19291968961777994, "description": "a3rzLTLi", "incrementOnly": false, "maximum": 0.9455838844342145, "minimum": 0.04772090299794751, "name": "qQPTzoJ1", "setAsGlobal": true, "setBy": "SERVER", "statCode": "mAORszam", "tags": ["kLRzWlpT", "ll8CaoHB", "68eIt7bA"]}' \
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
    '1XTl5kmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'D3eO2KlS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'kvEsDy3C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '2bS4RYLj' \
    --body '{"defaultValue": 0.3523088486595929, "description": "ohnFLn9N", "name": "QtQFs2n3", "tags": ["2T61ncez", "unMYNpQw", "crSPdTYf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'SDzKM4zu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '5bYJnXjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'LM2RcLFZ' \
    --body '[{"statCode": "bjjhl6Gq"}, {"statCode": "mOJxB86y"}, {"statCode": "VSvg3P7S"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'K749ydAR' \
    --body '[{"inc": 0.9821377539683762, "statCode": "Nj48mSjC"}, {"inc": 0.6129274097018452, "statCode": "5IKjC1if"}, {"inc": 0.08418029448941522, "statCode": "aLIW02qN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'd70p2gLk' \
    --body '[{"inc": 0.8350872695559803, "statCode": "EId2Vw9z"}, {"inc": 0.7462618903222807, "statCode": "ZlUmn439"}, {"inc": 0.4568115408214434, "statCode": "IFhIDEmU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'voXaP9kP' \
    --body '[{"statCode": "EI3Yx3tC"}, {"statCode": "FnLUyAot"}, {"statCode": "VoWdmwuF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'EZANyAuQ' \
    'iiIPtb7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'wJvnoCzp' \
    'rHZ36aNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'S3PIk300' \
    '2B95Nc7S' \
    --body '{"inc": 0.30000465729627546}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'zQJB3sGV' \
    '9VV6ySfv' \
    --body '{"additionalData": {"2rogIcly": {}, "Ls8iBG22": {}, "oTFJVSgS": {}}}' \
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
    'TM4U08f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'FW4ORwo8' \
    'qDnJkXgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.2866541576933638, "statCode": "mAEeCb2P", "userId": "E6vA3kX8"}, {"inc": 0.05520586279327733, "statCode": "Jpi0bHw4", "userId": "i5s32xBn"}, {"inc": 0.38242639051675287, "statCode": "JOZJ5YOG", "userId": "8IU1gkW6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.19273309505766079, "statCode": "oRbLxcaK", "userId": "vDomQ8JM"}, {"inc": 0.20215768695147884, "statCode": "5RGvqK4Q", "userId": "cKd4ZpHc"}, {"inc": 0.4817155233450694, "statCode": "W58tdeEo", "userId": "LHmGawyE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "63A2mlHn", "userId": "WWY52SjD"}, {"statCode": "QyrPu3Lo", "userId": "2VvEIZD4"}, {"statCode": "DQOJgTf6", "userId": "AW6I0X5P"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.5376416056562696, "description": "wrSj8YPN", "incrementOnly": false, "maximum": 0.8248258655816855, "minimum": 0.19764605802627033, "name": "0zbQIJ0A", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "Dwgd4C1A", "tags": ["Yy4ruPi6", "R8ZWjrho", "uB3p4HI7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'z1bK1CKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'IcFzN8P7' \
    --body '[{"statCode": "QesLkV4c"}, {"statCode": "QUvg86Lv"}, {"statCode": "BjOyeZVh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'dKUpeiur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'wcX3wmfo' \
    --body '[{"inc": 0.5006143498033138, "statCode": "QCv5e2Lv"}, {"inc": 0.7852211804080268, "statCode": "XTZoLFGu"}, {"inc": 0.5962038526651552, "statCode": "u55mEM4t"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'QnljgQQR' \
    --body '[{"inc": 0.34493056724459825, "statCode": "Yo9Slz1y"}, {"inc": 0.1688926038570946, "statCode": "s7yDfSmV"}, {"inc": 0.15585598714533389, "statCode": "RgcwImkP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'kp8GXTOO' \
    --body '[{"statCode": "0tSaf4Tc"}, {"statCode": "TBwUo7NE"}, {"statCode": "V9rdQuJT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'nNA0ikYn' \
    'dgMczY6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '6YFtDCvy' \
    'Ez95Mu2k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'hMwSXb1l' \
    'f2kmxiUV' \
    --body '{"inc": 0.5761371356413655}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'HWw0bAo7' \
    'dDdQ1gLe' \
    --body '{"inc": 0.03940052204890199}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'qcXUWHNo' \
    'U2mn0aCO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"xze39iV7": {}, "7MvfEBVi": {}, "EAaz6Fvm": {}}, "additionalKey": "W8754HkF", "statCode": "SnVGYh8T", "updateStrategy": "MAX", "userId": "kQioRzNr", "value": 0.3293299125138427}, {"additionalData": {"XsVhe8li": {}, "Km4oxHhV": {}, "tQugWtzP": {}}, "additionalKey": "8uGpCxZL", "statCode": "fpOCcsqU", "updateStrategy": "MAX", "userId": "DboIvbWG", "value": 0.2309505570356446}, {"additionalData": {"j5Aefjrl": {}, "kudhemwN": {}, "pZNoATp8": {}}, "additionalKey": "ntWDuCz2", "statCode": "1YhYMa6b", "updateStrategy": "INCREMENT", "userId": "XCgPXc6G", "value": 0.046523169551683785}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'wiAIlimI' \
    '["nZmFPNew", "e1eDFRF2", "ZGBa4kF7"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'UqiHRSj6' \
    --body '[{"additionalData": {"EtU6bGLc": {}, "g1rOZVUJ": {}, "ZyO4yJ8o": {}}, "statCode": "0eQncZkz", "updateStrategy": "INCREMENT", "value": 0.03512855107136692}, {"additionalData": {"eFUoyXnV": {}, "E2Q04hNg": {}, "kAnlbsyD": {}}, "statCode": "By9nUWex", "updateStrategy": "OVERRIDE", "value": 0.013700756399732339}, {"additionalData": {"E6Rorbla": {}, "5wJngzqw": {}, "dX6mH0YD": {}}, "statCode": "v7wguRHp", "updateStrategy": "INCREMENT", "value": 0.3410232426513714}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'OsBqtHgf' \
    --body '[{"additionalData": {"Qbjf5Fte": {}, "LiKJhP3m": {}, "ysYucKVI": {}}, "statCode": "nejIDciH"}, {"additionalData": {"X4NJ7Gi3": {}, "fmBvB6eX": {}, "tRcs38v1": {}}, "statCode": "MOchk8lu"}, {"additionalData": {"g175Xb9u": {}, "tzQTFEFI": {}, "A8hTLLip": {}}, "statCode": "8FloZQRi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'qkuwDezV' \
    'BG80sW1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'CHqDnKgx' \
    'HxrzTJ4b' \
    --body '{"additionalData": {"Jz5rzVQk": {}, "Lst9W3Yl": {}, "HOcpvn2G": {}}, "updateStrategy": "MAX", "value": 0.2535059240810147}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"EKRHs7Gx": {}, "2s7udfIO": {}, "MV1sl4xo": {}}, "additionalKey": "fby65VPX", "statCode": "0RLwC9hY", "updateStrategy": "OVERRIDE", "userId": "VEwuq3DT", "value": 0.37674461829938766}, {"additionalData": {"O8IaCP0C": {}, "hMueVeSS": {}, "jJGRvV7N": {}}, "additionalKey": "ZkFGPnfN", "statCode": "MNtSnZ2e", "updateStrategy": "OVERRIDE", "userId": "KOFne624", "value": 0.48689125382727805}, {"additionalData": {"LKlz4wWv": {}, "8FsaSbgO": {}, "XVAp0ufG": {}}, "additionalKey": "RSYutWqk", "statCode": "SMmKVtV7", "updateStrategy": "MAX", "userId": "3HLZbhDf", "value": 0.7124304640950267}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    '8rsbQwZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'AT7NI8Dh' \
    --body '[{"additionalData": {"7SZJyvPW": {}, "N1fc8wWo": {}, "IRrHP7zU": {}}, "statCode": "wtA71EVf", "updateStrategy": "MAX", "value": 0.7225137755163203}, {"additionalData": {"sOIQ9Qt0": {}, "dkOXItsT": {}, "6XrDADRz": {}}, "statCode": "g439x1Ii", "updateStrategy": "INCREMENT", "value": 0.4442362388426738}, {"additionalData": {"t3MoOYUU": {}, "EjaGJsSN": {}, "yAt4dV1r": {}}, "statCode": "F4p2u93s", "updateStrategy": "INCREMENT", "value": 0.8927667157054175}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'e2TEkR7N' \
    'pIHnLLg9' \
    --body '{"additionalData": {"bX4A2J1P": {}, "Ma818FHM": {}, "K4uqLy4j": {}}, "updateStrategy": "MAX", "value": 0.06478991419514457}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
