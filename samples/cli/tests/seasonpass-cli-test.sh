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
seasonpass-query-seasons --login_with_auth "Bearer foo"
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "tBxyZcDX", "defaultRequiredExp": 55, "draftStoreId": "pGlsQuJu", "end": "1981-11-03T00:00:00Z", "excessStrategy": {"currency": "f0IsJkTr", "method": "NONE", "percentPerExp": 68}, "images": [{"as": "DcV2zXnT", "caption": "KjXY1bPq", "height": 1, "imageUrl": "miBxx9Cs", "smallImageUrl": "18EY84ek", "width": 69}], "localizations": {"tqRzHU1o": {"description": "h570KQBV", "title": "aewc72kr"}}, "name": "Sha68n3Y", "start": "1977-04-27T00:00:00Z", "tierItemId": "zp1C2KmI"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-get-season 'QTuBdNEU' --login_with_auth "Bearer foo"
seasonpass-delete-season 'sxFb8CJ1' --login_with_auth "Bearer foo"
seasonpass-update-season '7M7DJZaM' --body '{"autoClaim": true, "defaultLanguage": "ECbZbygy", "defaultRequiredExp": 29, "draftStoreId": "arORoeNH", "end": "1993-01-05T00:00:00Z", "excessStrategy": {"currency": "8Rh3kgs9", "method": "CURRENCY", "percentPerExp": 33}, "images": [{"as": "JbnQsoBg", "caption": "iVpP8Cm3", "height": 49, "imageUrl": "vASUoxdx", "smallImageUrl": "xFqmAGTJ", "width": 68}], "localizations": {"EdagEtp4": {"description": "w29KOu9c", "title": "19R6XDqW"}}, "name": "HkkP8npL", "start": "1986-10-17T00:00:00Z", "tierItemId": "MfjiX7jp"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'kVZk3IaQ' --body '{"end": "1996-08-25T00:00:00Z", "name": "mqGodOEG", "start": "1980-02-22T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-query-passes 'POj0c6i0' --login_with_auth "Bearer foo"
seasonpass-create-pass 'JkvIas73' --body '{"autoEnroll": true, "code": "cYnFAJ3D", "displayOrder": 72, "images": [{"as": "5T4Eogg0", "caption": "Y39UoYlp", "height": 43, "imageUrl": "5bVAgtsD", "smallImageUrl": "hUTDUscb", "width": 85}], "localizations": {"DjbTQuPM": {"description": "z2PTRlky", "title": "U89ZPOw6"}}, "passItemId": "zPFJ42cw"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'mzBBSMNc' 'oAAOjKNj' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'fcYHm093' 'aYgBU1sq' --login_with_auth "Bearer foo"
seasonpass-update-pass 'jyK0XH45' 'PaRSOFQB' --body '{"autoEnroll": true, "displayOrder": 41, "images": [{"as": "23REZ8hR", "caption": "VX7LGOvD", "height": 6, "imageUrl": "YiQS9i7m", "smallImageUrl": "V1C91pjG", "width": 13}], "localizations": {"pxL6ycTQ": {"description": "dvln2LAu", "title": "SQWEXL6L"}}, "passItemId": "FE1YHo9m"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '126ZWc8h' --login_with_auth "Bearer foo"
seasonpass-retire-season 'HtWvbNYq' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'gUqslArF' --login_with_auth "Bearer foo"
seasonpass-create-reward 'PiHUIvaC' --body '{"code": "v8kU9dBB", "currency": {"currencyCode": "pdsJLhsV", "namespace": "yExrkxoo"}, "image": {"as": "t0B7WOfe", "caption": "rcZdpMci", "height": 58, "imageUrl": "s7YSfExa", "smallImageUrl": "I3uzLteM", "width": 3}, "itemId": "FAlt4hr7", "quantity": 67, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'OYiBA5lt' 'AOXmlG6e' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'h1dTdoTF' 'pBIcuC1d' --login_with_auth "Bearer foo"
seasonpass-update-reward 'QY93OJnJ' '6Te9vD8l' --body '{"currency": {"currencyCode": "dz7Hu8AD", "namespace": "79kdWunv"}, "image": {"as": "izU0q1pH", "caption": "yhhERoGg", "height": 7, "imageUrl": "rysMizBG", "smallImageUrl": "SRdP2l7D", "width": 79}, "itemId": "SZ8Aq0Xi", "nullFields": ["PLQXSe07"], "quantity": 7, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'OGTMlJjB' --login_with_auth "Bearer foo"
seasonpass-create-tier 'wj9HJHQK' --body '{"index": 36, "quantity": 8, "tier": {"requiredExp": 60, "rewards": {"dSXRDSvg": ["uauw1xT7"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'eMwSl9ML' 'H0NnTJ2u' --body '{"requiredExp": 22, "rewards": {"NzBvwJaQ": ["a547Jllv"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'A8RWSpab' 'Ut7xk6Qx' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'yWhfqoWf' 'Jw2o8oWU' --body '{"newIndex": 32}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'vPCZ2HzT' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons '7NXmWDlX' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'suNIdQJR' --body '{"exp": 23}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'sNOlvkfw' --body '{"passCode": "aSbnsuLC", "passItemId": "gToxuVTe"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'kJgvg6h5' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'HIpH0Dvi' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'plEk4vj3' --body '{"passItemId": "LDp4yqDt", "tierItemCount": 85, "tierItemId": "UZDpxlHa"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'sinGcjrk' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'mRMttgjD' --body '{"count": 88}' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'aIVBmft3' 'Udg7p9PG' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'mY2H5kX4' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'MsisSX28' --body '{"passCode": "nARxWRpv", "rewardCode": "5ou5xtvd", "tierIndex": 80}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'UfCt8UJC' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season '5flNyj6H' 'sTtX8P3l' --login_with_auth "Bearer foo"
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
echo "1..40"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 QuerySeasons
$PYTHON -m $MODULE 'seasonpass-query-seasons' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
$PYTHON -m $MODULE 'seasonpass-create-season' \
    --body '{"autoClaim": false, "defaultLanguage": "naaS9lqy", "defaultRequiredExp": 48, "draftStoreId": "gPcfkJIx", "end": "1973-12-09T00:00:00Z", "excessStrategy": {"currency": "Zza8kNVb", "method": "CURRENCY", "percentPerExp": 46}, "images": [{"as": "VMq7HJk0", "caption": "F89xAc3Y", "height": 95, "imageUrl": "faENtrl0", "smallImageUrl": "pTKZTXqz", "width": 66}], "localizations": {"uBMYQSA2": {"description": "jz1ZOpdO", "title": "jSyMddB4"}}, "name": "1JuMf7RU", "start": "1983-08-05T00:00:00Z", "tierItemId": "HRj8IiRi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'mRllHT6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'c40vFFA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'gpU7EW3x' \
    --body '{"autoClaim": false, "defaultLanguage": "Cpm55gOe", "defaultRequiredExp": 33, "draftStoreId": "QIqcJVKm", "end": "1984-10-30T00:00:00Z", "excessStrategy": {"currency": "1J1IbuTr", "method": "CURRENCY", "percentPerExp": 21}, "images": [{"as": "bmuT1whO", "caption": "qmEnDXIW", "height": 35, "imageUrl": "BPlSay46", "smallImageUrl": "mv71BAZA", "width": 81}], "localizations": {"jtFJ2vmT": {"description": "j7tT7TZH", "title": "WDdCkIsZ"}}, "name": "oArWwPHc", "start": "1983-09-04T00:00:00Z", "tierItemId": "AdAtYciL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'IgRwFRr0' \
    --body '{"end": "1974-07-01T00:00:00Z", "name": "B9tz3vp9", "start": "1995-03-26T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'V8rK3tE6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'n0smip1t' \
    --body '{"autoEnroll": true, "code": "3L7cUd9p", "displayOrder": 33, "images": [{"as": "tv6JfPZw", "caption": "cCVOXcVa", "height": 90, "imageUrl": "mCwtD2lA", "smallImageUrl": "H01o6Ndc", "width": 54}], "localizations": {"IgzrDyWp": {"description": "FBYGmmBa", "title": "wMyoKyNp"}}, "passItemId": "dAasm8xw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'UfzOlQiZ' \
    'Y4NbOQXJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    '7uOTzNMv' \
    'uq2tNl4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'X4IjiK4D' \
    'EUJRVK3l' \
    --body '{"autoEnroll": true, "displayOrder": 3, "images": [{"as": "0R1XRb0R", "caption": "H8vS1sme", "height": 81, "imageUrl": "lngrdTXC", "smallImageUrl": "zaPBtkZM", "width": 17}], "localizations": {"o4wcyhlo": {"description": "VS3rYp8Q", "title": "tcEmCEVc"}}, "passItemId": "75UfeypW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'jDNhzCL5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'sWS2qwO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    '63iEklkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'Lm88LpLu' \
    --body '{"code": "YRO3C55y", "currency": {"currencyCode": "HpwK2Jaq", "namespace": "enDGn7a2"}, "image": {"as": "NUplWiLj", "caption": "q06n6a0r", "height": 96, "imageUrl": "8EfkpaXt", "smallImageUrl": "wYZJaQ4W", "width": 3}, "itemId": "wNmsFYet", "quantity": 18, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'urH8eloJ' \
    'zNKtRUaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'z1ETdsmw' \
    'zjkkn9oi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'Ql05g7cO' \
    '3ZMb6Ojl' \
    --body '{"currency": {"currencyCode": "o6DMNpP2", "namespace": "qMrTQ1Up"}, "image": {"as": "jfU6wJhy", "caption": "1jOVkkUl", "height": 88, "imageUrl": "79527EZ2", "smallImageUrl": "5Ia8uCeZ", "width": 62}, "itemId": "lLtEVpDA", "nullFields": ["EbA82jy7"], "quantity": 23, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    '0pDE5xRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'h5b45ebp' \
    --body '{"index": 5, "quantity": 77, "tier": {"requiredExp": 88, "rewards": {"cSs3UOpA": ["wIp9rRtn"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    '1PcCxdbu' \
    'meYgOdEB' \
    --body '{"requiredExp": 96, "rewards": {"RQiW3KFf": ["U8icH408"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    '1gRB1GyL' \
    'fLg4RYuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'bgUDEcJy' \
    'IvsPwOr0' \
    --body '{"newIndex": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'mV5iFvfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'FjTSmIEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'oLyLeUGm' \
    --body '{"exp": 29}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'mGX9sXTZ' \
    --body '{"passCode": "0v8pqLfc", "passItemId": "5SwGnReU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'ULDX4QUI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'bb5nh68Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'nyUtRvW9' \
    --body '{"passItemId": "hNBSFTtF", "tierItemCount": 35, "tierItemId": "OmjkFrFV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'A8t0xF34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'Xpt6ZlTT' \
    --body '{"count": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'c0kr2a0n' \
    'I2oo7UHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetUserSeason' test.out

#- 36 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetCurrentSeason' test.out

#- 37 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'JK5sp0aC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetCurrentUserSeason' test.out

#- 38 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'vIq3aHVY' \
    --body '{"passCode": "IlewLRuH", "rewardCode": "Y83bGj0H", "tierIndex": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserReward' test.out

#- 39 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'eeWXlIcR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkClaimUserRewards' test.out

#- 40 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'idqctDpy' \
    'gY0ax476' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
