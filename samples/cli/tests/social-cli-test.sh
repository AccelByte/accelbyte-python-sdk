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
social-update-namespace-slot-config --body '{"maxSlotSize": 41, "maxSlots": 61}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config '8BAaEUiq' --login_with_auth "Bearer foo"
social-update-user-slot-config '6PoMnmE5' --body '{"maxSlotSize": 31, "maxSlots": 56}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'z99FhR6j' --login_with_auth "Bearer foo"
social-get-user-profiles 'hrDPOqpf' --login_with_auth "Bearer foo"
social-get-profile 'R4JEhJhQ' 'hAgnds8f' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'ID3q5ZTD' --login_with_auth "Bearer foo"
social-get-slot-data 'Dw3l9kSZ' 'g35cegNW' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["gZTikwWg", "KH35kyei", "SRq8IubJ"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'rLnITnsZ' --login_with_auth "Bearer foo"
social-public-create-profile 'UbyAo07V' --body '{"achievements": ["KLxin3fi", "ekLvdVct", "vYER9cZe"], "attributes": {"13cvzzm2": "TlcvcKzg", "RUL0Fvwh": "GFTcqjLp", "ct6ViKiy": "z4EkAXvE"}, "avatarUrl": "IhyfoxK7", "inventories": ["wTRleKXl", "mqsWMhR3", "pr7o9Ian"], "label": "m9S4eMUL", "profileName": "6maGaOE0", "statistics": ["cEVJk96z", "NV8qdO3I", "9ofNHVKf"], "tags": ["dLb48fJ0", "acQXtWjM", "u01FqPxa"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'vYMlVD4D' 'ZCvnc4Eb' --login_with_auth "Bearer foo"
social-public-update-profile 'k6QxdLQB' 'e4Yo92h8' --body '{"achievements": ["OElq8M0N", "ZK323V2H", "VbYZwtti"], "attributes": {"0TBfYN3z": "lsxAJCPt", "swQjs6ch": "fnXIv4fH", "ItYs0RGb": "bOlSvAlH"}, "avatarUrl": "sHvtPQ54", "inventories": ["tpN9jYSH", "rd9Y6dE3", "wNY22uVB"], "label": "zB9PPFIb", "profileName": "BpYW2iDB", "statistics": ["0DnGXH6T", "lKVCL72e", "mka1RmlM"], "tags": ["TJtLKmsL", "pVmb7HYk", "0DohbKE0"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'INkDthDi' 'nCFxL6lJ' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'l1um5Wa4' 'sUaJTnQH' 'PlKrDFBb' --login_with_auth "Bearer foo"
social-public-update-attribute 'GSXG6GpU' 'C0pTkWiM' 'y2PHSIVx' --body '{"name": "YJOmsFME", "value": "b3WUxgpx"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'RI6F776b' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'd8jZTHqS' --login_with_auth "Bearer foo"
social-public-get-slot-data 'NjJi65lD' 'MeqwPyW6' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'RMArAJ2Y' 'VdUXB8mN' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'LNWa5ycY' 'o3jcpdKf' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'JCZGRRxT' 'KpXSN7lX' --body '{"customAttribute": "3nsFvJCm", "label": "pffpaJRZ", "tags": ["HyT7qaby", "SmHWqvSn", "OhR63WtE"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'esm1jLi3' 'BgMV1al7' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.6689096745947032, "statCode": "BdZ9raNG", "userId": "lpuDEciM"}, {"inc": 0.41794780883915905, "statCode": "rqvoxCEp", "userId": "I2uMQCRl"}, {"inc": 0.04537195622285761, "statCode": "rUlryyHb", "userId": "nRcEfRSw"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.3007887283760654, "statCode": "ZKJw3aBH", "userId": "KtJ9TmTs"}, {"inc": 0.37500464019078117, "statCode": "z4UJsPBw", "userId": "6zrRa46I"}, {"inc": 0.12891611611057097, "statCode": "mMMylI8k", "userId": "5g20terG"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'nEMUSfb6' '["bjvrJjIj", "DPKDZJRh", "QBC5ktY4"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "g070pPpf", "userId": "yBRDaTHu"}, {"statCode": "iB0lnACK", "userId": "xkSdwito"}, {"statCode": "DF1RNgrg", "userId": "15Dm41VT"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.6201261939543493, "description": "lXiKiVWx", "incrementOnly": false, "maximum": 0.3599910306522831, "minimum": 0.3143092614596863, "name": "uN2Phig4", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "8zb3TQEr", "tags": ["lVAHGlEk", "nGR3AK95", "NMvs7YQy"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'YF2SMP5q' --login_with_auth "Bearer foo"
social-get-stat 'kE0hj2fC' --login_with_auth "Bearer foo"
social-delete-stat 'GIpBTKSb' --login_with_auth "Bearer foo"
social-update-stat 'zeEhhQT4' --body '{"defaultValue": 0.9375765667193766, "description": "w8tChQaK", "name": "RW4rkvnM", "tags": ["KTj5vjnj", "VY37b2Xp", "sBWxMTMz"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'ysxIoJzl' --login_with_auth "Bearer foo"
social-get-user-stat-items 'Air8Orxe' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '21wbpr9H' --body '[{"statCode": "g03GmeRh"}, {"statCode": "d84cvDQZ"}, {"statCode": "elM1E0g0"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'yy0J9keE' --body '[{"inc": 0.05410742891961606, "statCode": "EExUUC3n"}, {"inc": 0.2688955286383212, "statCode": "r2fwotNf"}, {"inc": 0.024648964853262734, "statCode": "yDCjwGkY"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'DZfTdSSw' --body '[{"inc": 0.21321906483045772, "statCode": "oGiFS9nm"}, {"inc": 0.37810331972165845, "statCode": "HLhnPvIT"}, {"inc": 0.24648342182275862, "statCode": "bZTu0HvO"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'dxwU7stQ' --body '[{"statCode": "fCn4HoqO"}, {"statCode": "9kRiTGQx"}, {"statCode": "heqXYT14"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item '6GC9LMZ6' '0fxhyrOY' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'CGR71nAI' 'TEtY3SQA' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'YMfiWVeX' 'c33cbcj0' --body '{"inc": 0.522268945279979}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '8yHZcoZo' 'Rm4yx4nb' --body '{"additionalData": {"BlLdVvdT": {}, "Ye0fMOdk": {}, "A4H9cmBX": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'mhklqBuQ' 'VXefM96w' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.8709318698578972, "statCode": "NKHoNzVH", "userId": "QQPySKo7"}, {"inc": 0.5073539034767033, "statCode": "dCxeU66X", "userId": "p5zPc3Qt"}, {"inc": 0.3741609890516615, "statCode": "iRMI8rQR", "userId": "Lnt8XYcy"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.3723709880685393, "statCode": "60VQZrqZ", "userId": "kxFPwimd"}, {"inc": 0.5206818249358899, "statCode": "8YN7Emlo", "userId": "xgsL9qPv"}, {"inc": 0.16693924370885316, "statCode": "oBFnjMOc", "userId": "T0ecUMEk"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "jEr6vugK", "userId": "AXV7py2I"}, {"statCode": "vOdrXcZq", "userId": "yYldNAHf"}, {"statCode": "ZO4GYmfZ", "userId": "EojtFd1d"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.33538903342483073, "description": "AxgA5A3p", "incrementOnly": true, "maximum": 0.09707572067546044, "minimum": 0.4365168611209084, "name": "Q2JJw7CO", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "R1RwKfNC", "tags": ["QtrHoHNX", "b6ZxBn74", "YPbMUYMX"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items '6hoMls9I' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'L7S2BfxB' --body '[{"statCode": "W6DCe2Ma"}, {"statCode": "OJkBe9iF"}, {"statCode": "2WW6vDbS"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 '2ZqXQ083' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'Pf4PDVQ6' --body '[{"inc": 0.4341992689058807, "statCode": "pcQKQOqV"}, {"inc": 0.7853620352569689, "statCode": "w4F6qRLb"}, {"inc": 0.8452835248433329, "statCode": "CSM1WkYX"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '6ySrUxR9' --body '[{"inc": 0.038625841142320816, "statCode": "PlRAyoyS"}, {"inc": 0.6617388325058594, "statCode": "OwlaFANN"}, {"inc": 0.6707483241297357, "statCode": "4iOEbBzU"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'ivltcGCw' --body '[{"statCode": "wcaMTH4C"}, {"statCode": "39ZGDIei"}, {"statCode": "CBnAikCX"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'FbFvaXGE' 'EtfYQTb2' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 '7IG0xNBj' 'GXwkMSYw' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'MLjC1PX1' 'qjMpJ3eV' --body '{"inc": 0.13101526953213505}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'G88R94Cr' 'ajxUnVaM' --body '{"inc": 0.8106408591846693}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'AiJfD8wx' 'mz9KsiCl' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"OBesKzJV": {}, "5yVYLS4y": {}, "wZQXaqsX": {}}, "additionalKey": "6tzJLESp", "statCode": "63kKX6Wo", "updateStrategy": "MIN", "userId": "2nNXoqL0", "value": 0.5444748522618059}, {"additionalData": {"dHxSoJzH": {}, "ERVFYpED": {}, "Vc0kYfc7": {}}, "additionalKey": "h1aVgS0b", "statCode": "9BI6cgWW", "updateStrategy": "MIN", "userId": "1sBOeV81", "value": 0.13479332138145306}, {"additionalData": {"dp9ytxgz": {}, "aQfKwl68": {}, "a2dIxQqF": {}}, "additionalKey": "7I1c9P4h", "statCode": "LcdaqzTp", "updateStrategy": "INCREMENT", "userId": "raqUaO4F", "value": 0.7557476524143816}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '5zSHQMpl' '["3QBqMIpZ", "u7N738HP", "CBXsDRlf"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'cJDygs6T' --body '[{"additionalData": {"wijkHx0n": {}, "ymAOAqsf": {}, "SXYOknhP": {}}, "statCode": "eD4GWuZ2", "updateStrategy": "INCREMENT", "value": 0.8382360077308895}, {"additionalData": {"QWxPSAlD": {}, "8z2iyjOg": {}, "Ntt5VfOl": {}}, "statCode": "Bgn8SWXd", "updateStrategy": "OVERRIDE", "value": 0.011316463786744224}, {"additionalData": {"iMson6ar": {}, "dXwk7E6c": {}, "iw8Fnf0Q": {}}, "statCode": "VXbwDBy4", "updateStrategy": "MIN", "value": 0.26042868941391295}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'HgVNmIYM' --body '[{"additionalData": {"7KZzUm3p": {}, "q6C8rn6o": {}, "Kc8nD1co": {}}, "statCode": "14TrMwDq"}, {"additionalData": {"4leoRYHn": {}, "Y9g4kjmP": {}, "J9ZoGeXV": {}}, "statCode": "aKa7gxqc"}, {"additionalData": {"N1vZzFOK": {}, "jt2lDO8I": {}, "QN8Dq462": {}}, "statCode": "qUSnadKa"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'eE11VLqd' 'zpu06eda' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'XsmwEtkU' 'NFRmXvS3' --body '{"additionalData": {"zS6cfUYo": {}, "XgXJUaWa": {}, "shW8JDN4": {}}, "updateStrategy": "MAX", "value": 0.1304896734290012}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"lEm2d78y": {}, "1bTRxPrt": {}, "6hWRWKVI": {}}, "additionalKey": "Xws8EcRC", "statCode": "NiSXaBJF", "updateStrategy": "INCREMENT", "userId": "cT1Qs2l0", "value": 0.975684037618986}, {"additionalData": {"zdh81e2V": {}, "7AuQgvGn": {}, "V96EAKjH": {}}, "additionalKey": "22iBhm4K", "statCode": "ZxPyLMWL", "updateStrategy": "INCREMENT", "userId": "WLVjEqK1", "value": 0.6470026509169065}, {"additionalData": {"owEr6XDj": {}, "TFP0owul": {}, "FmLglwqi": {}}, "additionalKey": "fVzCMC7X", "statCode": "ifY5FCoq", "updateStrategy": "MIN", "userId": "eKeoqHBN", "value": 0.16086214893074213}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'zO5gIWOA' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'W9X21rEI' --body '[{"additionalData": {"qdfgJANU": {}, "tWnB7VgR": {}, "Zu6sC3D7": {}}, "statCode": "7XUmNsf0", "updateStrategy": "OVERRIDE", "value": 0.4295973897950932}, {"additionalData": {"sRClXbBT": {}, "XVuDFGyH": {}, "O1bwtlyU": {}}, "statCode": "Q9QhPXLl", "updateStrategy": "OVERRIDE", "value": 0.5354811523700578}, {"additionalData": {"0ZdCROaO": {}, "0ftmGgOm": {}, "h7ClSLwR": {}}, "statCode": "wuuOKkeN", "updateStrategy": "MIN", "value": 0.4179790771487212}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'VEd6NoQO' 'xlMcWTUY' --body '{"additionalData": {"jy5V8j3M": {}, "QV6yeHOY": {}, "gzORE8QF": {}}, "updateStrategy": "MIN", "value": 0.10309427841307506}' --login_with_auth "Bearer foo"
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
echo "1..75"

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
    --body '{"maxSlotSize": 53, "maxSlots": 73}' \
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
    'eQXIFXuw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'WzPIUyLq' \
    --body '{"maxSlotSize": 41, "maxSlots": 70}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    '2w4ftCah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'z4bRqaLS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'yNt88Ox8' \
    'uO7QsLtc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    '50u01fc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'F2SUCbRs' \
    'ex9pUpZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["0fat5Yc5", "7f7D8EgT", "kXo97HUo"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    '3J5dcLWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'WPJecF7Z' \
    --body '{"achievements": ["uUBpUr2n", "eH6lKHoq", "8kNs4QoQ"], "attributes": {"KfdCY5jJ": "d3fZWJN7", "c6HFAKAa": "br0NMXXP", "Hf8lmrRt": "44O2j14G"}, "avatarUrl": "34PSrfVp", "inventories": ["UumOzJ2y", "bxPMuFDc", "Zh3K6GkL"], "label": "R9josZwA", "profileName": "eCS5ml1N", "statistics": ["UpIKqu4Q", "Bpsa6SUJ", "6GLN4gZC"], "tags": ["Lbjd2xho", "BpFE1BDS", "Vsw92f3O"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    '1o8s02rC' \
    'mfiDqAiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'flgGUBst' \
    'AehVCwlD' \
    --body '{"achievements": ["N40NU2gD", "pTRDtAla", "WMErRqM0"], "attributes": {"1eVYpD4J": "dF9QlDmQ", "7gXNZPEQ": "xCxLuLid", "Z1zV0Enx": "nV2Jq6RX"}, "avatarUrl": "tRPyLgvj", "inventories": ["Q6BdXT0d", "vDRhrZuD", "lLkACfJg"], "label": "cxdW1p8P", "profileName": "VwxuJUj5", "statistics": ["DiuHEfuO", "NZoV6deT", "qDMtdrVi"], "tags": ["IbD326ww", "k2FZVKPZ", "3emfoqta"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'r1zkPqFl' \
    'tgRdOa9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    '8QlpgMfs' \
    'KUnMNA6j' \
    'ANyKjIhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'RnCGXjzc' \
    'CNiTu9dc' \
    '49id3rfX' \
    --body '{"name": "yERncu5Y", "value": "uL9HxCGm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '7BrCBV9q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'wBe2dvNX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'UYrQ1qDd' \
    'rbqbI0Ep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'KG5fL5S2' \
    'fIxDyTYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'sLjAuhcj' \
    '3GB88AAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'MvIZqB0Y' \
    'dzijACGz' \
    --body '{"customAttribute": "gS9otn7s", "label": "xutSWnEO", "tags": ["UwzlXy8h", "v0ir8giB", "YOmRNepN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'Khi8FhmI' \
    'lG7V9v4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.667024201844742, "statCode": "lBqjMaE5", "userId": "EX9PWoeT"}, {"inc": 0.6831545585431301, "statCode": "21pi2zUb", "userId": "vF3Ulryn"}, {"inc": 0.4629392586224237, "statCode": "1FfQoFDX", "userId": "EDgzCxkT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.12436371593070061, "statCode": "jTKIK7aD", "userId": "CI4uyQdb"}, {"inc": 0.4355762456100414, "statCode": "1sKC7SiZ", "userId": "kLvwfC2J"}, {"inc": 0.7399711270095476, "statCode": "kmePK8Rm", "userId": "CswDTj2G"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'ZmpbzOvD' \
    '["o80wvgev", "6bCAPQ5Y", "jK4jeIzs"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "QtH8VytT", "userId": "y4UdU5PJ"}, {"statCode": "yyFtwAU1", "userId": "P90eSF4w"}, {"statCode": "b8lhK0nC", "userId": "G60Wa13S"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"defaultValue": 0.6710163621692372, "description": "ebTRdFvG", "incrementOnly": true, "maximum": 0.5439794955884502, "minimum": 0.7638022634385887, "name": "k95oQG0V", "setAsGlobal": false, "setBy": "SERVER", "statCode": "HCzmwYY1", "tags": ["LWpbQx4F", "f5wcdF65", "KoZeRo0L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'FQU5DYjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'ag3ty8P4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'IXNihE0F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'KQBykUPV' \
    --body '{"defaultValue": 0.9245200025157333, "description": "PEovO8Bz", "name": "cOIRHxSN", "tags": ["fDB2r3NH", "NLAPp4dX", "Yfjfq2YU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'Hs0x3Cxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'MGL3Mxie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'tid8hZjz' \
    --body '[{"statCode": "2RiZrfoH"}, {"statCode": "TNeCGSFU"}, {"statCode": "DcNjLtOg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'oE8potLg' \
    --body '[{"inc": 0.08790371707058409, "statCode": "uRvp6Slq"}, {"inc": 0.513993419730027, "statCode": "2trWYQ86"}, {"inc": 0.02079485643559842, "statCode": "6iQaC6dU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'AnO9ORWn' \
    --body '[{"inc": 0.319750140054895, "statCode": "SlqKJo4t"}, {"inc": 0.8581758093862268, "statCode": "JoMYvEWF"}, {"inc": 0.07732498421376599, "statCode": "qbKwKG1X"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'qPNHYKy9' \
    --body '[{"statCode": "GcAR7kmS"}, {"statCode": "6MGNU4iR"}, {"statCode": "AVo72ao8"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'ZM3GxpiA' \
    'OkvJ3IhK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'dW1vUhYV' \
    'GlW4yXq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'KzqV8DMt' \
    'm3sAlArA' \
    --body '{"inc": 0.20296591738087455}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'mVSFMzf8' \
    'nf2FHJcT' \
    --body '{"additionalData": {"6w4mBmeJ": {}, "Wl09g8o1": {}, "ZX4ZgNIS": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'DpuqkV7N' \
    'u0IuOn2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.2165153240920954, "statCode": "4WB3IOkG", "userId": "BuAjqjW8"}, {"inc": 0.31328021281393104, "statCode": "sZRwnMqz", "userId": "uTQ5jo67"}, {"inc": 0.43464861741816885, "statCode": "HR5WV3qq", "userId": "wo7JKoIJ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.8632077440899885, "statCode": "Nb34QLuo", "userId": "tryjTsEn"}, {"inc": 0.17292485953502146, "statCode": "HhwEnJdh", "userId": "RxUuAN1o"}, {"inc": 0.27256773940938495, "statCode": "eykdo4Ac", "userId": "jMJkSTQG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "0aKp60Cz", "userId": "3PTtP1Ua"}, {"statCode": "JsirUIZt", "userId": "FpyrLKlW"}, {"statCode": "t97XcuHL", "userId": "Cvno10D3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.11520831994726621, "description": "qIye9JuX", "incrementOnly": true, "maximum": 0.6289797850416116, "minimum": 0.7074044723914205, "name": "qJPPjT5Y", "setAsGlobal": true, "setBy": "SERVER", "statCode": "BnNn2hgp", "tags": ["1xuxF0YH", "abVAuyNd", "d9U1WLrr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'skjAHrjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '8xk3Kwok' \
    --body '[{"statCode": "jx3OtNSz"}, {"statCode": "PNVotajD"}, {"statCode": "vDjMeZjb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'DZg9PzbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'yxyA3Eav' \
    --body '[{"inc": 0.3820991942663673, "statCode": "kUgwfMb9"}, {"inc": 0.9232369903462115, "statCode": "7iNLRV9N"}, {"inc": 0.5087584643361613, "statCode": "FrbX60WD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '6AmOVqb7' \
    --body '[{"inc": 0.050960926285665065, "statCode": "Dx2JOpbD"}, {"inc": 0.7947778495661928, "statCode": "Ou3KSdoy"}, {"inc": 0.43335005368104496, "statCode": "OwcTfm3K"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'bOplHyMd' \
    --body '[{"statCode": "BrXaGfJ4"}, {"statCode": "ryd3ptmd"}, {"statCode": "eZh1WExI"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'zEyT1GDN' \
    'iOJWCfZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'DQfvtmaH' \
    '7MiGfVhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'n0RFbWqa' \
    'EbOZPYae' \
    --body '{"inc": 0.05650526096863784}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'smx1vdKM' \
    'sQdsPMJX' \
    --body '{"inc": 0.9790492462641943}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'oFypAY7P' \
    'yP0HByP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"t4SBhndg": {}, "sp3xcYXs": {}, "uSBYKJ7q": {}}, "additionalKey": "kbu16pQh", "statCode": "nhWgV42e", "updateStrategy": "OVERRIDE", "userId": "2hgtWID1", "value": 0.2449983417520163}, {"additionalData": {"UNTqKvE8": {}, "cewKETmK": {}, "IdrEWH56": {}}, "additionalKey": "p8SoQgUF", "statCode": "obcO7btd", "updateStrategy": "MAX", "userId": "mDf3CMj0", "value": 0.3449388819923821}, {"additionalData": {"hGrBURo7": {}, "OMGb3a7g": {}, "fLLSYK8z": {}}, "additionalKey": "w0CMpWTc", "statCode": "w5NgvwIK", "updateStrategy": "MAX", "userId": "ijcnpYHS", "value": 0.19105490984623819}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '1FkZGL1T' \
    '["vpZDEsaY", "1naPD8d8", "EIYvXD2h"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'jX6yqH3w' \
    --body '[{"additionalData": {"h23IeidE": {}, "9HhIZ8PE": {}, "9y3npT3T": {}}, "statCode": "CBE0qK06", "updateStrategy": "MAX", "value": 0.9419863435026219}, {"additionalData": {"N46YRpjX": {}, "nDAWgdIg": {}, "BZFtyLGr": {}}, "statCode": "KIBb3LOW", "updateStrategy": "OVERRIDE", "value": 0.27221957451110645}, {"additionalData": {"KvjVgzSk": {}, "1ERpiB95": {}, "ApDFbf0K": {}}, "statCode": "7Xj8xeSH", "updateStrategy": "OVERRIDE", "value": 0.8780059936454363}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'SRCDbNYU' \
    --body '[{"additionalData": {"QUrmel1z": {}, "ZfhnEHcn": {}, "8jAocc6X": {}}, "statCode": "YvmU7d6l"}, {"additionalData": {"ptfkvmY2": {}, "mEmxuLGH": {}, "DnTx1vx9": {}}, "statCode": "yfjPktQ9"}, {"additionalData": {"jSJz1Emh": {}, "o4Sw3zYy": {}, "vJt40AkB": {}}, "statCode": "DwoAf6IT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'QLhlyu5z' \
    '79ounMFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'pVnzRAHS' \
    'czr79aEB' \
    --body '{"additionalData": {"7lVtpziO": {}, "nXlKJPdZ": {}, "OxNMpMmi": {}}, "updateStrategy": "MAX", "value": 0.1012305412968455}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"z7C9wg0D": {}, "hTnc1XWc": {}, "NhYd1FOa": {}}, "additionalKey": "0w079pnh", "statCode": "YN1VLeGO", "updateStrategy": "INCREMENT", "userId": "ZDgm0Z0e", "value": 0.78661089010859}, {"additionalData": {"daXCXfrd": {}, "jS7vnDR3": {}, "UpvTiScQ": {}}, "additionalKey": "q6glFeUY", "statCode": "3XvpVKcR", "updateStrategy": "INCREMENT", "userId": "Fll3Jjru", "value": 0.9372810289768702}, {"additionalData": {"KHSnqRy6": {}, "v7rAbWvZ": {}, "CgoEThz4": {}}, "additionalKey": "oN9XNyv7", "statCode": "wjUs7HD4", "updateStrategy": "MAX", "userId": "v4oY4Ya9", "value": 0.9871429720434205}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    '0OTgMTnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'wySgXHt4' \
    --body '[{"additionalData": {"dW0wiT5v": {}, "WK2hDFxQ": {}, "edXSCGi3": {}}, "statCode": "LD0PkeTs", "updateStrategy": "MAX", "value": 0.7146266546505928}, {"additionalData": {"y36cJytw": {}, "xdiiYflG": {}, "qTrUlcWV": {}}, "statCode": "tVolEnz4", "updateStrategy": "OVERRIDE", "value": 0.9499690776059782}, {"additionalData": {"mV8d84e8": {}, "gWZEUhNt": {}, "faYnZWHT": {}}, "statCode": "0F1KX5K6", "updateStrategy": "MIN", "value": 0.7345383414130617}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'HnN78On8' \
    'RegjrqWg' \
    --body '{"additionalData": {"ec8IEiMA": {}, "HBSS0OA6": {}, "9lQfgV8v": {}}, "updateStrategy": "OVERRIDE", "value": 0.8984229894707078}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
