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
social-update-namespace-slot-config --body '{"maxSlotSize": 30, "maxSlots": 69}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'Ou4FPXht' --login_with_auth "Bearer foo"
social-update-user-slot-config 'mOk7bhtB' --body '{"maxSlotSize": 62, "maxSlots": 92}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'SN8QtHM6' --login_with_auth "Bearer foo"
social-get-user-profiles 'EZpJiypk' --login_with_auth "Bearer foo"
social-get-profile 'EcQ3fOp3' 'nvgRFmTs' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'S85mQo7v' --login_with_auth "Bearer foo"
social-get-slot-data 'IjPXvUOx' 'qmvxkSqv' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["hBqydt2M", "S2iVfcWr", "D7nCZPXi"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'Aimx0fPF' --login_with_auth "Bearer foo"
social-public-create-profile 'trN86AaZ' --body '{"achievements": ["aOVR2zPU", "X6XsgUgl", "R1NqNBVE"], "attributes": {"nluQy8mt": "FGrIGo4E", "zRlLnY6N": "DL7YRHuW", "OISa9a5N": "TbfBmkqg"}, "avatarUrl": "Nyq2MWyj", "inventories": ["fYYwVf3U", "AuXIakQ7", "4QwZxD4c"], "label": "gw1PiBiq", "profileName": "UmeYbCDi", "statistics": ["bSynlDri", "DnihBdZi", "w9XjPg6C"], "tags": ["DnTOHx4C", "ViuUxA2e", "6mJxitER"]}' --login_with_auth "Bearer foo"
social-public-get-profile '5iWd8QCj' 'KjAWuwQr' --login_with_auth "Bearer foo"
social-public-update-profile 'bo03RNoL' 'LzkqCRd8' --body '{"achievements": ["PGRRvp9g", "MIe30I5t", "p87Rqaxu"], "attributes": {"WhNIYaag": "s6xb6shK", "XGkQAAD2": "gpWRBNzN", "ePRaAtt6": "fcWChVEH"}, "avatarUrl": "MC9VxMJF", "inventories": ["r6jUaaA7", "efsXXIyQ", "PMI2y9ia"], "label": "4DmvL2r4", "profileName": "pDtHP0xa", "statistics": ["RyHDSYc4", "nNr6bUfb", "8PfcGYsn"], "tags": ["awuISIkI", "Xg6rEged", "IN7igYmt"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'GJQSXCVR' 'BepUEUHX' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'Fzsi3xpe' 'ZQMOebOy' 'yPnAnsx5' --login_with_auth "Bearer foo"
social-public-update-attribute 'AT26FNO4' 'KgzARYjo' 'diRh0ZTQ' --body '{"name": "bpGr0a0E", "value": "GRy2uFMY"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'lUEaibMh' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'IpWwvTJ2' --login_with_auth "Bearer foo"
social-public-get-slot-data 'OYamtFbO' 'O4XXsV2J' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'MQHCswXk' 'Epb5yeLT' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot '8diapVF8' 'KgbAW5cN' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'EgDlrZs5' '5ElDH68M' --body '{"customAttribute": "z7fUo9u3", "label": "8q4I8Yos", "tags": ["Eo2dJbA5", "bEdohBbV", "mKNtc6wx"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'WPC5NvtI' 'ezqdOjRG' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.23227184317461258, "statCode": "mlAgOXv6", "userId": "WQ2AurVM"}, {"inc": 0.6600519220776678, "statCode": "mQhN4QEe", "userId": "nJKy7TVO"}, {"inc": 0.14095301842225394, "statCode": "ji1hw9a8", "userId": "Nc94MKNQ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.5133735004104085, "statCode": "7OTXd0dO", "userId": "u02cMd8p"}, {"inc": 0.551924337843072, "statCode": "PsVe0nBN", "userId": "NIZXs1cI"}, {"inc": 0.5575477358074131, "statCode": "c05txI8A", "userId": "HA6HDHeK"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items '1pUyOWgV' '["GCQuErzY", "LHohrWHy", "TumdvphA"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "iGf1cQCg", "userId": "baCwErnL"}, {"statCode": "NdMhhLp5", "userId": "qSJCM5RT"}, {"statCode": "bsH6MI3E", "userId": "PYoCS6hW"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.28395025015737996, "description": "3N9kntEO", "incrementOnly": false, "maximum": 0.888218683764003, "minimum": 0.400209466630868, "name": "C40xiUj4", "setAsGlobal": false, "setBy": "SERVER", "statCode": "BZED2tRM", "tags": ["eDpAngdP", "vrKbowVK", "If5fZfL9"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats '8Ji0lnLp' --login_with_auth "Bearer foo"
social-get-stat 'rNaCGB67' --login_with_auth "Bearer foo"
social-delete-stat 'Z1kDpjFs' --login_with_auth "Bearer foo"
social-update-stat '6Za6tMcg' --body '{"defaultValue": 0.06101573822252615, "description": "y3wo6BZt", "name": "avWwl8aw", "tags": ["5lULOIKl", "KQ0qPnaw", "KIBwZEjO"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat '5EERZWTH' --login_with_auth "Bearer foo"
social-get-user-stat-items 'XxN82u02' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'r6jbWYeZ' --body '[{"statCode": "y4JUBdqL"}, {"statCode": "hvASbkLe"}, {"statCode": "PhGTpjoJ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '7Lvb6T80' --body '[{"inc": 0.3818301540280836, "statCode": "3V6KUMH0"}, {"inc": 0.5223749634049568, "statCode": "ardioQZq"}, {"inc": 0.8615858829174989, "statCode": "BOWnirHm"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'rFkqOzqI' --body '[{"inc": 0.6017342110136127, "statCode": "IOWNoYU8"}, {"inc": 0.04662529681290273, "statCode": "Iuml2v4q"}, {"inc": 0.36810024172323663, "statCode": "m90tmSRC"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'mZiMrY5G' --body '[{"statCode": "XiFsoSEW"}, {"statCode": "GgykX1QV"}, {"statCode": "yt7lzIai"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'TsChsfwa' 'tZZ0VLy6' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'TcZ0iouj' '6BFseWuE' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '9GdUNUNO' 'S3HjVElm' --body '{"inc": 0.37382029670336936}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '4eL5DhRt' '0uFrFeiE' --body '{"additionalData": {"6Gqw1MmW": {}, "OXZseTcM": {}, "i4i8X8rR": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'aEJMPUhU' 'qHwUyuER' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.9647812264810162, "statCode": "xOpELKvu", "userId": "vlRSloaw"}, {"inc": 0.35799585498251574, "statCode": "osmnK3jr", "userId": "NKMS6NGc"}, {"inc": 0.4052913670156808, "statCode": "GgPUL5Id", "userId": "YrR0JCJ8"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.09639195942516543, "statCode": "CmjQGgbi", "userId": "kUXfrX3v"}, {"inc": 0.9960497669551306, "statCode": "CA9g3SDw", "userId": "PvAyzcfw"}, {"inc": 0.06719486621622206, "statCode": "yIkSdOJ2", "userId": "24GUSqc8"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "20gbfTCP", "userId": "ErVxJcyg"}, {"statCode": "N9ivqeTn", "userId": "rPjaROqY"}, {"statCode": "PgCA4msM", "userId": "vo2MA0rY"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.1093908334641509, "description": "EIUk9Uhn", "incrementOnly": false, "maximum": 0.7909196889660952, "minimum": 0.79406039682328, "name": "Ak3hewZD", "setAsGlobal": true, "setBy": "SERVER", "statCode": "TZVd8wM5", "tags": ["lqjcZBwl", "z0SDS8US", "FZX6ymei"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'APSf666H' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'k1gVDgo4' --body '[{"statCode": "xlBSyq7t"}, {"statCode": "GQiekKyr"}, {"statCode": "GUbt0SuZ"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'GegNdavI' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'ADsFpNcD' --body '[{"inc": 0.32437232544618355, "statCode": "aYu7sHE9"}, {"inc": 0.5080098482958886, "statCode": "y66FTkIc"}, {"inc": 0.7118121978456173, "statCode": "vzKego6G"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'UGunulqI' --body '[{"inc": 0.27958994489918576, "statCode": "qUkY3Aaf"}, {"inc": 0.5981370888223467, "statCode": "R37NWUGe"}, {"inc": 0.5453717221061125, "statCode": "eVhNdjW9"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '5G8ivkTO' --body '[{"statCode": "eHR80JqQ"}, {"statCode": "bwQjRCLo"}, {"statCode": "NqLzFfzA"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item '1WWm9wN7' '1j4LQMKd' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'NwqwoALA' 'jIDu1xY0' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'OgWwZ0k8' 'XBSt5CGu' --body '{"inc": 0.3034422790880139}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'rYMR6abN' 'To75aJtE' --body '{"inc": 0.1203913457605782}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 '7Nqgio2f' 'sVJHZiy6' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"LvSH3v8Q": {}, "VNCh10x2": {}, "5wJiTIU7": {}}, "additionalKey": "upS80JLT", "statCode": "8ZzdVYn6", "updateStrategy": "INCREMENT", "userId": "Ix7aniKI", "value": 0.26701346722535824}, {"additionalData": {"9KdVRzQD": {}, "IwcsWAu4": {}, "O5C0CTP5": {}}, "additionalKey": "TIm0kQm9", "statCode": "e3xtKEhC", "updateStrategy": "OVERRIDE", "userId": "6qAMqKdU", "value": 0.3642157908911392}, {"additionalData": {"QiOWQ7BV": {}, "BRGDaWqf": {}, "Id0HasAj": {}}, "additionalKey": "UD7QyfXZ", "statCode": "PFRwq2iA", "updateStrategy": "OVERRIDE", "userId": "0hyu0jps", "value": 0.20984238877609562}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'ArAgrlIq' '["BK3psYdi", "3gSdXDC9", "8b8P4NZW"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'vlEQv0pj' --body '[{"additionalData": {"HAQ7CxKA": {}, "kAA7ndAk": {}, "gLcp6ZxR": {}}, "statCode": "wfveQDxR", "updateStrategy": "MAX", "value": 0.9901127910284856}, {"additionalData": {"pqdmMpMB": {}, "Rh33bi7P": {}, "O0bmEkKn": {}}, "statCode": "Iru3oPUj", "updateStrategy": "MIN", "value": 0.4199370950038793}, {"additionalData": {"hMCBg3ZH": {}, "cu22qlOk": {}, "VMqpwYtN": {}}, "statCode": "OiOdPNZo", "updateStrategy": "OVERRIDE", "value": 0.7601918704050927}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'vUdw9i01' --body '[{"additionalData": {"zLk5vcSK": {}, "bBWxOokq": {}, "OaBqErEB": {}}, "statCode": "rvPTygeK"}, {"additionalData": {"CZXpOwkM": {}, "4cnSgqgv": {}, "dXptK7PE": {}}, "statCode": "X1Ptky11"}, {"additionalData": {"KkyJlZUs": {}, "VOTFOAu8": {}, "Lk5bzRo8": {}}, "statCode": "ntav4Euz"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'AXMNHBvn' 'x2j4vWYw' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '9Jg28Cme' '87pUbpeM' --body '{"additionalData": {"cfqRxRKI": {}, "ipgyiuPu": {}, "OCE5ivZA": {}}, "updateStrategy": "INCREMENT", "value": 0.8544663430392903}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"HEGA0wp8": {}, "Wwvyp5FF": {}, "yTovGILh": {}}, "additionalKey": "hrq0W6zw", "statCode": "RHadVAiR", "updateStrategy": "MAX", "userId": "hemaRfkl", "value": 0.7091956171918457}, {"additionalData": {"rtCUDYpK": {}, "Oxm2ca6N": {}, "jlYvp0dF": {}}, "additionalKey": "5A7mRcjW", "statCode": "7sItKHbS", "updateStrategy": "MIN", "userId": "jClpcKAM", "value": 0.9454441978547187}, {"additionalData": {"aZSCmADg": {}, "aMcxZOoa": {}, "BNyDR88K": {}}, "additionalKey": "3RDivOwH", "statCode": "wskhhBer", "updateStrategy": "MIN", "userId": "hZ4s2qlS", "value": 0.5960464962932801}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'SC8Whi8G' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'QLtvLJjI' --body '[{"additionalData": {"X9qFpHVe": {}, "K7r26qTN": {}, "6Afth6Ba": {}}, "statCode": "LNAPJNCy", "updateStrategy": "MIN", "value": 0.3030227586064873}, {"additionalData": {"aeTfOgRH": {}, "vrCYzO4y": {}, "SV1G1aID": {}}, "statCode": "zJbcnwO8", "updateStrategy": "MIN", "value": 0.23606599875748768}, {"additionalData": {"4TPxayDB": {}, "gyBaU5zN": {}, "ZESEFJZc": {}}, "statCode": "QTBBD6FX", "updateStrategy": "MIN", "value": 0.423946148934947}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'Fjy9syv9' 'UjmMJC2s' --body '{"additionalData": {"IgouV20g": {}, "urNcssOR": {}, "dhar4sWz": {}}, "updateStrategy": "OVERRIDE", "value": 0.19622248202397663}' --login_with_auth "Bearer foo"
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
    --body '{"maxSlotSize": 45, "maxSlots": 72}' \
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
    '6xvJXixb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    '6TvFw6CU' \
    --body '{"maxSlotSize": 68, "maxSlots": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'hgeebXoT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'GSkFRBPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'YCOwgivd' \
    '4FRiPbkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'Y1EgwCbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'PY0wtteQ' \
    'v8UNZLAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["7JVIN3Fi", "u4VdSocD", "EyRFnJAJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'xUcOsBSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'twCcUhZi' \
    --body '{"achievements": ["D9Ggblzk", "OdgQeIe8", "oyWinSSq"], "attributes": {"O3m6Cbos": "ETaGlQVm", "zjL6jWvv": "6vwpcKo6", "IG4rSKbN": "tXo9y1Eg"}, "avatarUrl": "vNYA27Al", "inventories": ["geRpuZHh", "qWZSGqce", "BHHVjrJc"], "label": "GajR1ruM", "profileName": "MpFUZP1o", "statistics": ["odcQhtek", "c51g872K", "2mghJWbF"], "tags": ["NvHutJtP", "CyEH4sTK", "hLJTwiPz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'O6SjKxWh' \
    'E41nvPyi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'jzerbX5i' \
    '4Il60K0B' \
    --body '{"achievements": ["U1SpIXau", "nomkc1rJ", "Jt3SkKIZ"], "attributes": {"kv1JBvWw": "VR3HVWHC", "M1eR0sQd": "wUiP0Ec1", "EgumdA0k": "HL3jNk9E"}, "avatarUrl": "Ntk9aQYG", "inventories": ["MoSEGUdj", "XFJUgYtb", "v9fN69Xw"], "label": "Lv32eSpL", "profileName": "V7qiJ28v", "statistics": ["BsKYMkdx", "irF44jdE", "3JXT3Vms"], "tags": ["XS7swcqC", "V8sGxS5C", "SLFc8HxO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'I7T9ITD0' \
    'tJoDM2Pd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'BJtSLURB' \
    'yMCfI8fF' \
    'Om0MvNas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'mF1vzaPk' \
    'stoeQQvJ' \
    '4xcjyX9v' \
    --body '{"name": "qbURBxmk", "value": "cB4UwACW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '69290nJi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'KEff1ua6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'mTKfoKtp' \
    '2S1mp7If' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'CP5GEJua' \
    'YzkOtRcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'Xpkckq4O' \
    'KBFT36iP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'Qsbq4Rcl' \
    'ZZ9oknKL' \
    --body '{"customAttribute": "qrRUIwd0", "label": "MYcfnNMi", "tags": ["p8JLXtdH", "prHhpsN0", "WFFus2Eb"]}' \
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
    'ybLHzHo3' \
    'e1t78WTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.02374340137520181, "statCode": "DOYwQJsJ", "userId": "kfrV0LAp"}, {"inc": 0.5316242129734875, "statCode": "I8lGq3W8", "userId": "HurN4Btv"}, {"inc": 0.171847028912255, "statCode": "E9d46HxU", "userId": "zjWyL6qt"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.05987229177492437, "statCode": "9gTiK6MZ", "userId": "9IpwDR9L"}, {"inc": 0.6726235481957986, "statCode": "xDGDUHWt", "userId": "oK3pgahN"}, {"inc": 0.8300916602579048, "statCode": "sS7Z0AjT", "userId": "DbVkiS7z"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'NuQ7BWrM' \
    '["nG4Q7hXC", "lFpnMXF0", "9mp5g3oA"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "HGCfDKaI", "userId": "rsYYTGmv"}, {"statCode": "niwWxyRL", "userId": "T3muEXkR"}, {"statCode": "p6t4zBv6", "userId": "8zLp5RZs"}]' \
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
    --body '{"defaultValue": 0.2364496475246447, "description": "8HlqQCc7", "incrementOnly": false, "maximum": 0.1256134362289334, "minimum": 0.88683035464393, "name": "LC8NAhsF", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "NOlcaDf8", "tags": ["mNvrBL2p", "HEpA41Xe", "SBMGdi12"]}' \
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
    'uhhkYjrU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'xTumZszi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'aKntTvK6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'j4yAZtGZ' \
    --body '{"defaultValue": 0.6005215172217924, "description": "wdaGWH2U", "name": "cnDBD0wP", "tags": ["ChsE9ex7", "C9NuWdIC", "noEWxe4l"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'V2WzSLnC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'lCDd0Ew9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'CdMqwOBm' \
    --body '[{"statCode": "XRyEwvEh"}, {"statCode": "LUlxgVup"}, {"statCode": "yOGRI0op"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'IFqkJcYS' \
    --body '[{"inc": 0.08463706183916075, "statCode": "YRvHXL7K"}, {"inc": 0.8155678979497671, "statCode": "wkqrB619"}, {"inc": 0.34871875573930544, "statCode": "ii77LZp4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'MKKdDp5i' \
    --body '[{"inc": 0.8910651633522241, "statCode": "eMSxvAMY"}, {"inc": 0.5000599963469636, "statCode": "vYO9WiWt"}, {"inc": 0.0143748834235361, "statCode": "vmTLr52G"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '0q3qljaA' \
    --body '[{"statCode": "LGElkneM"}, {"statCode": "R33FQv17"}, {"statCode": "1kx3uVTC"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'z6CzQUB0' \
    'GK67P9Ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    '26aTioNA' \
    'A4I1KoJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'Vd8VcqOn' \
    'JOJl1bTy' \
    --body '{"inc": 0.7879059828780047}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'TO8TZLR8' \
    'BMjGeaQO' \
    --body '{"additionalData": {"iHtps8yy": {}, "S54URwQC": {}, "Y17vDaL1": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'PVe1fGEp' \
    'JuE25H9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.22635413578482588, "statCode": "88lgXo45", "userId": "qGREzHvk"}, {"inc": 0.81823579933309, "statCode": "pZlC8vJk", "userId": "7vjtaqO3"}, {"inc": 0.3811165463085142, "statCode": "wAI2U1hF", "userId": "Zb7jNDIX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.889756789041236, "statCode": "CXYUF9s6", "userId": "1pZnphwU"}, {"inc": 0.3311512449315259, "statCode": "0Bc3aHJ0", "userId": "ouqbNUXB"}, {"inc": 0.6751293773731583, "statCode": "NDBeVdt0", "userId": "9hqiYJH1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "oPLwTC7S", "userId": "o0xaMrC6"}, {"statCode": "tOrwKOIr", "userId": "8pUsZ4Li"}, {"statCode": "9ZTWItiq", "userId": "E7KjLnRS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.5073956809251182, "description": "5olesIKY", "incrementOnly": true, "maximum": 0.6691496615182884, "minimum": 0.8089744408984656, "name": "GOiQVBfw", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "Tdj5Ni5I", "tags": ["tLbo5nQ8", "X15NYMDO", "NTO5Ty8O"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'MtRMw3tS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'XlDYMsmJ' \
    --body '[{"statCode": "hg9joZoL"}, {"statCode": "OoxSldKS"}, {"statCode": "hiA4dtkT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'YCvXFE6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'XSQuWpwQ' \
    --body '[{"inc": 0.1149393044442445, "statCode": "bByjy2JF"}, {"inc": 0.6741881993581954, "statCode": "pWnRhlNa"}, {"inc": 0.017553957477560056, "statCode": "gR09GvKq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'pgfkkEqH' \
    --body '[{"inc": 0.8763587531207454, "statCode": "Oxz7tG0F"}, {"inc": 0.3847184394886465, "statCode": "5PaxoRUZ"}, {"inc": 0.6856396861895575, "statCode": "jNEzDxbL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '1xaoSCdg' \
    --body '[{"statCode": "Ye8eytdE"}, {"statCode": "Yhgu32j8"}, {"statCode": "Dqpdp7RO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'HykhMQFv' \
    'nOgPw2mb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'eVwV2cCx' \
    'qxTvQ67A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '8FSoHLyd' \
    '5etD1MxA' \
    --body '{"inc": 0.9594294426762423}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'fpOVnm9o' \
    '6IiVXSrj' \
    --body '{"inc": 0.4605204226574029}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'H05QVc2b' \
    'TEyuHVGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"leaeH2Aw": {}, "704ETIHE": {}, "QnVUWFka": {}}, "additionalKey": "XOjd5el7", "statCode": "qhkltU8k", "updateStrategy": "INCREMENT", "userId": "9jZ9PUK6", "value": 0.6556532037697943}, {"additionalData": {"eH6LEWpV": {}, "ajn3FFJx": {}, "8ECLPi7U": {}}, "additionalKey": "DA4j157Y", "statCode": "yJtRsApv", "updateStrategy": "INCREMENT", "userId": "7pI3Ho4f", "value": 0.1909638661887505}, {"additionalData": {"wzMvx5h2": {}, "iZJDxKAN": {}, "yhEwcNtG": {}}, "additionalKey": "gIEDfUjk", "statCode": "dY5ch2cI", "updateStrategy": "MAX", "userId": "yeHxzD3q", "value": 0.30235058340477117}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'Q1Mr8SgM' \
    '["BXgKMH4H", "qO94I4lC", "c23zVKHr"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'jyJtEp01' \
    --body '[{"additionalData": {"CpGaO165": {}, "yrbW6FP8": {}, "chUErCEY": {}}, "statCode": "9zTZqZOD", "updateStrategy": "MIN", "value": 0.8744425650311957}, {"additionalData": {"QXIBFNUu": {}, "XngvWZnI": {}, "ZH7O88Gy": {}}, "statCode": "pViwLXNG", "updateStrategy": "MAX", "value": 0.025219571107424232}, {"additionalData": {"EJzpYAZF": {}, "T6e5VKeY": {}, "WQ1AVjEn": {}}, "statCode": "R22qttSe", "updateStrategy": "INCREMENT", "value": 0.5509501123988582}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'dbcMfMcp' \
    --body '[{"additionalData": {"Xrc7c0Uw": {}, "7gUeLfep": {}, "u9mt2te1": {}}, "statCode": "r0OuZDcL"}, {"additionalData": {"QOc2iCEL": {}, "InkK5RKO": {}, "yMKTqQh7": {}}, "statCode": "QtomFrJo"}, {"additionalData": {"0oo7cLWq": {}, "jptSkZPO": {}, "XHI9FOsn": {}}, "statCode": "3BWdnnWH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'JqbearZv' \
    'KswYzySS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'S5ORGWou' \
    'JTmMvuCk' \
    --body '{"additionalData": {"iaYewzDz": {}, "bKKqYmbF": {}, "UlifX5jp": {}}, "updateStrategy": "OVERRIDE", "value": 0.3586056663364261}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"lCyZQBpN": {}, "LxeU6EYD": {}, "TIQHrOnN": {}}, "additionalKey": "rYcI9XiC", "statCode": "axkxL671", "updateStrategy": "INCREMENT", "userId": "feCOzdAC", "value": 0.5314779960625781}, {"additionalData": {"7c6whnSb": {}, "D87H659n": {}, "X2l5WH9O": {}}, "additionalKey": "89GtWlNI", "statCode": "KORyEQRn", "updateStrategy": "INCREMENT", "userId": "3Ti8DQt0", "value": 0.20860071741191766}, {"additionalData": {"QwI5Xlhw": {}, "BsLJzpmx": {}, "t1L5rfuM": {}}, "additionalKey": "ulbrzP6r", "statCode": "FSoLzepc", "updateStrategy": "MIN", "userId": "NFaVaGxb", "value": 0.5641354243220762}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    '7MxhY6A7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'Egt1OyaS' \
    --body '[{"additionalData": {"aBlKqr5p": {}, "GizBbgBp": {}, "GuI3bfR8": {}}, "statCode": "YnImQ7of", "updateStrategy": "MAX", "value": 0.6378034877862145}, {"additionalData": {"ybLNdER6": {}, "3Z9fbGgE": {}, "pXORlo7D": {}}, "statCode": "4MSSKqAs", "updateStrategy": "MIN", "value": 0.5802838561264868}, {"additionalData": {"Lk1Zygjp": {}, "wYuUEsL1": {}, "L2zAC8gD": {}}, "statCode": "z75nFsMy", "updateStrategy": "MIN", "value": 0.3747858315006638}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'GWvcir3b' \
    'ujjf5P8U' \
    --body '{"additionalData": {"CKuPRqdm": {}, "uLcDkCWx": {}, "ukoA5aA9": {}}, "updateStrategy": "MAX", "value": 0.5624250437079975}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
