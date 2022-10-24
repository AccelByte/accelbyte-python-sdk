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
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["QTuBdNEU"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'sxFb8CJ1' --login_with_auth "Bearer foo"
seasonpass-delete-season '7M7DJZaM' --login_with_auth "Bearer foo"
seasonpass-update-season 'SxECbZby' --body '{"autoClaim": false, "defaultLanguage": "yoarORoe", "defaultRequiredExp": 79, "draftStoreId": "HSb8Rh3k", "end": "1974-06-01T00:00:00Z", "excessStrategy": {"currency": "9qqJbnQs", "method": "CURRENCY", "percentPerExp": 54}, "images": [{"as": "giVpP8Cm", "caption": "3yvASUox", "height": 7, "imageUrl": "xxFqmAGT", "smallImageUrl": "J8IEdagE", "width": 38}], "localizations": {"p4w29KOu": {"description": "9c19R6XD", "title": "qWHkkP8n"}}, "name": "pLEKMfji", "start": "1995-03-11T00:00:00Z", "tierItemId": "pkVZk3Ia"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'QYEmqGod' --body '{"end": "1991-08-25T00:00:00Z", "name": "Gt9gPOj0", "start": "1972-03-07T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season '0JkvIas7' --login_with_auth "Bearer foo"
seasonpass-query-passes '3ucYnFAJ' --login_with_auth "Bearer foo"
seasonpass-create-pass '3DK5T4Eo' --body '{"autoEnroll": false, "code": "g0Y39UoY", "displayOrder": 23, "images": [{"as": "pv5bVAgt", "caption": "sDhUTDUs", "height": 5, "imageUrl": "bQDjbTQu", "smallImageUrl": "PMz2PTRl", "width": 21}], "localizations": {"yU89ZPOw": {"description": "6zPFJ42c", "title": "wmzBBSMN"}}, "passItemId": "coAAOjKN"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'jfcYHm09' '3aYgBU1s' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'qjyK0XH4' '5PaRSOFQ' --login_with_auth "Bearer foo"
seasonpass-update-pass 'Btu23REZ' '8hRVX7LG' --body '{"autoEnroll": true, "displayOrder": 58, "images": [{"as": "dYiQS9i7", "caption": "mV1C91pj", "height": 64, "imageUrl": "9gpxL6yc", "smallImageUrl": "TQdvln2L", "width": 52}], "localizations": {"uSQWEXL6": {"description": "LFE1YHo9", "title": "m126ZWc8"}}, "passItemId": "hHtWvbNY"}' --login_with_auth "Bearer foo"
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
echo "1..44"

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

#- 5 BulkGetUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-bulk-get-user-season-progression' \
    --body '{"userIds": ["uTrrkbmu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'T1whOqmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'nDXIWrBP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'lSay46mv' \
    --body '{"autoClaim": true, "defaultLanguage": "AZAOjtFJ", "defaultRequiredExp": 42, "draftStoreId": "mTj7tT7T", "end": "1996-09-20T00:00:00Z", "excessStrategy": {"currency": "WDdCkIsZ", "method": "CURRENCY", "percentPerExp": 52}, "images": [{"as": "rWwPHcyF", "caption": "AdAtYciL", "height": 69, "imageUrl": "gRwFRr0g", "smallImageUrl": "wB9tz3vp", "width": 98}], "localizations": {"VlV8rK3t": {"description": "E6n0smip", "title": "1tw3L7cU"}}, "name": "d9pqtv6J", "start": "1973-11-29T00:00:00Z", "tierItemId": "ZwcCVOXc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'Va80TmCw' \
    --body '{"end": "1980-08-20T00:00:00Z", "name": "2lAH01o6", "start": "1990-01-24T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'cBIgzrDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'WpFBYGmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'BawMyoKy' \
    --body '{"autoEnroll": false, "code": "dAasm8xw", "displayOrder": 92, "images": [{"as": "fzOlQiZY", "caption": "4NbOQXJ7", "height": 40, "imageUrl": "OTzNMvuq", "smallImageUrl": "2tNl4CX4", "width": 68}], "localizations": {"jiK4DEUJ": {"description": "RVK3l9Eb", "title": "0R1XRb0R"}}, "passItemId": "H8vS1sme"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'OlngrdTX' \
    'CzaPBtkZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'Mio4wcyh' \
    'loVS3rYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    '8QtcEmCE' \
    'Vc75Ufey' \
    --body '{"autoEnroll": false, "displayOrder": 96, "images": [{"as": "jDNhzCL5", "caption": "sWS2qwO7", "height": 16, "imageUrl": "EklkzLm8", "smallImageUrl": "8LpLuYRO", "width": 57}], "localizations": {"55yHpwK2": {"description": "JaqenDGn", "title": "7a2NUplW"}}, "passItemId": "iLjq06n6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'a0rW8Efk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'paXtwYZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'aQ4WbwNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'sFYetjEu' \
    --body '{"code": "rH8eloJz", "currency": {"currencyCode": "NKtRUaTz", "namespace": "1ETdsmwz"}, "image": {"as": "jkkn9oiQ", "caption": "l05g7cO3", "height": 76, "imageUrl": "b6Ojlo6D", "smallImageUrl": "MNpP2qMr", "width": 91}, "itemId": "Q1UpjfU6", "quantity": 45, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'y1jOVkkU' \
    'lS79527E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'Z25Ia8uC' \
    'eZFlLtEV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'pDAEbA82' \
    'jy74lq0p' \
    --body '{"currency": {"currencyCode": "DE5xRwh5", "namespace": "b45ebpcM"}, "image": {"as": "7ScSs3UO", "caption": "pAwIp9rR", "height": 38, "imageUrl": "n1PcCxdb", "smallImageUrl": "umeYgOdE", "width": 55}, "itemId": "WRQiW3KF", "nullFields": ["fU8icH40"], "quantity": 13, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    '1GyLfLg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'RYuEbgUD' \
    --body '{"index": 61, "quantity": 4, "tier": {"requiredExp": 71, "rewards": {"yIvsPwOr": ["0BmV5iFv"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'fwFjTSmI' \
    'EqoLyLeU' \
    --body '{"requiredExp": 65, "rewards": {"momGX9sX": ["TZ0v8pqL"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'fc5SwGnR' \
    'eUULDX4Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'UIbb5nh6' \
    '8ZnyUtRv' \
    --body '{"newIndex": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '9hNBSFTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'FrOmjkFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'FVA8t0xF' \
    --body '{"exp": 99, "source": "PAID_FOR", "tags": ["t6ZlTTic"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    '0kr2a0nI' \
    --body '{"passCode": "2oo7UHCJ", "passItemId": "K5sp0aCv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'Iq3aHVYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'lewLRuHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '83bGj0HT' \
    --body '{"passItemId": "eeWXlIcR", "tierItemCount": 16, "tierItemId": "dqctDpyg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'Y0ax476E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'D4MMO9Tw' \
    --body '{"count": 70, "source": "SWEAT", "tags": ["hWIwHWTg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'zJFRYw6t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    '1IKZLO6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    '4Ode46Qm' \
    'CidgdpP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'RTC587lm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'UmBziPZB' \
    --body '{"passCode": "npOfkllx", "rewardCode": "fq0NsrSj", "tierIndex": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    '5Hog0blM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    '1d5MStYG' \
    'czLINlEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
