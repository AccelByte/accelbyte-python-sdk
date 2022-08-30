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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "tBxyZcDX", "defaultRequiredExp": 55, "draftStoreId": "pGlsQuJu", "end": "1981-11-03T00:00:00Z", "excessStrategy": {"currency": "f0IsJkTr", "method": "CURRENCY", "percentPerExp": 68}, "images": [{"as": "DcV2zXnT", "caption": "KjXY1bPq", "height": 1, "imageUrl": "miBxx9Cs", "smallImageUrl": "18EY84ek", "width": 69}], "localizations": {"tqRzHU1o": {"description": "h570KQBV", "title": "aewc72kr"}}, "name": "Sha68n3Y", "start": "1977-04-27T00:00:00Z", "tierItemId": "zp1C2KmI"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-get-season 'QTuBdNEU' --login_with_auth "Bearer foo"
seasonpass-delete-season 'sxFb8CJ1' --login_with_auth "Bearer foo"
seasonpass-update-season '7M7DJZaM' --body '{"autoClaim": true, "defaultLanguage": "ECbZbygy", "defaultRequiredExp": 29, "draftStoreId": "arORoeNH", "end": "1993-01-05T00:00:00Z", "excessStrategy": {"currency": "8Rh3kgs9", "method": "NONE", "percentPerExp": 33}, "images": [{"as": "JbnQsoBg", "caption": "iVpP8Cm3", "height": 49, "imageUrl": "vASUoxdx", "smallImageUrl": "xFqmAGTJ", "width": 68}], "localizations": {"EdagEtp4": {"description": "w29KOu9c", "title": "19R6XDqW"}}, "name": "HkkP8npL", "start": "1986-10-17T00:00:00Z", "tierItemId": "MfjiX7jp"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'kVZk3IaQ' --body '{"end": "1996-08-25T00:00:00Z", "name": "mqGodOEG", "start": "1980-02-22T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'POj0c6i0' --login_with_auth "Bearer foo"
seasonpass-query-passes 'JkvIas73' --login_with_auth "Bearer foo"
seasonpass-create-pass 'ucYnFAJ3' --body '{"autoEnroll": true, "code": "K5T4Eogg", "displayOrder": 100, "images": [{"as": "39UoYlpv", "caption": "5bVAgtsD", "height": 15, "imageUrl": "UTDUscbQ", "smallImageUrl": "DjbTQuPM", "width": 51}], "localizations": {"2PTRlkyU": {"description": "89ZPOw6z", "title": "PFJ42cwm"}}, "passItemId": "zBBSMNco"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'AAOjKNjf' 'cYHm093a' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'YgBU1sqj' 'yK0XH45P' --login_with_auth "Bearer foo"
seasonpass-update-pass 'aRSOFQBt' 'u23REZ8h' --body '{"autoEnroll": true, "displayOrder": 58, "images": [{"as": "dYiQS9i7", "caption": "mV1C91pj", "height": 64, "imageUrl": "9gpxL6yc", "smallImageUrl": "TQdvln2L", "width": 52}], "localizations": {"uSQWEXL6": {"description": "LFE1YHo9", "title": "m126ZWc8"}}, "passItemId": "hHtWvbNY"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'qgUqslAr' --login_with_auth "Bearer foo"
seasonpass-retire-season 'FPiHUIva' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'Cv8kU9dB' --login_with_auth "Bearer foo"
seasonpass-create-reward 'BpdsJLhs' --body '{"code": "VyExrkxo", "currency": {"currencyCode": "ot0B7WOf", "namespace": "ercZdpMc"}, "image": {"as": "i37Ds7YS", "caption": "fExaI3uz", "height": 74, "imageUrl": "teMbFAlt", "smallImageUrl": "4hr7HmOY", "width": 16}, "itemId": "BA5ltAOX", "quantity": 25, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'G6eh1dTd' 'oTFpBIcu' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'C1dQY93O' 'JnJ6Te9v' --login_with_auth "Bearer foo"
seasonpass-update-reward 'D8ldz7Hu' '8AD79kdW' --body '{"currency": {"currencyCode": "unvizU0q", "namespace": "1pHyhhER"}, "image": {"as": "oGgdrysM", "caption": "izBGSRdP", "height": 23, "imageUrl": "7DNSZ8Aq", "smallImageUrl": "0XiPLQXS", "width": 9}, "itemId": "07ZddOGT", "nullFields": ["MlJjBwj9"], "quantity": 66, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'eEdSXRDS' --login_with_auth "Bearer foo"
seasonpass-create-tier 'vguauw1x' --body '{"index": 91, "quantity": 9, "tier": {"requiredExp": 76, "rewards": {"wSl9MLH0": ["NnTJ2ulN"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'zBvwJaQa' '547JllvA' --body '{"requiredExp": 86, "rewards": {"WSpabUt7": ["xk6QxyWh"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'fqoWfJw2' 'o8oWUqvP' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'CZ2HzT7N' 'XmWDlXsu' --body '{"newIndex": 79}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'IdQJR5ls' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'NOlvkfwa' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'SbnsuLCg' --body '{"exp": 91, "source": "PAID_FOR", "tags": ["xuVTekJg"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'vg6h5HIp' --body '{"passCode": "H0DviplE", "passItemId": "k4vj3LDp"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes '4yqDt8QU' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'ZDpxlHas' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'inGcjrkm' --body '{"passItemId": "RMttgjDS", "tierItemCount": 0, "tierItemId": "IVBmft3U"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'dg7p9PGm' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'Y2H5kX4M' --body '{"count": 37, "source": "PAID_FOR", "tags": ["sSX28nAR"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'xWRpv5ou' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag '5xtvd28O' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'UfCt8UJC' '5flNyj6H' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'sTtX8P3l' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'lnaaS9lq' --body '{"passCode": "yygPcfkJ", "rewardCode": "IxfQZza8", "tierIndex": 21}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'NVbDxVMq' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season '7HJk0F89' 'xAc3YVfa' --login_with_auth "Bearer foo"
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
echo "1..43"

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
    --body '{"autoClaim": true, "defaultLanguage": "Ntrl0pTK", "defaultRequiredExp": 91, "draftStoreId": "XqzHuBMY", "end": "1992-12-15T00:00:00Z", "excessStrategy": {"currency": "A2jz1ZOp", "method": "CURRENCY", "percentPerExp": 81}, "images": [{"as": "jSyMddB4", "caption": "1JuMf7RU", "height": 48, "imageUrl": "BHRj8IiR", "smallImageUrl": "imRllHT6", "width": 59}], "localizations": {"c40vFFA6": {"description": "gpU7EW3x", "title": "1dCpm55g"}}, "name": "OeqQIqcJ", "start": "1994-10-17T00:00:00Z", "tierItemId": "mBM1J1Ib"}' \
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
    'uTrrkbmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetSeason' test.out

#- 6 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'T1whOqmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteSeason' test.out

#- 7 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'nDXIWrBP' \
    --body '{"autoClaim": false, "defaultLanguage": "Say46mv7", "defaultRequiredExp": 55, "draftStoreId": "AZAOjtFJ", "end": "1998-06-15T00:00:00Z", "excessStrategy": {"currency": "mTj7tT7T", "method": "NONE", "percentPerExp": 6}, "images": [{"as": "CkIsZoAr", "caption": "WwPHcyFA", "height": 6, "imageUrl": "AtYciLIg", "smallImageUrl": "RwFRr0gw", "width": 54}], "localizations": {"9tz3vp99": {"description": "XVlV8rK3", "title": "tE6n0smi"}}, "name": "p1tw3L7c", "start": "1994-01-25T00:00:00Z", "tierItemId": "9pqtv6Jf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateSeason' test.out

#- 8 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'PZwcCVOX' \
    --body '{"end": "1972-01-08T00:00:00Z", "name": "80TmCwtD", "start": "1998-03-26T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CloneSeason' test.out

#- 9 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'AH01o6Nd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetFullSeason' test.out

#- 10 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'cBIgzrDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QueryPasses' test.out

#- 11 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'WpFBYGmm' \
    --body '{"autoEnroll": true, "code": "awMyoKyN", "displayOrder": 30, "images": [{"as": "dAasm8xw", "caption": "UfzOlQiZ", "height": 100, "imageUrl": "4NbOQXJ7", "smallImageUrl": "uOTzNMvu", "width": 33}], "localizations": {"2tNl4CX4": {"description": "IjiK4DEU", "title": "JRVK3l9E"}}, "passItemId": "b0R1XRb0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreatePass' test.out

#- 12 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'RH8vS1sm' \
    'eOlngrdT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetPass' test.out

#- 13 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'XCzaPBtk' \
    'ZMio4wcy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeletePass' test.out

#- 14 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'hloVS3rY' \
    'p8QtcEmC' \
    --body '{"autoEnroll": true, "displayOrder": 95, "images": [{"as": "c75Ufeyp", "caption": "WjDNhzCL", "height": 36, "imageUrl": "WS2qwO76", "smallImageUrl": "3iEklkzL", "width": 25}], "localizations": {"88LpLuYR": {"description": "O3C55yHp", "title": "wK2Jaqen"}}, "passItemId": "DGn7a2NU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'UpdatePass' test.out

#- 15 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'plWiLjq0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublishSeason' test.out

#- 16 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    '6n6a0rW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetireSeason' test.out

#- 17 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'EfkpaXtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'QueryRewards' test.out

#- 18 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'YZJaQ4Wb' \
    --body '{"code": "wNmsFYet", "currency": {"currencyCode": "jEurH8el", "namespace": "oJzNKtRU"}, "image": {"as": "aTz1ETds", "caption": "mwzjkkn9", "height": 29, "imageUrl": "iQl05g7c", "smallImageUrl": "O3ZMb6Oj", "width": 22}, "itemId": "o6DMNpP2", "quantity": 33, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateReward' test.out

#- 19 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'TQ1UpjfU' \
    '6wJhy1jO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetReward' test.out

#- 20 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'VkkUlS79' \
    '527EZ25I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteReward' test.out

#- 21 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'a8uCeZFl' \
    'LtEVpDAE' \
    --body '{"currency": {"currencyCode": "bA82jy74", "namespace": "lq0pDE5x"}, "image": {"as": "Rwh5b45e", "caption": "bpcM7ScS", "height": 37, "imageUrl": "3UOpAwIp", "smallImageUrl": "9rRtn1Pc", "width": 56}, "itemId": "xdbumeYg", "nullFields": ["OdEBWRQi"], "quantity": 97, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateReward' test.out

#- 22 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'fU8icH40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'QueryTiers' test.out

#- 23 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    '81gRB1Gy' \
    --body '{"index": 75, "quantity": 11, "tier": {"requiredExp": 75, "rewards": {"g4RYuEbg": ["UDEcJyIv"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateTier' test.out

#- 24 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'sPwOr0Bm' \
    'V5iFvfwF' \
    --body '{"requiredExp": 19, "rewards": {"TSmIEqoL": ["yLeUGmom"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateTier' test.out

#- 25 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'GX9sXTZ0' \
    'v8pqLfc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteTier' test.out

#- 26 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'SwGnReUU' \
    'LDX4QUIb' \
    --body '{"newIndex": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ReorderTier' test.out

#- 27 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '5nh68Zny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UnpublishSeason' test.out

#- 28 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'UtRvW9hN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserParticipatedSeasons' test.out

#- 29 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'BSFTtFrO' \
    --body '{"exp": 25, "source": "PAID_FOR", "tags": ["kFrFVA8t"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GrantUserExp' test.out

#- 30 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    '0xF34Xpt' \
    --body '{"passCode": "6ZlTTic0", "passItemId": "kr2a0nI2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserPass' test.out

#- 31 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'oo7UHCJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ExistsAnyPassByPassCodes' test.out

#- 32 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    '5sp0aCvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentUserSeasonProgression' test.out

#- 33 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'q3aHVYIl' \
    --body '{"passItemId": "ewLRuHY8", "tierItemCount": 3, "tierItemId": "Gj0HTeeW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CheckSeasonPurchasable' test.out

#- 34 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'XlIcRidq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'ResetUserSeason' test.out

#- 35 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'ctDpygY0' \
    --body '{"count": 0, "source": "SWEAT", "tags": ["476ED4MM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GrantUserTier' test.out

#- 36 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'O9Tw2JH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryUserExpGrantHistory' test.out

#- 37 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'qhWIwHWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistoryTag' test.out

#- 38 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'gzJFRYw6' \
    't1IKZLO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetUserSeason' test.out

#- 39 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetCurrentSeason' test.out

#- 40 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'V4Ode46Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentUserSeason' test.out

#- 41 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'mCidgdpP' \
    --body '{"passCode": "7RTC587l", "rewardCode": "mUmBziPZ", "tierIndex": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserReward' test.out

#- 42 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'npOfkllx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkClaimUserRewards' test.out

#- 43 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'fq0NsrSj' \
    'w5Hog0bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
