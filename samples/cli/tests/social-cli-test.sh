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
social-update-stat '6Te9vD8l' --body '{"defaultValue": 0.056013005958775675, "description": "7Hu8AD79", "name": "kdWunviz", "tags": ["U0q1pHyh"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'hERoGgdr' --login_with_auth "Bearer foo"
social-get-user-stat-items 'ysMizBGS' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'RdP2l7DN' --body '[{"statCode": "SZ8Aq0Xi"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'PLQXSe07' --body '[{"inc": 0.8120802272542065, "statCode": "dOGTMlJj"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'Bwj9HJHQ' --body '[{"inc": 0.5674858188791598, "statCode": "eEdSXRDS"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'vguauw1x' --body '[{"statCode": "T7eMwSl9"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'MLH0NnTJ' '2ulNzBvw' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'JaQa547J' 'llvA8RWS' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'pabUt7xk' '6QxyWhfq' --body '{"inc": 0.23108827139420096}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'fJw2o8oW' 'UqvPCZ2H' --body '{"additionalData": {"zT7NXmWD": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'lXsuNIdQ' 'JR5lsNOl' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.34099940332432455, "statCode": "fwaSbnsu", "userId": "LCgToxuV"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.7061940138883712, "statCode": "kJgvg6h5", "userId": "HIpH0Dvi"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "plEk4vj3", "userId": "LDp4yqDt"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.95058096695822, "description": "UZDpxlHa", "incrementOnly": true, "maximum": 0.12551980628414727, "minimum": 0.5020230788204871, "name": "jrkmRMtt", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "DSaIVBmf", "tags": ["t3Udg7p9"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'PGmY2H5k' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'X4MsisSX' --body '[{"statCode": "28nARxWR"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'pv5ou5xt' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'vd28OUfC' --body '[{"inc": 0.29866912169615734, "statCode": "UJC5flNy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'j6HsTtX8' --body '[{"inc": 0.645111061573466, "statCode": "3llnaaS9"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'lqyygPcf' --body '[{"statCode": "kJIxfQZz"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'a8kNVbDx' 'VMq7HJk0' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'F89xAc3Y' 'VfaENtrl' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '0pTKZTXq' 'zHuBMYQS' --body '{"inc": 0.4062795181108355}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'jz1ZOpdO' 'jSyMddB4' --body '{"inc": 0.8316275220436303}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'uMf7RUyB' 'HRj8IiRi' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"mRllHT6D": {}}, "additionalKey": "c40vFFA6", "statCode": "gpU7EW3x", "updateStrategy": "INCREMENT", "userId": "Cpm55gOe", "value": 0.2638608788164346}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'IqcJVKmB' '["M1J1IbuT"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'rrkbmuT1' --body '[{"additionalData": {"whOqmEnD": {}}, "statCode": "XIWrBPlS", "updateStrategy": "INCREMENT", "value": 0.3881113892935165}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '6mv71BAZ' --body '[{"additionalData": {"AOjtFJ2v": {}}, "statCode": "mTj7tT7T"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'ZHWDdCkI' 'sZoArWwP' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'HcyFAdAt' 'YciLIgRw' --body '{"additionalData": {"FRr0gwB9": {}}, "updateStrategy": "MIN", "value": 0.3957330798014782}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"vp99XVlV": {}}, "additionalKey": "8rK3tE6n", "statCode": "0smip1tw", "updateStrategy": "INCREMENT", "userId": "Ud9pqtv6", "value": 0.5530308342706065}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'PZwcCVOX' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'cVa80TmC' --body '[{"additionalData": {"wtD2lAH0": {}}, "statCode": "1o6NdcBI", "updateStrategy": "INCREMENT", "value": 0.40049136631979965}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'DyWpFBYG' 'mmBawMyo' --body '{"additionalData": {"KyNpdAas": {}}, "updateStrategy": "MAX", "value": 0.941332946488754}' --login_with_auth "Bearer foo"
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
    --body '{"maxSlotSize": 45, "maxSlots": 92}' \
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
    'fzOlQiZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    '4NbOQXJ7' \
    --body '{"maxSlotSize": 40, "maxSlots": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'TzNMvuq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'tNl4CX4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'jiK4DEUJ' \
    'RVK3l9Eb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    '0R1XRb0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'H8vS1sme' \
    'OlngrdTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["CzaPBtkZ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'Mio4wcyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'loVS3rYp' \
    --body '{"achievements": ["8QtcEmCE"], "attributes": {"Vc75Ufey": "pWjDNhzC"}, "avatarUrl": "L5sWS2qw", "inventories": ["O763iEkl"], "label": "kzLm88Lp", "profileName": "LuYRO3C5", "statistics": ["5yHpwK2J"], "tags": ["aqenDGn7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'a2NUplWi' \
    'Ljq06n6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    '0rW8Efkp' \
    'aXtwYZJa' \
    --body '{"achievements": ["Q4WbwNms"], "attributes": {"FYetjEur": "H8eloJzN"}, "avatarUrl": "KtRUaTz1", "inventories": ["ETdsmwzj"], "label": "kkn9oiQl", "profileName": "05g7cO3Z", "statistics": ["Mb6Ojlo6"], "tags": ["DMNpP2qM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'rTQ1Upjf' \
    'U6wJhy1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'OVkkUlS7' \
    '9527EZ25' \
    'Ia8uCeZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'lLtEVpDA' \
    'EbA82jy7' \
    '4lq0pDE5' \
    --body '{"name": "xRwh5b45", "value": "ebpcM7Sc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'Ss3UOpAw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'Ip9rRtn1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'PcCxdbum' \
    'eYgOdEBW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'RQiW3KFf' \
    'U8icH408' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    '1gRB1GyL' \
    'fLg4RYuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'bgUDEcJy' \
    'IvsPwOr0' \
    --body '{"customAttribute": "BmV5iFvf", "label": "wFjTSmIE", "tags": ["qoLyLeUG"]}' \
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
    'momGX9sX' \
    'TZ0v8pqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.08930405997862145, "statCode": "5SwGnReU", "userId": "ULDX4QUI"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.02665705997925205, "statCode": "5nh68Zny", "userId": "UtRvW9hN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'BSFTtFrO' \
    '["mjkFrFVA"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "8t0xF34X", "userId": "pt6ZlTTi"}]' \
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
    --body '{"defaultValue": 0.03378151225626991, "description": "kr2a0nI2", "incrementOnly": false, "maximum": 0.22215399090977594, "minimum": 0.725227754742631, "name": "CJK5sp0a", "setAsGlobal": true, "setBy": "SERVER", "statCode": "Iq3aHVYI", "tags": ["lewLRuHY"]}' \
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
    '83bGj0HT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'eeWXlIcR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'idqctDpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'gY0ax476' \
    --body '{"defaultValue": 0.47793416279627954, "description": "4MMO9Tw2", "name": "JH0qhWIw", "tags": ["HWTgzJFR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'Yw6t1IKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'LO6V4Ode' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '46QmCidg' \
    --body '[{"statCode": "dpP7RTC5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '87lmUmBz' \
    --body '[{"inc": 0.13862059000749627, "statCode": "ZBnpOfkl"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'lxfq0Nsr' \
    --body '[{"inc": 0.6925090935133795, "statCode": "w5Hog0bl"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'M1d5MStY' \
    --body '[{"statCode": "GczLINlE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'C0OEsE3y' \
    'zIsUP0Nj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'luOrGZTz' \
    'sLW7Fjfs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '9nIkcZ38' \
    'fUEanjKH' \
    --body '{"inc": 0.02436897729834009}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'fk1zxdzx' \
    'g0UXcRyH' \
    --body '{"additionalData": {"i3u8BzVW": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'u1tOmhUt' \
    'CgcpvGrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.030903704716891633, "statCode": "ZUDExH1t", "userId": "ayOGXIHz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6037387674722907, "statCode": "jMCtOJsE", "userId": "ijlrbpyy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "EcQxVgJI", "userId": "jMZqcWfM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.1743432947601835, "description": "dqrpD4tn", "incrementOnly": false, "maximum": 0.8627932877008838, "minimum": 0.6740852923867545, "name": "3IkdtPfA", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "mwenJvQ8", "tags": ["grtQSv6E"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'cALcMIPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    's5bT51M4' \
    --body '[{"statCode": "yko8S0En"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'GLvGvfuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'yCTyjj4m' \
    --body '[{"inc": 0.9850435215373423, "statCode": "aiuMGKOF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '5GJJooSX' \
    --body '[{"inc": 0.720144742558709, "statCode": "3YU35QHG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'pBABnOlx' \
    --body '[{"statCode": "DznICQVy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'qBg34WTt' \
    'Dkn0rtn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    't0Yx4z12' \
    'EaQ1rUQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'CNTiDX4j' \
    'E3M2IsTH' \
    --body '{"inc": 0.3242495204673487}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'QwNyOlXf' \
    'IWd0mcq5' \
    --body '{"inc": 0.7081599525226285}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'SUc7cWfC' \
    'KK6Dij1g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"FcenEMyS": {}}, "additionalKey": "PfhxBenD", "statCode": "iTiAqFYm", "updateStrategy": "OVERRIDE", "userId": "KjaELmml", "value": 0.18304598265913485}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'oexId1OK' \
    '["GUN2Uznd"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '7uVa7t14' \
    --body '[{"additionalData": {"yvSYSV52": {}}, "statCode": "bHifCIf4", "updateStrategy": "MIN", "value": 0.2875705087451327}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'u6Pkam6t' \
    --body '[{"additionalData": {"FSYFt4Zx": {}}, "statCode": "A2PzZFRk"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'BNlg6hn5' \
    'qusKyZAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'V6uUvqM0' \
    'lV6UZMlE' \
    --body '{"additionalData": {"bxHNgJRi": {}}, "updateStrategy": "OVERRIDE", "value": 0.3749529049677165}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"unjdAqnH": {}}, "additionalKey": "Uz44tx4O", "statCode": "6hamPwNo", "updateStrategy": "MAX", "userId": "071ezDK5", "value": 0.9111123647966657}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'FIGe1IMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'CLcN0Dsa' \
    --body '[{"additionalData": {"D5FyBsFe": {}}, "statCode": "9OYEJVsY", "updateStrategy": "INCREMENT", "value": 0.07942262440675507}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'hyx6J25P' \
    'rM4S3cB8' \
    --body '{"additionalData": {"m17hEeLL": {}}, "updateStrategy": "INCREMENT", "value": 0.22090890264676477}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
