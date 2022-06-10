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
social-update-namespace-slot-config --body '{"maxSlotSize": 62, "maxSlots": 39}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'BxyZcDXB' --login_with_auth "Bearer foo"
social-update-user-slot-config 'pGlsQuJu' --body '{"maxSlotSize": 42, "maxSlots": 77}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'f0IsJkTr' --login_with_auth "Bearer foo"
social-get-user-profiles 'd8IDcV2z' --login_with_auth "Bearer foo"
social-get-profile 'XnTKjXY1' 'bPqamiBx' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'x9Cs18EY' --login_with_auth "Bearer foo"
social-get-slot-data '84ekItqR' 'zHU1oh57' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["0KQBVaew"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'c72krSha' --login_with_auth "Bearer foo"
social-public-create-profile '68n3Ynoz' --body '{"achievements": ["p1C2KmIQ"], "attributes": {"TuBdNEUs": "xFb8CJ17"}, "avatarUrl": "M7DJZaMS", "inventories": ["xECbZbyg"], "label": "yoarORoe", "profileName": "NHSb8Rh3", "statistics": ["kgs9qqJb"], "tags": ["nQsoBgiV"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'pP8Cm3yv' 'ASUoxdxx' --login_with_auth "Bearer foo"
social-public-update-profile 'FqmAGTJ8' 'IEdagEtp' --body '{"achievements": ["4w29KOu9"], "attributes": {"c19R6XDq": "WHkkP8np"}, "avatarUrl": "LEKMfjiX", "inventories": ["7jpkVZk3"], "label": "IaQYEmqG", "profileName": "odOEGt9g", "statistics": ["POj0c6i0"], "tags": ["JkvIas73"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'ucYnFAJ3' 'DK5T4Eog' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'g0Y39UoY' 'lpv5bVAg' 'tsDhUTDU' --login_with_auth "Bearer foo"
social-public-update-attribute 'scbQDjbT' 'QuPMz2PT' 'RlkyU89Z' --body '{"name": "POw6zPFJ", "value": "42cwmzBB"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'SMNcoAAO' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'jKNjfcYH' --login_with_auth "Bearer foo"
social-public-get-slot-data 'm093aYgB' 'U1sqjyK0' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'XH45PaRS' 'OFQBtu23' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'REZ8hRVX' '7LGOvDdY' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'iQS9i7mV' '1C91pjG9' --body '{"customAttribute": "gpxL6ycT", "label": "Qdvln2LA", "tags": ["uSQWEXL6"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'LFE1YHo9' 'm126ZWc8' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.11136021441968946, "statCode": "HtWvbNYq", "userId": "gUqslArF"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.6410856766936045, "statCode": "iHUIvaCv", "userId": "8kU9dBBp"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'dsJLhsVy' '["Exrkxoot"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "0B7WOfer", "userId": "cZdpMci3"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.9303222928912993, "description": "s7YSfExa", "incrementOnly": true, "maximum": 0.400082786263968, "minimum": 0.2982316246014147, "name": "MbFAlt4h", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "OYiBA5lt", "tags": ["AOXmlG6e"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'h1dTdoTF' --login_with_auth "Bearer foo"
social-get-stat 'pBIcuC1d' --login_with_auth "Bearer foo"
social-delete-stat 'QY93OJnJ' --login_with_auth "Bearer foo"
social-update-stat '6Te9vD8l' --body '{"description": "dz7Hu8AD", "name": "79kdWunv", "tags": ["izU0q1pH"]}' --login_with_auth "Bearer foo"
social-get-user-stat-items 'yhhERoGg' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'drysMizB' --body '[{"statCode": "GSRdP2l7"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'DNSZ8Aq0' --body '[{"inc": 0.7676543081601597, "statCode": "PLQXSe07"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'ZddOGTMl' --body '[{"inc": 0.5513019275367755, "statCode": "Bwj9HJHQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'KseEdSXR' --body '[{"statCode": "DSvguauw"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item '1xT7eMwS' 'l9MLH0Nn' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'TJ2ulNzB' 'vwJaQa54' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '7JllvA8R' 'WSpabUt7' --body '{"inc": 0.3747526419829623}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '6QxyWhfq' 'oWfJw2o8' --body '{"additionalData": {"oWUqvPCZ": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 '2HzT7NXm' 'WDlXsuNI' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.0487454805996449, "statCode": "JR5lsNOl", "userId": "vkfwaSbn"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.29191831733638607, "statCode": "LCgToxuV", "userId": "TekJgvg6"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "h5HIpH0D", "userId": "viplEk4v"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.9966084446877017, "description": "3LDp4yqD", "incrementOnly": true, "maximum": 0.95058096695822, "minimum": 0.7238665506808695, "name": "DpxlHasi", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "jrkmRMtt", "tags": ["gjDSaIVB"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'mft3Udg7' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'p9PGmY2H' --body '[{"statCode": "5kX4Msis"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'SX28nARx' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'WRpv5ou5' --body '[{"inc": 0.36968420675412095, "statCode": "vd28OUfC"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 't8UJC5fl' --body '[{"inc": 0.9876903714035955, "statCode": "yj6HsTtX"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '8P3llnaa' --body '[{"statCode": "S9lqyygP"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'cfkJIxfQ' 'Zza8kNVb' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'DxVMq7HJ' 'k0F89xAc' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '3YVfaENt' 'rl0pTKZT' --body '{"inc": 0.7762947176567949}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'zHuBMYQS' 'A2jz1ZOp' --body '{"inc": 0.054739770539565136}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'jSyMddB4' '1JuMf7RU' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"yBHRj8Ii": {}}, "additionalKey": "RimRllHT", "statCode": "6Dc40vFF", "updateStrategy": "MIN", "userId": "6gpU7EW3", "value": 0.36458520468327116}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'dCpm55gO' '["eqQIqcJV"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'KmBM1J1I' --body '[{"additionalData": {"buTrrkbm": {}}, "statCode": "uT1whOqm", "updateStrategy": "MIN", "value": 0.21201206347632295}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'XIWrBPlS' --body '[{"additionalData": {"ay46mv71": {}}, "statCode": "BAZAOjtF"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'J2vmTj7t' 'T7TZHWDd' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'CkIsZoAr' 'WwPHcyFA' --body '{"additionalData": {"dAtYciLI": {}}, "updateStrategy": "OVERRIDE", "value": 0.6745395388866413}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"FRr0gwB9": {}}, "additionalKey": "tz3vp99X", "statCode": "VlV8rK3t", "updateStrategy": "MIN", "userId": "6n0smip1", "value": 0.30176534764477403}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '3L7cUd9p' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'qtv6JfPZ' --body '[{"additionalData": {"wcCVOXcV": {}}, "statCode": "a80TmCwt", "updateStrategy": "MIN", "value": 0.8542596114963421}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'AH01o6Nd' 'cBIgzrDy' --body '{"additionalData": {"WpFBYGmm": {}}, "updateStrategy": "MIN", "value": 0.01353221648376457}' --login_with_auth "Bearer foo"
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
echo "1..74"

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
    --body '{"maxSlotSize": 77, "maxSlots": 48}' \
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
    'oKyNpdAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'sm8xwUfz' \
    --body '{"maxSlotSize": 80, "maxSlots": 23}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'QiZY4NbO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'QXJ7uOTz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'NMvuq2tN' \
    'l4CX4Iji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'K4DEUJRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'K3l9Eb0R' \
    '1XRb0RH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["vS1smeOl"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'ngrdTXCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'aPBtkZMi' \
    --body '{"achievements": ["o4wcyhlo"], "attributes": {"VS3rYp8Q": "tcEmCEVc"}, "avatarUrl": "75UfeypW", "inventories": ["jDNhzCL5"], "label": "sWS2qwO7", "profileName": "63iEklkz", "statistics": ["Lm88LpLu"], "tags": ["YRO3C55y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'HpwK2Jaq' \
    'enDGn7a2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'NUplWiLj' \
    'q06n6a0r' \
    --body '{"achievements": ["W8EfkpaX"], "attributes": {"twYZJaQ4": "WbwNmsFY"}, "avatarUrl": "etjEurH8", "inventories": ["eloJzNKt"], "label": "RUaTz1ET", "profileName": "dsmwzjkk", "statistics": ["n9oiQl05"], "tags": ["g7cO3ZMb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    '6Ojlo6DM' \
    'NpP2qMrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'Q1UpjfU6' \
    'wJhy1jOV' \
    'kkUlS795' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    '27EZ25Ia' \
    '8uCeZFlL' \
    'tEVpDAEb' \
    --body '{"name": "A82jy74l", "value": "q0pDE5xR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'wh5b45eb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'pcM7ScSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    '3UOpAwIp' \
    '9rRtn1Pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'CxdbumeY' \
    'gOdEBWRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'iW3KFfU8' \
    'icH4081g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'RB1GyLfL' \
    'g4RYuEbg' \
    --body '{"customAttribute": "UDEcJyIv", "label": "sPwOr0Bm", "tags": ["V5iFvfwF"]}' \
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
    'jTSmIEqo' \
    'LyLeUGmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.20242472374082454, "statCode": "X9sXTZ0v", "userId": "8pqLfc5S"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.34942444791741867, "statCode": "nReUULDX", "userId": "4QUIbb5n"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'h68ZnyUt' \
    '["RvW9hNBS"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "FTtFrOmj", "userId": "kFrFVA8t"}]' \
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
    --body '{"defaultValue": 0.8146323663890959, "description": "F34Xpt6Z", "incrementOnly": false, "maximum": 0.7150996231815433, "minimum": 0.13302522177831455, "name": "0kr2a0nI", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "7UHCJK5s", "tags": ["p0aCvIq3"]}' \
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
    'aHVYIlew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'LRuHY83b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'Gj0HTeeW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'XlIcRidq' \
    --body '{"description": "ctDpygY0", "name": "ax476ED4", "tags": ["MMO9Tw2J"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'H0qhWIwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetUserStatItems' test.out

#- 41 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'WTgzJFRY' \
    --body '[{"statCode": "w6t1IKZL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkCreateUserStatItems' test.out

#- 42 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'O6V4Ode4' \
    --body '[{"inc": 0.915854868806665, "statCode": "mCidgdpP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkIncUserStatItem1' test.out

#- 43 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '7RTC587l' \
    --body '[{"inc": 0.1930832638535982, "statCode": "UmBziPZB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItemValue1' test.out

#- 44 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'npOfkllx' \
    --body '[{"statCode": "fq0NsrSj"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkResetUserStatItem1' test.out

#- 45 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'w5Hog0bl' \
    'M1d5MStY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreateUserStatItem' test.out

#- 46 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'GczLINlE' \
    'C0OEsE3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DeleteUserStatItems' test.out

#- 47 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'zIsUP0Nj' \
    'luOrGZTz' \
    --body '{"inc": 0.28880271746704034}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'IncUserStatItemValue' test.out

#- 48 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'W7Fjfs9n' \
    'IkcZ38fU' \
    --body '{"additionalData": {"EanjKHbX": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'ResetUserStatItemValue' test.out

#- 49 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'fk1zxdzx' \
    'g0UXcRyH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'BulkFetchStatItems1' test.out

#- 50 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.13067837709619057, "statCode": "u8BzVWu1", "userId": "tOmhUtCg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicBulkIncUserStatItem' test.out

#- 51 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.04242012833739628, "statCode": "vGrEbcZU", "userId": "DExH1tay"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItemValue' test.out

#- 52 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "OGXIHzMR", "userId": "jMCtOJsE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem2' test.out

#- 53 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.13771788139554297, "description": "lrbpyyEc", "incrementOnly": true, "maximum": 0.748312213322721, "minimum": 0.5619824791816141, "name": "jMZqcWfM", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "qrpD4tnc", "tags": ["3ZRB3Ikd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'CreateStat1' test.out

#- 54 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'tPfAJEom' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicQueryUserStatItems' test.out

#- 55 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'wenJvQ8g' \
    --body '[{"statCode": "rtQSv6Ec"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkCreateUserStatItems' test.out

#- 56 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'ALcMIPms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryUserStatItems1' test.out

#- 57 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '5bT51M4y' \
    --body '[{"inc": 0.1696034836060759, "statCode": "8S0EnGLv"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicBulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'GvfuSyCT' \
    --body '[{"inc": 0.3884751509746204, "statCode": "j4mCaiuM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue2' test.out

#- 59 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'GKOF5GJJ' \
    --body '[{"statCode": "ooSXUl3Y"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem3' test.out

#- 60 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'U35QHGpB' \
    'ABnOlxDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicCreateUserStatItem' test.out

#- 61 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'nICQVyqB' \
    'g34WTtDk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems1' test.out

#- 62 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'n0rtn6t0' \
    'Yx4z12Ea' \
    --body '{"inc": 0.6592449757040892}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicIncUserStatItem' test.out

#- 63 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'rUQYCNTi' \
    'DX4jE3M2' \
    --body '{"inc": 0.5418731368517112}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItemValue' test.out

#- 64 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'THu8QwNy' \
    'OlXfIWd0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ResetUserStatItemValue1' test.out

#- 65 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"mcq5T4SU": {}}, "additionalKey": "c7cWfCKK", "statCode": "6Dij1gFc", "updateStrategy": "OVERRIDE", "userId": "nEMySPfh", "value": 0.3714585113211749}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkUpdateUserStatItemV2' test.out

#- 66 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'enDiTiAq' \
    '["FYmFKjaE"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchOrDefaultStatItems1' test.out

#- 67 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'Lmmll6oe' \
    --body '[{"additionalData": {"xId1OKGU": {}}, "statCode": "N2Uznd7u", "updateStrategy": "OVERRIDE", "value": 0.9312121965670692}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkUpdateUserStatItem' test.out

#- 68 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '14yvSYSV' \
    --body '[{"additionalData": {"52bHifCI": {}}, "statCode": "f4tsuu6P"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItemValues' test.out

#- 69 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'kam6tFSY' \
    'Ft4ZxA2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteUserStatItems2' test.out

#- 70 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'zZFRkBNl' \
    'g6hn5qus' \
    --body '{"additionalData": {"KyZAuV6u": {}}, "updateStrategy": "MAX", "value": 0.26371995061129305}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateUserStatItemValue' test.out

#- 71 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"0lV6UZMl": {}}, "additionalKey": "EbxHNgJR", "statCode": "iQExaunj", "updateStrategy": "OVERRIDE", "userId": "AqnHUz44", "value": 0.3115776953801379}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem1' test.out

#- 72 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    '4O6hamPw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicQueryUserStatItems2' test.out

#- 73 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'Noi071ez' \
    --body '[{"additionalData": {"DK56JFIG": {}}, "statCode": "e1IMUCLc", "updateStrategy": "MIN", "value": 0.2893143148259588}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'BulkUpdateUserStatItem2' test.out

#- 74 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'D5FyBsFe' \
    '9OYEJVsY' \
    --body '{"additionalData": {"ffmhyx6J": {}}, "updateStrategy": "MAX", "value": 0.6033164701427207}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
