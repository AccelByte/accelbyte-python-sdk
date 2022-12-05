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
social-update-namespace-slot-config --body '{"maxSlotSize": 69, "maxSlots": 69}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'W2GsFPwL' --login_with_auth "Bearer foo"
social-update-user-slot-config 'pndWkeYH' --body '{"maxSlotSize": 23, "maxSlots": 19}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'eXeGmCYj' --login_with_auth "Bearer foo"
social-get-user-profiles 'cAVrUDCW' --login_with_auth "Bearer foo"
social-get-profile 'QXsl8n7p' 'nghkZuws' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'NFXy6H5X' --login_with_auth "Bearer foo"
social-get-slot-data 'UcMiLMkH' 'pDV2QdJi' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["E5MX8wrs", "EGoBfs7U", "o7tiTtbA"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'WJ3AAD1N' --login_with_auth "Bearer foo"
social-public-create-profile 'aZkKLsIK' --body '{"achievements": ["EhxFCWyu", "793dPbr0", "mPSU14Ra"], "attributes": {"4L9kaLqO": "DLPl6zAi", "LMC8vjrO": "x5fy4sSO", "vvPlQrtL": "771olPRK"}, "avatarUrl": "GGocVOvA", "inventories": ["7D4rmUJI", "fMg7wyJk", "leZ4wWcC"], "label": "dplbNy6u", "profileName": "IBYe3psD", "statistics": ["Xgm0p940", "ajHd3gku", "q0ye03q7"], "tags": ["B6sMhjhF", "KfMd2YkI", "gR9KnvMy"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'LB7WJSyQ' '82sScQSL' --login_with_auth "Bearer foo"
social-public-update-profile 'Kl0uDxvh' 'h6p3UNyi' --body '{"achievements": ["FOujRPdp", "t7BKEhtL", "2EnRWybx"], "attributes": {"I7YgCFBc": "JJgAIS8y", "RM6AVcKI": "8GbfQwrm", "LlmZTZ0k": "rkEYiU4e"}, "avatarUrl": "wUH9twZK", "inventories": ["zQDlNwZY", "OBje3fJb", "pIKKIxPX"], "label": "fxMkktzF", "profileName": "ZfpLKWXZ", "statistics": ["Xzk8QxYq", "RzA7TmqL", "OuZTPXe5"], "tags": ["TEmLie1c", "ltrpTdCQ", "sB8VLGJq"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'md65oxd4' 'mYm0hsw9' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'ZKrHE3UK' 'cYREygYm' 'izxhcZDs' --login_with_auth "Bearer foo"
social-public-update-attribute 'p76Z8sUV' 'qJ59AVyM' '7VVTv4Wm' --body '{"name": "oTGIn5iW", "value": "ZiDtagwY"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'HSRqzwc6' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'ulk60CF2' --login_with_auth "Bearer foo"
social-public-get-slot-data 'zaDaidBP' '9vSzUk5A' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'qAJZLkWS' 'KkIf99ht' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'idNkyyEA' 'bLPBUuVC' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'DzJQKrzI' 'hGqS7kg9' --body '{"customAttribute": "tC91wNEr", "label": "qpYq8cVs", "tags": ["JW6nNZzr", "fVwb9PVO", "eYDtZV7j"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'iU0GDU44' 'tSCWJ7Ix' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.2192179927156367, "statCode": "mm0kvuQO", "userId": "JWzZXV3W"}, {"inc": 0.4256314683446142, "statCode": "XHSzfgwo", "userId": "RjjkAI3T"}, {"inc": 0.6294142717120272, "statCode": "kucstpoe", "userId": "gHtZBsRT"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.6471994678288407, "statCode": "Bbl2cdzC", "userId": "eb5SFHAe"}, {"inc": 0.5564874098596365, "statCode": "J3CWfPGe", "userId": "FKFAeEKr"}, {"inc": 0.21861495574626433, "statCode": "VtKijffj", "userId": "oMKyPG07"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'OT7u3yaS' '["OCxNxDxL", "BqDECsKc", "kLolh7IW"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "UAeHwZKW", "userId": "yh3oGFUr"}, {"statCode": "uOOwK6IM", "userId": "kqpstuji"}, {"statCode": "62OmlXWn", "userId": "e590y9ok"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.7971534530024922, "description": "zr72lFLF", "incrementOnly": true, "maximum": 0.8451765818262339, "minimum": 0.6025593190771862, "name": "0SePj0if", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "8Miv9zVJ", "tags": ["8ZT8WugC", "0iHK79kF", "ouN0FnA5"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'MChwj0ty' --login_with_auth "Bearer foo"
social-get-stat 'EqdRSg8T' --login_with_auth "Bearer foo"
social-delete-stat 'IKbSF7f6' --login_with_auth "Bearer foo"
social-update-stat 'BrZ596ES' --body '{"defaultValue": 0.670440552006751, "description": "tfkIH7H4", "name": "CeK761DX", "tags": ["SI4iswDh", "akjDh1WX", "nUGiAI3e"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'K41y7dkJ' --login_with_auth "Bearer foo"
social-get-user-stat-items '74jSOxG0' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'glPLbPA6' --body '[{"statCode": "ZfHWeg9r"}, {"statCode": "1YHgN3l9"}, {"statCode": "HebqR9YS"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'iW8JLM78' --body '[{"inc": 0.999306121263096, "statCode": "JSjp7ADv"}, {"inc": 0.8697439701995285, "statCode": "8d5gH1Kc"}, {"inc": 0.5166976132725574, "statCode": "kYXJCwgk"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'tCdXWNFP' --body '[{"inc": 0.7586736183879664, "statCode": "PZQRPm2z"}, {"inc": 0.011101716355177649, "statCode": "vxVeNskB"}, {"inc": 0.6204017908489924, "statCode": "BJyfKVyC"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'QHoCoNUs' --body '[{"statCode": "WqxZhwQP"}, {"statCode": "ToosNj9K"}, {"statCode": "YYpmtpYT"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item '6I8vo01b' 'XVmkB5Zt' --login_with_auth "Bearer foo"
social-delete-user-stat-items '27nMdtgV' 'DVEak7pG' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'lcDjrIf4' 'tSMLVgzA' --body '{"inc": 0.5383768561001364}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'obgN12UW' 'y042eaej' --body '{"additionalData": {"HpZZWY7t": {}, "firTQ06J": {}, "foMe6ttG": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'JOXw44Pw' 'dIGWL4rJ' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.42602409384015594, "statCode": "aL1q52bC", "userId": "iHL8mawq"}, {"inc": 0.30758816280359125, "statCode": "8LVGUjMF", "userId": "OGWFwuxU"}, {"inc": 0.356913716300543, "statCode": "7MmA8TjI", "userId": "ScTh0O21"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.03589965240675219, "statCode": "9yyrmVsu", "userId": "R68SLxAe"}, {"inc": 0.3441103191237731, "statCode": "l0n7qIVI", "userId": "dT1sMkPQ"}, {"inc": 0.42490141332141107, "statCode": "tdFmSmjt", "userId": "hlmQc6SX"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "8q4lNqOT", "userId": "0RuYhatA"}, {"statCode": "zHoGXjNx", "userId": "sIQGjKd2"}, {"statCode": "gr2UgpvN", "userId": "9CRUm8KH"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.10236469590877251, "description": "Cpv3lVs0", "incrementOnly": true, "maximum": 0.6388759897504679, "minimum": 0.5345721774476994, "name": "rhtWbenZ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "Or7EO9Ka", "tags": ["Hgn7RUHJ", "7kLbJG3T", "vT1IhcG9"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items '1BiZh4s7' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'XgmF681s' --body '[{"statCode": "SAel2YXS"}, {"statCode": "HQX1ho6K"}, {"statCode": "fcrWf4yD"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'o1WQMoAi' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'n0J8mS97' --body '[{"inc": 0.5958953242378201, "statCode": "Er0Xh0zm"}, {"inc": 0.571330128637292, "statCode": "YB6DSq1s"}, {"inc": 0.005085673909617006, "statCode": "9CyomRRH"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '9gsGGG0S' --body '[{"inc": 0.39482447658020525, "statCode": "RhY4EF8w"}, {"inc": 0.7960890665729247, "statCode": "1Eeqx9II"}, {"inc": 0.1002402334526934, "statCode": "mE5chwNT"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'nkwBo55e' --body '[{"statCode": "HpTklGiM"}, {"statCode": "gPIXNB3y"}, {"statCode": "nkp7IcO4"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'voaStit9' 'xWbTBOKg' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'yhhHmeI6' 'HBD8u0GL' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '5PGlOWzU' 'UcuNO3xo' --body '{"inc": 0.7776103788180676}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'I9t9tSQ3' 'AkYFLrQp' --body '{"inc": 0.9431311332746839}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 '3sNnrDt7' 'oEsYLIyc' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"t5fdPHpU": {}, "rJvXM72j": {}, "QyfDxF3Y": {}}, "additionalKey": "WcuCWB5B", "statCode": "Zx8iVsrI", "updateStrategy": "OVERRIDE", "userId": "LeVP71M3", "value": 0.888469492615956}, {"additionalData": {"gd7VvPMu": {}, "pLl9wYcG": {}, "dTEdvEQi": {}}, "additionalKey": "ySog29vf", "statCode": "NcinsVQZ", "updateStrategy": "MAX", "userId": "OnFmfzxO", "value": 0.6114253486063037}, {"additionalData": {"Pn3AL8M2": {}, "ZObbJ21r": {}, "0chSEt7T": {}}, "additionalKey": "1DO0wRlr", "statCode": "8oPFkQCV", "updateStrategy": "MIN", "userId": "USJCNFK0", "value": 0.06225963180640137}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '6J5fiwU8' '["rdYZFUc3", "GHm3Q9R0", "tFaoI07q"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'cJdzqtoM' --body '[{"additionalData": {"xYl11M1c": {}, "lOVqTpxA": {}, "xcJ2eAr9": {}}, "statCode": "f96d8uQG", "updateStrategy": "OVERRIDE", "value": 0.3888546764172587}, {"additionalData": {"ZlhIBN74": {}, "gTXKi3SC": {}, "ZWo4x9U7": {}}, "statCode": "H0MkFdxK", "updateStrategy": "OVERRIDE", "value": 0.6504936003642329}, {"additionalData": {"4jBzVVsL": {}, "ksZWKYJT": {}, "bwFTi1xk": {}}, "statCode": "B2lRuXc9", "updateStrategy": "OVERRIDE", "value": 0.7642978315599959}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'QfQdP0YR' --body '[{"additionalData": {"DsWOsRPP": {}, "TRk7DnpT": {}, "OTnGFrKa": {}}, "statCode": "hS2Nd8dY"}, {"additionalData": {"TnQpl0qL": {}, "Inq2uGbj": {}, "ua17KImT": {}}, "statCode": "YoB0L1yq"}, {"additionalData": {"Q9LQkXjh": {}, "hlB1X4D1": {}, "I3FNGBpe": {}}, "statCode": "NYEqCmYv"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '9zYHw1BR' 'b4Eehg2d' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '7UJMm5TG' 'O7WLm0UW' --body '{"additionalData": {"qogCRXt9": {}, "4Y13GJpy": {}, "ZgOzCHkJ": {}}, "updateStrategy": "MAX", "value": 0.6232284510858889}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"ti0VNLDb": {}, "FoxMikv5": {}, "Zih7zfbj": {}}, "additionalKey": "dROypj0k", "statCode": "MfO53TYG", "updateStrategy": "OVERRIDE", "userId": "s19c6xRz", "value": 0.5445165529453998}, {"additionalData": {"TpYf9wYb": {}, "dfIDMa4k": {}, "zEFudro1": {}}, "additionalKey": "xouogmj0", "statCode": "xy9D8YNK", "updateStrategy": "MAX", "userId": "ZqTtrSxU", "value": 0.8946253021146702}, {"additionalData": {"einfgJH2": {}, "kMOBo86P": {}, "pusgdRcu": {}}, "additionalKey": "2fcPNiAe", "statCode": "f57ZaGmQ", "updateStrategy": "MIN", "userId": "MoWwBR9C", "value": 0.646980614558729}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'davVGEym' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'oI6t6n10' --body '[{"additionalData": {"VBOoyUzc": {}, "tqKVwwKy": {}, "gMzjAABf": {}}, "statCode": "OgSEKevy", "updateStrategy": "MIN", "value": 0.9497960314905034}, {"additionalData": {"kpG4fSpY": {}, "aAvvhVRr": {}, "6CZHZNE7": {}}, "statCode": "dtFgvFd1", "updateStrategy": "MAX", "value": 0.3525654232067479}, {"additionalData": {"izUZfeZe": {}, "ehZAcg2S": {}, "ufBFqT9G": {}}, "statCode": "dJafiJkI", "updateStrategy": "INCREMENT", "value": 0.8037530078335634}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'TgE9uPBC' 'fugpDRoj' --body '{"additionalData": {"Y6ZBp7GR": {}, "OO2yeEyE": {}, "2HE5wxt8": {}}, "updateStrategy": "MAX", "value": 0.03730066065917559}' --login_with_auth "Bearer foo"
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
    --body '{"maxSlotSize": 57, "maxSlots": 62}' \
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
    'QnMlYooC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'TuGr2vLd' \
    --body '{"maxSlotSize": 95, "maxSlots": 43}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'CdIszAzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'eUahaAWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'rnO7Qu77' \
    'mTs0Mge8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'Izi4iji4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'WMKf2QXJ' \
    'nnqJnxxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["ghPCiVwe", "p6Pqvvea", "wqUK7ELR"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'yRyKPPBZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'HEICycoE' \
    --body '{"achievements": ["WvStKv6T", "EbydvgDS", "FB9LGfuk"], "attributes": {"M3IaRmsJ": "NuQJ3LCc", "Uq2JVuBn": "fBYNIgV6", "OmipQRvo": "I7jcEReu"}, "avatarUrl": "kGJNyyPY", "inventories": ["wR5ykgm1", "GXxAKvO0", "TNK9oSRf"], "label": "jcmYkqo8", "profileName": "FDo37jOq", "statistics": ["LMBuNNp2", "vytxnegM", "JADRN9eP"], "tags": ["75KhRzAD", "G8wZpRCg", "8VLN8hEv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'WSIhq74p' \
    '7aoNqN0M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'T3hDi8tY' \
    'P0PGiT7Z' \
    --body '{"achievements": ["IbFeyoud", "H1ZamaLG", "EfYN3saP"], "attributes": {"ZJzok7g5": "55f6nnFh", "0TkxfuAF": "iMKSJTmL", "nsoIDym3": "LSkibNMH"}, "avatarUrl": "uKvTqFII", "inventories": ["qUjo85eg", "D4gnj367", "15oDEtwQ"], "label": "lx8cIZkf", "profileName": "Ys20pEZz", "statistics": ["OGG0yluD", "KVnC9dGw", "UuHVStpv"], "tags": ["r9mMUSfQ", "4Z4kcxbL", "w9L5k9aB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'CNm5ajI4' \
    'E9tUeaeZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'U6kAq3vr' \
    'X614rGaO' \
    'RdosRA1V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'nfG5n8V1' \
    'FYgGN8Cr' \
    'A4M5RZJB' \
    --body '{"name": "mn8Nxv5i", "value": "nF9jVSQk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'bCpmnrjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'dnUIzP8u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'v1wiZCfh' \
    '58ODbQyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'lTgpTC3E' \
    'jWykHTof' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'tHr8ucfk' \
    '4GQUeeEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'Rm8TMlcz' \
    '2OwSO8eI' \
    --body '{"customAttribute": "YCqoSouz", "label": "TNjpuY0B", "tags": ["oWYBmcyP", "qhUlj4mC", "wT0KLFoH"]}' \
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
    '2bdgjyKT' \
    'ckYPSnmF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.18912544533770703, "statCode": "iuMoFTQZ", "userId": "gNtvgrKj"}, {"inc": 0.798618334438842, "statCode": "izpRIPP5", "userId": "Vy6FiB1I"}, {"inc": 0.015549079073894134, "statCode": "FPtOp9cu", "userId": "OqsNPiZA"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6543273553884827, "statCode": "98RahmHR", "userId": "vypEilpi"}, {"inc": 0.8329125731113912, "statCode": "JbrWES21", "userId": "3dvMzrW9"}, {"inc": 0.9845201678226778, "statCode": "QNjh2see", "userId": "Q2EsnWKg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'ZwpDJRe4' \
    '["yn0Lmqpf", "3oWj9GtM", "RMNYg447"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "Zv69IHLc", "userId": "cVoRcNgi"}, {"statCode": "9SPaxKE7", "userId": "Vo1ETH6S"}, {"statCode": "rm1F26In", "userId": "pHQGowYR"}]' \
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
    --body '{"defaultValue": 0.6406265954456392, "description": "e3Ye4Hki", "incrementOnly": true, "maximum": 0.8157061154046021, "minimum": 0.8834432746751488, "name": "SXQw9Xpi", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "BYHZu48W", "tags": ["z4ecdN8i", "Yg4ZVEES", "yw6SF8tH"]}' \
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
    'x9pxffbH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'QcxiUwVZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'KNpZ3b3p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'JqBdSn15' \
    --body '{"defaultValue": 0.36680201656964884, "description": "5hHLoW3k", "name": "Whf9nbFp", "tags": ["YJ9TasMM", "CWIuj56h", "mvqHgGpS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'FVv50leV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'BxDFn6Mw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '0KlRcKr4' \
    --body '[{"statCode": "8AuCUC1L"}, {"statCode": "oihHdOFN"}, {"statCode": "9m2PqCZD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'I11M0eGY' \
    --body '[{"inc": 0.16019101478556497, "statCode": "yxu2Zbcx"}, {"inc": 0.10633298801464075, "statCode": "NZkhzUzc"}, {"inc": 0.9298245993155609, "statCode": "UqCKxMmg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'clTaBsGJ' \
    --body '[{"inc": 0.955245146893725, "statCode": "GomXLIFI"}, {"inc": 0.24803168849712454, "statCode": "q3hwKY5B"}, {"inc": 0.3340900134571597, "statCode": "E3bl3D9B"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'NARlawHa' \
    --body '[{"statCode": "imZJ7fBy"}, {"statCode": "lilvZSnx"}, {"statCode": "RMkyfRG8"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'qS3bwk0e' \
    'KEMd0JJI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'dTQdhOuV' \
    '9gZSkBGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'bAE0jmhw' \
    '8zHUQFjD' \
    --body '{"inc": 0.22052393209437604}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'dBcWf1iw' \
    'fAtKKWkw' \
    --body '{"additionalData": {"khoZRzTK": {}, "dfG28iJd": {}, "8aug6QTP": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'fU1sF7fa' \
    'Io7bs9xv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.6205757031467324, "statCode": "WRUSD4T2", "userId": "npLai7HL"}, {"inc": 0.8576347442075832, "statCode": "mWtw8OJC", "userId": "LhilP7R0"}, {"inc": 0.044231934867711376, "statCode": "qF55g5d5", "userId": "FR6UuG5X"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.9339065342103381, "statCode": "281b0WxE", "userId": "hTdnK5qP"}, {"inc": 0.14011130481524026, "statCode": "tx4UW3hm", "userId": "PrGchQL0"}, {"inc": 0.6200067855147839, "statCode": "qT0cU6CF", "userId": "RlKsnIv4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "CvAhQeGY", "userId": "GzbwyUO8"}, {"statCode": "NHlkEhKG", "userId": "FWBzvBTv"}, {"statCode": "MBqGWiDT", "userId": "c6ggrhEN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.4641321145893228, "description": "TTXNyCKm", "incrementOnly": false, "maximum": 0.17473082404822748, "minimum": 0.15924004602163255, "name": "AVVMXkcK", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "lqV3T6M5", "tags": ["KhMhVpP0", "hIEB1CMS", "xPwLwKWw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'og2uRKNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'KPg4E9UK' \
    --body '[{"statCode": "lFz9EuM8"}, {"statCode": "GyfWvwcC"}, {"statCode": "EqFt8vQ3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'MQg7OHgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'EXjbePZm' \
    --body '[{"inc": 0.42469921455523585, "statCode": "tcp3flPR"}, {"inc": 0.43725880072552503, "statCode": "d9JJefrd"}, {"inc": 0.2946730806463659, "statCode": "SMPBaw1l"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'jUkLegxj' \
    --body '[{"inc": 0.150810860127241, "statCode": "Dg0hhObX"}, {"inc": 0.6662635010557074, "statCode": "m9UjDjVc"}, {"inc": 0.3672871538577761, "statCode": "n2O5P9ZH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'HV9IwdJP' \
    --body '[{"statCode": "qLYQsE00"}, {"statCode": "C7IZHJKe"}, {"statCode": "iNTJvLyx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'NmGcPb0c' \
    'BmUmpW8Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'BiuhpZ2e' \
    'UdHafbfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'rvoe08l1' \
    'IwOs4x3l' \
    --body '{"inc": 0.9846322553252285}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'xv0KrkUN' \
    'C3G0AWgH' \
    --body '{"inc": 0.658834972488488}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'JrbpUbI2' \
    'tXPECqkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"mwO5D3XP": {}, "AcZnx4Ff": {}, "2pl17M6N": {}}, "additionalKey": "7sujAuUZ", "statCode": "j8LmIClG", "updateStrategy": "MAX", "userId": "HkDilhfP", "value": 0.057910106339056355}, {"additionalData": {"2IIwLtWy": {}, "E8DfWo8s": {}, "Jl6yPlOF": {}}, "additionalKey": "mbFwqgTq", "statCode": "p1WzLUw4", "updateStrategy": "MAX", "userId": "4t7YU2V7", "value": 0.7524826647366079}, {"additionalData": {"I6D7i3Ul": {}, "sN6yFFDx": {}, "aTerstnH": {}}, "additionalKey": "XFLPclCz", "statCode": "Qm8bzsej", "updateStrategy": "MIN", "userId": "Xz4J3K2G", "value": 0.5117207362212411}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'a950Wyzy' \
    '["8xaPAkwj", "WPsP9sFU", "Uv1zYgw1"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'TyRZwbWy' \
    --body '[{"additionalData": {"aPQlQ73H": {}, "DIPCZjO2": {}, "XlUMAIs0": {}}, "statCode": "TzVYuu1z", "updateStrategy": "OVERRIDE", "value": 0.3354819053224285}, {"additionalData": {"QHu2694P": {}, "PXj9X4PT": {}, "9Wy8k3Hi": {}}, "statCode": "GlpCQE7b", "updateStrategy": "INCREMENT", "value": 0.498506986977021}, {"additionalData": {"veqfpRWn": {}, "qjlthA7T": {}, "KIbvd6mm": {}}, "statCode": "bRE84gDQ", "updateStrategy": "MIN", "value": 0.5383018935041589}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'hhglPgVi' \
    --body '[{"additionalData": {"bljcOM2s": {}, "5jKUE6nU": {}, "JjZNxHSb": {}}, "statCode": "pS6y7god"}, {"additionalData": {"75L0eBt7": {}, "nW8F2Z3z": {}, "oJELPne4": {}}, "statCode": "9mM2sdxF"}, {"additionalData": {"iQFOecpV": {}, "H8h2Ynrq": {}, "4eeM6EcU": {}}, "statCode": "mKsn8lh2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'RSZqQaub' \
    'whV6FYYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'hMkT5WUc' \
    '13p2usLm' \
    --body '{"additionalData": {"Vw6r5CaV": {}, "DxO8La6x": {}, "gwpdlXBZ": {}}, "updateStrategy": "INCREMENT", "value": 0.7355618631998047}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"YwJlOLej": {}, "JVmVzXBU": {}, "CQhcMn9H": {}}, "additionalKey": "pzmNrAfe", "statCode": "jbI4Uj0u", "updateStrategy": "OVERRIDE", "userId": "O5TX1fCZ", "value": 0.26943192773185765}, {"additionalData": {"m6HXizOn": {}, "eWOMVPFJ": {}, "s8Xz7Zb2": {}}, "additionalKey": "aItrpnLy", "statCode": "IWTeRsFk", "updateStrategy": "OVERRIDE", "userId": "JJZvF778", "value": 0.02614615255430719}, {"additionalData": {"9Wdlpsws": {}, "f1m4BjwE": {}, "R6Cfo7vZ": {}}, "additionalKey": "5sTcT7nz", "statCode": "dn6HGnfG", "updateStrategy": "MAX", "userId": "3ULAOlOg", "value": 0.9261238209967658}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'S8qH5V1D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '1tM6KV9h' \
    --body '[{"additionalData": {"TbxdcwmD": {}, "xmBNgSNG": {}, "XrRmvuxl": {}}, "statCode": "PWZ9OGiq", "updateStrategy": "OVERRIDE", "value": 0.23854918513215873}, {"additionalData": {"Qw9rOi3r": {}, "QZiaYjoa": {}, "Cluu9ldq": {}}, "statCode": "XElPoAE5", "updateStrategy": "INCREMENT", "value": 0.19785136189259922}, {"additionalData": {"BA5oE2jK": {}, "myuFxPSn": {}, "eXnxQXWP": {}}, "statCode": "t1z7W3IA", "updateStrategy": "OVERRIDE", "value": 0.3715287525268802}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'iepUsa4W' \
    'BIr4ihxW' \
    --body '{"additionalData": {"loh0kgSv": {}, "8iCOEwmY": {}, "rEFnysGi": {}}, "updateStrategy": "MAX", "value": 0.16618331119446428}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
