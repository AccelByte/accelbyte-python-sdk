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
seasonpass-grant-user-exp 'suNIdQJR' --body '{"exp": 23, "source": "SWEAT", "tags": ["NOlvkfwa"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'SbnsuLCg' --body '{"passCode": "ToxuVTek", "passItemId": "Jgvg6h5H"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'IpH0Dvip' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'lEk4vj3L' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'Dp4yqDt8' --body '{"passItemId": "QUZDpxlH", "tierItemCount": 1, "tierItemId": "sinGcjrk"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'mRMttgjD' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'SaIVBmft' --body '{"count": 93, "source": "PAID_FOR", "tags": ["g7p9PGmY"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history '2H5kX4Ms' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'isSX28nA' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'RxWRpv5o' 'u5xtvd28' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'OUfCt8UJ' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'C5flNyj6' --body '{"passCode": "HsTtX8P3", "rewardCode": "llnaaS9l", "tierIndex": 33}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'yygPcfkJ' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'IxfQZza8' 'kNVbDxVM' --login_with_auth "Bearer foo"
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
echo "1..42"

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
    --body '{"autoClaim": true, "defaultLanguage": "7HJk0F89", "defaultRequiredExp": 46, "draftStoreId": "Ac3YVfaE", "end": "1990-05-30T00:00:00Z", "excessStrategy": {"currency": "rl0pTKZT", "method": "CURRENCY", "percentPerExp": 50}, "images": [{"as": "HuBMYQSA", "caption": "2jz1ZOpd", "height": 81, "imageUrl": "jSyMddB4", "smallImageUrl": "1JuMf7RU", "width": 48}], "localizations": {"BHRj8IiR": {"description": "imRllHT6", "title": "Dc40vFFA"}}, "name": "6gpU7EW3", "start": "1982-01-26T00:00:00Z", "tierItemId": "Cpm55gOe"}' \
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
    'qQIqcJVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'mBM1J1Ib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'uTrrkbmu' \
    --body '{"autoClaim": true, "defaultLanguage": "hOqmEnDX", "defaultRequiredExp": 69, "draftStoreId": "WrBPlSay", "end": "1999-04-03T00:00:00Z", "excessStrategy": {"currency": "v71BAZAO", "method": "NONE", "percentPerExp": 39}, "images": [{"as": "FJ2vmTj7", "caption": "tT7TZHWD", "height": 6, "imageUrl": "CkIsZoAr", "smallImageUrl": "WwPHcyFA", "width": 6}], "localizations": {"AtYciLIg": {"description": "RwFRr0gw", "title": "B9tz3vp9"}}, "name": "9XVlV8rK", "start": "1998-06-01T00:00:00Z", "tierItemId": "E6n0smip"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    '1tw3L7cU' \
    --body '{"end": "1972-05-03T00:00:00Z", "name": "qtv6JfPZ", "start": "1982-01-21T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'CVOXcVa8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QueryPasses' test.out

#- 10 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    '0TmCwtD2' \
    --body '{"autoEnroll": false, "code": "AH01o6Nd", "displayOrder": 4, "images": [{"as": "BIgzrDyW", "caption": "pFBYGmmB", "height": 1, "imageUrl": "wMyoKyNp", "smallImageUrl": "dAasm8xw", "width": 92}], "localizations": {"fzOlQiZY": {"description": "4NbOQXJ7", "title": "uOTzNMvu"}}, "passItemId": "q2tNl4CX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreatePass' test.out

#- 11 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    '4IjiK4DE' \
    'UJRVK3l9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetPass' test.out

#- 12 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'Eb0R1XRb' \
    '0RH8vS1s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeletePass' test.out

#- 13 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'meOlngrd' \
    'TXCzaPBt' \
    --body '{"autoEnroll": false, "displayOrder": 76, "images": [{"as": "io4wcyhl", "caption": "oVS3rYp8", "height": 84, "imageUrl": "tcEmCEVc", "smallImageUrl": "75UfeypW", "width": 19}], "localizations": {"DNhzCL5s": {"description": "WS2qwO76", "title": "3iEklkzL"}}, "passItemId": "m88LpLuY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdatePass' test.out

#- 14 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'RO3C55yH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublishSeason' test.out

#- 15 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'pwK2Jaqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'RetireSeason' test.out

#- 16 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'nDGn7a2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'QueryRewards' test.out

#- 17 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'UplWiLjq' \
    --body '{"code": "06n6a0rW", "currency": {"currencyCode": "8EfkpaXt", "namespace": "wYZJaQ4W"}, "image": {"as": "bwNmsFYe", "caption": "tjEurH8e", "height": 22, "imageUrl": "oJzNKtRU", "smallImageUrl": "aTz1ETds", "width": 24}, "itemId": "wzjkkn9o", "quantity": 17, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateReward' test.out

#- 18 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    '05g7cO3Z' \
    'Mb6Ojlo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetReward' test.out

#- 19 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'DMNpP2qM' \
    'rTQ1Upjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteReward' test.out

#- 20 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'U6wJhy1j' \
    'OVkkUlS7' \
    --body '{"currency": {"currencyCode": "9527EZ25", "namespace": "Ia8uCeZF"}, "image": {"as": "lLtEVpDA", "caption": "EbA82jy7", "height": 23, "imageUrl": "q0pDE5xR", "smallImageUrl": "wh5b45eb", "width": 30}, "itemId": "cM7ScSs3", "nullFields": ["UOpAwIp9"], "quantity": 34, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateReward' test.out

#- 21 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'n1PcCxdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryTiers' test.out

#- 22 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'umeYgOdE' \
    --body '{"index": 55, "quantity": 96, "tier": {"requiredExp": 86, "rewards": {"QiW3KFfU": ["8icH4081"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateTier' test.out

#- 23 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'gRB1GyLf' \
    'Lg4RYuEb' \
    --body '{"requiredExp": 12, "rewards": {"UDEcJyIv": ["sPwOr0Bm"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateTier' test.out

#- 24 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'V5iFvfwF' \
    'jTSmIEqo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteTier' test.out

#- 25 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'LyLeUGmo' \
    'mGX9sXTZ' \
    --body '{"newIndex": 42}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'ReorderTier' test.out

#- 26 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '8pqLfc5S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UnpublishSeason' test.out

#- 27 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'wGnReUUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetUserParticipatedSeasons' test.out

#- 28 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'DX4QUIbb' \
    --body '{"exp": 27, "source": "PAID_FOR", "tags": ["68ZnyUtR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GrantUserExp' test.out

#- 29 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'vW9hNBSF' \
    --body '{"passCode": "TtFrOmjk", "passItemId": "FrFVA8t0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GrantUserPass' test.out

#- 30 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'xF34Xpt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ExistsAnyPassByPassCodes' test.out

#- 31 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'ZlTTic0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetCurrentUserSeasonProgression' test.out

#- 32 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'r2a0nI2o' \
    --body '{"passItemId": "o7UHCJK5", "tierItemCount": 36, "tierItemId": "p0aCvIq3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CheckSeasonPurchasable' test.out

#- 33 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'aHVYIlew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ResetUserSeason' test.out

#- 34 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'LRuHY83b' \
    --body '{"count": 64, "source": "PAID_FOR", "tags": ["0HTeeWXl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GrantUserTier' test.out

#- 35 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'IcRidqct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryUserExpGrantHistory' test.out

#- 36 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'DpygY0ax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistoryTag' test.out

#- 37 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    '476ED4MM' \
    'O9Tw2JH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetUserSeason' test.out

#- 38 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetCurrentSeason' test.out

#- 39 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'qhWIwHWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentUserSeason' test.out

#- 40 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'gzJFRYw6' \
    --body '{"passCode": "t1IKZLO6", "rewardCode": "V4Ode46Q", "tierIndex": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicClaimUserReward' test.out

#- 41 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'CidgdpP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkClaimUserRewards' test.out

#- 42 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'RTC587lm' \
    'UmBziPZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
